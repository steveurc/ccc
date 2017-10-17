# ccc

The CCC challenge Rails controllers are embedded in a proprietary dynamic routing scheme that breaks up the Rails monolith. It is a trivial exercise to add the controller code to any Rails application.

To test live versions of this code go to https://faxo.com and use the following endpoints:

NOTE: The links have purposely not been full pathed to prevent crawlers

Challenge 1:

/api/v1/ccc/github_followers?name=octocat

Challenge 2:

/api/v1/ccc/github_repos_and_gazers?name=octocat

returns: repos_by_name and gazers_by_repo hashes



