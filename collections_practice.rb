# your code goes here
def begins_with_r(array)
  new_array = array.select { |e| e if e.start_with?("r")  }

  if new_array == array
    true
  else
    false
  end
end

def contain_a(array)
  new_array = array.select {|e| e if e.include?("a")}

end

def first_wa(array)
  first = array.find { |e| e.is_a?(String) and e.start_with?("wa") }

end

def remove_non_strings(array)
  strings = array.select {|e| e.is_a?(String)}

end

def count_elements(array)

  unique = array.uniq

  unique.each do |el|
    counter = 0
    array.each do |k|
      if k == el
        counter += 1
      end
    end
    el[:count] = counter
  end
  unique
end

def merge_data(array1, array2)
  merged = []
  array1.each do |el|
    el.each do |k, v|
      array2.each do |el2|
        el2.each do |k2, v2|
          if k2 == v
            merged << el.merge(v2)
          end
        end
      end
    end
  end
  merged
end

def find_cool(array)
  new_array = []
  array.each do |el|
    if el.has_value?("cool")
      new_array << el
    end
  end
  new_array
end

def organize_schools(hash)

  locations = {}

  hash.each_key do |k|
    if locations.include?(hash[k][:location]) == false
      locations[hash[k][:location]] = [k]
    else
      locations[hash[k][:location]] << k
    end
  end
  locations
end
