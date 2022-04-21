begin
  if (Pair.present? and not Pair.exists?)
    ### Base Currency: Euro
    base_id = Coin.find_by(code: 'EUR').id
    puts "--- EUR: #{base_id}"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'USD').id, name: 'eur_usd', code: 'EUR/USD', level: 'Major',
                decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "active"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'GBP').id, name: 'eur_gbp', code: 'EUR/GBP', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'CHF').id, name: 'eur_chf', code: 'EUR/CHF', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'JPY').id, name: 'eur_jpy', code: 'EUR/JPY', level: 'Minor',
              # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'CAD').id, name: 'eur_cad', code: 'EUR/CAD', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'AUD').id, name: 'eur_aud', code: 'EUR/AUD', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'NZD').id, name: 'eur_nzd', code: 'EUR/NZD', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'RUB').id, name: 'eur_rub', code: 'EUR/RUB', level: 'Exotic',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0

    ### Base Currency: USD
    base_id = Coin.find_by(code: 'USD').id
    puts "--- USD: #{base_id}"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'JPY').id, name: 'usd_jpy', code: 'USD/JPY', level: 'Major',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'CAD').id, name: 'usd_cad', code: 'USD/CAD', level: 'Major',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'CHF').id, name: 'usd_chf', code: 'USD/CHF', level: 'Major',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'RUB').id, name: 'usd_rub', code: 'USD/RUB', level: 'Exotic',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0

    ### Base Currency: GBP
    base_id = Coin.find_by(code: 'GBP').id
    puts "--- GBP: #{base_id}"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'USD').id, name: 'gbp_usd', code: 'GBP/USD', level: 'Major',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'JPY').id, name: 'gbp_jpy', code: 'GBP/JPY', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'CHF').id, name: 'gbp_chf', code: 'GBP/CHF', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'AUD').id, name: 'gbp_aud', code: 'GBP/AUD', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'CAD').id, name: 'gbp_cad', code: 'GBP/CAD', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'RUB').id, name: 'gbp_rub', code: 'GBP/RUB', level: 'Exotic',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"

    ### Base Currency: AUD
    base_id = Coin.find_by(code: 'AUD').id
    puts "--- AUD: #{base_id}"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'USD').id, name: 'aud_usd', code: 'AUD/USD', level: 'Major',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'JPY').id, name: 'aud_jpy', code: 'AUD/JPY', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"

    ### Base Currency: NZD
    base_id = Coin.find_by(code: 'NZD').id
    puts "--- NZD: #{base_id}"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'USD').id, name: 'nzd_usd', code: 'NZD/USD', level: 'Major',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"
    Pair.create base_id: base_id, quote_id: Coin.find_by(code: 'JPY').id, name: 'nzd_jpy', code: 'NZD/JPY', level: 'Minor',
                # decimal_places: 5, min_price: 0.5e0, max_price: 2.0, min_amount: 0.1e0,
                hidden: 0, fee: 0.2e0, status: "archived"

    puts "===== 'Pair' #{Pair.count} record(s) created"
  else
    puts "===== 'Pair' seeding skipped"
  end
rescue
puts "----- Achtung! Something went wrong..."
end