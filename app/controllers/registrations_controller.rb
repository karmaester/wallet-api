class RegistrationsController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        render json: {status: :ok, user: @user}
    end

    def create
        user = User.create!(
            email: params['user']['email'], 
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation'],
            dollar_balance: params['user']['dollar_balance'],
            bitcoin_balance: params['user']['bitcoin_balance']
        )

        if user
            session[:user_id] = user.id
            render json: { 
                status: :created,
                user: user
             }
        else
             render json: { status: 500 }
        end
    end

    def update
    end
end
