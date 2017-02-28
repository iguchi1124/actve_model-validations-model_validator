module ActiveModel
  module Validations
    class ModelValidator < EachValidator
      def validate_each(record, attr_name, value)
        unless value.validate
          record.errors.add(attr_name, :invalid)
        end
      end
    end
  end
end
