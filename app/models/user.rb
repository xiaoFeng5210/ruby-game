class User < ApplicationRecord
    validate :emai, presence: true
end
