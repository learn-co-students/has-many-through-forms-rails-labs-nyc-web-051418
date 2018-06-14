# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cat1 = Category.create(name: "Category 1")
cat2 = Category.create(name: "Category 2")
cat3 = Category.create(name: "Category 3")
cat4 = Category.create(name: "Category 4")

user1 = User.create(username: "user1", email: "email1")
user2 = User.create(username: "user2", email: "email2")
user3 = User.create(username: "user3", email: "email3")
user4 = User.create(username: "user4", email: "email4")

comment1 = Comment.create(content: "comment1", user_id: 1, post_id: 1)
comment2 = Comment.create(content: "comment2", user_id: 2, post_id: 1)
comment3 = Comment.create(content: "comment3", user_id: 3, post_id: 3)
comment4 = Comment.create(content: "comment4", user_id: 4, post_id: 3)
