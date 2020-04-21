class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    string = self.first_name
    string = string + self.last_name
    string
    # "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    
  end
  
end