def get_first_name_of_season_winner(data, season)
data.each do |key, value|
  if key == season
    value.each do |contestant|
      if contestant.has_value?("Winner")
        return contestant["name"].split(" ")[0]
      end
    end
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key, value|
    value.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  temp_array = []
  contestant_counter = 0
  data.each do |key, value|
    if key == season
    value.each do |contestant|
      temp_array << contestant["age"].to_f
      contestant_counter += 1
    end
  end
end
  sum = 0
  temp_array.each do |number|
    sum += number
  end
  return (sum/contestant_counter).round
end
