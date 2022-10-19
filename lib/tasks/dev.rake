namespace :dev do
  desc "Rebuilds the database with the values recorded in seeds.rb"
  task db_reset: :environment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end
end
