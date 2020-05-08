# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts ""
user1 = User.create(name: "John Doe", email: "john.doe@gmail.com", password: "password")
puts "User #{user1.email} created."

user2 = User.create(name: "Mary Smith", email: "mary.smith@gmail.com", password: "password")
puts "User #{user2.email} created."
puts ""


@item1 = Item.create(
  user_id: User.first.id,
  title: "FURIOUS7",
  description: "After defeating international terrorist Owen Shaw, Dominic Toretto (Vin Diesel), Brian O'Conner (Paul Walker) and the rest of the crew have separated to return to more normal lives.",
  direction: "James Wan",
  genre: "Action Films",
  image: File.open(Rails.root + "app/assets/images/furious7.jpg")
)
puts "Movie #{@item1.title} created."


@item2 = Item.create(
  user_id: User.first.id,
  title: "HUNTERS",
  description: "HUNTERS is inspired by a number of real Nazi hunters through the decades, but it is not meant to be a specific representation of any of them.[4] It follows a diverse band of Nazi hunters living in 1977 New York City who discover that Nazi war criminals are conspiring to create a Fourth Reich in the U.S.",
  direction: "David Weil",
  genre: "Crime Drama",
  image: File.open(Rails.root + "app/assets/images/hunters.jpg")
)
puts "Series #{@item2.title} created."


@item3 = Item.create(
  user_id: User.last.id,
  title: "KABIR SINGH",
  description: "Kabir Singh, a senior medical student with a passion for old English motorcycles and football, is heartbroken when his girlfriend is forced to marry another man. Already struggling with anger issues, he falls into a self-destructive spiral.",
  direction: "Sandeep Reddy Vanga",
  genre: "Romantic Drama",
  image: File.open(Rails.root + "app/assets/images/kabir_singh.jpeg")
)
puts "Movie #{@item3.title} created."


@item4 = Item.create(
  user_id: User.last.id,
  title: "JACK RYAN",
  description: "An up-and-coming CIA analyst, Jack Ryan, is thrust into a dangerous field assignment as he uncovers a pattern in terrorist communication that launches him into the center of a dangerous gambit.",
  direction: "Carlton Cuse, Graham Roland",
  genre: "Action, Drama, Thriller",
  image: File.open(Rails.root + "app/assets/images/jack_ryan.jpg")
)
puts "Series #{@item4.title} created."
puts ""
