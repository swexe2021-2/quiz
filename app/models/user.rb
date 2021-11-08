class User < ApplicationRecord
    validates :uid, uniqueness: true, presence: true
    validates :pass, presence: true
end
