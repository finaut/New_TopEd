class CreateFacultiesUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties_universities do |t|
      t.references :faculty, index: true
      t.references :university,  index: true
    end
  end
end
