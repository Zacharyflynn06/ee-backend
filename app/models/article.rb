class Article < ApplicationRecord

    has_one_attached :image

    validates :title, presence: true
    # validates :link, presence: true
    validates :author, presence: true
    # validates :date, presence: true
    
end
