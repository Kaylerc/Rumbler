posts = [
  {fname: 'Jon', lname: 'Doe', email: 'e@example.com'},
  {fname: 'Jane', lname: 'Doe', email: 'e@example.com'}
]

posts.each do |p|
  Post.create(p)
end
