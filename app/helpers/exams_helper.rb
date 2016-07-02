module ExamsHelper
  def exam_error_messages!
    return  if @exam.errors.empty?
    messages = @exam.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
    <div class="alert alert-danger alert-dismissable">
      <ul align="left">#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def errors_messages!
    return  if @errors.nil?
    messages = @errors.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
    <div class="alert alert-danger alert-dismissable">
      <ul align="left">#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def students_present
    return if @students.any?
    html = <<-HTML
    <h4 align="center">No students Found </h4>
    HTML
    html.html_safe
  end
end
