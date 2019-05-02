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

class SpotFeature < ApplicationRecord
    
    belongs_to :spot,
        foreign_key: :spot_id,
        class_name: 'Spot'
    
    belongs_to :feature,
        foreign_key: :feature_id,
        class_name: 'Feature'

end
