desc 'create admin'
task :create_default_admin => :environment do
  login = 'admin@example.com'
  password = 'Kup1Pr0gu1ku!!'
  puts "admin created: l:#{login} p:#{password}"
  AdminUser.create!(email: login, password: 'Kup1Pr0gu1ku!!')
end