module App
  def self.usage 
    puts "Usage: #{$0} 5 purple"
    exit
  end 

  def self.command_line_arguments
    [ARGV[0].to_i, ARGV[1]&.to_s&.to_sym || :purple]
  end
end