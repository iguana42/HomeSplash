class HomeController < ApplicationController
  def index
    @current_time = Time.now.stamp_like("Wed Mar 11 6:50pm")
    @greet_message = case Time.now.hour
      when 5..11
        "Good Morning"
      when 12..15
        "Good Afternoon"
      when 16..19
        ["Good Evening", "Wan An"].sample
      when 20..23, 0..4
        "Bonne Nuit! <i class=\"fa fa-moon-o\"></i>".html_safe
      end

      @quip = Quote.all.sample.quip
  end
end
