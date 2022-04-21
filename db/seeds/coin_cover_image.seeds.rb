begin
  images = 0
  Coin.all.each do |coin|
    relative_filename = "#{coin.code.downcase}.png"
    # Get sources from iCloud
    if coin.crypto?
      source_dir = "/Users/zhenya/Library/Mobile Documents/com~apple~CloudDocs/Development/Projects/Tra/Coins/Crypto"
    else
      source_dir = "/Users/zhenya/Library/Mobile Documents/com~apple~CloudDocs/Development/Projects/Tra/Coins/Fiat"
    end
    source_file = "#{source_dir}/#{relative_filename}"

    if File.exist? source_file and not coin.cover_image.present?
      coin.cover_image.attach io: File.open(source_file), filename: relative_filename
      images += 1
    end
  end
  puts "===== #{images} Coin Cover Images uploaded"
rescue
  puts "----- Achtung! Something went wrong..."
end