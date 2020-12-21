class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile_number
      t.string :country
      t.string :faculty
      t.string :university
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
