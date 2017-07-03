class StaticPagesController < ApplicationController
  def home
  	@title = 'Ruby on Rails for beginners 2017'
		@subtitle = 'Web shop demo application'
		@products = Product.all
  end

  def about
  	@about = 'Welcome to our small web shop. Here you can find various type of products, from needle to locomotive, as they said in this region. Even though we exist only few months, our customers are satisfied with us. If you have any concerns about products, not sure what you need, or you have any other shop related question, feel free to contact us.'		
		@history = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam erat libero, tincidunt sit amet urna in, imperdiet laoreet mi. Vestibulum varius est lorem, vitae volutpat risus viverra vitae. Quisque ac diam velit. Nulla tincidunt fringilla malesuada. Aenean viverra orci nec tortor laoreet, vestibulum venenatis metus porttitor. Sed mattis tortor sed imperdiet porta. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec fringilla nisi eget augue tristique tristique. Fusce scelerisque rhoncus dolor at pulvinar. Cras nisi nisi, mattis non lacinia vitae, fringilla id erat. Nulla vehicula leo sed est interdum pharetra.'
		@goals = 'Praesent sollicitudin vitae erat quis condimentum. Integer interdum aliquam dolor eu volutpat. Nullam faucibus felis non placerat hendrerit. Sed magna justo, pharetra sed viverra sed, elementum et ante. Maecenas fringilla sapien lacus, mollis bibendum ligula porttitor id. Aliquam erat volutpat. In sagittis, mi vitae gravida mollis, nulla nisl tristique nibh, ac feugiat leo eros vel erat. Vivamus arcu ante, dictum et felis semper, semper efficitur neque. Vestibulum quis sapien non enim bibendum porttitor non vel lorem. Nulla accumsan, tortor non aliquet fringilla, turpis diam faucibus metus, in sagittis ligula turpis id sem.'
		@people = 'Cras vitae sapien accumsan, faucibus erat eget, semper nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc ut neque ullamcorper, facilisis libero in, pellentesque ligula. Ut accumsan mi ligula, sagittis imperdiet mi imperdiet id. Donec sit amet metus non tellus malesuada accumsan. Cras a metus malesuada, eleifend eros et, efficitur nulla. Duis eget sagittis lectus, eu porttitor erat. Integer placerat dictum arcu, ac vulputate neque feugiat ac. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam tincidunt nibh eget urna faucibus varius nec at libero. Nullam sagittis commodo massa.'
  end
end
