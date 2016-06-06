# Exam Groups Helper
module ExamGroupsHelper
  def courses
    @courses.collect { |b| [b.full_name, b.id] }
  end

  def batches_present
    return if @batches.any?
    html = <<-HTML
    <tr><th colspan="3">
    <h4 align="center">NO Record Found</h4></th></tr>
    HTML
    html.html_safe
  end

  def exam_groups_present
    return if @exam_groups.any?
    html = <<-HTML
    <tr><th colspan="3">
    <h4 align="center">NO Record Found</h4></th></tr>
    HTML
    html.html_safe
  end

  def batches_data
    return if @batches.empty?
    @batches.collect { |b| [b.name, b.id] }
  end

  def exam_group_collect
    return if @exam_groups.empty?
    @exam_groups.collect { |b| [b.name, b.id] }
  end

  def exams_present
    return if @exams.any?
    html = <<-HTML
    <tr><th colspan="3">
    <h4 align="center">No Record Found</h4></th></tr>
    HTML
    html.html_safe
  end

  def collect_courses
    @courses.collect { |b| [b.course_name, b.section_name, b.id] }
  end
end
