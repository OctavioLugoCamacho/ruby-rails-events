class Event < ApplicationRecord


  def self.upcoming
    where("starts_at > ?", Time.now).order("starts_at")
  end

  def free?
    price.zero?
  end

end
