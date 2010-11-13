require File.dirname(__FILE__) + '/../test_helper'

class ProtectedPicklistTest < ActiveSupport::TestCase

  context "A class incorporating protectedpicklist" do
    should "return an array of symbols representing its dependent tables on request" do
      assert_equal Hatsize.dependent_tables, [:users, :hats]
    end
  end

  context "An instance of a class incorporating protectedpicklist" do
    should "expose a collection for each dependent table " do
      assert Hatsize.find(3).users.respond_to?(:size)
    end

    should "be destroyable if it has no dependent items " do
      Hatsize.destroy(5)
      assert_raise(ActiveRecord::RecordNotFound) {Hatsize.find(5)}
    end
  
    should "not be destroyable if it has any dependent items " do
      #Hatsize 3 has 1 user and 2 hats
      assert_raise(LookupItemInUseException) {Hatsize.destroy(3)}

      User.destroy(3)
      #Hatsize 3 still has 2 hats
      assert_raise(LookupItemInUseException) {Hatsize.destroy(3)}

      Hat.destroy(3)
      #Hatsize 3 still has 1 hat
      assert_raise(LookupItemInUseException) {Hatsize.destroy(3)}
    end

    should "be destroyable once its last dependent item has been destroyed" do
      User.destroy(3)
      Hat.destroy(3)
      Hat.destroy(4)
      Hatsize.destroy(3)
      assert_raise(ActiveRecord::RecordNotFound) {Hatsize.find(3)}
    end
  end
end
