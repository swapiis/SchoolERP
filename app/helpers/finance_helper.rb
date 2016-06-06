# finance helper
module FinanceHelper
  def particular_error!
    return if @fee.errors.empty?
    messages = @fee.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def collection_error!
    return if @collection.errors.empty?
    messages = @collection.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def discount_error!
    return if @discount.errors.empty?
    messages = @discount.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def expense_error!
    return if @transaction.errors.empty?
    messages = @transaction.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def income_error!
    return if @transaction.errors.empty?
    messages = @transaction.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end

  def collect_category
    @categories.collect { |c| [c.name, c.id] }
  end

  def collect_collection
    @collections.collect { |c| [[c.name, c.created_at.to_date].join(' '), c.id] }
  end

  def collect_unique
    @collections.uniq.collect { |c| [[c.name, c.created_at.to_date.to_s].join(' '), c.id] }
  end

  def collect_only_course
    @courses.collect { |c| [c.course_name, c.id] }
  end

  def collect_department
    @departments.map { |d| [d.name, d.id] }
  end

  def collect_salary_month
    @salary_months.map { |c| [c.salary_date.strftime('%B %Y'), c.salary_date.strftime('%Y-%m-%d')] }
  end

  def donation_errors!
    return if @donation.errors.empty?
    messages = @donation.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{messages}</ul>
    </div>
    HTML
    html.html_safe
  end
end
