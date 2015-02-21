require "ysrmailParser/version"

module YsrmailParser
  class YsrMail
 def test
  require 'socket'
  tempArray = []
  File.open("/home/#{Socket.gethostname}/Desktop/t1.csv", 'r') do |f|
    while line = f.gets
      regex = Regexp.new(/\Wdestination\W+(\b\w+\D\w+\D\w+.+\w+)"\]/)
      t1 = line.scan(regex)
      tempArray << t1
    end
  end
  temp = tempArray.reject(&:empty?)
  j = 0
  i = 0
  sortedArray = temp.sort
  countRepetedEmail = 1
  while j < temp.count do
    if sortedArray[i] != sortedArray[i+1]
      puts sortedArray[i]
      puts " Repeted Count =  #{countRepetedEmail}"
      countRepetedEmail = 1
    else
      if sortedArray[i] == sortedArray[i+1]
        countRepetedEmail +=1
      end
    end
    i+=1
    j+=1
  end
 end
 end
end
