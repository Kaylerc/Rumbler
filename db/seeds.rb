posts = [
  {username: 'j_bosslady',url: 'lorem pixum', content: 'lorem'},
  {username: 'Jess_dabest', url: 'lorem pixum', content: 'lorem'}
  {username: 'StephStayBlesssed', url: 'lorem pixum', content: 'lorem'}
]

posts.each do |p|
  Post.create(p)
end





require 'faker'

25.times do
  Post.create (
    username: Faker::Name.username,
    img: Faker::Img.
    content: Faker:
  )

end
