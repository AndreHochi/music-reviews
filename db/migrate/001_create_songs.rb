class CreateSongs < ActiveRecord::Migration[5.2]

    def change
        create_table :songs do |t|
            t.string :name
            #t.integer :album_id #do we do this for also one to many?
            t.string :genre
        end
    end

end