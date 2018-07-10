def begins_with_r(tools)
  tools.all?{ |tool| tool.start_with?("r") }
  
end

def contain_a(array)
  array_with_a = []
  array.each do |string|
    if string.include? "a"
      array_with_a.push(string)
    end
  end
  return array_with_a
end

def first_wa(array)
  array.each do |element|
    if element.is_a? String
      if element.start_with?("wa")
        return element
      end
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.collect do |element|
    if element.is_a? String 
      new_array.push(element)
    end
  end
  return new_array 
end

def count_elements(array)
  new_hash = {}
  array.each do |element|
    if new_hash[element[:name]] != nil
      new_hash[element[:name]] = new_hash[element[:name]] + 1
    else
      new_hash[element[:name]] = 1
    end
  end
  
  new_array = []
  new_hash.each do |person, number|
    new_array.push({:name=> person, :count=> number})
  end
  return new_array
end

def merge_data(keys, data)
  new_array = []
  merge_data = []
  data.each do |person|
    person.each do |name, details|
      new_array.push(details)
    end
  end
 
  keys.each do |key|
    i = keys.index(key)
    element = key.merge!(new_array[i])
    merge_data.push(element)
  end
  return merge_data
end  

def find_cool(cool)
  cool_array = []
  cool.each do |person|
    if person[:temperature] == "cool"
      cool_array.push(person)
    end
  end
  return cool_array
end

def organize_schools(schools)
  org_schools = {}
  schools.each do |sch, loc|
    if org_schools[loc[:location]] == nil
      org_schools[loc[:location]] = []
    end
    org_schools[loc[:location]].push(sch)
    
  end
    
  return org_schools
end
  