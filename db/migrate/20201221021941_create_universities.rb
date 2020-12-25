class CreateUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :universities do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :url
      t.timestamps
    end
  end
end
