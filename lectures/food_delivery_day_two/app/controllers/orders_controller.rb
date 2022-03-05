# frozen_string_literal: true

require_relative '../views/meal_view'
require_relative '../views/customer_view'
require_relative '../views/session_view'
require_relative '../models/order'
require_relative '../views/order_view'

class OrdersController
  def initialize(meal_repo, customer_repo, employee_repo, order_repo)
    @meal_repo = meal_repo
    @customer_repo = customer_repo
    @employee_repo = employee_repo
    @order_repo = order_repo
    @meal_view = MealView.new
    @customer_view = CustomerView.new
    @session_view = SessionView.new
    @order_view = OrderView.new
  end

  def add
    meal = select_meal
    customer = select_customer
    employee = select_employee
    order = Order.new({ meal: meal, customer: customer, employee: employee })
    @order_repo.create(order)
  end

  def list_undelivered_orders
    undelivered_orders = @order_repo.undelivered_orders
    @order_view.display(undelivered_orders)
  end

  def list_my_orders(current_user)
    list_my_undelivered_orders(current_user)
  end

  def mark_as_delivered(current_user)
    list_my_orders(current_user)
    index = @order_view.ask_for(:index).to_i - 1
    my_orders = @order_repo.my_undelivered_orders(current_user)
    order = my_orders[index]
    @order_repo.mark_as_delivered(order)
  end

  private

  def select_meal
    meals = @meal_repo.all
    @meal_view.display(meals)
    index = @meal_view.ask_for(:index).to_i - 1
    meals[index]
  end

  def select_customer
    customers = @customer_repo.all
    @customer_view.display(customers)
    index = @customer_view.ask_for(:index).to_i - 1
    customers[index]
  end

  def select_employee
    employees = @employee_repo.all_riders
    @session_view.display(employees)
    index = @session_view.ask_for(:index).to_i - 1
    employees[index]
  end

  def list_my_undelivered_orders(user)
    orders = @order_repo.my_undelivered_orders(user)
    @order_view.display(orders)
  end
end
