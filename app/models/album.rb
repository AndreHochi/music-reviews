class Album < ActiveRecord::Base
    has_many :album_joiners
    has_many :artists, :through => :album_joiners
    has_many :songs

    def average
        song_ids_for_album = Song.all.select{|song| song.album_id == self.id}.map{|song| song.id}
        reviews_for_song_in_album = Review.all.select{|review| song_ids_for_album.include?(review.song_id)}
        reviews_for_song_in_album.sum{|review|review.rating}.to_f/reviews_for_song_in_album.size
    end

end