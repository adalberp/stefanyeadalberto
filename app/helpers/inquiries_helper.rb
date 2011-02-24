module InquiriesHelper

  def options_for_subject
    options = t("contacts.new.subjects").map { |subject, value| [value, subject] }
    options.sort_by {|i| i[0]}
  end

end
