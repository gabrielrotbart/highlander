module PayloadAdapters

  class TwitterMention < Base

    def user
      @user ||= begin
        Services::Twitter.find_or_initialize_by_username(twitter_username).tap do |user|
          user.
        end
      end
    end

    def tweet_id
      payload[:tweet_id]
    end

    def twitter_username
      payload[:twitter_username]
    end

  end

end
