class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    self.actors.collect do |t| 
      "#{t.first_name} #{t.last_name}"
    end
  end
  
end