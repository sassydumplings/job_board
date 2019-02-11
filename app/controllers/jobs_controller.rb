class JobsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  before_action :get_job, :only => [:update, :edit, :destroy]

  def new
   # constant checking with employer? method needs to be DRYed up
   if employer?
    @job = Job.new
   else
    redirect_to root_path, alert: "Only employers can add a job listing"
   end

  end

  def create
    if employer?
      @job = Job.new(job_params)

      if @job.save
        redirect_to @job, alert: "New Job listing created"
      else
        render new_job_path, alert: "New Job listing could not be created"
      end
    else
      redirect_to root_path, alert: "Only employers can add a job opening"
    end
  end

  def edit

  end

  def show
    @job = Job.find(params[:id])
    render :show
  end

  def update
    if employer?
      @job.update(job_params)
      redirect_to @job, alert: "Job listing updated"
    else
      redirect_to root_path, alert: "Only employers can add a job opening"
    end
  end

  def index
    @jobs = Job.all
    render :index
  end

  def destroy
    if current_user.id == @job.employer_id
      @job.destroy
      redirect_to root_path, alert: "#{@job.title} job opening is deleted"
    else
      redirect_to root_path, alert: "Only employers can delete a job opening"
    end
  end

  private

  def get_job
    @job = Job.find(params[:id])
  end

  def employer?
    current_user.employer?
  end

  def job_params
    params.require(:job).permit(:title, :description, :employer_name, :location, :employer_id)
  end

end
