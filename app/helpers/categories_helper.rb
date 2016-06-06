# Categories Helper
module CategoriesHelper
  def categories_error!
    return if  @category.errors.empty?
    msg = @category.errors.full_messages.map { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{msg}</ul>
    </div>
    HTML
    html.html_safe
  end

  def category_not_found!
    return unless  @categorys.empty?
    html = <<-HTML
     <div>
      <h4 align="center">No record found</h4>
    </div>
    HTML
    html.html_safe
  end
end
