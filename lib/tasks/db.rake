namespace :db do
  task :pull do
    Bundler.with_clean_env do
      sh "heroku pg:backups capture"
      sh "curl -o latest.dump `heroku pg:backups public-url`"
      # sh "bundle exec rails db:drop"
      # sh "bundle exec rails db:create"
      sh "pg_restore --verbose --clean --no-acl --no-owner -h localhost -U postgres -d jobexplorer_development latest.dump"
    end
  end
end