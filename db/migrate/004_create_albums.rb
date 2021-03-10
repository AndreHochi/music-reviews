class CreateAlbums < ActiveRecord::Migration[5.2]

    def change
        create_table :albums do |t| 
            t.string :name
            #t.integer :album_joiner_id
            #t.has_many :album_joiners
            #t.has_many :artists, :through => :album_joiners
            #t.has_many :songs
            t.string :genre
        end
    end
    
end