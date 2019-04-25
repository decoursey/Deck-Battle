class RenameCardsColumnDiscriptionToDescription < ActiveRecord::Migration[5.2]
  def change
    rename_column :cards, :discription, :description
  end
end
