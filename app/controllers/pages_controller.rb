class PagesController < ApplicationController

  def home
    @projects = Project.featured
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
