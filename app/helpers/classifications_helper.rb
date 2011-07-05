# -*- coding: undecided -*-
module ClassificationsHelper
  def eval_age(age = age.to_i)
    if (age > 14 && age < 20) || (age > 30 && age < 36)
      @result = "<td class='odd'>#{age} años</td><td class='even'></td>"
    elsif (age > 0 && age < 15) || age > 35
      @result = "<td class='odd'></td><td class='even'>#{age} años</td>"
    else
      @result = "<td class='odd'></td><td class='even'></td>"
    end
  end
end
