require_relative '../lib/bank'

RSpec.describe Bank do
  it { is_expected.to respond_to(:deposit) }

  it { is_expected.to respond_to(:withdraw) }

  it { is_expected.to respond_to(:balance) }

  it "creates an instance of bank object" do
		expect(subject).to be_instance_of Bank
	end

  describe "#deposit()" do
    it "adds money to users bank acount" do
      expect(subject.deposit(344)).to eq 344.00
    end
  end

  describe "#withdraw()" do
    it "withdraws money form users bank account" do
      expect(subject.withdraw(5)).to eq -5
    end
  end

  describe ".balance" do
    it "puts out info about current state of account" do
      subject.deposit(7.93)
      subject.withdraw(5)
      subject.deposit(150.51)
      expect(subject.balance).to eq "Your Balance is: £153.44"
    end
  end
end
