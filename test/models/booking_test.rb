# == Schema Information
#
# Table name: bookings
#
#  id         :bigint           not null, primary key
#  guest_id   :integer          not null
#  spot_id    :integer          not null
#  start      :datetime         not null
#  end        :datetime         not null
#  num_guest  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
