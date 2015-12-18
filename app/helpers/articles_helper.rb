module ArticlesHelper
  def formatted_date(date)
    date.strftime("%b %Y")
  end
end
