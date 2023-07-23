require "test_helper"
require "generators/post/post_generator"

class PostGeneratorTest < Rails::Generators::TestCase
  tests PostGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
