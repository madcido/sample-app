User.create!(name:  "Example User",
    email: "example@railstutorial.org",
    password:              "foobar",
    password_confirmation: "foobar",

User.create!(name:  "Fabio",
    email: "fabowow@gmail.com",
    password:              "123456",
    password_confirmation: "123456",
    admin: true)

User.create!(name:  "Aline",
    email: "aline8890@gmail.com",
    password:              "123456",
    password_confirmation: "123456")

48.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
User.create!(name:  name,
      email: email,
      password:              "password",
      password_confirmation: "password")
end