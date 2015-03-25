class ResponsesController < ApplicationController
	skip_before_filter :verify_authenticity_token
	respond_to :json

	def index
	end
	def submit_docs
	end
	def get_data
		logger.debug request.raw_post
		Fone.create(:json_string => request.raw_post)
		render json: { message: "#{request.raw_post}" }
	end
end