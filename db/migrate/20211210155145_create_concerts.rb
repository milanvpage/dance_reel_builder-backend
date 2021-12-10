class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :file_name
      t.string :url

      t.timestamps
    end
  end
end
