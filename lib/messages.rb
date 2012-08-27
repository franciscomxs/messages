require "messages/version"

module Messages

  def error_messages_for(resource, css_class = "alert alert-error")
    if resource.errors.any?
      error_list = resource.errors.collect do |key, value|
        content_tag :li, value
      end.join

      %(<ul class="#{css_class}">#{error_list}</ul>).html_safe
    end
  end

  def flash_messages
    flash.collect do |key, value|
      content_tag(:p, value, :class => "alert alert-#{key}")
    end.join.html_safe
  end

end

ActionView::Base.send :include, Messages