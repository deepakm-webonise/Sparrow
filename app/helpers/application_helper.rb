module ApplicationHelper
  def ant_url(ant)
    "#{root_url}#{ant.slug}"
  end
end
