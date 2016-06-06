# guardiance helper
module GuardiansHelper
  def guard_error!
    return if @guard.errors.empty?
    messages = @guard.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end
end
