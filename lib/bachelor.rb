def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |s_num, contestants|
    if s_num == season
     # data.[s][names]
      contestants.each do |person|
        if person["status"].downcase == "winner"
          return person["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |person|
      if person.values.include?(occupation)
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count_hometown = 0
  data.each do |s_num, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
          count_hometown += 1
      end
    end
  end
  return count_hometown
end

def get_occupation(data, hometown)
  data.each do |s_num, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  num_contestants = 0
  sum_age = 0
  data.each do |s_num, contestants|
    if s_num == season
      contestants.each do |person|
        num_contestants += 1
        sum_age += person["age"].to_f
      end
    end
  end
  average = sum_age/num_contestants
  return average.round
end
