# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.all.destroy_all
Playlist.all.destroy_all

usernames = [
  {username:"wolf12",first_name:"Thor",last_name:"Thunder",email:"wolf@test.com"},
  {username:"Jack12",first_name:"Jack",last_name:"Daniels",email:"daniels@test.com"},
  {username:"Zeus13",first_name:"Zeus",last_name:"Deus",email:"Zeus@test.com"}]
playlists = [
  {name:"Megadeth",image_link:"Peace_Sells.png"},
  {name:"Overkill",image_link:"Horrorscope.png"},
  {name:"Slayer",image_link:"South_of_heaven.png"},
]

usernames.each do |user|
  User.create!(user)
end
playlists.each do |playlist|
  Playlist.create!(playlist)
end
