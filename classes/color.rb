
# Run like this > ruby color.rb red yellow green

class Color

  def initialize(name, count = 1)
    # @ symbol makes this a class instance variable
    @name = name
    @count = count
  end

  def say_name
    print "my name is[#{@name}]"
  end

  def show_values
    values = {
      count => @count,
      name => @name,
      customer => 'Harrison Ford'
    }
    print values
  end

end


color_options = ['red', 'green', 'blue']
color_options.each do |color|
  puts "color option[#{color}]"
end

the_color = Color.new("pale green")
the_color.say_name

if not ARGV.empty?
  puts ARGV
  puts ARGV.length
end

the_color.show_values

puts "EOT"
