class Root::Api::V1::Ccc::GithubFollowersController < ApplicationController
  MAX_DEPTH = 3
  MAX_USERS = 5
  FOLLOWERS_API = "https://api.github.com/users/%s/followers"

  def index
    begin
      @followers_by_name = {}
      names = recurse_followers( params[:name] )
      render json: @followers_by_name
    rescue Exception => exc
      auditlog exc.inspect
      render json: { message: 'Sorry an error has occurred' }
    end
  end

  private

  def recurse_followers( root_name, level=1 )
    return if root_name.blank? || @followers_by_name[root_name]
    resp = RestClient.get FOLLOWERS_API % root_name
    users = JSON.parse( resp.body )
    @followers_by_name[root_name] = users[ 0..MAX_USERS-1 ].map { |user| user['login'] }
    return if level >= MAX_DEPTH
    @followers_by_name[root_name].each { | name |  recurse_followers( name, level+1 ) }
  end

end
