class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
