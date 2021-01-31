class CreateCatsInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :cats_infos do |t|
      t.string :name
      t.integer :age
      t.integer :year
      t.integer :month
      t.integer :date
      t.string :color

      t.timestamps
    end
  end
end
