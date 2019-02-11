class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
   "applicant" => 0,
   "employer" => 1,
   "admin" => 2
  }

  has_many :jobs, :foreign_key => 'employer_id', :dependent => :destroy
  has_many :applications, :foreign_key => 'user_id'

end
