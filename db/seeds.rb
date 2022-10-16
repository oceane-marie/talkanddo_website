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
  last_name: "Martin",
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
  first_name: "Enrique",
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
  description: "Hi! My name is Deon Muir and I am from Mexico. Join me to learn how to make real empanadas as my abuela taught me. During this activity, we will chat together in Spanish. So put your apron on and cook with me.",
  language: "Spanish",
  category: "Cooking",
  activity: "Cook empanadas",
  location: "London",
  price: 25,
  duration: 2,
)

Teacher.create!(
  user_id: 3,
  title: "Cook with me a delicious Italian pasta dish like my nonna",
  description: "Hi, I'm Lucy, a professional chef working at an Italian restaurant in Scotland. Half Scottish/ half Italian, I will teach you a typical Roman pasta dish learned during my training in Rome.",
  language: "Italian",
  category: "Cooking",
  activity: "Cook a pasta dish",
  location: "Aberdeen",
  price: 55,
  duration: 3,
)

Teacher.create!(
  user_id: 4,
  title: "Learn with a French sommelier the secret of French wines",
  description: "Hello, I'm Alistair! A French sommelier working in a wine bar in Bath. I would be happy to share with you the secret of French wines during a taste testing in the beautifully language of Moliere.",
  language: "French",
  category: "Cooking",
  activity: "wine testing",
  location: "Bath",
  price: 65,
  duration: 2,
)

Teacher.create!(
  user_id: 6,
  title: "Channel your inner Shakespear and discover the beauty of English poetry",
  description: "Hello, my name is Molly. I am a pH student in English literature at Cambridge and I would be delighted to share my passion of English poetry with you. So come and join me during a fun writing session.",
  language: "English",
  activity: "Writing",
  category: "Craft",
  location: "Online",
  price: 45,
  duration: 2,
)

Teacher.create!(
  user_id: 7,
  title: "Practice yoga with a Colombian certified teacher",
  description: "Hola! My name is Havin. I am a certified yoga teacher from Madellin. Join me to pratice your asanas followed by a deep meditation in Spanish.",
  language: "Spanish",
  category: "Sport",
  activity: "Yoga",
  location: "London",
  price: 20,
  duration: 1,
)

Teacher.create!(
  user_id: 9,
  title: "Create a traditional mate gourd with a Argentian profesional woodcarver",
  description: "Buenas! My name is Enrique. I am currently working in Manchester as a woodcarver. Join me to learn how to make your own mate gourd to drink Argentina's national drink.",
  language: "Spanish",
  category: "Craft",
  activity: "Woodcarving",
  location: "Manchester",
  price: 65,
  duration: 3,
)

Teacher.create!(
  user_id: 10,
  title: "Create a somptuous bouquet with a master fleurist",
  description: "Hello! I'm Ivan, a Korean fleurist from Jeju Island in South Korea. Join me to learn the traditional Korean art of flower arrangement and learn more about how deeply nature is important for Korean people.",
  language: "Korean",
  category: "Craft",
  activity: "Flower arrangement",
  location: "London",
  price: 75,
  duration: 3,
)

puts "Creating reservations..."
Reservation.create!(
  user_id: 1,
  teacher_id: "",
  date: "2022-12-16",
  time: "",
  state: "pending",
  location: "",
  price: ,
  duration: ,
)

Reservation.create!(
  user_id: 1,
  teacher_id: 2,
  date: "2022-10-21",
  time: "",
  state: "pending",
  location: "",
  price: ,
  duration: ,
)

Reservation.create!(
  user_id: 1,
  teacher_id: 5,
  date: "2021-02-02",
  time: "",
  state: "accepted",
  location: "",
  price: ,
  duration: ,
)

Reservation.create!(
  user_id: 1,
  teacher_id: 6,
  date: "2022-06-21",
  time: "",
  state: "accepted",
  location: "",
  price: ,
  duration: ,
)
