class Application
  # your code here
end

class User
  attr_accessor :handle, :picture, :followers, :tweets

  def initialize
    self.tweets = []
  end

  def tweet(content)
    tweet = Tweet.new
    tweet.content = content
    tweet.author = self
    self.tweets.push tweet
    # your code here
    check_for_hashtags(tweet)
  end

  private

  def check_for_hashtags(tweet)
    content = tweet.content
    hashtags = content.scan(/#\w+/)
    if !hashtags.empty?
      hashtags.each do |h|
        stripped_topic = h.gsub('#', '')
        topic = Topic.new
        topic.title = stripped_topic
        # your code here
      end
    end
  end
end

class Zombie < User
  attr_accessor :brains_consumed_in_gallons

  def initialize
    self.brains_consumed_in_gallons = 0
    super
  end
end

class LivingHuman < User
  attr_accessor :zombie_kill_count
end

class Tweet
  attr_accessor :content, :author, :timestamp

  def initialize
    self.timestamp = Time.now
  end
end

class Topic
  attr_accessor :title
end
