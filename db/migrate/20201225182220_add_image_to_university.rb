class AddImageToUniversity < ActiveRecord::Migration[5.2]
  def change
    add_attachment :universities, :image
  end
end
