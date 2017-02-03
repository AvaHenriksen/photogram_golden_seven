Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  get("/photos/:id",       { :controller => "photos", :action => "show" })
  get("/create_photo", {:controller => "photos", :action => "create_row"})
end
