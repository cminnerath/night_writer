class NightWriter
  attr_accessor :array

  def initialize(input = ARGV[0])
    @input  = input
    @output = ARGV[1]
  end

  def take_input
    @array = File.readlines("#{@input}", "r")
  end
end
