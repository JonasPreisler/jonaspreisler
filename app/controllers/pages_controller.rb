class PagesController < ApplicationController

  def home
    @projects = Project.all.limit(6)
  end

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
