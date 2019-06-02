module Memorable

  @@all = []

  def reset_all
    @@all.clear
  end

  def all
    @@all
  end

  def count
    @@all.count
  end

end
