
class Stocks
  def stock_picker(array)
    p array
    buy_day = 0
    sell_day = 1
    current_profit = array[1] - array[0]
    temp_index = 0
    array.each_with_index do |element, index|
      temp_index += 1
      while temp_index < array.length
        test_profit = array[temp_index].to_i - element.to_i
        if test_profit > current_profit
          buy_day = index
          sell_day = temp_index
          current_profit = test_profit
        end
        temp_index += 1
      end
      temp_index = index + 1
    end
    p "Buy on day #{buy_day + 1} for $#{array[buy_day]}."
    p "Sell on day #{sell_day + 1} for $#{array[sell_day]}."
    p "For a profit of: $#{current_profit}."
  end
end

test_stock = Stocks.new

test_stock.stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10, 16, 2])

