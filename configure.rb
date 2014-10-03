def my_twitter_client
  Twitter::REST::Client.new do |config|
      config.consumer_key       = 'z8Qtk8oBgM2ykx8igIQa5Dbjq'
      config.consumer_secret    = 'Ma0mfqGh1iF17vEe6P9lArtwo8Ik8MpZnO5gCjCyYSyLtiN7Ve'
      config.oauth_token        = "85652810-2hBxsypy8WF6Cadun46cunplIpAhGksndzGRVK1gU"
      config.oauth_token_secret = "CKldAFFAQc0v7ssVS4RTd7gbcV3FcwHJsZFePCWwi1duJ"
  end
end

