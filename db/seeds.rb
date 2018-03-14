# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'net/http'
require 'json'
require 'pp'

response = Net::HTTP.get(URI('https://data.winnipeg.ca/resource/9w2n-uhf9.json'))
responseViolation = Net::HTTP.get(URI('https://data.winnipeg.ca/resource/5ych-i6vf.json'))
pp JSON.parse(response)
pp JSON.parse(responseViolation)
servicesTotal = JSON.parse(response) # pp stands for pretty print.
contraventionsTotal = JSON.parse(responseViolation) # pp stands for pretty print.

#Neighbourhood.delete_all
#Ward.delete_all
#ServiceArea.delete_all
#ServiceRequest.delete_all
#Service.delete_all
#ParkingContravention.delete_all
NeighbourhoodHasWardHasService.delete_all

#neighbourhood = []
#ward = []
serviceRequest = []
neighbourhoodFK =[]
wardFK =[]
serviceFK = []

servicesTotal.each do |service|

  #neighbourhood += [:neighbourhood => service["neighbourhood"]]
  #ward += [:ward => service["ward"]]
  #serviceArea += [:service_area => service["service_area"]]
  #serviceRequest += [:service_request => service["service_request"], :service_area => service["service_area"]]

  serviceRequestFK = ServiceRequest.where(:service_request => service["service_request"]).first
  #if(serviceRequestFK.nil?)
  #  puts service["service_request"]
  #end

  #Service.create(:sr_date => service["sr_date"], :service_request_id =>serviceRequestFK.id)
  #puts service["sr_date"]
  serviceFK += [:service => service["sr_date"], :neighbourhood => service["neighbourhood"], :ward => service["ward"]]

  puts " "

  #NeighbourhoodHasWardHasService.create(:neighbourhood_id => neighbourhoodFK.id,:ward_id => wardFK.id,:service_id => serviceFK.id)

end

#csv_categories.each do |category_name|
#  category = Category.find_or_create_by(name: category_name)
#  BoardGameCategory.create(board_game: game, category: category)
#end

serviceFK.each do |sFK|
  neighbourhood = Neighbourhood.find_or_create_by(neighbourhood: sFK["neighbourhood"])
  ward = Ward.find_or_create_by(ward: sFK["ward"])
  service = Service.find_or_create_by(sr_date: sFK["sr_date"])

  NeighbourhoodHasWardHasService.create(:neighbourhood => neighbourhood,:ward => ward,:service => service)
end


=begin
serviceRequest.uniq.each do |insert|
  serviceAreaFK = ServiceArea.where(:service_area => insert[:service_area]).first
  puts insert[:service_area] if serviceAreaFK.nil?
  service_request = serviceAreaFK.service_requests.build(:service_request => insert[:service_request])
  if !(service_request.save)
    puts service_request.errors.inspect
  end


end


neighbourhood.uniq.each do |insert|
  Neighbourhood.create(insert)
end

ward.uniq.each do |insert|
  Ward.create(insert)
end

serviceArea.uniq.each do |insert|
  ServiceArea.create(insert)
end

contraventionsTotal.each do |contravention|
  contravention.each do |key, value|
    violations += [{:violation => "#{value}"}] if key == "violation"
  end
end

violations.uniq.each do |violation|
  Violation.create(violation)
end


h = {}
contraventionsTotal.uniq.each do |contraventions|
  h={:issue_date => contraventions["issue_date"], :ticket_number => contraventions["ticket_number"], :street => contraventions["street"], :violation_id => contraventions["violation"]}
  violationsFK = Violation.where(:violation =>  h[:violation_id]).first
  h[:violation_id] = violationsFK.id
  ParkingContravention.create(h)
=end


puts "********"

puts ParkingContravention.inspect

puts Neighbourhood.count
puts "********"
puts Ward.count
puts "********"
puts ServiceArea.count
puts "********"
puts ServiceRequest.count
puts "********"
puts Service.count
puts "********"
puts Violation.count
puts "*********"
puts ParkingContravention.count
puts "*********"
puts NeighbourhoodHasWardHasService.count
puts NeighbourhoodHasWardHasService.inspect
puts Service.inspect
