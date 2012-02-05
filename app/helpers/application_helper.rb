module ApplicationHelper
  def build_message_div(key, messages = [])
    unless messages.empty?
      content_tag(:div, :class => "alert-message block-message #{key}", "data-alert" => "alert") do
        concat link_to "x", "#", :class => "close"
        concat content_tag :p, "Oh snap! You got errors. Please change and try again."
        concat build_messages_list messages
      end
    end
  end

  def build_messages_list messages
    content_tag :ul do
      messages.collect {|message| concat(content_tag(:li, message.to_s)) }
    end
  end
end
