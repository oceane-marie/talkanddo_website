# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Teacher.destroy_all
Reservation.destroy_all


puts 'Creating users...'
User.create!(
  first_name: "Felicia",
  last_name: "Jefferson",
  email: "fjefferson@random.mail",
  password: "secret",
  img_url: ""
)

User.create!(
  first_name: "Deon",
  last_name: "Muir",
  email: "dmuir@random.mail",
  password: "secret",
  img_url: ""
)

User.create!(
  first_name: "Lucie",
  last_name: "Mcphee",
  email: "lmcphee@random.mail",
  password: "secret",
  img_url: ""
)

User.create!(
  first_name: "Alistair",
  last_name: "Travis",
  email: "atravis@random.mail",
  password: "secret",
  img_url: ""
)

User.create!(
  first_name: "Judah",
  last_name: "O'Neill",
  email: "joneill@random.mail",
  password: "secret",
  img_url: ""
)

User.create!(
  first_name: "Molly",
  last_name: "Carpenter",
  email: "mcarpenter@random.mail",
  password: "secret",
  img_url: ""
)

User.create!(
  first_name: "Havin",
  last_name: "Trujillo",
  email: "htrujillo@random.mail",
  password: "secret",
  img_url: ""
)

User.create!(
  first_name: "Herman",
  last_name: "Merritt",
  email: "hmerritt@random.mail",
  password: "secret",
  img_url: ""
)

User.create!(
  first_name: "Mahnoor",
  last_name: "Sampson",
  email: "msampson@random.mail",
  password: "secret",
  img_url: ""
)

User.create!(
  first_name: "Ivan",
  last_name: "Choi",
  email: "ichoi@random.mail",
  password: "secret",
  img_url: ""
)

puts "Creating teachers..."
Teacher.create!(
  user_id: 2,
  title: "Learn how to make empanadas with me",
  description: "",
  language: "Spanish",
  activity: "cooking",
  location: "",
  price: 25,
  duration: 2,
)

Teacher.create!(
  user_id: 3,
  title: "Cook with me a delicious Italian pasta dish like my nonna",
  description: "",
  language: "Italian",
  activity: "cooking",
  location: "",
  price: 15,
  duration: 1,
)

Teacher.create!(
  user_id: 4,
  title: "Learn with a French sommelier the secret of French wines",
  description: "",
  language: "French",
  activity: "cooking",
  location: "",
  price: 65,
  duration: 3,
)

Teacher.create!(
  user_id: 6,
  title: "Channel your inner Shakespear and discover the beauty of English poetry",
  description: "",
  language: "English",
  activity: "Writing",
  location: "",
  price: 45,
  duration: 2,
)

Teacher.create!(
  user_id: 7,
  title: "Practice yoga with a Colombian certified teacher",
  description: "",
  language: "Spanish",
  activity: "Yoga",
  location: "",
  price: 20,
  duration: 1,
)

Teacher.create!(
  user_id: 9,
  title: "Create a traditional mate gourd with a Argentian profesional woodcarver ",
  description: "",
  language: "Spanish",
  activity: "craft",
  location: "",
  price: 65,
  duration: 3,
)

Teacher.create!(
  user_id: 10,
  title: "",
  description: "",
  language: "Korean",
  activity: "Flower arrangement",
  location: "craft",
  price: 75,
  duration: 3,
)

puts "Creating reservations..."
Reservation.create!(
  user_id: ,
  teacher_id: "",
  date: "",
  time: "",
  activity: "",
  location: "",
  price: ,
  duration: ,
)

Reservation.create!(
  user_id: ,
  teacher_id: "",
  date: "",
  time: "",
  activity: "",
  location: "",
  price: ,
  duration: ,
)

Reservation.create!(
  user_id: ,
  teacher_id: "",
  date: "",
  time: "",
  activity: "",
  location: "",
  price: ,
  duration: ,
)

Reservation.create!(
  user_id: ,
  teacher_id: "",
  date: "",
  time: "",
  activity: "",
  location: "",
  price: ,
  duration: ,
)
