# frozen_string_literal: true

require "bundler"
Bundler.setup
Bundler::GemHelper.install_tasks

require "rake"
require "fileutils"
require "pathname"

task :clobber do
  rm_rf 'pkg'
  rm_rf 'tmp'
  rm_rf 'coverage'
  rm_rf '.yardoc'
end

namespace :git do
  task :pre_commit do
    system "This a being Commited"
  end
  task :post_commit do
    system "This has been Commited"
  end
  task :pre_push do
    system "This a being Pushed"
  end
end
