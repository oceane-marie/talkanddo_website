# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Reservation.destroy_all
Teacher.destroy_all

User.destroy_all

puts 'Creating users...'
user_1 = User.create!(
  first_name: "Felicia",
  last_name: "Jefferson",
  email: "fjefferson@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg"
)

user_2 = User.create!(
  first_name: "Deon",
  last_name: "Muir",
  email: "dmuir@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/4253312/pexels-photo-4253312.jpeg"
)

user_3 = User.create!(
  first_name: "Lucie",
  last_name: "Mcphee",
  email: "lmcphee@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/3769999/pexels-photo-3769999.jpeg"
)

user_4 = User.create!(
  first_name: "Alistair",
  last_name: "Martin",
  email: "atravis@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/4877852/pexels-photo-4877852.jpeg"
)

user_5 = User.create!(
  first_name: "Judah",
  last_name: "O'Neill",
  email: "joneill@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/1680175/pexels-photo-1680175.jpeg"
)

user_6 = User.create!(
  first_name: "Molly",
  last_name: "Carpenter",
  email: "mcarpenter@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg"
)

user_7 = User.create!(
  first_name: "Havin",
  last_name: "Trujillo",
  email: "htrujillo@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/5302864/pexels-photo-5302864.jpeg"
)

user_8 = User.create!(
  first_name: "Herman",
  last_name: "Merritt",
  email: "hmerritt@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/3147528/pexels-photo-3147528.jpeg"
)

user_9 = User.create!(
  first_name: "Enrique",
  last_name: "Sampson",
  email: "msampson@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/9120446/pexels-photo-9120446.jpeg"
)

user_10 = User.create!(
  first_name: "Ivan",
  last_name: "Choi",
  email: "ichoi@random.mail",
  password: "secret",
  img_url: "https://images.pexels.com/photos/12303976/pexels-photo-12303976.jpeg"
)

puts "Creating teachers..."
teacher_1 = Teacher.create!(
  user: user_2,
  title: "Learn how to make empanadas with me",
  description: "Hi! My name is Deon Muir and I am from Mexico. Join me to learn how to make real empanadas as my abuela taught me. During this activity, we will chat together in Spanish. So put your apron on and cook with me.",
  language: "Spanish",
  category: "Cooking",
  activity: "Cook empanadas",
  location: "London",
  price: 25,
  duration: 2
)

teacher_2 = Teacher.create!(
  user: user_3,
  title: "Cook with me a delicious Italian pasta dish like my nonna",
  description: "Hi, I'm Lucy, a professional chef working at an Italian restaurant in Scotland. Half Scottish/ half Italian, I will teach you a typical Roman pasta dish learned during my training in Rome.",
  language: "Italian",
  category: "Cooking",
  activity: "Cook a pasta dish",
  location: "Aberdeen",
  price: 55,
  duration: 3
)

teacher_3 = Teacher.create!(
  user: user_4,
  title: "Learn with a French sommelier the secret of French wines",
  description: "Hello, I'm Alistair! A French sommelier working in a wine bar in Bath. I would be happy to share with you the secret of French wines during a taste testing in the beautifully language of Moliere.",
  language: "French",
  category: "Cooking",
  activity: "wine testing",
  location: "Bath",
  price: 65,
  duration: 2
)

teacher_4 = Teacher.create!(
  user: user_6,
  title: "Channel your inner Shakespear and discover the beauty of English poetry",
  description: "Hello, my name is Molly. I am a pH student in English literature at Cambridge and I would be delighted to share my passion of English poetry with you. So come and join me during a fun writing session.",
  language: "English",
  activity: "Writing",
  category: "Craft",
  location: "Online",
  price: 45,
  duration: 2
)

teacher_5 = Teacher.create!(
  user: user_7,
  title: "Practice yoga with a Colombian certified teacher",
  description: "Hola! My name is Havin. I am a certified yoga teacher from Madellin. Join me to pratice your asanas followed by a deep meditation in Spanish.",
  language: "Spanish",
  category: "Sport",
  activity: "Yoga",
  location: "London",
  price: 20,
  duration: 1
)

teacher_6 = Teacher.create!(
  user: user_9,
  title: "Create a traditional mate gourd with a Argentian profesional woodcarver",
  description: "Buenas! My name is Enrique. I am currently working in Manchester as a woodcarver. Join me to learn how to make your own mate gourd to drink Argentina's national drink.",
  language: "Spanish",
  category: "Craft",
  activity: "Woodcarving",
  location: "Manchester",
  price: 65,
  duration: 3
)

teacher_7 = Teacher.create!(
  user: user_10,
  title: "Create a somptuous bouquet with a master fleurist",
  description: "Hello! I'm Ivan, a Korean fleurist from Jeju Island in South Korea. Join me to learn the traditional Korean art of flower arrangement and learn more about how deeply nature is important for Korean people.",
  language: "Korean",
  category: "Craft",
  activity: "Flower arrangement",
  location: "London",
  price: 75,
  duration: 3
)

puts "Creating reservations..."
Reservation.create!(
  user: user_1,
  teacher: teacher_4,
  date: "2022-12-16",
  time: "17:00",
  state: "pending",
  price: 45,
  duration: 2
)

Reservation.create!(
  user: user_1,
  teacher: teacher_2,
  date: "2022-10-21",
  time: "10:00",
  state: "pending",
  price: 55,
  duration: 3
)

Reservation.create!(
  user: user_1,
  teacher: teacher_5,
  date: "2021-02-02",
  time: "11:00",
  state: "accepted",
  price: 20,
  duration: 1
)

Reservation.create!(
  user: user_1,
  teacher: teacher_6,
  date: "2022-06-21",
  time: "14:30",
  state: "accepted",
  price: 65,
  duration: 3
)

Reservation.create!(
  user: user_1,
  teacher: teacher_4,
  date: "2023-01-18",
  time: "09:30",
  state: "accepted",
  price: 65,
  duration: 3
)
