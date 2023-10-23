class PagesController < ApplicationController
  def about
  end

  def home
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien", "basile", "tsiky"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member].downcase) }
    end
  end
end
