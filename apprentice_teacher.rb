require_relative 'basic_developer'
require_relative 'developer_mod'
require_relative 'teacher_mod'

class ApprenticeTeacher < BasicDeveloper
  include DeveloperMod
  include TeacherMod
  attr_reader :salary, :target_raise
  attr_accessor :phase

  def initialize(options={})
    # @age = options.fetch(:age, 0)
    # @name = options.fetch(:name, "")
    super(options)
    @target_raise = 800
    @phase = 3
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
