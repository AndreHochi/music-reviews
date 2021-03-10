class CreateSongs < ActiveRecord::Migration[5.2]

    def change
        create_table :songs do |t|
            t.string :name
            #t.integer :album_id #do we do this for also one to many?
            t.string :genre
            #t.has_many :reviews
            #t.has_many :users, :through => :reviews
            t.belongs_to :album
        end
    end

end