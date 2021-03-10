class CreateAlbumJoiners < ActiveRecord::Migration[5.2]

    def change
        create_table :album_joiners do |t|
            #t.integer :album_id
            #t.integer :artist_id
            t.belongs_to :album
            t.belongs_to :artist
        end
    end

end