module ArticlesHelper
  def formatted_date(date)
    date.strftime("%b %Y")
  end

  def colorize(category)
    colors = {"reading" => "red", "coding" => "blue"}
    colors[category]
  end
end
