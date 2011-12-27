class AddMiddleNamesToResumes < ActiveRecord::Migration
  def change
    add_column :resumes, :middleNames, :string
  end
end
