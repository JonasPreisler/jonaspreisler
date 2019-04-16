class PagesController < ApplicationController

  def home
    @projects = Project.all.order('featured ASC').limit(6)
  end

  def dk
    @projects = Project.all.order('featured ASC').limit(6)
  end

  def contact
  end
  def booking
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

  def partnership
  end

end
