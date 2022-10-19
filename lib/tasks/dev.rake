require 'pastel'

namespace :dev do
  desc "Rebuilds the database with the values recorded in seeds.rb"
  task db_reset: :environment do
    show_spinner("Apagando BD ...") { %x(rails db:drop) }

    show_spinner("Criando BD ...") { %x(rails db:create) }
    
    show_spinner("Migrando BD ...") { %x(rails db:migrate) }

    show_spinner("Populando BD ...") { %x(rails db:seed) }
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
