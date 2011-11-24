require 'helper'

class Dummy < String
  include Altimeter::Mixin
end

class AltimeterPredicates < Test::Unit::TestCase
  
  context "Predicates" do
    setup do
      @dummy = Dummy.new
    end
        
    should "have angry predicates" do
      assert @dummy.respond_to? 'hostile?'
      assert @dummy.respond_to? 'aggressive?'
      assert @dummy.respond_to? 'frustrated?'
    end
    
    should "have happy predicates" do
      assert @dummy.respond_to? 'passive?'
      assert @dummy.respond_to? 'peaceful?'
      assert @dummy.respond_to? 'pleased?'
    end
  end
  
end

class AltimeterTypeSafety < Test::Unit::TestCase
  
  should "check for String types" do
    assert_raise TypeError do
        class NonString 
          include Altimeter::Mixin
        end
    end
  end
  
end