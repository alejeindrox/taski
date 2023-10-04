namespace :swagger do
  desc 'Generate Swagger documentation'
  task :generate do
    sh 'bundle exec rake rswag:specs:swaggerize'
  end
end
