# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  booking_id :integer          not null
#  rating     :integer          not null
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
    validates :booking_id, uniqueness: true, presence: true
    validates :rating, presence: true, inclusion: 1..5
    
    belongs_to :booking,
        foreign_key: :booking_id,
        class_name: 'Booking'

    has_one :guest, 
        through: :booking, 
        source: :guest

    has_one :host,
        through: :booking,
        source: :host

    has_one :spot,
        through: :booking,
        source: :spot
    
end
