# Elective Group Helper
module ElectiveGroupsHelper
  def elective_groups_not_found!
    return unless @elective_groups.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end

  def elective_subject_not_found!
    return unless @elective_subjects.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end
end
