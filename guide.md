posts#new
  check boxes for us to select categories
  text field to create a new category
    Category name that already exists should not create a new category
    already exists, we should select it from the database

posts#show
  title
  content
  All of the comments associated with the post.
  unique users who have commented on the post.
    a user's name should only show up once in this section, even if they've commented multiple times
  a form to add a new comment
      The form should have a drop-down menu to select a user
      We should also be able to create a new user here and automatically associate it with the post

users#show
  links to all of the posts a user has commented on

categories#show
  links to all of the posts associated with a given category
