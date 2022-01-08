class Appointment < ApplicationRecord
    
    belongs_to :location
    has_many :payment
    
    accepts_nested_attributes_for :payment
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 105}, 
    format: { with: VALID_EMAIL_REGEX }
        
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :date_of_birth, presence: true
    validates :gender, presence: true
    validates :phone, presence: true, length: { is: 10 }
    #validate :no_past_date

end
