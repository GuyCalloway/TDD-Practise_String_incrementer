def incrementer(input)
  
    sep_nums = input.split("")
    number_array = []
    
    i = index(sep_nums.reverse)
    nums = sep_nums[i..-1]
    x = number_i(nums)
   
    if input[-1] == "0"
        return input.chop + "1"
    elsif input[-1].to_i == 0
        return input + "1"
    
    else
      number_array += sep_nums[i+x..-1]
      number = number_array.join.to_i
      
      if number_array_check(number_array, nums)
        sep_nums[0...i+x-1].join + "#{number + 1}"
      else
        return sep_nums[0...i+x].join + "#{number + 1}"
      end
    end
end


def index(arr)
    j = 0
    arr.each_with_index { |x, i| if /\A\d+\z/ === x
                                 else
                                   j = i
                                   break
                                 end
                        }
     index = arr.length - j
end

def number_array_check(arr, y)
   (all_equal?(arr) && arr.include?("9")) && (arr.length != y.length)
end


def all_equal?(arr)
  arr.uniq.size <= 1
end 




def number_i(arr)
    n = 0
    arr.each_with_index {|x, i| if x.to_i != 0 
                                  n = i
                                  return n
                                  break
                                end
                         }                             
end