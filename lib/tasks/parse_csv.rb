File.open("zip_codes.csv", "r+") do |f|
  f.each_line do |zip|
    puts zip
  end
end