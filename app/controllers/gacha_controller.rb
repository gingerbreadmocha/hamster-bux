class GachaController < ApplicationController
  def index
  end

  def gacha
    n = Random.rand(101)
    meso = 0
    if n > 99
      meso = 100
    elsif n > 91
      meso = 50
    else meso = 10
    end

    current_user.hamsterbux += meso
    current_user.save

    new_transaction = Transaction.new({amount: meso, description: "gacha #{meso}", user: current_user, process_time: Time.now.strftime('%d/%m/%Y %HL%M')})
    new_transaction.save

    render json: {mesos: meso}
  end
end
