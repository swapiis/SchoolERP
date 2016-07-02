# Batch Helper
module BatchesHelper
  def collect_course_batch
    @courses.collect { |c| [[c.course_name, c.section_name].join(' '), c.id] }
  end

  def batch_error!
    return if  @batch.errors.empty?
    messages = @batch.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def student_not_found!
    return unless  @students.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end

  def assign_emp_not_found!
    return if @assign_employees.present?
    html = <<-HTML
     <div>
      <h5 align="center">No record found</h5>
    </div>
    HTML
    html.html_safe
  end

  def employee_not_found!
    return unless @employees.empty?
    html = <<-HTML
     <div>
      <h5 align="center">No record found</h5>
    </div>
    HTML
    html.html_safe
  end

  def collect_deaprtment
    @departments.collect { |b| [b.name, b.id] }
  end

  def emp_find(e)
    Employee.find(e).first_name
  end

  def assign_emp_find(e)
    Employee.find(e)
  end

  def emp_split(b)
    b.employee_id.split(',')
  end
end
