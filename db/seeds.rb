# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do 
    User.create(username: Faker::FunnyName.two_word_name, email: Faker::Internet.email)
end

15.times do
    Post.create(title: Faker::Book.title, content:Faker::Quote.matz)
end

50.times do 
    Comment.create(content: Faker::TvShows::RuPaul.quote, user_id: User.all.sample.id, post_id: Post.all.sample.id )
end