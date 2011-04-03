module UsersHelper

  def show_non_blank_field(label_name, value)
    ("<b>#{label_name}:</b> #{h value}<br/>").html_safe if !value.blank? 
  end

end
