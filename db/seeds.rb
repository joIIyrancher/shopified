# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  first_name: "Johnny",
  last_name: "Labs",
  username: "admin",
  email: "admin@example.com",
  country: "Space",
  password: "password",
  password_confirmation: "password",
  photo: Faker::Avatar.image("my-own-slug", "50x50", "jpg"),
  wallet: 1_000,
  admin: true
)


100.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Hipster.word,
    email: Faker::Internet.email,
    country: Faker::Address.country,
    password: "password",
    password_confirmation: "password",
    photo: Faker::Avatar.image("my-own-slug", "50x50", "jpg")
  )
end