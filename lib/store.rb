class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_Equal: 0 }
  validate :mens_and_womens_apparal


  def mens_and_womens_apparal
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, message: "store must sell at least one type of apparal")
      errors.add(:womens_apparel, message: "store must sell at least one type of apparal")
    end
  end

end
