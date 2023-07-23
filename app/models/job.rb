class Job
  attr_reader :range, :title, :company, :location, :href, :logo

  FILE = Rails.root.join("data", "jobs.yml")

  def self.all
    YAML.load_file(FILE).map do |job|
      Job.new(job["range"], job["title"], job["company"], job["location"], job["href"], job["logo"])
    end
  end

  def initialize(range, title, company, location, href, logo)
    @range = range
    @title = title
    @company = company
    @location = location
    @href = href
    @logo = logo
  end
end
