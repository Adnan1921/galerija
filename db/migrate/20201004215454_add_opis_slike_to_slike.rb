class AddOpisSlikeToSlike < ActiveRecord::Migration[6.0]
  def change
    add_column :slikes, :opis_slike, :string
  end
end
