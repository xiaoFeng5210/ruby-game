class User < ApplicationRecord
    validates :emai, presence: true
end
