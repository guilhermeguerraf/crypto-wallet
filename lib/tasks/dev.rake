require 'pastel'

namespace :dev do
  desc "Rebuilds the database with the values recorded in seeds.rb"
  task db_reset: :environment do
    show_spinner("Apagando BD ...") { %x(rails db:drop) }

    show_spinner("Criando BD ...") { %x(rails db:create) }
    
    show_spinner("Migrando BD ...") { %x(rails db:migrate) }

    %x(rails dev:add_mining_types)
    
    %x(rails dev:add_coins)
  end

  desc "Populate coins table"
  task add_coins: :environment do
    coins = [
      {
        description: "Bitcoin",
        acronym: "BTC",
        image_url: "https://cryptologos.cc/logos/bitcoin-btc-logo.png",
        mining_type: MiningType.all.sample
      },
      {
        description: "Ethereum",
        acronym: "ETH",
        image_url: "https://cryptologos.cc/logos/ethereum-eth-logo.png",
        mining_type: MiningType.all.sample
      },
      {
        description: "Dash",
        acronym: "DASH",
        image_url: "https://cryptologos.cc/logos/dash-dash-logo.png",
        mining_type: MiningType.all.sample
      },
      {
        description: "Litecoin",
        acronym: "LTC",
        image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LTC-400.png/2048px-LTC-400.png",
        mining_type: MiningType.all.sample
      },
      {
        description: "Binance Coin",
        acronym: "BNB",
        image_url: "https://seeklogo.com/images/B/bnb-logo-AC3FE1FF33-seeklogo.com.png",
        mining_type: MiningType.all.sample
      },
      {
        description: "Iota",
        acronym: "IOT",
        image_url: "https://cryptologos.cc/logos/iota-miota-logo.png",
        mining_type: MiningType.all.sample
      },
      {
        description: "ZCash",
        acronym: "ZEC",
        image_url: "https://cryptologos.cc/logos/zcash-zec-logo.png",
        mining_type: MiningType.all.sample
      }
    ]

    show_spinner("Populando coins BD ...") do
      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end

  desc "Populate mining types table"
  task add_mining_types: :environment do
    mining_types = [
      {
        description: "Proof of Work",
        acronym: "PoW"
      },
      {
        description: "Proof of Stake",
        acronym: "PoS"
      },
      {
        description: "Proof of Capacity",
        acronym: "PoC"
      }
    ]

    show_spinner("Populando mining type BD ...") do
      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end

  private
    def show_spinner(start_message_log, end_message_log = "Concluído com sucesso!")
      pastel = Pastel.new

      spinner = TTY::Spinner.new("[:spinner] #{pastel.bright_yellow(start_message_log)}", format: :dots_2, success_mark: pastel.bright_green("+"))
      spinner.auto_spin
      yield
      spinner.success(pastel.bright_green("(#{end_message_log})"))
    end
end
