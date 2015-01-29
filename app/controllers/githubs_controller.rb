# gitty = Github.new

# the_gitty = gitty.repos.list user: 'ann-xvii'

# # the gitty is an array of objects


# # this can give teh name of the repos
# # html_url gives the url
# the_gitty.each do |x|
# 	length = x.html_url.length
# 	# puts length
# 	puts x.html_url[28..length]
# end
