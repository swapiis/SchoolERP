# GeneralSettings Helper
module GeneralSettingsHelper
  def general_setting_error!
    return if  @general_setting.errors.empty?
    msg = @general_setting.errors.full_messages.map \
          { |m| content_tag(:li, m) }.join
    html = <<-HTML
     <div class="alert alert-danger alert-dismissable">
      <ul>#{msg}</ul>
    </div>
    HTML
    html.html_safe
  end

  def set_language
    Language.all.collect { |l| [l.name, l.id] }
  end

  def set_country
    Country.all.collect { |c| [c.name, c.id] }
  end
end
