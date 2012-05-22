require 'LexiconParser'
#general happy sad anger fear disgust surprise
class SentimentAnalyzer

 def initialize
  @lex_parser = LexiconParser.new()
  @input_file = File.read('input.txt').split
  @total_weights = [0,0,0,0,0,0,0]
 end

 def start_analysis
  for i in 0..@input_file.size-1
   @lex_parser.search_string = @input_file[i]
   @holder = @lex_parser.find
   if @holder.nil?
    next
   end
   #puts @holder
   #@total_weight = @total_weight + Float( @holder[1])
   for k in 0..6
    @total_weights[k] = @total_weights[k] +  Float(@holder[k+1])
   end
  end
  #puts @total_weights
 end
 
 def get_weights
  return @total_weights
 end 

end

#s_a = SentimentAnalyzer.new()
#s_a.start_analysis
