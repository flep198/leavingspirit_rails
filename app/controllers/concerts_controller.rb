class ConcertsController < InheritedResources::Base

  private

    def concert_params
      params.require(:concert).permit(:date, :time, :fb_link, :coordinates, :location_name, :ticket_link, :location_link, :title)
    end

end
