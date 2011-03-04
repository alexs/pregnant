# -*- coding: utf-8 -*-
module ClinicalHistoriesHelper
  def get_value(valor)
    if valor.nil?
      "No seleccionado"
    elsif valor == 5
      "No"
    elsif valor == 16
      "Suficiente"
    elsif valor == 17
      "Pobre"
    elsif valor == 18
      "Adecuada"
    elsif valor == 19
      "Excesivo"
    elsif valor == 20
      "Dieta no habitual"
    elsif valor == 21
      "Sí"
    elsif valor == 22
      "Antes del embarazo"
    elsif valor == 23
      "Durante el embarazo"
    end
  end

  def get_boolean(value)
    if value == false
      "No"
    elsif value == true
      "Si"
    end
  end

  def checked_value(valor)
    if valor == false
      image_tag("uncheck.jpg")
    else
      image_tag("checked.png")
    end
  end
end
