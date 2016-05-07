module ApplicationHelper

  def custom_link name, route_path, controller_name, action_name = nil
      active = "HeaderMenu--active" if controller.controller_name == controller_name && (controller.action_name == action_name||action_name.nil?)
      link_to name.capitalize, send("#{route_path}_path"), class: "HeaderMenu-itemLink #{active}"
  end

end
