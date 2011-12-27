class AddFirstNameToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :firstName, :string
  end
end
