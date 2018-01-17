class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true }
  validates :store_id, presence: true

  after_create :password_generate

  private
  def password_generate
    self.password = [*('A'..'z')].sample(6).join
    self.save
  end
end
