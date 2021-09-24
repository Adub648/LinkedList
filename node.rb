# frozen_string_literal: true

class Node
  attr_accessor :next, :data

  def initialize(data)
    @data = data
    @next = nil
  end

  # print list as string
  def to_s
    puts "( #{@data} ) ->"
  end
end
