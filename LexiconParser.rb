class LexiconParser
 attr_accessor :search_string
 
 def initialize
  puts "Initialized Lexicon Parser"
  lexicon = File.open('synesketch_lexicon.txt')
  @linewise_array = lexicon.readlines
 end

 def find
  for index in 0..@linewise_array.size-1
   indexed_word = @linewise_array[index].split(" ")
   if indexed_word[0] == search_string
    return indexed_word
   end    
  end
  return nil
 end

end
