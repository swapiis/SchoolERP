# Subject Helper
module SubjectsHelper
  def collect_batch
    @batches.collect { |b| [b.full_name, b.id] }
  end

  def normal_subject_not_found!
    return unless @subjects.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end
end
