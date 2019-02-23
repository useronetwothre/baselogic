namespace :docker do
  desc 'Build container based on git commit tag'
  task :build do
    system %{ docker build -t baselogic:$(git rev-parse --short HEAD) . }
  end
end
