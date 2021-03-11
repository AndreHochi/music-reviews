class User < ActiveRecord::Base 
    has_many :reviews
    has_many :songs, :through => :reviews
    
    def average
        self.reviews.sum{|review| review.rating}.to_f/self.reviews.size
    end
    
    def add_review
        prompt = TTY::Prompt.new
        song_name = prompt.ask("What song are you reviewing?")
        rating = prompt.ask("What rating are you giving?").to_i
        phrase = prompt.ask("Write your review.")
        #potental addition later where it deals with multiple songs with same song name.
        song = Song.all.find{|song| song.name == song_name}
        if song != nil
            song_id = Song.all.find{|song| song.name == song_name}.id
            Review.create({rating: rating, phrase: phrase, user_id: self.id, song_id: song_id}) 
        else
            puts "Song not found."
        end
    end



    def self.login
        prompt = TTY::Prompt.new
        login_choice = prompt.select("What would you like to do?", ["Login", "Sign Up", "Exit"])
        if (login_choice == "Login")
            current_username = prompt.ask("What is your username?")
            current_password = prompt.ask("What is your password?")
            if self.all.find_by(name: current_username, password: current_password)
                puts "You are logged in."
                return self.all.find_by(name: current_username, password: current_password)
            else
                puts "Incorrect username or password"
                exit!
            end
        elsif (login_choice == "Exit")
            exit!
        elsif (login_choice == "Sign Up")
            name = prompt.ask("What is your name?")
            password = prompt.ask("What is your password?")
            avatar_url = prompt.ask("What is your avatar url?")
            year = prompt.ask("What year were you born?").to_i
            month = prompt.ask("What month were you born?").to_i
            day = prompt.ask("What day were you born?").to_i
            User.create({name: name, password: password, avatar_url: avatar_url, birthdate: Date.new(year,month,day)})
            puts "User has been created please log in now."
        end
    end

    def options
        prompt = TTY::Prompt.new
        login_choice = prompt.select("What would you like to do?", ["See all your reviews", "Review a song", "Get average rating of your reviews", "See average rating for a song", "See average rating for an album" , "See average rating for an artist", "Exit"])
        if (login_choice == "See all your reviews")
            self.reviews.each{|review| puts "Song name #{review.song.name}. Rating #{review.rating}. Review #{review.phrase}"}
        elsif (login_choice == "Review a song")
            self.add_review
        elsif (login_choice == "Get average rating of your reviews")
            puts self.average
        elsif (login_choice == "See average rating for a song")
            song_name = prompt.ask("For which song do you want to see the average rating?")
            song = Song.all.find{|song| song.name == song_name}
            if song != nil
                puts song.average
            else
                puts "Song not found."
            end
        elsif (login_choice == "See average rating for an album")
            album_name = prompt.ask("For which album do you want to see the average rating?")
            album = Album.all.find{|album| album.name == album_name}
            if album != nil
                puts album.average
            else
                puts "Album not found."
            end
        elsif (login_choice == "See average rating for an artist")
            artist_name = prompt.ask("For which artist do you want to see the average rating?")
            artist = Artist.all.find{|artist| artist.name == artist_name}
            if artist != nil
                puts artist.average
            else
                puts "Artist not found."
            end
        elsif (login_choice == "Exit")
            exit!
        end
    end

end