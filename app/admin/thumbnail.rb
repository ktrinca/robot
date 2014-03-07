ActiveAdmin.register Thumbnail do
  menu :label => "Miniaturas"
  
  sidebar :Map, :only => :edit do 
    image_tag(thumbnail.path)
  end
  
  form do |f|
    f.inputs "Details" do
    f.input :path, :label => "Imagen", :name => 'Themes'
  end
    f.actions 
  end

  

end
