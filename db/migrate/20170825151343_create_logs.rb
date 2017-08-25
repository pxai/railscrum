class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.string :msg
      t.timestamp :when

      t.timestamps
    end
  end
end
