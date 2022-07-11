def who_is_bigger(a,b,c)
  if a==nil or b==nil or c==nil
    return "nil detected"
  end
  biggest = [a,b,c].max
  if biggest==a
    return "a is bigger"
  elsif biggest==b
    return "b is bigger"
  elsif biggest==c
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(str)
  str = str.reverse
  str = str.upcase
  str = str.delete"TLA"
  return str
end

def array_42(arr)
  return arr.include? 42
end

def magic_array(arr)
  return arr.flatten.uniq.sort{|x,y|x<=>y}.delete_if{|x|x.%(3)==0}.map{|x|x*2}
end