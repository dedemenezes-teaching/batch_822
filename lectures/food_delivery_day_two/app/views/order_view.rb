# frozen_string_literal: true

class OrderView
  def display(orders)
    orders.each_with_index do |order, index|
      puts "#{index + 1} - #{order.meal.name} - #{order.customer.name} - #{order.employee.username}"
    end
  end

  def ask_for(item)
    puts "#{item.capitalize}?"
    gets.chomp
  end
end
