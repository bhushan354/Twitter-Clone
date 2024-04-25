5.times do |n|
  user.tweets.create!(
    body: "Tweet #{n + 1} for bhushan"
  )
end

puts 'Seed data created successfully.'
