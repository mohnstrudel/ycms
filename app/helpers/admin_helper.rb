module AdminHelper
	def object_name(object)
		if object.is_a?(ActiveRecord::Relation)
			return object.model.name.underscore
		else
			return object.class.name.underscore
		end
	end
end
