class TransactionsController < ApplicationController

    # include UserBalanceUpdateConcern

    def index
    end 

    def new 
    end

    def show
        @user = User.find(params[:id])
        render json: {status: :ok, transactions: @user.transactions.all}
    end


    def create
        @user = User.find(params[:transaction][:user_id])
        @transaction = @user.transactions.create!(transaction_params)
        if @transaction.to_currency == "Bitcoin" && @user.dollar_balance >= @transaction.sending_amount
            @user.update(dollar_balance: @user.dollar_balance - @transaction.sending_amount)
            @user.update(bitcoin_balance: @user.bitcoin_balance + @transaction.receiving_amount)
        elsif @transaction.to_currency == "Dollar" && @user.bitcoin_balance >= @transaction.sending_amount
            @user.update(dollar_balance: @user.dollar_balance + @transaction.receiving_amount)
            @user.update(bitcoin_balance: @user.bitcoin_balance - @transaction.sending_amount)
        else 
            render json: { status: 500, message: "Insufficient funds" }
        end
        render json: {status: :created, transaction: @transaction, user: @user}
    end

    private 

    def transaction_params
        params.require(:transaction).permit(:user_id, :from_currency, :to_currency, :sending_amount, :receiving_amount)
    end
end
