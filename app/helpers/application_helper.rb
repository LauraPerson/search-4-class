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

  def profile_navbar
    if current_user.photo.attached?
      html = "<div class='avatar_small' style='background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(#{cl_image_path current_user.photo.key, crop: :fill})'></div>"
    else
      html = "<div class='avatar_small' style='background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(#{image_path 'avatar.jpg', crop: :fill})'></div>"
    end
    html.html_safe
  end
end
