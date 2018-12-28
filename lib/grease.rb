
require 'thor'
require 'thor/actions'

module Grease
  class CLI < Thor
    include Thor::Actions

    add_runtime_options!

    desc "say_hello", "Hello World!"
    def say_hello
      puts "Hello World"
    end

  end
end
