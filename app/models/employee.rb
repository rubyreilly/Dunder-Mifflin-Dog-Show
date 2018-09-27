class Employee < ApplicationRecord
  belongs_to :dog
  # validates  :alias, :title, uniqueness: true
end
# No one at Dunder Mifflin can have the same alias and/or job title (Dwight made up that rule!)
