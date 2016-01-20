class Task < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  enum status: [:to_do, :doing, :done]
  def self.status 
  	[:to_do, :doing, :done]
  end
end
