class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    string = self.first_name
    string = string + self.last_name
  end
  
end