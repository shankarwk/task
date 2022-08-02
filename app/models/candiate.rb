class Candiate < ApplicationRecord
    has_many :demos, dependent: :destroy
end
