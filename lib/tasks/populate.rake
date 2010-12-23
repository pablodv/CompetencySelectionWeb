namespace(:db) do
  namespace(:populate) do

    desc "Create Roles for the site"
    task :roles => :prepare do
      Roles.destroy_all
      
      puts "*** Populating Tags..."
      ['admin', 'register', 'human_resources'].each do |role|
        Role.create!(:name => role)
      end
      puts "*** Done!"

    end
  end
end
