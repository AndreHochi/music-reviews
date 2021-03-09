class CreateSongs < ActiveRecord::Migration[5.2]

    def change
        create_table :songs do |t|
            t.string :name
            t.integer :album_id
            t.string :genre
        end
    end

end