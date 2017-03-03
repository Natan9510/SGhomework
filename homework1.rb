class String
  def valid?
    arr = []
    brackets = { '{' => '}', '[' => ']', '(' => ')', '<' => '>' }
    each_char do |br|
      if brackets.key?(br)
        arr << br
      elsif arr.pop == brackets[br]
      else return false
      end
    end
    brackets.empty?
  end
end

p "[)])".valid?
