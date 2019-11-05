class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.date :date
      t.string :quote
      t.text :entry
      t.text :tags

      t.timestamps
    end
  end
end
