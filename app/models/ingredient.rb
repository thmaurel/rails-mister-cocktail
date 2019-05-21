class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, presence: true, uniqueness: true

  before_destroy :allow_destroy

  private

  def allow_destroy
    doses.empty?
  end
end
