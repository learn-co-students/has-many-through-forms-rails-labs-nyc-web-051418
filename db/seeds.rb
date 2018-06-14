# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
history = Category.create(name: "History")
fiction = Category.create(name: "Fiction")
comedy  = Category.create(name: "Comedy")
post1 = Post.create(title: "History buff", content: "I thoroughly enjoyed this reading",)
post2 = Post.create(title: "Fiction life", content: "this was really bad")
post3 = Post.create(title: "Ways to enjoy life more", content: "Become a better person")
post4 = Post.create(title: "How to cook eggs", content: "heat and non stick spary and eggs")
carl = User.create(username: "carlreiser4", email: "carlreiser4@gmail.com")
jack = User.create(username: "jficke2", email: "jficke77@gmail.com")
braden = User.create(username: "bskipark12", email: "bskipark@gmail.com")
com1 = Comment.create(content: "Nice post man", user_id: carl.id, post_id: post4.id)
com2 = Comment.create(content: "I hate this post", user_id: jack.id, post_id: post1.id)
com3 = Comment.create(content: "Lets hang out soon", user_id: braden.id, post_id: post3.id)
com4 = Comment.create(content: "I'm down to hang soon", user_id: carl.id, post_id: post3.id)
com5 = Comment.create(content: "I actually enjoyed this", user_id: braden.id, post_id: post2.id)
com6 = Comment.create(content: "Nvm dislike", user_id: braden.id, post_id: post2.id)
