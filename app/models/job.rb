class Job < ApplicationRecord
  validates :job_title, :description, :employer_name, :location, :employer_id, presence: true
  belongs_to :user, :class_name => 'User', :foreign_key => 'employer_id'
  has_many :applications, :dependent => :destroy
  has_many :applicants, :through => :applications, :class_name => 'User'
end
