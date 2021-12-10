class CreateCommercials < ActiveRecord::Migration[6.1]
  def change
    create_table :commercials do |t|
      t.string :name
      t.string :file_name
      t.string :url

      t.timestamps
    end
  end
end
