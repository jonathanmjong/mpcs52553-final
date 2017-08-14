class Edamater < ApplicationRecord
    belongs_to :user
    has_many :reviews, dependent: :destroy

    validates :name, presence: true
    validates :price, presence: true
end
