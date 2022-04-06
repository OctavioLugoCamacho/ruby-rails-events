class Event < ApplicationRecord

  def free?
    price.zero?
  end

end
