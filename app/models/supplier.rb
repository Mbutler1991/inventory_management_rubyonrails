class Supplier < ApplicationRecord
    has_many :items
    validates :phone_number, :email, presence: true
  end
