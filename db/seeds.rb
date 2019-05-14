User.create!(name:  "Example User",
    email: "example@railstutorial.org",
    password:              "foobar",
    password_confirmation: "foobar",
    activated: true,
    activated_at: Time.zone.now)

User.create!(name:  "Fabio",
    email: "fabowow@gmail.com",
    password:              "123456",
    password_confirmation: "123456",
    admin: true,
    activated: true,
    activated_at: Time.zone.now)

69.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@railstutorial.org"
User.create!(name:  name,
      email: email,
      password:              "password",
      password_confirmation: "password",
      activated: true,
      activated_at: Time.zone.now)
end