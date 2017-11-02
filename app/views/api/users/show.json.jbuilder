json.partial! 'api/users/user', user: @user
json.showsToSee @user.shows.pluck(:id)
