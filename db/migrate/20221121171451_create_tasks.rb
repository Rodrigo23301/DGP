class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.boolean :status
      t.string :description

      t.timestamps
    end
  end
end
