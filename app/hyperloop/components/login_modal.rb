class LoginModal < Hyperloop::Component
  param :opened, default: nil

  
  render(DIV) do

    H1() {""}

    ## TEST WITH PARAMS.OPEN NAME
    #debugger
    if params.opened == false
      puts "IT IS FALSE"
    end

    if ((params.opened) && (true)) 
      puts "1: #{params.opened}"
    end

    if ((true) && (params.opened)) 
      puts "2: #{params.opened}"
    end

    if ((params[:opened]) && (true)) 
      puts "3: #{params.opened}"
    end

    

  end


end