5.times do |i|
t = 'seller' if i<2
 t = 'buyer' if i>=2
  User.create(name: 'fname', email: "email#{i+1}@gmail.com", user_type: t)
end