require 'faker'

# create a few users
10.times do
  Creator.create(name: Faker::Name.name,
                  email: Faker::Internet.email,
                  password_hash: Faker::Internet.password
                )
end

10.times do
  Survey.create(title: Faker::Company.catch_phrase,
                description: Faker::Lorem.paragraph,
                creator_id: rand(1..10)
                )
end

10.times do
  Question.create(body: Faker::Lorem.sentence,
                survey_id: rand(1..10)
                )
end

# 10.times do
#   Response.create(question_id: rand(1..10),
#                   choice_id: rand(1..40)
#                 )
# end

40.times do
  Choice.create(answer: Faker::Lorem.word,
                question_id: rand(1..10)
                )
end

