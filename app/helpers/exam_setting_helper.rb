module ExamSettingHelper
  def class_designation!
    return if @class_dess.any?
    html = <<-HTML
    <tr><th colspan="3">
    <center>No record found.</center></th></tr>
    HTML
    html.html_safe
  end

  def collect_courses
    @courses.collect { |b| [b.course_name, b.section_name, b.id] }
  end
end
