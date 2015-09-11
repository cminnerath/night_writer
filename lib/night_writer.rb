class NightWriter
  attr_accessor :array
  attr_reader :array1, :array2, :array3

  def initialize(input = ARGV[0])
    @input  = input
    @output = ARGV[1]
    @array = []
    take_input
  end

  def take_input
    File.read("#{@input}").each_line do |line|
      @array << line.chop
    end
    @array.each_slice(1).with_index(1) do |group, index|
      instance_variable_set "@array#{index}".to_sym, group
    end
    @array
  end

end
