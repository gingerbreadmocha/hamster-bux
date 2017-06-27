class DashController < ApplicationController
  def index
    Time.zone="America/Los_Angeles"
    @transaction = Transaction.all
  end
  def transaction
    @transac = Transaction.find_by user: params[:user]
  end
  def make_transaction
    @transaction = Transaction.new
  end
  def create_transaction
    user = User.find_by( name: params[:transaction][:username])
    new_transaction = Transaction.new(transaction_params(user.id))
    user.hamsterbux += new_transaction.amount
    new_transaction.save
    user.save
    redirect_to :dash_index
  end

  def gift_transaction
    @transaction = Transaction.new
  end
  def user_send_transaction
    gifter = current_user
    receiver = User.find_by( name: params[:transaction][:username])
    unless receiver
      flash[:notice] = "Receiver doesn't exist."
      redirect_to :dash_send_transaction
      return
    end
    new_transaction_gifter = Transaction.new(transaction_params(gifter.id))
    gifter.hamsterbux-= new_transaction_gifter.amount
    new_transaction_gifter.save
    gifter.save

    new_transaction_receiver = Transaction.new(transaction_params(receiver.id))
    receiver.hamsterbux+= new_transaction_receiver.amount
    new_transaction_receiver.save
    receiver.save

    redirect_to :dash_index
  end

  private
  def transaction_params(user_id)
    tp = params.require(:transaction).permit(:amount,:description)
    tp[:user_id] = user_id
    tp
  end
end
