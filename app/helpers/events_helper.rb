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

  def main_image(e)
    if e.main_image.attached?
      image_tag e.main_image
    else
      image_tag "placeholder"
    end
  end
end
