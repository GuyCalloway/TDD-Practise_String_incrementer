def incrementer(input)
  
    sep_nums = input.split("")
    number_array = []
    j = 0

    sep_nums.each_with_index { |x, i| if x.to_i != 0
                                   number_array += sep_nums[i..-1]
                                   j = i
                                   break
                                 end
    }

    number = number_array.join.to_i

    if j == 0 && input[-1].to_i == 0
        return input + "1"
    else
      return sep_nums[0...j].join + "#{number + 1}"
    end

end




#reverse