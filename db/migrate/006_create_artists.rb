class CreateArtists < ActiveRecord::Migration[5.2]

    def change
        create_table :artists do |t|
            t.string :name
            t.string :genre
            t.datetime :birthdate
            #t.has_many :album_joiners
            #t.has_many :albums, :through => :album_joiners
        end
    end
end