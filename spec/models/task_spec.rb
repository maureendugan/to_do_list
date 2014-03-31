require 'spec_helper'

describe Task do
  it { should validate_presence_of :description }

  describe '.done_tasks' do
    it 'returns an array of completed tasks (done? == true)' do
      task1 = Task.create(:description => 'wash the llama', :done? => true)
      task2 = Task.create(:description => 'wash the llama', :done? => false)
      Task.done_tasks.should eq [task1]
    end
  end

  describe '.not_done_tasks' do
    it 'returns an array of incomplete tasks (done? == false)' do
      task1 = Task.create(:description => 'wash the llama', :done? => true)
      task2 = Task.create(:description => 'wash the llama', :done? => false)
      Task.not_done_tasks.should eq [task2]
    end
  end
end
