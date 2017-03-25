class AddDocumentToEvidences < ActiveRecord::Migration
  def change
    add_column :evidences, :document, :string
  end
end
