class Ant < ApplicationRecord
  has_many :hits
  validates :in_url, presence: { message: 'Please type the valid url!' }
  # validates_format_of :in_url, with: URI::regexp
  after_create :generate_slug
  before_create :check_http
  private

  def check_http
    unless in_url.starts_with?('http')
      self.in_url = in_url.prepend('http://')
    end
  end

  def generate_slug
    self.update_attributes(slug: (id.to_s + (1+rand(8)).to_s).reverse.to_i.to_s(36))
  end
end
