
module Hotel
  class Block
    DISCOUNTED_COST_PER_NIGHT = 125
    MAX_BLOCKED_ROOMS = 5
    attr_reader :start_date, :end_date, :rate, :name

    def initialize(input)
      @start_date = input[:start_date]
      @end_date = input[:end_date]
      @rate = input[:rate] || DISCOUNTED_COST_PER_NIGHT
      @name = input[:name]
    end

    def booked_for?(date)
      date_range.include?(date)
    end

  private

    def date_range
      start_date...end_date
    end

  end
end
