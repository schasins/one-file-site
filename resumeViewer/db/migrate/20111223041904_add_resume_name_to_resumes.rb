class AddResumeNameToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :resumeName, :string
  end
end
