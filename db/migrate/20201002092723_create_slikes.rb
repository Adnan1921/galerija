class CreateSlikes < ActiveRecord::Migration[6.0]
  def change
    create_table :slikes do |t|
      t.string :naziv_slike
      t.string :slika
      t.date :datum

      t.timestamps
    end
  end
end
