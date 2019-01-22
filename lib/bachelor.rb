def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |info|
       info.each do |key,value|
        if value == "Winner"
            full_name = info["name"]
            return full_name.split(' ').first
        end
      end
    end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |info, array|
    array.each do |name|
      name.each do |k,v|
        if v == occupation
          return name["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |info, array|
    array.each do |home|
      home.each do |k,v|
        if v == hometown
          counter += 1
        end
      end
    end
  end
counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |info, array|
    array.each do |home|
      home.each do |k,v|
        if v == hometown
          return hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  c = 0
  data[season].each do |info|
    info.each do |k,v|
      if k == "age"
        c += 1
        age += v.to_f
      end
    end
  end

   answer = (age/c).round
return answer
end
