module ApplicationHelper
  def ant_url(ant)
    "#{root_url}#{ant.slug}"
  end

  def error_messages(ant)
    "#{ant.errors.messages.values.join("\n")}"
  end

  def ant_url_success_link(ant)
    "Share this ant! &nbsp; <strong><a href='#{ant_url(ant)}' target='_blank'>#{ant_url(ant)}</a></strong>"
  end
end
