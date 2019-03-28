module Api::V1
	class MenusController < ApplicationController
		before_action :set_menu, only:[:show, :update, :destroy]


		def index
			@menus = Menu.all
			render json: @menus
		end

		def create
			@menu = Menu.new(menu_params)

			if @menu.save
				render json: @menu, status: :ok
			else
				render json: @menu.errors, status: :unprocessable_entity
			end
		end

		def show
			render json: @menu
		end

		private

		def set_menu
			@menu = Menu.find(params[:id])
		end

		def menu_params
			params.require(:menu).permit(:id, :name, :drinks, :appetizers, :entrees, :desserts)
		end

	end
end
