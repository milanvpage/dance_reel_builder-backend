class CreateTheaters < ActiveRecord::Migration[6.1]
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :file_name
      t.string :url

      t.timestamps
    end
  end
end
