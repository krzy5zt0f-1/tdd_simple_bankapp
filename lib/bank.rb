
class Bank

  def initialize
    @account = 0.0
  end

def deposit(money)
  @account = @account + money
end

def withdraw(money)
  @account = @account - money
end

def balance
"Your Balance is: £#{@account}"
end

end
