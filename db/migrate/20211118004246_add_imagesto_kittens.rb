class AddImagestoKittens < ActiveRecord::Migration[6.1]
  def change
    add_column :kittens, :image_url, :string
  end
end
