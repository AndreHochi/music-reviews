class CreateReviews < ActiveRecord::Migration[5.2]


    #need to adjust song_id and user_id to many to many

    def change
        create_table :reviews do |t|
#            t.integer :song_id
#            t.integer :user_id
            t.integer :rating
            t.string :phrase
            t.belongs_to :user
            t.belongs_to :song
        end
    end

end