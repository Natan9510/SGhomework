require 'csv'
class Temp
  def read_file
    arr_of_arrs = CSV.read('/home/natasha/temperature.csv')
    arr_of_arrs.transpose
    @mounts = arr_of_arrs.transpose[0]
    @temp = arr_of_arrs.transpose[1]
    print @mounts
    print @temp
  end
end

t = Temp.new
puts t.read_file
