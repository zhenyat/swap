begin
  if (Coin.present? and not Coin.exists?)
    Coin.create name: 'Euro',               code: 'EUR', kind: 'fiat', unicode: "€"
    Coin.create name: 'British Pound',      code: 'GBP', kind: 'fiat', unicode: "£"
    Coin.create name: 'Australian Dollar',  code: 'AUD', kind: 'fiat', unicode: "A$", status: 'archived'
    Coin.create name: 'New Zealand Dollar', code: 'NZD', kind: 'fiat', unicode: "NZ$", status: 'archived'
    Coin.create name: 'US Dollar',          code: 'USD', kind: 'fiat', unicode: "$"
    Coin.create name: 'Swiss Franc',        code: 'CHF', kind: 'fiat',                status: 'archived'
    Coin.create name: 'Japanese Yen',       code: 'JPY', kind: 'fiat', unicode: "¥",  status: 'archived'
    Coin.create name: 'Canadian Dollar',    code: 'CAD', kind: 'fiat', unicode: "C$", status: 'archived'
    Coin.create name: 'Russian Ruble',      code: 'RUB', kind: 'fiat', unicode: "₽"
    
    Coin.create name: 'Bitcoin',          code: 'BTC', kind: 'crypto', unicode: "₿"
    Coin.create name: 'Bitcoin Cash',     code: 'BCH', kind: 'crypto', unicode: "Ƀ"
    Coin.create name: 'Bitcoin Gold',     code: 'BTG', kind: 'crypto', unicode: ""
    Coin.create name: 'Ethereum',         code: 'ETH', kind: 'crypto', unicode: "Ξ"
    Coin.create name: 'Ethereum Classic', code: 'ETC', kind: 'crypto', unicode: "ξ"
    Coin.create name: 'Litecoin',         code: 'LTC', kind: 'crypto', unicode: "Ł"

    puts "===== 'Coin' #{Coin.count} record(s) created"
  else
    puts "===== 'Coin' seeding skipped"
  end
rescue
puts "----- Achtung! Something went wrong..."
end