class Expense < ApplicationRecord
  belongs_to :user
  has_many :category_expenses
  belongs_to :category
  has_many :categories, through: :category_expenses
  validates :name, presence:true, length: { maximum: 255 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :user_id, presence: true
end
