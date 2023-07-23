class Blog::Post::PostedAt < ApplicationComponent
  def initialize(date:)
    @date = date
  end

  def formatted_date
    distance_of_time_in_words(@date, Time.now)
  end
end
