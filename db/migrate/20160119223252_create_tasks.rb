class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :status
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
