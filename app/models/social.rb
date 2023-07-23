class Social
  attr_reader :name, :url

  SOCIAL_ROOT = Rails.root.join("data", "socials.yml")

  def self.all
    YAML.load_file(SOCIAL_ROOT).map do |social|
      Social.new(social["name"], social["url"])
    end
  end

  def initialize(name, url)
    @name = name
    @url = url
  end

  def to_sym
    @name.downcase.to_sym
  end
end
