desc "This task is called by the Heroku cron add-on"
task :call_page => :production do
   uri = URI.parse('http://www.myapp.org/')
   Net::HTTP.get(uri)
end