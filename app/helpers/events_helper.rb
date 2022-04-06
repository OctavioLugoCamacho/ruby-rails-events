module EventsHelper

  def price(e)
    if e.free?
      "Free"
    else
      number_to_currency(e.price, precision: 0)
    end
  end

  def day_and_time(e)
    e.starts_at.strftime("%B %d at %I:%M %P")
  end

end
