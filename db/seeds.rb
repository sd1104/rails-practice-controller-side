10.times do |n|

  User.create(
    :nickname => "testuser#{n+1}",
    :email => "testuser#{n+1}@gmail.com",
    :password => "testuser#{n+1}"
  )

  Tweet.create(
    :text => "testtweet#{n+1}",
    :image => "https://1.bp.blogspot.com/-noejtvMJM8Q/V4SA7f_DLbI/AAAAAAAA8OM/Ajwehtq2jCgO2QvPdxGJz5I290VyUZVLQCLcB/s800/dog_akitainu.png",
    :user_id => (n+1)
  )

  Comment.create(
    :text => "test#{n+1}",
    :user_id => (n+1),
    :tweet_id => (n+1)
  )

end