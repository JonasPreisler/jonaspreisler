class PagesController < ApplicationController

  def contact
  end
  def messenger
    @project = Project.last
  end
  def ejendom
  end
  def privacypolicy
  end
  def termsofservice
  end

end
