class PostGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  desc "This generator creates a post file at data/posts"

  argument :tags, type: :array, default: [], banner: "tag"

  def create_post_file
    template "post.md.erb", "data/posts/#{formatted_date}-#{formatted_file_name}.md.erb"
  end

  private

  def formatted_file_name
    file_name.gsub(/\s+/, "-").downcase
  end

  def formatted_date
    Time.zone.today.to_s
  end

  def slug
    name.downcase.tr(" ", "-")
  end
end
