require "pry"

module Memorable
  module ClassMethods

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end    
  end

  module InstanceMethods

    def initialize
      super
      # binding.pry
      if self.class == Artist
        @songs = []
      end
    end

  end
end