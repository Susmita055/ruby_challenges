def ordinal(n)
  case  n % 100
           when 11, 12, 13 
            return "#{n}th"
           else
             case n % 10
             when 1 
              return "#{n}st"
             when 2 
              return "#{n}nd"
             when 3 
              return "#{n}rd"
             else 
              return "#{n}th"
             end
           end

  
end

puts ordinal(111) 