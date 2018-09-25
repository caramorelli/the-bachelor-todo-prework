def get_first_name_of_season_winner(data, season)
 data.each do |key, val|
   if season == key 
    val.first.each do |k, v|
      return v.split(' ').first if k == 'name'
     end 
   end 
 end 
end

def get_contestant_name(data, occupation)
 data.each do |key, val|
  val.each do |name|
   return name["name"] if name["occupation"] == occupation
  end 
 end 
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |key, val|
  val.each do |name|
   count += 1 if name["hometown"] == hometown
  end 
 end 
 count
end

def get_occupation(data, hometown)
 data.each do |key, val|
  val.each do |name|
   return name["occupation"] if name["hometown"] == hometown
  end 
 end 
end

def get_average_age_for_season(data, season)
 age_count = 0
 total_ppl = data[season].length
 data.each do |key, val|
   if season == key
     val.each do |name|
      age_count += Integer(name["age"])
    end 
  end 
 end
  return age_count / total_ppl
 
end

