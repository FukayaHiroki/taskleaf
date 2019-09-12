class Task < ApplicationRecord
  validates :name, presence: true,length: { maximum: 30 }
  validate  :validate_name_not_includeing_comma

  belongs_to :user

  scope :recent, -> { order(created_at: :desc) }
  private
  def validate_name_not_includeing_comma
    errors.add(:name, 'にカンマを含めることはできません') if name&.include?(',')
    errors.add(:name, '名称を入力してください') if name&.empty?
  end
end
