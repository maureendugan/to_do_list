class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :description, :string
      t.column :due_date, :date
      t.column :priority, :int
      t.column :done?, :boolean

      t.timestamps
    end
  end
end
