module Admin::AdminHelper

  def translate_attribute(model, attribute)
    model.human_attribute_name(attribute)
  end
  alias_method :ta, :translate_attribute

  def link_to_new(model, url, html_options = {})
    link_to t("new", :model => model.model_name.human), url, html_options
  end

  def link_to_edit(url, html_options = {})
    html_options.reverse_merge!(:class => "green")
    link_to(image_tag("pencil.png"), url, html_options).html_safe
  end

  def link_to_destroy(url, html_options = {})
    html_options.reverse_merge!(:confirm => t("confirm"), :method => :delete, :class => "red")
    link_to(image_tag("trash.png"), url, html_options).html_safe
  end

  def section(title="", &block)
    content_tag :div, :class => "section" do
      html = ""
      html += content_tag :h3, title if title.present?
      html += content_tag :div, :class => "in", &block
    end
  end
end