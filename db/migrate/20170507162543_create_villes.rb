class CreateVilles < ActiveRecord::Migration[5.0]
  def change
    create_table :villes do |t|
      t.string :nom
      t.integer :cog

      t.timestamps
    end
  end
end
