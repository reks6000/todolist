class Todo < ApplicationRecord
    belongs_to :project
#     after_initialize :set_defaults

#     def set_defaults
#       self.isCompleted ||= "false"
#       self.project ||= "Прочее"
#     end
end
