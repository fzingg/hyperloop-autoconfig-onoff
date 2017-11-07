class Counter < Hyperloop::Store
   state tries: 0, scope: :class, reader: true
   state fred: 0, scope: :class, reader: true, reader: :all

  def self.increment!
    mutate.tries(state.tries + 1)
  end

  def self.clear!
  	mutate.tries 0
  end

  
end