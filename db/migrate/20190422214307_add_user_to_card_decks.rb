class AddUserToCardDecks < ActiveRecord::Migration[5.2]
  def change
    add_reference :card_decks, :user, foreign_key: true
  end
end
