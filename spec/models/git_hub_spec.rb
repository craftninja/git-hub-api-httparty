require 'HTTParty'
require './app/models/git_hub'

describe GitHub do
  it 'hits the GitHub API and returns something' do
    actual = GitHub.get_repo('octokit', 'octokit.rb').parsed_response
    expect(actual['id']).to eq(417862)
    expect(actual['name']).to eq('octokit.rb')
    expect(actual['full_name']).to eq('octokit/octokit.rb')
  end
end
