# BatchTransfer Helper
module BatchTransfersHelper
  def collect_course_setting
    @courses.all.collect { |p| [p.course_name, p.id] }
  end

  def collect_batchtransfer
    @batchs.collect { |b| [b.full_name, b.id] }
  end

  def graduate_not_found!
    return unless @students.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end
end
