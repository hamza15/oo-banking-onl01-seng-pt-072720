class Transfer
  # your code here
  
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end
  
  def valid?
    sender.valid? && receiver.valid? && amount < sender.balance
  end 
  
end
