

class Helloworld < Hyperloop::Component

    state :planet

    before_mount do
      puts "MOUNTED !!!!!!"
    end

    class<<self

      def fredtest
        puts "fredtest"
        puts "PLANET: #{planet}"
      end

    end

    render(DIV) do
      LoginModal(opened: false)
      H1 {"You said 'Hello world' #{Counter.tries} time#{(Counter.tries)>1 ? 's':''}"}
      H1 {""}
      BUTTON(class: 'btn btn-info') { "Click to say hello World" }.on(:click) do
        CounterOp.run
      end
      BR
      H1{ "COUNTER: #{Counter.all}"}
      if (Counter.tries)>2 
        H1 {%[That's enough for today !]}
        BUTTON(class: 'btn btn-info') { "Click to reset" }.on(:click) do
        Counter.clear!
      end
    end
    
  end
  
end

  