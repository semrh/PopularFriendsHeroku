def my_twitter_client
  Twitter::REST::Client.new do |config|
    config.consumer_key        = 'wUOvnI433P3QXWbloU2seg'
    config.consumer_secret     = 'Kk8Azwl6ksARgWMTdncCpAgGsSzRM2O52vAVJJHPFvM'
    config.access_token        = '385906382-AQ6Ybj8wZZeHBL4cnMhXTtI7K2byBJs9LcXxDE1o'
    config.access_token_secret = 'Vx9OjFi04910PLRLWou2oKDYQ1uJUF7LKOjGnI1Ufw'
  end
end

