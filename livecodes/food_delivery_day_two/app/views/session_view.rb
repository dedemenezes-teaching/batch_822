# frozen_string_literal: true

class SessionView
  def ask_for(item)
    puts "#{item.capitalize}?"
    gets.chomp
  end

  def display(employees)
    employees.each_with_index do |employee, index|
      puts "#{index + 1} - #{employee.username}"
    end
  end

  def wrong_credentials
    puts 'Wrong credentials...Try again!'
  end

  def signed_in_successfully(employee)
    print `clear`
    puts "WELCOME, #{employee.username}!"
  end
end
