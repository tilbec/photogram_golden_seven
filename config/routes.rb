Rails.application.routes.draw do

  # Routes to CREATE photos
  get("/", { :controller => "photos", :action => "index" })
  get("/photos/new",       { :controller => "photos", :action => "new_form" })
  get("/create_photo",{ :controller => "photos", :action => "create_row" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Route to DELETE photos
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })
  get("/photos/delete_photo/:id", { :controller => "photos", :action => "destroy" })

  # Routes to UPDATE
  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  get("/update_photo/:id", { :controller => "photos", :action => "update_row" })

end
