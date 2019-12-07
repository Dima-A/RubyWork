class String

  def palindrome?
    str = self.dup
    str.gsub!(/\W/, '')
    str.downcase!
    correct = true
    len = str.length - 1
    str.split(//).each do |i|
      if !correct
        break
      end
      if str[i] == str[len]
        len -= 1
      else
        correct = false
        break
      end
    end
    correct
  end

  def check_len(str)
    str.length == 0
  end

  def valid_brackets?
    stack = []
    self.split(//).each do |i|
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

end

#puts("Checking brackets...")
#puts("()(()())".valid_brackets?) #=>true
#puts(")())".valid_brackets?) #=>false
#puts("qwerty()".valid_brackets?) #=>true
#puts("Checking palindrome...")
#puts("taco cat".palindrome?) #=>true
#puts("A man, a plan, a canal, Panama!".palindrome?) #=>true
#puts("abcdcba".palindrome?) #=>true