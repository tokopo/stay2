class CheckController < ApplicationController

  before_action :permit_params, except: :new

	def new
		@check = Check.new
	end

	def back
		@check = Check.new(@attr)
		render :new
	end

	def confirm
		@check = Check.new(@attr)
		if @check.invalid?
			render :new
		end
	end

	def complete
		Check.create!(@attr)
	end

	private

	def permit_params
		@attr = params.require('check').permit(:id, :check_date, :name, :note)
	end

end
