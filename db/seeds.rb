# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cat1 = Category.new(name: "Category 1")
cat2 = Category.new(name: "Category 2")
cat3 = Category.new(name: "Category 3")
cat4 = Category.new(name: "Category 4")

user1 = User.new(username: "user1", email: "email1")
user2 = User.new(username: "user2", email: "email2")
user3 = User.new(username: "user3", email: "email3")
user4 = User.new(username: "user4", email: "email4")
