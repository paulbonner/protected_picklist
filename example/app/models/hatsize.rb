class Hatsize < ActiveRecord::Base
include ProtectedPicklist
has_many_dependents :users
has_many_dependents :hats
end
