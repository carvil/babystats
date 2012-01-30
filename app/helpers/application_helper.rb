module ApplicationHelper
  def build_message_div(key, messages = [])
    unless messages.empty?
      content_tag(:div, :class => "alert-message #{key}", "data-alert" => "alert") do
        concat link_to "x", "#", :class => "close"
        messages.each do |error_message|
          concat content_tag :p, "- #{error_message}"
        end
      end
    end
  end
end
