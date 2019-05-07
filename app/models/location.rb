# == Schema Information
#
# Table name: locations
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  lat        :float            not null
#  long       :float            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ApplicationRecord
    validates :lat, :long, :name, presence: true
    has_one_attached :photo

    has_many :spots,
        foreign_key: :loc_id,
        class_name: 'Spot'
end
