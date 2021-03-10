require_relative '../config/environment'
require 'pry'


puts "HELLO WORLD"

s1 = Song.create({name: 's1', genre: 'g1'})
s2 = Song.create({name: 's2', genre: 'g2'})
s3 = Song.create({name: 's3', genre: 'g3'})
s4 = Song.create({name: 's4', genre: 'g4'})

u1 = User.create({name: 'u1', password: 'p1', avatar_url: 'a1', birthdate: Date.new(2001,1,1)})
u2 = User.create({name: 'u2', password: 'p2', avatar_url: 'a1', birthdate: Date.new(2001,2,2)})
u3 = User.create({name: 'u3', password: 'p3', avatar_url: 'a1', birthdate: Date.new(2001,3,3)})
u4 = User.create({name: 'u4', password: 'p4', avatar_url: 'a1', birthdate: Date.new(2001,4,4)})

r1 = Review.create({})

binding.pry