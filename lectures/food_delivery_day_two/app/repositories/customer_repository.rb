# frozen_string_literal: true

require_relative 'base_repository'

class CustomerRepository < BaseRepository
  def initialize(csv_file_path)
    super(csv_file_path, Customer)
  end
end
