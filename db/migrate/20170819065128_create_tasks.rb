class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :completed
      t.text :body
      t.datetime :created
      t.datetime :done
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
