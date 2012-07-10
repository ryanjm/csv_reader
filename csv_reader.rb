# opens file
f = File.new('small.csv','r')
# grab all the lines (array)
lines = f.readlines
# header will be first line, take it out and strip white space
headers = lines.shift.strip
keys = headers.split(',')
# value to hold presidents
presidents = []
# loop over remaining lines
lines.each do |line|
  values = line.strip.split(',')
  params = {}
  keys.each_with_index do |key,i|
    params[key] = values[i]
  end
  presidents << params
end
puts "Presidents:"
puts presidents
