class Product < ActiveRecord::Base
  belongs_to :produt_type
  serialize :properties, Hash
  validate :validate_properties
  
  def validate_properties
    produt_type.fields.each do |field|
      if field.required? && properties[field.name].blank?
        errors.add field.name, "must not be blank"
      end
    end
  end
end
