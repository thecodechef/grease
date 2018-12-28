require 'spec_helper'


describe Grease::CLI do
  subject { Grease::CLI.start['say_hello'] }
  it { should say 'Hello World' }
end
