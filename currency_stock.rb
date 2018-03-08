require 'stock_quote'
require 'stock_quote'

from = 'USD'
to = 'KRW'

bank = EuCentralBank.new
bank.update_rates

result = bank.exchange(100, from, to)

puts "1 #{from} => #{result} #{to}"

print('NASDAQ 주식회사 이름을 입력해 주세요(띄어쓰기로 복수입력 가능) : ')
input = gets.chomp
companies = input.split

companies.each do |company|
stock = StockQuote::Stock.quote(company)
puts " #{stock.name} => KRW #{stock.l*result}"
end

