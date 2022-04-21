begin
  if (PairNickname.present? and not PairNickname.exists?)
    PairNickname.create pair_id: Pair.find_by(code: 'EUR/USD').id, name: 'EURO'
    PairNickname.create pair_id: Pair.find_by(code: 'EUR/USD').id, name: 'Fiber'
    PairNickname.create pair_id: Pair.find_by(code: 'EUR/GBP').id, name: 'Chunnel'
    PairNickname.create pair_id: Pair.find_by(code: 'EUR/JPY').id, name: 'Yuppy'
    PairNickname.create pair_id: Pair.find_by(code: 'EUR/JPY').id, name: 'Euppy'
    PairNickname.create pair_id: Pair.find_by(code: 'EUR/RUB').id, name: 'Betty'
    PairNickname.create pair_id: Pair.find_by(code: 'EUR/CHF').id, name: 'Swissy'
    PairNickname.create pair_id: Pair.find_by(code: 'EUR/CHF').id, name: 'Euro-Swissy'
    PairNickname.create pair_id: Pair.find_by(code: 'USD/CAD').id, name: 'Loonie'
    PairNickname.create pair_id: Pair.find_by(code: 'USD/CAD').id, name: 'Funds'
    PairNickname.create pair_id: Pair.find_by(code: 'USD/CAD').id, name: 'Beaver'
    PairNickname.create pair_id: Pair.find_by(code: 'USD/JPY').id, name: 'Gopher'
    PairNickname.create pair_id: Pair.find_by(code: 'USD/JPY').id, name: 'Ninja'
    PairNickname.create pair_id: Pair.find_by(code: 'USD/JPY').id, name: 'Yen'
    PairNickname.create pair_id: Pair.find_by(code: 'USD/RUB').id, name: 'Barnie'
    PairNickname.create pair_id: Pair.find_by(code: 'GBP/USD').id, name: 'Cable'
    PairNickname.create pair_id: Pair.find_by(code: 'GBP/JPY').id, name: 'Guppy'
    PairNickname.create pair_id: Pair.find_by(code: 'NZD/USD').id, name: 'Kiwi'
    PairNickname.create pair_id: Pair.find_by(code: 'NZD/USD').id, name: 'The Bird'
    PairNickname.create pair_id: Pair.find_by(code: 'AUD/USD').id, name: 'Aussie'
    PairNickname.create pair_id: Pair.find_by(code: 'AUD/USD').id, name: 'Ozzie'
    PairNickname.create pair_id: Pair.find_by(code: 'AUD/USD').id, name: 'Matie'

    # PairNickname.create pair_id: Pair.find_by(code: 'COP/SNG').id, name: 'Glock'
    # PairNickname.create pair_id: Pair.find_by(code: 'USD/CNY').id, name: 'Yuan'

    puts "===== 'PairNickname' #{PairNickname.count} record(s) created"
  else
    puts "===== 'PairNickname' seeding skipped"
  end
rescue
puts "----- Achtung! Something went wrong..."
end