source 'https://rubygems.org'
#source 'http://gems.github.com'

gem 'rails', '4.0.2'

# STORAGE ###################################################################
gem 'pg'

# - Use Carrierwave for uploading files
#gem 'carrierwave'
# - Use Carrierwave with imagesorcery for image manipulation
#gem 'carrierwave-imagesorcery'

# - Use Paperclip for file uploading instead
gem "paperclip", "~> 3.0"
gem 'acts-as-taggable-on', github: "mbleigh/acts-as-taggable-on"
gem 'best_in_place',
  :git => 'https://github.com/bernat/best_in_place.git',
  :branch => 'rails-4'


# ADMINISTRATION/MANAGEMENT ##################################################
gem 'devise'
gem 'rolify'


# PRESENTATION ##############################################################
# - Use zurb foundation framework
gem 'foundation-rails'
gem 'font-awesome-sass'
gem "bourbon"
gem "haml-rails"
gem 'jquery.fileupload-rails'
gem "mediaelement_rails"

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Using Simple_Form for form helper
gem "simple_form", git: "https://github.com/plataformatec/simple_form"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'


# SECURITY ##################################################################
# - Use ActiveModel has_secure_password
gem "bcrypt-ruby"

# - uuid utility
gem "uuidtools"

# - use CanCan for authorization  docs: http://rdoc.info/github/ryanb/cancan
gem "cancan"



# DEPLOYMENT ################################################################
# - Use unicorn as the app server
# gem 'unicorn'

# - Use Capistrano for deployment
#gem 'capistrano', '~> 3.0', require: false, group: :development
#gem 'capistrano-rails', '~> 1.1.0'
#gem 'capistrano-bundler', '>= 1.1.0'
#gem 'capistrano-rvm', '~> 0.1.0'
#gem 'capistrano3-unicorn', require: false, group: :development



# MONITORING ################################################################
# - Use Segment.io for monitoring docs: https://segment.io/libraries/ruby#getting-started
gem "analytics-ruby"



# ETC #######################################################################
#group :assets do
#	gem 'compass-rails'
#end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem "rspec-rails"
#  gem "guard-rspec"
  gem 'rails_layout', github: 'RailsApps/rails_layout'
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"
end

group :test do
  # docs https://github.com/cucumber/cucumber/wiki
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end

group :production do
  gem "rails_12factor"
end
