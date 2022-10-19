namespace :dev do
  desc "TODO"
  task db_reset: :environment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end
end
