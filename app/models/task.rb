class Task < ActiveRecord::Base
  belongs_to :project

  enum status: [:to_do, :doing, :done]
end
