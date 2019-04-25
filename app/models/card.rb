class Card < ApplicationRecord
    has_and_belongs_to_many :card_decks
    
    validates :title, presence: true, length: {minimum: 1}
    validates :description, presence: true, length: {minimum: 1}
    validates :stats, presence: true, length: {minimum: 1}
    validates :category, presence: true, length: {minimum: 1}
end
