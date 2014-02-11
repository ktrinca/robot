ActiveAdmin.register Image do
  scope :all, :default => true
  action_item do
    link_to "Descargar Imagenes", "/images/download"
  end

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
