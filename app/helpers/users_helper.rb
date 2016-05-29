module UsersHelper

	# Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
   gravatar_url = "http://media9.fast-torrent.ru/media/files/s3/mp/kh/kinopoiskru-sylvester-stallon.jpg" if user.email == "free2@mail.com"
   gravatar_url = "http://st-fashiony.ru/pic/clothing/pic/95436/42.jpg" unless user.email == "free2@mail.com"
   gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
   # gravatar_url = "http://media9.fast-torrent.ru/media/files/s3/mp/kh/kinopoiskru-sylvester-stallon.jpg"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
