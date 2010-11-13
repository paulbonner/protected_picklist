module ProtectedPicklist
  def self.included(base)
    base.extend(ClassMethods)
    base.dependent_tables=[]
    base.before_destroy :check_dependents
  end

  #methods defined here will become class methods in the including class
  module ClassMethods
    attr_accessor :dependent_tables
    def has_many_dependents(dependent_table, options={}, &extension)
      self.dependent_tables << dependent_table
      has_many dependent_table, options,  &extension
    end
  end

  #this will beome an instance method in the including class
  def check_dependents 
    self.class.send(:dependent_tables).each{|sym_dependent_table|
      raise LookupItemInUseException.new if self.send(sym_dependent_table).size > 0
    }
  end
end

class LookupItemInUseException < Exception
  def initialize
    super("Sorry, the list item you tried to delete is in use and cannot be deleted.")
  end
end
