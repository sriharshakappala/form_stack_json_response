class ResponsesController < ApplicationController
	def index
	end
	def get_data
		Response.create(:json_string => params)
	end
end