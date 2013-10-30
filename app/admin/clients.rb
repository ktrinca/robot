ActiveAdmin.register Client do
	menu :label => "Clientes"

  index do
  	column "Identificador", :id
  	column "Nombre", :name
  	default_actions
  end			

  
end
