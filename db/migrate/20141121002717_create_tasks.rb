class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :name
      t.integer :category_id
      t.date :date
      t.datetime :time
      t.integer :length
      t.integer :order
      t.integer :priority
      t.string :repeat
      t.text :notes
      t.string :status
      t.datetime :date_complete

      t.timestamps

    end
  end
end
