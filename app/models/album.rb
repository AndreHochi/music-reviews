class Album < ActiveRecord::Base
    has_many :album_joiners
    has_many :artists, :through => :album_joiners
    has_many :songs
end