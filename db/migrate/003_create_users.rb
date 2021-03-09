class CreateUsers < ActiveRecord::Migration[5.2]

    def change
        create_table :users do |t|
            t.string :name
            t.string :password
            t.string :avatar_url
            t.datetime :birthdate
        end
    end

end