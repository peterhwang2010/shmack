# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = JSON.parse(File.read("db/seeds/users.json"))
  users.each do |user|
	    u = User.create(user)
	end

groups = JSON.parse(File.read("db/seeds/groups.json"))
groups.each do |group|
  Group.create!(group_name: group["group_name"])
end



group_users = JSON.parse(File.read("db/seeds/group_users.json"))
group_users.each do |group_user|
  GroupUser.create!(user_id: group_user["user_id"], group_id: group_user["group_id"])
end
