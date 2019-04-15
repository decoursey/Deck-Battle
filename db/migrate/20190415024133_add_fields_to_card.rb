class AddFieldsToCard < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :title, :string
    add_column :cards, :discription, :text
    add_column :cards, :stats, :text
  end
end
