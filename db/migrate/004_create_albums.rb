class CreateAlbums < ActiveRecord::Migration[5.2]

    def change
        create_table :albums do |t| 
            t.string :name
            t.integer :album_joiner
            t.string :genre
        end
    end
    
end