class DogCatcher
  attr_accessor :lines
  
  def initialize
    @psx = `ps x`
    @lines = @psx.split(/\n/).collect{|l| DogCatcher.parse_line(l) }
  end
  
  def self.parse_line( string )
    arr = string.split(' ')
    { :pid    => arr[0].to_i,
      :prog   => arr[4],
      :args   => arr[5..arr.length-1].join(" ") 
    }
  end

  def self.stop_mongrel!( m )
    puts "Sending 'TERM' to mongrel running on #{m[:pid]}"
    Process.kill("TERM", m[:pid])
  end
  
  def running_rubies
    self.lines.select{|l| l[:prog] == "ruby" }
  end
  
  def running_mongrels
    self.lines.select{|l| l[:args] =~ /mong/}
  end
  
  def self.guess_port( m )
    port_arg = m[:args].scan(/(-p\s\d*)/).first
    port_arg ? port_arg.first.split(" ").last : "3000"
  end
  
  def stop_all_mongrels!
    self.running_mongrels.each{|m| DogCatcher.stop_mongrel! m }
  end
  
end

