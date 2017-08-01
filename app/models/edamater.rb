class Edamater < ApplicationRecord
    belongs_to :user
    has_many :reviews

    validates :name, presence: true
    validates :price, presence: true
end
