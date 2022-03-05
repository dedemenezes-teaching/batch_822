# frozen_string_literal: true

class Employee
  attr_accessor :id
  attr_reader :username, :password, :role

  # STATE
  # id, username, password, role
  def initialize(attributes = {})
    @id = attributes[:id] # Integer
    @username = attributes[:username] # String
    @password = attributes[:password] # String
    @role = attributes[:role] # String
  end

  def manager?
    @role == 'manager'
  end

  def rider?
    @role == 'rider'
  end

  # Methods used inside our BASE REPOSITORY
  def self.csv_headers
    %w[id username password role]
  end

  def self.prepare_row(row)
    row[:id] = row[:id].to_i

    row
  end

  def to_csv
    [@id, @username, @password, @role]
  end
end
