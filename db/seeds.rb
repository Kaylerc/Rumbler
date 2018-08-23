
# require 'faker'
#
# 5.times do
#   post1 = Post.new(
#       username: 'j_bosslady',
#       image_url: 'https://images.pexels.com/photos/365347/pexels-photo-365347.jpeg?auto=compress&cs=tinysrgb&h=350',
#       content: 'Love this')
#
#   post2 = Post.new(
#       username: 'Jess_dabest',
#       image_url: 'https://images.pexels.com/photos/194075/pexels-photo-194075.jpeg?auto=compress&cs=tinysrgb&h=350',
#       content: 'Thinking about getting this')
#
#   post3 = Post.new(
#       username: 'StephStayBlesssed',
#       image_url: 'https://images.pexels.com/photos/772850/pexels-photo-772850.jpeg?auto=compress&cs=tinysrgb&h=350',
#       content: 'What do you think')
#
#   post4 = Post.new(
#       username: 'j_bosslady',
#       image_url: 'https://images.pexels.com/photos/911704/pexels-photo-911704.jpeg?auto=compress&cs=tinysrgb&h=350',
#       content: 'so cool')
#
#   post5 = Post.new(
#       username: 'Jess_dabest',
#       image_url: 'https://images.pexels.com/photos/1913/iceland-person-arm-art.jpg?auto=compress&cs=tinysrgb&h=350',
#       content: 'cute!')
#
#   post6 = Post.new(
#       username: 'StephStayBlesssed',
#       image_url: 'https://images.pexels.com/photos/1249214/pexels-photo-1249214.jpeg?auto=compress&cs=tinysrgb&h=350', content: 'DOPE!')

posts = [
  {username: 'Fred', content: 'I love this', image_url: 'https://images.pexels.com/photos/194075/pexels-photo-194075.jpeg?auto=compress&cs=tinysrgb&h=350'},
  {username: 'Jane', content: 'I love this', image_url: 'https://images.pexels.com/photos/194075/pexels-photo-194075.jpeg?auto=compress&cs=tinysrgb&h=350'}
]

posts.each do |u|
  Post.create(u)
end


#
# post1.save
# post2.save
# post3.save
# post4.save
# post5.save
# post6.save
# end
