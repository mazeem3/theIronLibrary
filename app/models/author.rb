class Author < ActiveRecord::Base
    has_many :books
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :bio, presence: true


    def fname
      [self.first_name," ", self.last_name].join
    end
end
