release: rails db:migrate
web: bundle exec puma -t 5:5
worker: bundle exec sidekiq -t 5 -q default -q mailers
