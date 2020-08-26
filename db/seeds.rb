User.create!(name: "shusaku",
email: "shusakukusaka@icloud.com",
password: "foobar",
password_confirmation: "foobar",
admin: true)

99.times do |n|
  name = Faker::Okinawa::Name.last_name
  email = "example-#{n + 1}@instaclone.org"
  password = "password"
  User.create!(name: name,
              email: email,
           password: password,
           password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.posts.create!(content: content) }
end