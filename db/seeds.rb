
10.times do
 city = City.create!(city_name: Faker::RickAndMorty.location, postal_code: Faker::Crypto.md5)
end

10.times do
  user = User.create!(first_name: Faker::Hobbit.character, last_name: Faker::Hobbit.character,description: Faker::HowIMetYourMother.quote,email: Faker::Internet.email,age: rand(1..30), city_id: rand(1..10))
end

20.times do
  gozzip = Gozzip.create!(title: Faker::BreakingBad.character, content: Faker::HowIMetYourMother.quote, date: Faker::Date.forward(24), user_id: rand(1..10))
end

10.times do
 tag = Tag.create!(title: Faker::RickAndMorty.character)
end

1.times do
 privatemessage = Privatemessage.create!(content: Faker::RickAndMorty.location, date: Faker::Date.forward(rand(1..10)))
end

20.times do
 commment = Comment.create!(content: Faker::HowIMetYourMother.quote, user_id: rand(1..10), gozzip_id: rand(1..10))
end

20.times do
 like = Like.create!(user_id: rand(1..10), gozzip_id: rand(1..10),comment_id: rand(1..10))
end

# 10.times do
#  critic = Critic.create!(content: Faker::HowIMetYourMother.quote, user_id: rand(1..10))
# end

20.times do
    Gozzip.find(rand(1..10)).tags << Tag.find(rand(1..10))
end

1.times do
    User.find(rand(1..10)).privatemessages << Privatemessage.find(1)
end

