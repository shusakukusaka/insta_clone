User.create!(name: "shusaku",
username: "しゅー",
email: "shusakukusaka@icloud.com",
password: "foobar",
password_confirmation: "foobar",
admin: true)

99.times do |n|
  name = Faker::Okinawa::Name.last_name
  username = "しゅー#{n + 1}"
  email = "example-#{n + 1}@instaclone.org"
  password = "password"
  User.create!(name: name,
           username: username,
              email: email,
           password: password,
           password_confirmation: password)
end

# リレーションシップ
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
