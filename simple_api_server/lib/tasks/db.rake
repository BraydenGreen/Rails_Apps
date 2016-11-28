namespace :db do
  desc "Add 100 rappers to the database"
  task populate: :environment do
    Rapper.populate(100) do |rapper|
      rapper.name = Faker::Name.name
      rapper.home_town = Faker::Address.city
      rapper.net_worth = Faker::Number.number(10)
      rapper.teardrops = Faker::Number.number(2)
      Song.populate(Faker::Number.between(1, 50)) do |song|
        song.title = Faker::SlackEmoji.food_and_drink
        song.length = Faker::Number.decimal(2)
        song.rapper_id = rapper.id
      end
    end
  end

end
