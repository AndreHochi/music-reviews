class Artist < ActiveRecord::Base
    has_many :album_joiners
    has_many :albums, :through => :album_joiners
end