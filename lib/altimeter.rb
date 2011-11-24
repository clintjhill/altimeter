# encoding: UTF-8

# Altimeter is a tool to measure the level of your language.

# Altimeter provides functionality to read string text and
# determine levels of anger, happiness and other moods or 
# temperaments. 
module Altimeter
  
  def self.version
    '0.1.0'
  end

  # Mixin to extend objects that respond with String 
  # like functionality. Allows for quick detection of
  # Altimeter levels at an instance level.
  module Mixin
    
    def self.included(base)
      raise TypeError unless base.ancestors.include? String
    end
    
    def hostile?
      
    end
    
    def passive?
      
    end
    
    def pleased?
      
    end
    
    def frustrated?
      
    end
    
  end

end