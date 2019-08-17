class Event < ApplicationRecord
# validation d'attribut
has_many :attendances
has_many :users, through: :attendances
belongs_to :administrator, class_name: "User"
validates :start_date, presence: true, if: :not_in_the_past?
validates :duration, presence: true, numericality: {only_integer: true}, if: :modulo5?
validates :title, presence: true, length: {in: 5..140}
validates :description, presence: true, length: {in: 20..1000}
validates :location, presence:true
validates :price, presence: true, numericality: { only_integer: true , greater_than: 1, less_than: 1000 }


    def not_in_the_past?
        start_date >= Date.today
    end

    def modulo5?
     duration % 5 == 0 && duration > 0
    end 
end
