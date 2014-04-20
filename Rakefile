require 'sprite_factory'

namespace :assets do
  desc 'recreate sprite images and css'
  task :sprite do 

    SpriteFactory.cssurl = "/images/"
    SpriteFactory.style = "scss"
    SpriteFactory.layout = "packed"

    SpriteFactory.run!('assets/icons', 
                        :output_style => 'assets/stylesheets/modules/_icons.scss',
                        :output_image => 'public/images/icons.png',
                        :selector => '.icon-')

    # Include other sprites below

    puts "Your sprites, sir."
  end
end