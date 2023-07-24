class Blog::Post::PostedAt < ApplicationComponent
  def initialize(date:)
    @date = date
  end

  def formatted_date
    time = Time.parse(@date)
    Date.new(time.year, time.month, time.day).to_fs(:long)
  end
end
