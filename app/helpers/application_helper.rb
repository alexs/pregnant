# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def opciones(form,field,value)
    case value
    when 1
      f.radio_button(field,value)
    end
  end
end
