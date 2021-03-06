class Biodatum < ApplicationRecord
  has_many :teches
  accepts_nested_attributes_for :teches,
    reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults
  def set_defaults
    self.main_image  ||= Placeholder.image_generator(height:'600',width:'400')
    self.thumb_image ||= Placeholder.image_generator(height:'350',width:'200')
  end
  validates_presence_of :title , :subtitle , :body
end
