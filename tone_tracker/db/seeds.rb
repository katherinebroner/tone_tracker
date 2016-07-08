# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#create users

User.create!(username: "kat", email: "kat@kat.com", password: "kat")

Content.create!(body: "This is a test", user_id: 1)

emotions = Emotion.create!([{name: "emotion1", score: 1.0, content_id: 1}, {name: "emotion2", score: 2.0, content_id: 1}])

languages = Language.create!([{name: "language1", score: 1.0, content_id: 1}, {name: "language2", score: 2.0, content_id: 1}])

tendencies = Tendency.create!([{name: "tendency1",score: 1.0, content_id: 1}, {name: "tendency2", score: 2.0, content_id: 1}])


