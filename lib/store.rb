class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_have_one_apparel

  before_destroy :check_for_employees

  def must_have_one_apparel
   if !mens_apparel && !womens_apparel
     errors.add(:apparel, "must contain men or womens apparel at least")
   end
  end

  def check_for_employees
    if self.employees.count > 0
      throw :abort
    end
  end
end
