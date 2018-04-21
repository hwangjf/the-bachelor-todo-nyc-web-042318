def get_first_name_of_season_winner(data, season)
  a = []
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      a.push(contestant["name"])
      for i in 0..a[0].length
        if a[0][i] == " "
          return a[0][0, i]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant|
    contestant.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  tot_age = 0
  data.each do |season, contestant|
    contestant.each do |contestant|
      z = contestant["age"].to_i
      tot_age += z
    end
  end
  puts tot_age
  puts data[season].length
  # return (tot_age / data[season].length)
end
