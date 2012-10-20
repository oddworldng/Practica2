task :default => :test # escribir "rake" ahora es equivalente a poner "rake test"

desc "Realiza los tests"
task :test do
	sh "ruby -Ilib test/tc_rps.rb"
end

# Se ejecuta : rake t[test_wrong_play], y ejecuta la prueba en tc_rps.rb -> test_wrong_play
desc "Run a specific test, provide a test name or a /regexp/"
task :t, :test_name do |t, args|
	test_name = args[:test_name] || 'test_play'
	sh "ruby -w -Ilib test/tc_rps.rb --name #{test_name}"
end
