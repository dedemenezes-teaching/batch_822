# frozen_string_literal: true

# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
#   ruby app.rb

require_relative 'app/repositories/order_repository'
require_relative 'app/controllers/orders_controller'
require_relative 'app/repositories/employee_repository'
require_relative 'app/controllers/sessions_controller'
require_relative 'app/repositories/meal_repository'
require_relative 'app/controllers/meals_controller'
require_relative 'app/repositories/customer_repository'
require_relative 'app/controllers/customers_controller'
require_relative 'router'

meals_csv = 'data/meals.csv'
meal_repo = MealRepository.new(meals_csv)
meals_controller = MealsController.new(meal_repo)

customers_csv = 'data/customers.csv'
customer_repo = CustomerRepository.new(customers_csv)
customers_controller = CustomersController.new(customer_repo)

employee_csv = 'data/employees.csv'
employee_repo = EmployeeRepository.new(employee_csv)
sessions_controller = SessionsController.new(employee_repo)

orders_csv = 'data/orders.csv'
order_repo = OrderRepository.new(orders_csv, meal_repo, customer_repo, employee_repo)
orders_controller = OrdersController.new(meal_repo, customer_repo, employee_repo, order_repo)
router = Router.new(meals_controller, customers_controller, sessions_controller, orders_controller)
router.run
