# db/seeds.rb

# Create a user
user = User.create!(
  email: 'example@example.com',
  password: 'password',
  username: 'example_user'
)

# Create tweets for the user
5.times do |n|
  user.tweets.create!(
    body: "Tweet #{n + 1} for #{user.username}"
  )
end

puts 'Seed data created successfully.'
