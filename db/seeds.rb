require 'faker'

# create a few users
10.times do
  Creator.create(name: Faker::Name.name,
                  email: Faker::Internet.email,
                  password_hash: Faker::Internet.password
                )
end

10.times do
  Creator.create(name: Faker::Name.name,
                  email: Faker::Internet.email,
                  password_hash: Faker::Internet.password
                )
end
