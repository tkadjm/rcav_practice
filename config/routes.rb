Rails.application.routes.draw do
  get("/",                         { :controller => "calculations", :action => "instructions"  })
  get("/square_root/:number",      { :controller => "calculations", :action => "square_root"   })
  get("/random/:low/:hi",          { :controller => "calculations", :action => "random"        })
  get("/payment/:rate/:nper/:pv",  { :controller => "calculations", :action => "payment"       })

end
