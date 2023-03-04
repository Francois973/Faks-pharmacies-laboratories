class LaboratoryProduct < ApplicationRecord
  belongs_to :laboratory
  belongs_to :product

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  validates :production_cost, presence: true
  validate :notify_pharmacy_laboratory

  private

  def notify_pharmacy_laboratory
    return unless laboratory.products
    return unless quantity >= 5

    notify_pharmacy
    notify_laboratory
  end

  def notify_pharmacy
    puts 'New command need to be prepare'
  end

  def notify_laboratory
    puts 'New command need to be prepare'
  end
end
