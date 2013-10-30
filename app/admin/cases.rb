ActiveAdmin.register Case do
	scope :all, :default => true
	action_item do
  	link_to "Descargar XML", "/cases/f/download"
  end

  menu :label => "Casos"

  index do
  	column "Titulo", :title
  	column "Identificador", :id
  	column "Naturaleza", :nature
  	column "Subtitulo", :subtitle
  	column "Description", :description
  	column "Link", :link
  	column "Fecha", :date
  	column "Creditos", :credit
  	column "Creado", :created_at
  	column "Actualizado", :updated_at
  	default_actions
  end			

end
