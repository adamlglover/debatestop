class Evidence < ActiveRecord::Base
    scope :like, ->(args) { where("tag like '%#{args}%' OR name like '%#{args}%' OR date like '%#{args}%'")}
    mount_uploader :document, DocumentUploader
    
end
