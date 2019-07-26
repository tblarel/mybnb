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
    validates :booking_id, uniqueness: true
    validates :rating, presence: true
    
    belongs_to :booking,
        foreign_key: :booking_id,
        class_name: 'Booking'

    has_one :guest, 
        through: :booking, 
        source: :guest

    has_one :host,
        through: :booking,
        source: :host
    
end
