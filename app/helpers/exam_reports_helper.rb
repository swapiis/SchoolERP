module ExamReportsHelper
  def student_present
    return unless @student.nil?
    html = <<-HTML
    <div id="score-table" style="width:80%">
        <div class="custom_header" align="left">
            <h4>Students not found</h4>
        </div>
    </div>
    HTML
    html.html_safe
  end

  def students_present
    return if @students.any?
    html = <<-HTML
    <div id="score-table">
        <div class="custom_header" align="left">
            <h4>Students not found</h4>
        </div>
    </div>
    HTML
    html.html_safe
  end
end
