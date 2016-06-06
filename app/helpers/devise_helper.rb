# device helper
module DeviseHelper
  def devise_error_messages!
    return  if resource.errors.empty?

    messages = resource.errors.full_messages.map { |m| content_tag(:li, m) }.join

    html = <<-HTML
    <div class="alert alert-danger alert-dismissable">
      <ul align="left">#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
end
