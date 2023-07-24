source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "bcrypt"
gem "bootsnap", require: false
gem "importmap-rails"
gem "inline_svg"
gem "kramdown"
gem "kramdown-parser-gfm"
gem "propshaft"
gem "puma"
gem "rails", github: "rails/rails", branch: "main"
gem "rouge"
gem "sqlite3"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "turbo-rails"
gem "view_component"

group :development, :test do
  gem "debug"
  gem "flog"
  gem "standard"
end

group :development do
  gem "lookbook"
  gem "memory_profiler"
  gem "rack-mini-profiler", require: false
  gem "stackprof"
  gem "web-console"
end

group :test do
  gem "brakeman"
  gem "bundler-audit"
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
