# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coins = [
	{
		description: "Bitcoin",
		acronym: "BTC",
		image_url: "https://cryptologos.cc/logos/bitcoin-btc-logo.png"
	},
	{
		description: "Ethereum",
		acronym: "ETH",
		image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png"
	},
	{
		description: "Dash",
		acronym: "DASH",
		image_url: "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/dash_dashcoin-512.png"
	},
	{
		description: "Litecoin",
		acronym: "LTC",
		image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LTC-400.png/2048px-LTC-400.png"
	},
	{
		description: "Binance Coin",
		acronym: "BNB",
		image_url: "https://seeklogo.com/images/B/bnb-logo-AC3FE1FF33-seeklogo.com.png"
	}
]

spinner = TTY::Spinner.new("[:spinner] Populando BD ...", format: :dots_2)
spinner.auto_spin

coins.each do |coin|
	Coin.find_or_create_by!(coin)
end

spinner.success("(Populado com sucesso!)")
