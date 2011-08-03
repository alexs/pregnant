# -*- coding: utf-8 -*-
module ClassificationsHelper
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
      @result = "<tr><td>Peso</td><td class='normal'></td><td class='odd'></td><td class='even'>Sin dato en historia clinica</td></tr>"
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
      @result = "<tr><td>Estatura</td><td class='normal'></td><td class='odd'></td><td class='even'>Sin dato en historia clinica</td></tr>"
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
      @result = "<tr><td>Paridad</td><td class='normal'></td><td class='odd'></td><td class='even'>Sin dato en historia clinica</td></tr>"
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
      @result = "<tr><td>Estatura</td><td class='normal'></td><td class='odd'></td><td class='even'>Sin dato en historia clinica</td></tr>"
    end
  end
end
