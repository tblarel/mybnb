# == Schema Information
#
# Table name: spot_features
#
#  id         :bigint           not null, primary key
#  feature_id :integer          not null
#  spot_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SpotFeatureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
