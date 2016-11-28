require 'faker'
require 'populator'

namespace :db do
  desc "populate database with 100 cities"
  task populate: :environment do
    City.populate(100) do |city|
      city.name = [nil, Faker::Name.name].sample
      city.altitude = [nil, Faker::Number.number(4)].sample
      city.capitol = [true, false, nil].sample
    end
  end

end
