module DlStaticPages
  class Engine < ::Rails::Engine
    isolate_namespace DlStaticPages

    config.after_initialize do
  		Discourse::Application.routes.append do
  			mount ::DlStaticPages::Engine, at: "/p"
  		end
    end
  end
end