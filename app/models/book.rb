class Book < ActiveRecord::Base
    belongs_to :author
    validates :title, presence: true
    validates :photo_url, presence: true
    validates :price, presence: true
    validates :author, presence: true

end
