class AddLastNameToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :lastName, :string
  end
end
