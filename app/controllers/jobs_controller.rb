class JobsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  before_action :set_job, :only => [:update, :edit, :destroy]

  def new
   # constant checking with employer? method needs to be DRYed up
   if current_user && current_user.employer?
    @job = Job.new
   else
    redirect_to root_path, alert: "Only employers can add a job listing"
   end

  end

  def create
    if current_user && current_user.employer?
      @job = Job.new(job_params)
      @app = Application.find_by(job_id: @job)

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
    @applied = has_application?
    render :show
  end

  def update
    if current_user && current_user.employer?
      @job.update(job_params)
      redirect_to @job, alert: "Job listing updated"
    else
      redirect_to root_path, alert: "Only employers can add a job opening"
    end
  end

  def index
    if current_user && current_user.employer?
      @jobs = current_user.jobs
    else
      @jobs = Job.all
    end

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

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :employer_name, :location, :employer_id)
  end

  def has_application?
    @app = Application.find_by(job_id: @job)
  end

end

# <!--   <% @app = Application.where(user_id: current_user, job_id: @job.id) %>
#   <% if @app && @app.id.present? %>
#     <%= #{}"Already applied to this Job" %>
#   <% else %>
#     <%= #link_to "Submit Application", new_application_path(job_id: @job.id, user_id: current_user), method: "get", class: "btn" %>
#   <% end %> -->
