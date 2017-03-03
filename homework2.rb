class Integ

  def prime?(x)
    if x <= 1
      return false
    elsif Math.sqrt(x).to_i.downto(2).each { |i| return false if x % i == 0 }
      return true
    end
  end


  def put(num)
    str = (0..num).select { |num| prime?(num) }
    str.count.times do |i|
      pr = (str[i...str.count] + str[0...i])
      pr.each do |i|
        print "#{i}" + "#{', ' unless i == pr.last}"
      end
      puts
    end
  end
end

int = Integ.new
int.put(10)
