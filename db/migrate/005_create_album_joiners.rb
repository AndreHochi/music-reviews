class CreateAlbumJoiners < ActiveRecord::Migration[5.2]

    def change
        create_table :album_joiners do |t|
            t.integer :album_id
            t.integer :artist_id
        end
    end

end