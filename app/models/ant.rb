class Ant < ActiveRecord::Base

  has_many :hits
  def generate_slug
    self.update_attributes(slug: (id.to_s + (1+rand(8)).to_s).reverse.to_i.to_s(36))
  end
end
