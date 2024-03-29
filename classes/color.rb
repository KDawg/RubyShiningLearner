
# Run like this > ruby color.rb red yellow green

DEFAULT_CUSTOMER_NAME = 'Harrison Ford'   # constant


class Color

  attr_reader :name, :count     # expose public get interfaces

  def name=(new_name)           # expose public set interface
    @name = new_name
  end

  def initialize(name, count = 1)
    # @ symbol makes this a class instance variable
    @name = name
    @count = count
  end

  def say_name
    puts compute_name
  end

  def compute_name
    return "my name is [#{@name}]" if @name != nil
  end

  def show_values
    values = {
      :count => @count,
      :name => @name
    }
    values[:customer] = DEFAULT_CUSTOMER_NAME
    puts values
  end

  public :name, :initialize, :say_name, :show_values
  protected :compute_name

end


=begin
  This is a long comment block
  extending as many lines as I want it to
=end


color_options = ['red', 'green', 'blue', 42.1234]
color_options.each do |color|
  puts "color option[#{color}]"
end

the_color = Color.new("pale green")
the_color.say_name
puts the_color.count
puts the_color.name
the_color.name = "Scarlett Johanson"
puts the_color.name

if not ARGV.empty?
  puts ARGV
  puts ARGV.length
else
  puts "Usage: color value1 value2 ... valueN"
end

the_color.show_values

puts "EOT"
