module ApplicationHelper
  def navigation
    # controller_name + action_name
    clas = Array.new(3, false)
    case
    when controller_name == "pages" && action_name == "product"
      clas[0] = "active"
    when controller_name == "pages" && action_name == "pricing"
      clas[1] = "active"
    when controller_name == "pages" && action_name == "contact"
      clas[2] = "active"
    end

    navigation_params = []
    navigation_params << content_tag(:li, link_to("PRODUCT", root_path), :class => (clas[0] if clas[0]))
    navigation_params << content_tag(:li, link_to("PRICING", pricing_path), :class => (clas[1] if clas[1]))
    navigation_params << content_tag(:li, link_to("CONTACT US", contact_path), :class => (clas[2] if clas[2]))
    render partial: "shared/navigation", locals: { navigation_params: navigation_params }
  end
end
