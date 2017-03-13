class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern

  before_action :set_copyright

 def set_copyright
    @copyright = DevcampViewTool::Renderer.copyright "Kiran Kotresh", "All rights reserved"
 end

  def bet_copyright
    @copyright = DevcampViewTool::Renderer.copyright "Kiran Kotresh", "All rights reserved"
 end

def but_copyright
    @copyright = DevcampViewTool::Renderer.copyright "Kiran Kotresh", "All rights reserved"
 end


end




module DevcampViewTool
  class Renderer
    def self.copyright name,msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end

