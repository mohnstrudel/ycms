module AdminHelper
  def object_name(object)
    if object.is_a?(ActiveRecord::Relation)
      return object.model.name.underscore
    else
      return object.class.name.underscore
    end
  end

  def admin_form_arguments_builder(object, namespace=nil)
    if namespace
      namespace = namespace.tr('_','')
      return [:admin, namespace.to_sym, object]
    else
      return [:admin, object]
    end
  end

  def nav_link(link_path, &block)
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:li, :class => class_name) do
      link_to link_path, &block
    end
  end

end
