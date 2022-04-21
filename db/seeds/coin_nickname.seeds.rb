begin
  if (CoinNickname.present? and not CoinNickname.exists?)
    CoinNickname.create coin_id: Coin.find_by(code: 'EUR').id, name: 'Single currency'
    CoinNickname.create coin_id: Coin.find_by(code: 'EUR').id, name: 'Fiber'
    CoinNickname.create coin_id: Coin.find_by(code: 'GBP').id, name: 'Sterling'
    CoinNickname.create coin_id: Coin.find_by(code: 'GBP').id, name: 'Quid'
    CoinNickname.create coin_id: Coin.find_by(code: 'AUD').id, name: 'Aussie'
    CoinNickname.create coin_id: Coin.find_by(code: 'AUD').id, name: 'Ozzie'
    CoinNickname.create coin_id: Coin.find_by(code: 'NZD').id, name: 'Kiwi'
    CoinNickname.create coin_id: Coin.find_by(code: 'USD').id, name: 'Greenback'
    CoinNickname.create coin_id: Coin.find_by(code: 'USD').id, name: 'Buck'
    CoinNickname.create coin_id: Coin.find_by(code: 'CHF').id, name: 'Swissy'
    CoinNickname.create coin_id: Coin.find_by(code: 'CAD').id, name: 'Loonie'

    puts "===== 'CoinNickname' #{CoinNickname.count} record(s) created"
  else
    puts "===== 'CoinNickname' seeding skipped"
  end
rescue
puts "----- Achtung! Something went wrong..."
end