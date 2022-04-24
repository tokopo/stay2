class CheckController < ApplicationController

  before_action :permit_params, except: [:new ]

	def new
		@check = Check.new
	end

	def back
		@check = Check.new(@attr)
		render :new
	end

	def confirm
		@check = Check.new(@attr)
		@check.use_date = (@check.end_at - @check.start_at) / 1.day
		@check.totalmoney = @check.people * 6000 * @check.use_date #@check.money
		if @check.invalid?	
			render :new
		end
end



	def complete
		Check.create!(set_complete)
		redirect_to root_path
	end

	private

	def permit_params
		@attr = params.require('check').permit(:check_date, :start_at, :end_at, :people)
	end

	def set_complete
		params.require('check').permit(:check_date, :start_at, :end_at, :people, :use_date, :totalmoney)
	end

end
