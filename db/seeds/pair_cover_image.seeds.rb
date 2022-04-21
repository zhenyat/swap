begin
  images = 0
  Pair.all.each do |pair|
    relative_filename = "#{pair.name.downcase}.png"
    # Get sources from iCloud
    source_dir = "/Users/zhenya/Library/Mobile Documents/com~apple~CloudDocs/Development/Projects/Tra/Pairs"
    source_file = "#{source_dir}/#{relative_filename}"

    if File.exist? source_file and not pair.cover_image.present?
      pair.cover_image.attach io: File.open(source_file), filename: relative_filename
      images += 1
    end
  end
  puts "===== #{images} Pair Cover Images uploaded"
rescue
  puts "----- Achtung! Something went wrong..."
end