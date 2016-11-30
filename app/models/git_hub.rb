class GitHub
  include HTTParty
  base_uri 'https://api.github.com'

  def self.get_repo(owner, repo)
    self.get("/repos/#{owner}/#{repo}")
  end

end
