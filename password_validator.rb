file_path = 'passwords.txt'

valid_count = File.readlines(file_path).count do |line|
  symbol, range, password = line.split(" ")
  range_start, range_end = range.split("-").map(&:to_i)
  symbol_count = password.count(symbol)
  (range_start..range_end).include?(symbol_count)
end

puts "Number of valid passwords: #{valid_count}"
