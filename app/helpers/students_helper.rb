# Student Helper
module StudentsHelper
  def admission1_error!
    return if @student.errors.empty?
    messages = @student.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def admission2_error!
    return if @guardian.errors.empty?
    messages = @guardian.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def previous_data_error!
    return if @previous_data.errors.empty?
    messages = @previous_data.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def collect_course
    @batches.collect { |b| [b.full_name, b.id] }
  end

  def collect_nationality
    @countries.collect { |c| [c.name, c.id] }
  end

  def collect_catagory
    @categories.collect { |c| [c.name, c.id] }
  end

  def time
    Date.today.strftime('%Y-%m-%d')
  end
end
