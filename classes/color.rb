
# Run like this > ruby color.rb red yellow green

class Color

  attr_reader :name, :count

  def name=(new_name)
    @name = new_name
  end

  def initialize(name, count = 1)
    # @ symbol makes this a class instance variable
    @name = name
    @count = count
  end

  def say_name
    print "my name is [#{@name}]" if @name != nil
  end

  def show_values
    values = {
      'count' => @count,
      'name' => @name,
      'customer' => 'Harrison Ford'
    }
    print values
  end

  public :name, :initialize, :say_name, :show_values

end


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
end

the_color.show_values

puts "EOT"
