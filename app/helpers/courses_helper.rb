# Course Helper
module CoursesHelper
  def course_error!
    return if @course.errors.empty?
    messages = @course.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def course_not_found!
    return unless  @courses.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end

  def grouped_batch_error!
    return if @batch_group.errors.empty?
    msg = @batch_group.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{msg}</ul>
    </div>
    HTML
    html.html_safe
  end

  def grouped_batch_not_found!
    return unless   @batch_groups.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end
end
