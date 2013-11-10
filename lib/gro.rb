require "gro/version"
require "thread"

class Channel < Queue
  alias << push
  alias ~ pop
end

module Kernel
  def go(&blk)
    Thread.new(&blk)
  end
end
