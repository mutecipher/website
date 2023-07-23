class Post
  POST_ROOT = Rails.root.join("data", "posts", "*.md.erb")
  POST_FILES = Dir[POST_ROOT]

  def self.all
    POST_FILES.map do |path|
      Post.new(path)
    end
  end

  def self.published
    all.select(&:published?)
  end

  def self.find_by_title(title)
    Post.all.find do |post|
      post.title == title
    end
  end

  def self.find_by_slug(slug)
    Post.all.find do |post|
      post.slug == slug
    end
  end

  def initialize(path)
    @path = path
  end

  def slug
    frontmatter.fetch("slug")
  end

  def title
    frontmatter.fetch("title")
  end

  def description
    frontmatter.fetch("description")
  end

  def tags
    frontmatter.fetch("tags")
  end

  def body
    strip_frontmatter!
  end

  def published?
    frontmatter.fetch("published")
  end

  def created_at
    frontmatter.fetch("date")
  end

  def image
    frontmatter.fetch("image", nil)
  end

  def has_tag?(tag)
    tags.include?(tag)
  end

  private

  def file
    File.read(@path)
  end

  def frontmatter
    YAML.load(file)
  end

  def strip_frontmatter!
    file.gsub(/---(.|\n)*---(\n)*/, "")
  end
end
