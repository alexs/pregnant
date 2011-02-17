module ClinicalHistoriesHelper
  def feed(valor)
    if valor.nil?
      "No seleccionado"
    elsif valor == 16
      "Suficiente"
    elsif valor == 17
      "Pobre"
    elsif valor == 18
      "Adecuada"
    elsif valor == 19
      "Excesivo"
    else
      "Dieta no habitual"
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
