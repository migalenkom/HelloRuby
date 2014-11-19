class DictionarySearch
  def initialize(file_path)

    @path=file_path

  end

  def word_pairs

    @result={}
    @valArray= []
    @hash={}
    File.readlines(@path).each do |line|

      @hash.has_key?("#{line.size-2}") ? @valArray = @hash.fetch("#{line.size-2}") : @valArray=[]

      @hash["#{line.size-2}"]= @valArray << line.chomp

    end
    @hash.each do |k, v|

      if k=="1" || k=="2" ;next; end
        v.each do |el|
        if @result.has_key?("#{el[0..-3]}#{el[-1]}#{el[-2]}")
          if el != "#{el[0..-3]}#{el[-1]}#{el[-2]}"
            @result["#{el[0..-3]}#{el[-1]}#{el[-2]}"] = el
          end
        else
          @result["#{el}"] = nil
        end
      end
    end

    @result.delete_if {|key, value| value == nil}
    @result.to_a
  end
end

test = DictionarySearch.new("./wordsEn.txt")
print test.word_pairs
## add some code here for pull request
#
#
#
###