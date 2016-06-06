# Grading Level Helper
module GradingLevelsHelper
  def collect_batch
    @batches.collect { |b| [b.full_name, b.id] }
  end

  def grading_not_found!
    return unless @grading_levels.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end
end
