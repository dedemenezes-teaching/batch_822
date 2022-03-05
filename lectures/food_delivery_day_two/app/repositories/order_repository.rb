# frozen_string_literal: true

require 'csv'
require 'pry-byebug'
class OrderRepository
  def initialize(orders_csv_path, meal_repository, customer_repository, employee_repository)
    @orders_csv_path = orders_csv_path
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders = []
    @next_id = 1
    load_csv if File.exist?(@orders_csv_path)
  end

  def create(order)
    order.id = @next_id
    @orders << order
    @next_id += 1
    save_csv
  end

  def undelivered_orders
    @orders.reject(&:delivered?)
  end

  def my_undelivered_orders(employee)
    @orders.select { |order| order.employee == employee && !order.delivered? }
  end

  def mark_as_delivered(order)
    order.deliver!
    save_csv
  end

  private

  def save_csv
    CSV.open(@orders_csv_path, 'wb') do |csv|
      # [:id, :meal_id, :customer_id...] same below
      csv << %i[id delivered meal_id customer_id employee_id]
      @orders.each do |order|
        # binding.pry
        csv << [order.id, order.delivered?, order.meal.id, order.customer.id, order.employee.id]
      end
    end
  end

  def load_csv
    CSV.foreach(@orders_csv_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:delivered] = row[:delivered] == 'true'
      # WHAT IS MY ORDER MADE OF???
      # INSTANCES OF MEAL, CUSTOMER, EMPLOYEE
      # row[:meal_id] => 1
      meal_id = row[:meal_id].to_i
      row[:meal] = @meal_repository.find(meal_id)
      row[:customer] = @customer_repository.find(row[:customer_id].to_i)
      row[:employee] = @employee_repository.find(row[:employee_id].to_i)

      # binding.pry
      @orders << Order.new(row)
    end
    @next_id = @orders.empty? ? 1 : @orders.last.id + 1
  end
end
