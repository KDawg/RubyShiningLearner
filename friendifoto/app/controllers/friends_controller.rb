class FriendsController < ApplicationController
  def add
    print "add action tickeled"
  end

  def list
    @cur_time = Time.now
    print "list action tickeled"
  end

  def remove
  end
end
