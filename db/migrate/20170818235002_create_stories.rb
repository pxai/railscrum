class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :body
      t.datetime :creation
      t.references :board, foreign_key: true

      t.timestamps
    end
  end
end
