require_relative 'basic_developer'
require_relative 'developer_mod'
require_relative 'teacher_mod'

class SeniorTeacher < BasicDeveloper
  include DeveloperMod
  include TeacherMod
  attr_reader :salary, :performance_rating, :target_raise
  attr_accessor :phase

  def initialize(options={})
    super(options)
    @phase = 3
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    @target_raise = 1000
  end

  def lead_training_session
    puts "Hey newbie!  Here are some common pitfalls.  Don't fall in them!"
  end
end
