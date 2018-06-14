# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.create(username: "User1" , email: "u1@gmail.com")
u2 = User.create(username: "User2" , email: "u2@gmail.com")

p1 = Post.create(title: "Test" , content: "Test content")
p2 = Post.create(title: "Test2" , content: "Test2 content")

c1 = Category.create(name: "Sex")
c2 = Category.create(name: "Drugs")

pc1 = PostCategory.create(post_id: p1[:id] , category_id: c2[:id])
pc1 = PostCategory.create(post_id: p2[:id] , category_id: c1[:id])

com1 = Comment.create(post_id: p1[:id] , user_id: u2[:id], content: "Com Content 1")
com2 = Comment.create(post_id: p2[:id] , user_id: u1[:id], content: "Com Content 1")
