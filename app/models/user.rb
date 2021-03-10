class User < ActiveRecord::Base 
    has_many :reviews
    has_many :songs, :through => :reviews
    
    def average
        self.reviews.sum{|review| review.rating}.to_f/self.reviews.size
    end
    
    def add_review(rating, phrase, song_id)
        Review.create({rating: rating, phrase: phrase, user_id: self.id, song_id: song_id})    
    end
end