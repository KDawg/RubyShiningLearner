
# Run like this > ruby color.rb red yellow green

class Color

  def initialize(name, count = 1)
    # @ symbol makes this a class instance variable
    @name = name
    @count = count
    print "my name is[#{@name}]"
  end

  def showValues
    values = {
      'count' => @count,
      'name' => @name,
      'customer' => 'Harrison Ford'
    }
    print values
  end

end

colorOptions = ['red', 'green', 'blue']
colorOptions.each do |color|
  puts "color option[#{color}]"
end

theColor = Color.new("pale green")

if not ARGV.empty?
  puts ARGV
  puts ARGV.length
end

theColor.showValues

puts "EOT"
