class Service < ApplicationRecord
  has_many :service_lists

  def icon
    case name
    when "24/7"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160648/WeWorkTogether/24hours.svg"
    when "Printer"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160687/WeWorkTogether/print-solid.svg"
    when "Free coffee"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160648/WeWorkTogether/coffee-solid.svg"
    when "3D printer"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160648/WeWorkTogether/3D.svg"
    when "Kitchen"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160687/WeWorkTogether/utensils-solid.svg"
    when "Parking"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160672/WeWorkTogether/parking-solid.svg"
    when "Shower"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160687/WeWorkTogether/shower-solid.svg"
    when "Public transport"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160648/WeWorkTogether/bus-solid.svg"
    when "Fast internet"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160694/WeWorkTogether/wifi-solid.svg"
    when "Yoga"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160694/WeWorkTogether/yoga.svg"
    when "Private lockers"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553161500/WeWorkTogether/door-closed-solid.svg"
    when "Lounge area"
      "https://res.cloudinary.com/dj7rdekm9/image/upload/e_colorize:100,co_rgb:989797,f_png/v1553160648/WeWorkTogether/couch-solid.svg"
    end
  end
end
