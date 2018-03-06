require_relative 'spec_helper'

describe "FrontDesk class" do

  describe "initialize" do

    it "is an instance of Admin" do
      admin = Hotel::FrontDesk.new
      admin.must_be_kind_of Hotel::FrontDesk
    end

    it "loads a master list of all rooms" do
      admin = Hotel::FrontDesk.new

      admin.all_rooms.length.must_equal 20
      admin.all_rooms[0].must_be_instance_of Hotel::Room
      admin.all_rooms.must_be_kind_of Array
    end

    it "loads empty array to hold future reserations" do
      admin = Hotel::FrontDesk.new

      admin.reservations.length.must_equal 0
      admin.all_rooms.must_be_kind_of Array
    end

  end

  # describe "make_res method" do
  #
  #   it "creates a new reservation"
  #
  # end
  #
  # describe "get_list_of_res_for(date) method" do
  #
  #   before do
  #     @front_desk = Hotel::FrontDesk.new
  #   end

    # xit "throws an argument error for a bad ID"
    #   proc{ @front_desk.get_list_of_res_for() }.must_raise ArgumentError


    # it "finds a list of reservations for given date"
      #arrange by calling make_res method a couple times for a specific room/date then call get_list method for that date..or maybe a date inside the reservatino period?
      # reservations = @front_desk.get_list_of_res_for()
      # driver.must_be_kind_of RideShare::Driver


  #
  #   it "gets list of all reservations for particular date"
  #
  # end

  # describe "get_total_cost(reservation_id) method" do
  #
  #   it "returns the total cost of a given reservation"
  #
  # end

end
