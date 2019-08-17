class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, stretches: 12 
  # Validations
    validates :first_name, presence: true  
    validates :last_name, presence: true 
    #validates :uid, uniqueness: true


    has_many :attendances
    has_many :events, through: :attendances
    has_many :event_admin_id, foreign_key: 'administrator_id' , class_name: "Event"
    after_create :welcome_send

    def welcome_send
        UserMailer.welcome_email(self).deliver_now
      end

end
