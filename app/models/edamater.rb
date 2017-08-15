class Edamater < ApplicationRecord
    belongs_to :user
    has_many :reviews, dependent: :destroy

    validates_presence_of :name, presence: true
    validates_presence_of :price, presence: true
end
