class ResponsesController < ApplicationController
	def index
	end
	def get_data
		Response.create(:json_string => params)
		Response.create(:json_string => request.raw_post)
		redirect_to responses_path
	end
end