class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :age, numericality: {greater_than: 0}
    validates :bio, length: {minimum: 31}
    validates :name, uniqueness: true
end
