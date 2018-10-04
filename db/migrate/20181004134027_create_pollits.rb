class CreatePollits < ActiveRecord::Migration[5.1]
  def change
    create_table :pollits do |t|
      t.string :name
      t.integer :vote

      t.timestamps
    end
  end
end
