ActiveAdmin.register Thumbnail do
  menu :label => "Miniaturas"
  
  form do |f|
    f.inputs "Details" do
    f.input :path, :label => "Imagen", :name => :path
    
  end
    f.actions 
  end

  

end
