require 'csv'
require_relative 'room'

class RoomRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @rooms = []
    load_csv
  end

  def find(id)
    @rooms.select { |room| room.id == id }.first

    # We did using 'select' but we should have done using the second option
    # 1st option ->  @rooms.select { |room| room.id == id }.first
    # the #find method won't return an array.
    # It will return the first element that the
    # Condition evaluate to true
    # second option => BETTER OPTION
    # @rooms.find { |room| room.id == id }
  end

  def add_room(room)
    room.id = @rooms.empty? ? 1 : @rooms.last.id + 1
    @rooms << room
    # save_csv # this won't work because I didn't define this method in here
  end

  def all
    @rooms
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id]    = row[:id].to_i          # Convert column to Integer
      row[:capacity] = row[:capacity].to_i  # Convert column to boolean

      @rooms << Room.new(row)
    end
  end
end


# repo = RoomRepository.new('rooms.csv')
# repo.all.each do |room|
#   puts room.id
#   puts room.full?
# end
