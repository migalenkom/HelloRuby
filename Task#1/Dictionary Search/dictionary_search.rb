class DictionarySearch
  def initialize(file_path)

    @path=file_path

  end

  def word_pairs
    @result=[]
    @valarray=[]
    @alphabet=('a'..'z').to_a
    @hash={}
    File.readlines(@path).each do |line|

      @hash.has_key?(:"#{line.size-2}") ? @valarray = @hash.fetch(:"#{line.size-2}") : @valarray=[]

      @hash[:"#{line.size-2}"]= @valarray << line.delete!("\r\n")

    end

    @hash.each do |k, v|

      if k==:"1" || k==:"2" ;next; end

      for bukva in ('a'..'z')

        test = v.select { |q| q =~ /\b["#{bukva}"]/ }

        test.each do |el|
          resultitem=[]
          if el[-2] == el[-1]
            next
          end

          test.each do |item|

            if item.eql?("#{el[0..-3]}#{el[-1]}#{el[-2]}")

              res = resultitem << item <<  el 

              @result << res
              test.delete(item)

            end
          end
        end
      end
    end
    @result
  end
end


#test = DictionarySearch.new("./wordsEn.txt")
#test.word_pairs