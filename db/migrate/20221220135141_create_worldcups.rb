class CreateWorldcups < ActiveRecord::Migration[7.0]
  def change
    create_table :worldcups do |t|
      t.string :team
      t.string :stadium
      t.string :city

      t.timestamps
    end
  end
end
