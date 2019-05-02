# == Schema Information
#
# Table name: features
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Feature < ApplicationRecord

    has_many :spot_features,
        foreign_key: :feature_id,
        class_name: 'SpotFeature'

    has_one :spot,
        through: :spot_features,
        source: :spot
end
