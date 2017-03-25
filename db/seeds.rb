# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Evidence.delete_all
20.times do |p|
  Evidence.create(
      name: Faker::Name.first_name, 
      tag: Faker::Name.first_name, 
      description: Faker::Name.first_name, 
      date: Faker::Date.between(2.days.ago, Date.today))
  end