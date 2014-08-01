user = User.new(email: 'deepakkumarnd@gmail.com', password: 'q1w2e3r4', password_confirmation: 'q1w2e3r4')
user.confirm!
user.save!