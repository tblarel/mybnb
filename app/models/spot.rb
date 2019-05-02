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

class Spot < ApplicationRecord
    validates :title, :home_type, :host_id, :loc_id, :description, :lat, :long, :price,
                :num_bedrooms, :num_beds, :num_guest, presence: true
    validates :address, presence: true, uniqueness: true

    belongs_to :location,
        foreign_key: :loc_id,
        class_name: 'Location'

    belongs_to :host,
        foreign_key: :host_id,
        class_name: 'User'

    has_many :spot_features,
        foreign_key: :spot_id,
        class_name: 'SpotFeature'

    has_many :features, 
        through: :spot_features,
        source: :feature
end
