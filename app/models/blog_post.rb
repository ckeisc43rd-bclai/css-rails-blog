class BlogPost < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true

    belongs_to :user
    has_many :comments
    # accepts_nested_attributes_for :comments
end
