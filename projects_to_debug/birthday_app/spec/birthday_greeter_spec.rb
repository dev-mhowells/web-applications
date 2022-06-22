require 'birthday_greeter'
require 'date'

describe BirthdayGreeter do
  it 'wishes happy birthday' do
    greeter = BirthdayGreeter.new
    today = Date.today.strftime('%Y-%m-%d')

    expect(greeter.greet_birthday(today)).to eq("Happy birthday!")
  end

  it 'tells how many days until birthday' do
    greeter = BirthdayGreeter.new
    in_seven_days = (Date.today + 7).strftime('%Y-%m-%d')

    expect(greeter.greet_birthday(in_seven_days)).to eq("Your birthday is in 7 days!")
  end
end