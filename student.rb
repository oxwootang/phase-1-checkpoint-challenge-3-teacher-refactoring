require_relative 'basic_developer'
require_relative 'developer_mod'

class Student < BasicDeveloper
  include DeveloperMod
  attr_accessor :phase

  def initialize(options = {})
    super(options)
    @phase = 1
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
  end

  def learn_stuff
    response = "WHOA! I've never thought of it quite like that before. Now I feel like a genius!"
  end

end
