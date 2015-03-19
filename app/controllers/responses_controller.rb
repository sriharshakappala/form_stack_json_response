class ResponsesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	respond_to :json

	def index
	end
	def get_data
		# Response.create(:json_string => params)
		# Response.create(:json_string => request.raw_post)
		# redirect_to responses_path
		logger.debug request.raw_post
		render json: { message: "#{request.raw_post}" }
	end
end