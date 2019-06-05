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

class Booking < ApplicationRecord
    validates :guest_id, :spot_id, :start, :end, :num_guest, presence: true
    belongs_to :user,
        foreign_key: :guest_id,
        class_name: 'User'
end
