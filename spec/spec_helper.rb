require 'simplecov'
require 'rspec/simplecov'


SimpleCov.profiles.define "grease" do

  add_group "Binaries", "/bin/"
  add_group "Features", "/features/"
  add_group "Libraries", "/lib/"
  add_group "Specs", "/spec/"

end

SimpleCov.minimum_coverage 95
SimpleCov.start "grease"

RSpec::SimpleCov.start

# RSpec.configure do |c|
#   $original_rspec_configuration = c
# end
