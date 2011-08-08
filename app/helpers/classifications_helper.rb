# -*- coding: utf-8 -*-
module ClassificationsHelper
  def question_classification(f,field,value)
   case value
   when 1
     @answer = "Alto-medio"
   when 2
     @answer = "Bajo"
   when 3
     @answer = "Muy bajo"
   when 4
     @answer = "Adecuada"
   when 5
     @answer = "Inadecuada"
   when 6
     @answer = "Rechazo"
   when 7
     @answer = "1 a 3"
   when 8
     @answer = "4 a 5"
   when 9
     @answer = "seis o más"
   when 10
     @answer = "Normal"
   when 11
     @answer = "Nulipara"
   when 12
     @answer = "Difícil"
   when 13
     @answer = "Traumático"
   when 14
     @answer = "No"
   when 15
     @answer = "Dos a tres"
   when 16
     @answer = "Tres o más"
   when 17
     @answer = "Una a dos"
   when 18
     @answer = "Uno"
   when 19
     @answer = "Dos o más"
   when 20
     @answer = "Sí"
   when 21
     @answer = "Abdominal"
   when 22
     @answer = "Ginecológica"
   when 23
     @answer = "Padres"
   when 24
     @answer = "Paciente"
   when 25
     @answer = "11 o más"
   when 26
     @answer = "10.9 a 8"
   when 27
     @answer = "8 o menos"
   when 28
     @answer = "Positivo"
   when 29
     @answer = "Negativo, no sabe, isoinmunizada"
   when 30
     @answer = "Negativo isoinmunizada"
   when 31
     @answer = "Activa"
   when 32
     @answer = "Controlada"
   when 33
     @answer = "12 Hrs. o menos."
   when 34
     @answer = "Más de 12 Hrs."



   end
    options = f.radio_button(field,value) + @answer
    return options
  end


  def eval_age(age = age.to_i)
    if (age > 14 && age < 20) || (age > 30 && age < 36)
      @result = "<tr><td>Edad</td><td class='normal'></td><td class='odd'>#{age} años</td><td class='even'></td></tr>"
    elsif (age > 0 && age < 15) || age > 35
      @result = "<tr><td>Edad</td><td class='normal'></td><td class='odd'></td><td class='even'>#{age} años</td></tr>"
    else
      @result = ""
    end
  end

  def eval_marital(marital)
    if marital != nil && marital == 4
      @result = "<tr><td>Estado civil</td><td class='normal'></td><td class='odd'>Viuda</td><td class='even'></td></tr>"
    elsif marital != nil && marital == 1
      @result = "<tr><td>Estado civil</td><td class='normal'></td><td class='odd'>Sin compañero - soltera</td><td class='even'></td></tr>"
    elsif marital == nil || marital == 99
      @result = "<tr><td>Estado civil</td><td class='normal'></td><td class='odd'></td><td class='even'>No sabe/sin respuesta</td></tr>"
    else
      @result = ""
    end
  end

  def eval_schoolar(school)
    if school != nil && school == 2
      @result = "<tr><td>Escolaridad</td><td class='normal'></td><td class='odd'>Primaria completa</td><td class='even'></td></tr>"
    elsif school == nil || school == 1
      @result = "<tr><td>Escolaridad</td><td class='normal'></td><td class='odd'></td><td class='even'>Primaria incompleta</td></tr>"
    else
      @result = ""
    end
  end

  def eval_weight(weight)
    if !weight.nil?
      if (weight > 64 && weight < 76) || (weight > 40 && weight < 51)
        @result = "<tr><td>Peso</td><td class='normal'></td><td class='odd'>#{weight} Kg.</td><td class='even'></td></tr>"
      elsif (weight > 75 || weight < 40)
        @result = "<tr><td>Peso</td><td class='normal'></td><td class='odd'></td><td class='even'>#{weight} Kg.</td></tr>"
      else
        @result = ""
      end
    else
      @result = "<tr><td>Peso</td><td class='normal'></td><td class='odd'></td><td class='even'>No se ha capturado</td></tr>"
    end
  end

   def eval_height(height)
    if !height.nil?
      if (height > 1.44 && height < 1.50)
        @result = "<tr><td>Estatura</td><td class='normal'></td><td class='odd'>#{height} Kg.</td><td class='even'></td></tr>"
      elsif height < 1.45
        @result = "<tr><td>Estatura</td><td class='normal'></td><td class='odd'></td><td class='even'>#{height} Kg.</td></tr>"
      else
        @result = ""
      end
    else
      @result = "<tr><td>Estatura</td><td class='normal'></td><td class='odd'></td><td class='even'>No se ha capturado</td></tr>"
    end
   end

   def eval_paridad(paridad)
    if !paridad.nil?
      if (paridad > 3 && paridad < 6)
        @result = "<tr><td>Paridad</td><td class='normal'></td><td class='odd'>#{paridad}</td><td class='even'></td></tr>"
      elsif paridad >= 6
        @result = "<tr><td>Paridad</td><td class='normal'></td><td class='odd'></td><td class='even'>#{paridad}</td></tr>"
      else
        @result = ""
      end
    else
      @result = "<tr><td>Paridad</td><td class='normal'></td><td class='odd'></td><td class='even'>No se ha capturado</td></tr>"
    end
   end

   def eval_d(paridad)
    if !paridad.nil?
      if (paridad > 3 && paridad < 6)
        @result = "<tr><td>Paridad</td><td class='normal'></td><td class='odd'>#{paridad}</td><td class='even'></td></tr>"
      elsif paridad >= 6
        @result = "<tr><td>Paridad</td><td class='normal'></td><td class='odd'></td><td class='even'>#{paridad}</td></tr>"
      else
        @result = ""
      end
    else
      @result = "<tr><td>Estatura</td><td class='normal'></td><td class='odd'></td><td class='even'>No se ha capturado</td></tr>"
    end
  end
end
