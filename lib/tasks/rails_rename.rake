desc "Create an app with the provided name (and optional SDK version)"
namespace :rails do

	task :rename, :new_name, :mode do |t, args|
		old_name = Rails.application.class.name.sub(/::Application/,'')
		new_name = args[:new_name].camelize

		command = "grep -lr -e '#{old_name}' *"
		if args[:mode] == 'confirm'
			command += " | xargs sed -i '' 's/#{old_name}/#{new_name}/g'"
		else
			puts "#{old_name} -> #{new_name}, these files will be affected, append 'confirm' to apply"
		end

		puts `#{command}`

		new_name_saved = File.read('config.ru').split(/run |::Application\n/).last
		puts "Current app name is: #{new_name_saved}"
	end

end