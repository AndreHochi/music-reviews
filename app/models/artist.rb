class Artist < ActiveRecord::Base
    has_many :album_joiners
    has_many :albums, :through => :album_joiners

    def average
        #get all album_id with selected artist_id
        album_ids = AlbumJoiner.all.select{|album_joiner| album_joiner.artist_id == self.id}.map{|album_joiner| album_joiner.album_id}
        #get all song_ids with listed album_id
        song_ids = Song.all.select{|song| album_ids.include?(song.album_id)}.map{|song| song.id}
        #get all review_scores with listed song_ids
        review_scores = Review.all.select{|review| song_ids.include?(review.song_id)}.map{|review| review.rating}
        review_scores.sum.to_f/review_scores.size
    end

end