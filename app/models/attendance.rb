class Attendance < ApplicationRecord

    belongs_to :event
    belongs_to :user
    after_create :new_attendee_send

    def new_attendee_send
        AttendanceMailer.new_attendee_email(self).deliver_now
    end

end