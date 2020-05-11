module ApplicationHelper
  def icon_destroy(name, size = 1)
    html = "<i class='far fa-#{name}-alt' "
    html += "style='font-size:#{size}em' "
    html += "></i>"
    html.html_safe
  end

  def icon_edit(name, size = 1)
    html = "<i class='far fa-#{name}' "
    html += "style='font-size:#{size}em' "
    html += "></i>"
    html.html_safe
  end
end
