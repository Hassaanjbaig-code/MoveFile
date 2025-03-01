require("fileutils")
# check = File.basename('2023_05_08_10_36_IMG_0852.JPG', ".JPG")

# p check.split('_')[0] == "2025"

source_dir = "2025"
check_dir = Dir.entries(source_dir)
check_dir_located = Dir.entries(".")

# p check_dir_located.include?("2025")
remaining = []
# p File.basename(check_dir[3])
# p File.extname(check_dir[3])

main_year = '2025'
main_month = "02"
# p File.basename(check_dir[2]).split("_")[1]

check_dir.each do |file|
  next if file == '.' || file == '..'

  if File.basename(file).split("_")[1] == main_month
    unless check_dir.include?(main_month)
      puts "Going for making folder"
      FileUtils.mkdir_p("./#{main_year}/#{main_month}")
      # sleep 1
    end
    # FileUtils.mv("./Check the JPG/#{file}", "./#{main_month}/#{file}")
    FileUtils.mv("./#{main_year}/#{file}", "./#{main_year}/#{main_month}/#{file}")
    puts "Done"
  else
    remaining.push(File.basename(file))
  end
end


p remaining
