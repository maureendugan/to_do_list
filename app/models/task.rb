class Task < ActiveRecord::Base
  validates :description, :presence => true
  belongs_to :list

  def self.done_tasks
    Task.where(:done? => true)
  end

  def self.not_done_tasks
    Task.where(:done? => false)
  end
end
