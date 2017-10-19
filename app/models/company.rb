class Company < ApplicationRecord
	require 'csv'

	# Company can have many users
	# has_many :users

	# add companies to company table
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			company_attributes = {}
			company_attributes[:company_name] = row[4]
			new_company = Company.new(company_attributes)
			new_company.save
		end
	end

	# be able to look up the company id based on the name
	def self.lookup_company_id(company_name)
		company = Company.where(company_name: company_name).first
		if company.present?
			return company.id
		end
	end
end
