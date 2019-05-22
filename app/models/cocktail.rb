class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :doses
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true

  before_destroy :destroy_doses

  private

  def destroy_doses
    self.doses.destroy_all
  end
end
