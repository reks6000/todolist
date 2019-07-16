class AddProjectToLols < ActiveRecord::Migration[5.2]
  def change
    add_reference :lols, :project, index: true
  end
end
