class Review < ApplicationRecord
    # edamater_id refers to reviews for which edamater profile
    # user_id refers to the user/author that wrote review
    belongs_to :edamater
    belongs_to :user

    validates :rating_logistics, presence: true
    validates :rating_clarity, presence: true
    validates :rating_structure, presence: true
    validates :rating_value, presence: true
    validates :text, presence: true

end
