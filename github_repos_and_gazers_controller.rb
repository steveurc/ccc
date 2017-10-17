class Root::Api::V1::Ccc::GithubReposAndGazersController < ApplicationController
  MAX_DEPTH = 5
  MAX_REPOS = 3
  MAX_GAZERS = 3
  REPOS_API = "https://api.github.com/users/%s/repos"
  STARGAZERS_API = "https://api.github.com/repos/%s/%s/stargazers"

  def index
    begin
      @repos_by_name = {}
      @gazers_by_repo = {}
      names = recurse_repos_and_gazers( params[:name] )
      render json: {repos_by_name: @repos_by_name, gazers_by_repo: @gazers_by_repo }
    rescue Exception => exc
      auditlog exc.inspect
      render json: { message: 'Sorry an error has occurred' }
    end
  end

  private

  def recurse_repos_and_gazers( root_name, level=1 )
    return if root_name.blank? || @repos_by_name[root_name]
    repos = get_data( REPOS_API % root_name )
    @repos_by_name[root_name] = repos[ 0..MAX_REPOS-1 ].map { |repo| repo['name'] }
    more_gazers = []
    @repos_by_name[root_name].each do |repo|
      gazers = get_data( STARGAZERS_API % [root_name,repo] )
      @gazers_by_repo[repo] = gazers[ 0..MAX_GAZERS-1 ].map { |repo| repo['login'] }
      more_gazers.concat @gazers_by_repo[repo] unless level >= MAX_DEPTH
    end
    return if level >= MAX_DEPTH
    more_gazers.each { | name |  recurse_repos_and_gazers( name , level + 1 ) }
  end

  def get_data(api)
    resp = RestClient.get api
    JSON.parse( resp.body )
  end

end
