task :default => [:dependencies, :scenarios, :commit, :deploy]

task :dependencies do
	sh 'bundle install'
end

task :commit do
	puts "Committing and Pushing to Git"
	require 'git_repository'
	commit_message = ENV["m"] || 'no commit message'
	git = GitRepository.new
	git.add
	git.commit(:message => "@{commit_message}")
	git.push	
end

task :scenarios do
	sh 'foreman start&'
	begin
		sh 'bundle exec cucumber'
	rescue
		puts 'NOT FEATURE COMPLETE'
		puts 'Hit ENTER to continue'
		gets.chomp
	ensure
		sh "pkill ruby"
	end
end

task :deploy do
	puts "Deploying to heroku"
	require 'git_repository'
	git = GitRepository.new(:remote => "heroku")
	git.push
end
