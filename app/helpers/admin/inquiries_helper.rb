module Admin::InquiriesHelper

  def toggle_open(inquiry)
    params = { :inquiry => { :open => !inquiry.open } }
    text   = inquiry.open? ? "close" : "reopen"

    link_to text,
      admin_inquiry_path(inquiry, params),
      :method => "put",
      :class => "button"
  end

  def row_class(inquiry)
    status = (inquiry.open?) ? "open" : "closed"
    "#{cycle(:odd, :even)} #{status}"
  end

end
