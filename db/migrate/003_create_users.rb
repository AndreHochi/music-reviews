class CreateUsers < ActiveRecord::Migration[5.2]

    def change
        create_table :users do |t|
            t.string :name
            t.string :password
            t.string :avatar_url
            t.datetime :birthdate
            #t.has_many :reviews
            #t.has_many :songs, :through => :reviews

        end
    end

end