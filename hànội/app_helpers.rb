module AppHelpers
  def self.usage 
    puts "Usage: #{$0} 5 purple"
    exit
  end 

  def self.arguments
    { n: ARGV[0].to_i, color: ARGV[1]&.to_s&.to_sym || :purple }
  end
end