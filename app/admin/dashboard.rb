ActiveAdmin.register_page "Dashboard" do
  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

    
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    #div :class => "blank_slate_container", :id => "dashboard_default_message" do
      #span :class => "blank_slate" do
        #span "Welcome to Active Admin. This is the default dashboard page."
        #small "To add dashboard sections, checkout 'app/admin/dashboards.rb'"
      #end
    #end


    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
       column do
         panel "Ultimos trabajos" do
           ul do
             Case.last(5).map do |c|
               li link_to(c.title, admin_case_path(c))
             end
           end
         end
       end

       column do
         panel "Info" do
           span "Ultima empresa agregada:  #{Client.last.name}" if !Client.last.nil?
         end
       end
    end
  end # content


end


