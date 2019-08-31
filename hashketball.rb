def num_points_scored(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, data|
      if player == name
        return data[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, data|
      if player == name
        return data[:shoe]
      end
    end
  end
end

def team_colors(name)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == name
      return team_data[:colors]
    end
  end
end

def team_names
  team_array = []
  game_hash.each do |location, data|
     team_array << data[:team_name]
   end
   team_array
end

def player_numbers(name)
  jersey_nums = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == name
      team_data[:players].collect do |player, data|
        jersey_nums << data[:number]
      end
    end
  end
  jersey_nums
end

def player_stats(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, data|
      if player == name
        return data
      end
    end
  end
end

def big_shoe_rebounds
  shoe_size = []
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, data|
      shoe_size << data[:shoe]
    end
  end
  largest_shoe = shoe_size.sort[-1]
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, data|
      if data[:shoe] == largest_shoe
        return data[:rebounds]
      end
    end
  end
end