# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Diablo3::Application.initialize!

Date::DATE_FORMATS[:default] = "%d %b %Y"
Time::DATE_FORMATS[:default] = "%d %b %Y %H:%M"