guard 'sass', :input => 'assets/stylesheets', :output => 'public/stylesheets'

guard :jammit, :config_path => "assets.yml", :output_folder => "." do
    watch(%r{(?:stylesheets|javascript)(/.+)\.(?:css|js)}) { |m| m[0] unless m[1] =~ /\/\./ }
  end

guard 'livereload', :grace_period => 0.5 do
  watch(%r{^app\.rb})
  watch(%r{views/.+\.erb$})
  watch(%r{public/.+\.(css|js)})
end