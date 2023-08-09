puts "Cleaning the DB..."
Criminal.destroy_all
Prison.destroy_all

puts "Creating prisons..."
prison = Prison.create!(
  banner_url: 'https://upload.wikimedia.org/wikipedia/commons/f/f3/Alcatraz_Island_photo_Don_Ramey_Logan.jpg',
  name: 'Alcatraz'
)
puts "... created #{Prison.count} prisons"

puts "Creating criminals..."
  images = %w[https://avatars.githubusercontent.com/u/26819547?v=4 https://avatars.githubusercontent.com/u/136877239?v=4 https://avatars.githubusercontent.com/u/135594820?v=4 https://avatars.githubusercontent.com/u/93357132?v=4 https://avatars.githubusercontent.com/u/133755774?v=4 https://avatars.githubusercontent.com/u/125720438?v=4 https://avatars.githubusercontent.com/u/138356934?v=4 https://avatars.githubusercontent.com/u/138380186?v=4 https://avatars.githubusercontent.com/u/138187142?v=4 https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1689897620/xoag721rcnjcl4yxrfjz.jpg https://avatars.githubusercontent.com/u/138380997?v=4 https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1688346930/rukacjl1thn30csynv2p.jpg https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1688385723/z7qusdq0hbfah7mvuaos.jpg https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1688378778/ccig4rvgl52p3zdndc6i.jpg https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1688276013/pvslricxt21pzfxt2sxl.jpg https://avatars.githubusercontent.com/u/137872025?v=4 https://avatars.githubusercontent.com/u/133198548?v=4 https://avatars.githubusercontent.com/u/133011696?v=4 https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1690244285/ldsrqk811pktglhigegb.jpg https://avatars.githubusercontent.com/u/138180537?v=4 https://avatars.githubusercontent.com/u/129238177?v=4 https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1688041076/wvtatzin7y9gpa4tdjsn.jpg https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1689040220/vmyp47qil08g9nwul0ur.jpg https://avatars.githubusercontent.com/u/125934862?v=4 https://avatars.githubusercontent.com/u/122541242?v=4 https://avatars.githubusercontent.com/u/98565950?v=4 https://avatars.githubusercontent.com/u/134996929?v=4 https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1688394117/d6cp0lt2019rqjooaurd.jpg https://avatars.githubusercontent.com/u/136456061?v=4]
  students = %w[Yann Lisa Nozomu George Lili Dennis Horace Efren Aliia Andres Kai Caitlyn James Jovon Mana Misako Kostas Devi Noemi Barry Karthika Alan Gabrielle Naoki PJ Vincent Gary Ritsuki Alvin]
  students.each_with_index do |name, index|
    Criminal.create!(
      name: name,
      image_url: images[index],
      prison: prison
    )
  end
puts "... created #{Criminal.count} criminals"
