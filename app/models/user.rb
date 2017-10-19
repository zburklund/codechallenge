class User < ApplicationRecord
	require 'csv'

	# Create a separate DB table for company and connect through Company ID
	# belongs_to :company

	# Create each user via row from CSV file
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			User.create! row.to_hash
		end
	end

end