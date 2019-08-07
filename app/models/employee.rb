class Employee < ApplicationRecord
  belongs_to :division
  validates :name, presence: true
  validates_length_of :name, minimum: 2, maximum: 20


  before_save(:titleize_employee)

  private
  def titleize_employee
    self.name = self.name.titleize
  end
  end
