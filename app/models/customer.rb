class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :phone_number, presence: true

  def self.ransackable_attributes(auth_object = nil)
    # Add only the attributes you want to be searchable.
    ["created_at", "email", "full_name", "id", "notes", "phone_number", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    # List any associations you want to make searchable here.
    super + %w[image]
  end
end
