user = User.new
user.email = 'admin@admin.admin'
user.password = 'zaq1@WSX'
user.password_confirmation = 'zaq1@WSX'
user.save!

post = Post.new
post.content = IO.binread("./db/files/post.txt")
post.created_at = DateTime.new(2020, 12, 31, 21, 15)
post.title = 'Test #1'
post.save!

post = Post.new
post.content = IO.binread("./db/files/post.txt")
post.created_at = DateTime.new(2020, 12, 31, 15, 0)
post.title = 'Test #2'
post.save!