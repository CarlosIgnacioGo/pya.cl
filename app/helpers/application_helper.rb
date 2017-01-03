module ApplicationHelper
	def field_class(resource, field_name)
	  	resource.errors[field_name].present? ?  "error".html_safe :  "".html_safe
	end

	def field_text(resource, field_name)
	  	resource.errors[field_name].present? ?  resource.errors[field_name][0] :  "".html_safe
	end
end
