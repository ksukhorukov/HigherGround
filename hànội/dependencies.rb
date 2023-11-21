require 'pry'
require 'colorize'

require_relative './towers.rb'
require_relative './app_helpers.rb'

module Dependencies
  def self.included(base) 
    ::App::usage if ARGV.size.zero?
  end

  def self.arguments
    @arguments ||= ::AppHelpers.arguments
  end
end