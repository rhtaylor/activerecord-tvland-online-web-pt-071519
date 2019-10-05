class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    x = self.first_name
    y = self.last_name
    "#{x} #{y}"
  end
  def list_roles
    y = self.characters
    x = self.shows
  "#{y[0].name} - #{x[0].name}"
  end


end
