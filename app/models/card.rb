class Card < ApplicationRecord
    validates :title, presence: true, length: {minimum: 1}
    validates :discription, presence: true, length: {minimum: 1}
    validates :stats, presence: true, length: {minimum: 1}
    validates :category, presence: true, length: {minimum: 1}
end
