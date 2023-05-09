class List < ApplicationRecord
  has_one_attached :imaage
  
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
