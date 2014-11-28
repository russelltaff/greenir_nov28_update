# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'httparty'

green_mountain_packages = HTTParty.get("https://www.kimonolabs.com/api/3te0xtz2?apikey=SpEVfxZtGjY2wvrNotclpNh1mNKChRRi")

b = ElectricPackage.new

b.name                  = green_mountain_packages["results"]["collection1"][0]["products"]
b.description			= green_mountain_packages["results"]["collection1"][0]["terms"]
b.terms                 = green_mountain_packages["results"]["collection1"][0]["terms"]
b.plan_type             = "fixed"
b.price                 = green_mountain_packages["results"]["collection1"][0]["price"]
b.percent_renewable     = green_mountain_packages["results"]["collection1"][0]["percent_renewable"]
b.duration              = "3 Months"
b.provider_id           = 1
b.sales_id              = 1
b.cancellation_fee      = green_mountain_packages["results"]["collection1"][0]["cancellation_fee"]

b.save!

b2 = ElectricPackage.new

b2.name                  = green_mountain_packages["results"]["collection1"][1]["products"]
b2.description			= green_mountain_packages["results"]["collection1"][1]["terms"]
b2.terms                 = green_mountain_packages["results"]["collection1"][1]["terms"]
b2.plan_type             = "fixed"
b2.price                 = green_mountain_packages["results"]["collection1"][1]["price"]
b2.percent_renewable     = green_mountain_packages["results"]["collection1"][1]["percent_renewable"]
b2.duration              = "12 Months"
b2.provider_id           = 1
b2.sales_id              = 1
b2.cancellation_fee      = green_mountain_packages["results"]["collection1"][1]["cancellation_fee"]

b2.save!

b3 = ElectricPackage.new

b3.name                  = green_mountain_packages["results"]["collection1"][2]["products"]
b3.description			= green_mountain_packages["results"]["collection1"][2]["terms"]
b3.terms                 = green_mountain_packages["results"]["collection1"][2]["terms"]
b3.plan_type             = "fixed"
b3.price                 = green_mountain_packages["results"]["collection1"][2]["price"]
b3.percent_renewable     = green_mountain_packages["results"]["collection1"][2]["percent_renewable"]
b3.duration              = "12 Months"
b3.provider_id           = 1
b3.sales_id              = 1
b3.cancellation_fee      = green_mountain_packages["results"]["collection1"][2]["cancellation_fee"]

b3.save!

b4 = ElectricPackage.new

b4.name                  = green_mountain_packages["results"]["collection1"][3]["products"]
b4.description			= green_mountain_packages["results"]["collection1"][3]["terms"]
b4.terms                 = green_mountain_packages["results"]["collection1"][3]["terms"]
b4.plan_type             = "variable"
b4.price                 = green_mountain_packages["results"]["collection1"][3]["price"]
b4.percent_renewable     = green_mountain_packages["results"]["collection1"][3]["percent_renewable"]
b4.duration              = "Month to Month"
b4.provider_id           = 1
b4.sales_id              = 1
b4.cancellation_fee      = green_mountain_packages["results"]["collection1"][3]["cancellation_fee"]

b4.save!

b5 = ElectricPackage.new

b5.name                  = green_mountain_packages["results"]["collection1"][4]["products"]
b5.description			= green_mountain_packages["results"]["collection1"][4]["terms"]
b5.terms                 = green_mountain_packages["results"]["collection1"][4]["terms"]
b5.plan_type             = "fixed"
b5.price                 = green_mountain_packages["results"]["collection1"][4]["price"]
b5.percent_renewable     = green_mountain_packages["results"]["collection1"][4]["percent_renewable"]
b5.duration              = "12 Months"
b5.provider_id           = 1
b5.sales_id              = 1
b5.cancellation_fee      = green_mountain_packages["results"]["collection1"][4]["cancellation_fee"]

b5.save!

b6 = ElectricPackage.new

b6.name                  = green_mountain_packages["results"]["collection1"][5]["products"]
b6.description			= green_mountain_packages["results"]["collection1"][5]["terms"]
b6.terms                 = green_mountain_packages["results"]["collection1"][5]["terms"]
b6.plan_type             = "fixed"
b6.price                 = green_mountain_packages["results"]["collection1"][5]["price"]
b6.percent_renewable     = green_mountain_packages["results"]["collection1"][5]["percent_renewable"]
b6.duration              = "6 Months"
b6.provider_id           = 1
b6.sales_id              = 1
b6.cancellation_fee      = green_mountain_packages["results"]["collection1"][5]["cancellation_fee"]

b6.save!

c = Provider.new

c.name          = "Green Mountain Energy"
c.logo          = "https://www.greenmountainenergy.com/wp-content/themes/gmec-bones/library/images/gmec-logo-01.png"
c.description   = "Making the world a Greenir Place"

c.save!
