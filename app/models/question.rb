class Question < ApplicationRecord
    validates :title, presence: true
    validates :question, presence: true
    validates :answer, presence: true
    validates :comment, presence: true
    
end
