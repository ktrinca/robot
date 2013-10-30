ActiveAdmin.register Image do
	menu :label => "Imagenes"		
	index do
  	column "Identificador", :id
  	column "Nombre" do |image|
      image.name
    end
  	column "Creado", :created_at
  	column "Actualizado", :updated_at
  	default_actions
  end	
  
end
