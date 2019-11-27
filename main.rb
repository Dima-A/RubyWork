
def check_len(str)
  str.length == 0
end

def check(str)
  stack = []
  str.split(//).each do |i|
    if i == '('
      stack.append(i)
    else
      if i == ')' && !check_len(stack)
        stack.pop()
      elsif i == ')' && check_len(stack)
        stack.append(i)
        break
      end
    end
  end
  check_len(stack)
end

puts(check('()(()())'))
puts(check(')())'))
puts(check('qwerty()'))