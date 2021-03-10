class Song < ActiveRecord::Base 
    has_many :reviews
    has_many :users, :through => :reviews
    belongs_to :album

    def average
        self.reviews.sum{|review| review.rating}.to_f/self.reviews.size
    end
    
end