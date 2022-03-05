# frozen_string_literal: true

require_relative 'base_repository'
require_relative '../models/employee'

class EmployeeRepository < BaseRepository
  def initialize(csv_file_path)
    super(csv_file_path, Employee)
  end

  undef create

  def all_riders
    @elements.select(&:rider?)
  end

  def find_by_username(username)
    @elements.find { |employee| employee.username == username }
  end
end
