class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects
  has_many :tasks

  def after_sign_in_path_for(resource)
  	projects_path || session[:previous_url] 
	end
	def to_s
    self.email
  end
end
