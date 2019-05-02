# == Schema Information
#
# Table name: spots
#
#  id           :bigint           not null, primary key
#  title        :string           not null
#  home_type    :string           not null
#  host_id      :integer          not null
#  loc_id       :integer          not null
#  description  :text             not null
#  lat          :float            not null
#  long         :float            not null
#  price        :float            not null
#  address      :string           not null
#  num_bedrooms :integer          not null
#  num_beds     :integer          not null
#  num_guest    :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class SpotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
