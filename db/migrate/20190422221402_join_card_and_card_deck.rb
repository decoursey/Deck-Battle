class JoinCardAndCardDeck < ActiveRecord::Migration[5.2]
  def change
    create_table :card_decks_cards, id: false do |t|
      t.references :card_deck, index: true, foreign_key: true
      t.references :card, index: true, foreign_key: true
    end
  end
end
