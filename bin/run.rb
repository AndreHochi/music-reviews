require_relative '../config/environment'
require 'pry'


puts "HELLO WORLD"

Song.destroy_all
User.destroy_all
Review.destroy_all
Album.destroy_all
Artist.destroy_all
AlbumJoiner.destroy_all

s1 = Song.create({name: 's1', genre: 'g1'})
s2 = Song.create({name: 's2', genre: 'g2'})
s3 = Song.create({name: 's3', genre: 'g3'})
s4 = Song.create({name: 's4', genre: 'g1'})
s5 = Song.create({name: 's5', genre: 'g2'})
s6 = Song.create({name: 's6', genre: 'g3'})
s7 = Song.create({name: 's7', genre: 'g1'})
s8 = Song.create({name: 's8', genre: 'g2'})

u1 = User.create({name: 'u1', password: 'p1', avatar_url: 'a1', birthdate: Date.new(2001,1,1)})
u2 = User.create({name: 'u2', password: 'p2', avatar_url: 'a1', birthdate: Date.new(2001,2,2)})
u3 = User.create({name: 'u3', password: 'p3', avatar_url: 'a1', birthdate: Date.new(2001,3,3)})
u4 = User.create({name: 'u4', password: 'p4', avatar_url: 'a1', birthdate: Date.new(2001,4,4)})

r1 = Review.create({rating: 5, phrase: "p1", user_id: u1.id, song_id: s1.id})
r2 = Review.create({rating: 5, phrase: "p2", user_id: u2.id, song_id: s2.id})
r3 = Review.create({rating: 5, phrase: "p3", user_id: u3.id, song_id: s3.id})
r4 = Review.create({rating: 5, phrase: "p4", user_id: u4.id, song_id: s4.id})
r5 = Review.create({rating: 4, phrase: "p5", user_id: u1.id, song_id: s2.id})
r6 = Review.create({rating: 3, phrase: "p6", user_id: u1.id, song_id: s3.id})
r7 = Review.create({rating: 2, phrase: "p7", user_id: u1.id, song_id: s4.id})

al1 = Album.create({name: "al1", genre: "g1"})
al2 = Album.create({name: "al2", genre: "g2"})
al3 = Album.create({name: "al3", genre: "g3"})
al4 = Album.create({name: "al4", genre: "g1"})
al5 = Album.create({name: "al5", genre: "g2"})
al6 = Album.create({name: "al6", genre: "g3"})

s1.album_id = al1.id
s2.album_id = al2.id
s3.album_id = al3.id
s4.album_id = al4.id
s5.album_id = al5.id
s6.album_id = al6.id
s7.album_id = al1.id
s8.album_id = al2.id

s1.save
s2.save
s3.save
s4.save
s5.save
s6.save
s7.save
s8.save

ar1 = Artist.create({name: "ar1", genre: "g1", birthdate: Date.new(2001,1,1)})
ar2 = Artist.create({name: "ar2", genre: "g2", birthdate: Date.new(2001,2,2)})
ar3 = Artist.create({name: "ar3", genre: "g3", birthdate: Date.new(2001,3,3)})
ar4 = Artist.create({name: "ar4", genre: "g1", birthdate: Date.new(2001,4,4)})
ar5 = Artist.create({name: "ar5", genre: "g2", birthdate: Date.new(2001,5,5)})

aj1 = AlbumJoiner.create({album_id: al1.id, artist_id: ar1.id})
aj2 = AlbumJoiner.create({album_id: al2.id, artist_id: ar2.id})
aj3 = AlbumJoiner.create({album_id: al3.id, artist_id: ar3.id})
aj4 = AlbumJoiner.create({album_id: al4.id, artist_id: ar4.id})
aj5 = AlbumJoiner.create({album_id: al5.id, artist_id: ar5.id})
aj6 = AlbumJoiner.create({album_id: al6.id, artist_id: ar1.id})


binding.pry