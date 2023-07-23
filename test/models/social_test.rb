require "test_helper"

class SocialTest < ActiveSupport::TestCase
  def setup
    @social = Social.new("Sample", "https://www.sample.com/")
  end

  test ".all" do
    assert_equal 4, Social.all.size
  end

  test "#name" do
    assert_equal "Sample", @social.name
  end

  test "#url" do
    assert_equal "https://www.sample.com/", @social.url
  end

  test "#to_sym" do
    assert_equal :sample, @social.to_sym
  end
end
