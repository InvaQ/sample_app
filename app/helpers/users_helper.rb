module UsersHelper

	# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
  	size = options[:size]
   #gravatar_url = "http://media9.fast-torrent.ru/media/files/s3/mp/kh/kinopoiskru-sylvester-stallon.jpg" #if user.email == "free2@mail.com"
   gravatar_url = "https://s-media-cache-ak0.pinimg.com/favicons/b4652125911442e927685d41879cc52e7279ae1c6aaf78e614054ba3.png?25461f06861327a763a4d4f79d94f06e"#{}"https://zhukov.github.io/webogram/img/placeholders/UserAvatar4@2x.png" unless user.email == "free2@mail.com"
   gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
   # gravatar_url = "http://media9.fast-torrent.ru/media/files/s3/mp/kh/kinopoiskru-sylvester-stallon.jpg"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
