class SearchController < ApplicationController
  def index
    @search_terms = params[:q] = params[:q]

    @parking_contravention = ParkingContravention.where(ticket_number:  @search_terms)
    @violation = Violation.where(violation: @search_terms)
    @service_areas = ServiceArea.where(service_area: @search_terms)
    @service_request = ServiceRequest.where(service_request: @search_terms)
    @wards = Ward.where(ward: @search_terms)
    @neighbourhoods = Neighbourhood.where(neighbourhood: @search_terms)

  end
end
