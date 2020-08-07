class Documento < ApplicationRecord
  has_attached_file :pdf, :optional => true
  validates_attachment :pdf, content_type: { content_type: "application/pdf" }
  has_attached_file :doc, :optional => true
  validates_attachment :doc, content_type: { content_type: "application/vnd.openxmlformats-officedocument.wordprocessingml.document" }
end
