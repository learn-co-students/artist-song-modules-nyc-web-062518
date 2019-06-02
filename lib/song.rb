require 'pry'
require_relative './concerns/memorable'
require_relative './concerns/findable'
require_relative './concerns/paramable'

class Song

  extend Memorable
  extend Findable

  include Paramable

  attr_accessor :name
  attr_reader :artist

  # @@all = []

  def initialize(name='')
    @name = name
    self.class.all << self
  end

  def artist=(artist)
    @artist = artist
  end

    # def self.find_by_name(name)
    #   @@all.detect{|a| a.name == name}
    # end

  # def self.reset_all
  #   @@all.clear
  # end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

  # def self.count
  #   self.all.count
  # end

  # def self.all
  #   @@all
  # end
end
