# ccc

The CCC challenge Rails controllers are embedded in a proprietary dynamic routing scheme that breaks up the Rails monolith. It is a trivial exercise to add the controller code to any Rails application.

To test live versions of this code use https://faxo.com with the following endpoints:

NOTE: The links have purposely not been full pathed to prevent crawlers

Challenge 1:

/api/v1/ccc/github_followers?name=octocat

Challenge 2:

/api/v1/ccc/github_repos_and_gazers?name=octocat

returns: repos_by_name and gazers_by_repo hashes

NOTES:
I added a github app and authentication to github in the source (not shown) to increase the calls you can make before getting rate limited.
The solution is deployed in a load balanced environment. If CORS is needed I can add the API to our AWS API Gateway along with an optional API key and rate limiting.

Sample responses:

/api/v1/ccc/github_followers?name=octocat

{"octocat":["myhduck","trevor","ogijun","mattn","reeze"],"myhduck":["SuriyaaKudoIsc"],"SuriyaaKudoIsc":["jovenmarlo","hunslater","jmg","pnommensen","matiasinsaurralde"],"trevor":["vlandham","joegoggins","pjotrp","include","kanzure"],"vlandham":["brentp","trevor","wiederkehr","drio","marknca"],"joegoggins":["tarcieri","trevor","jcoyne","pjleonhardt","scamicha"],"pjotrp":["michaelbarton","trevor","nakao","verdurin","shevegen"],"include":["trevor","filiperocha","Davidslv","smpb","mbunge"],"kanzure":["charlenopires","pingswept","daeken","jugglebird","jonathannelson"],"ogijun":["norio","walf443","cho45","psychs","typester"],"norio":["kakutani","darashi","mootoh","baron","walf443"],"walf443":["jeremy","norio","kana","kakutani","darashi"],"cho45":["yoshidaster","norio","kana","kakutani","darashi"],"psychs":["norio","kballard","Krishna","jptix","charlenopires"],"typester":["yoshidaster","vic","melo","kana","hchbaw"],"mattn":["takano32","arctarus","pesblog","melo","marvin"],"takano32":["ok-yamachaaan","kana","rystyle","kivanio","tanigon"],"arctarus":["jaimeiniesta","towanda","ialcazar","afcapel","zigotica"],"pesblog":["punchdrunker","comfuture","takumakei","Akimotomamay","panicdragon"],"melo":["pedromg","dbcm","bct","pfig","andregoncalves"],"marvin":["acesuares","mattn","astro","tosch","Marak"],"reeze":["cnhacktnt","fayland","robbenmu","chunzi","fwolf"],"cnhacktnt":["reeze","fayland","chunzi","nightsailer","c9s"],"fayland":["melo","typester","miyagawa","masaki","beppu"],"robbenmu":["lite","tyabe","macji","kulhazker","LC2010"],"chunzi":["ELLIOTTCABLE","winson","kana","libin","nothingmuch"],"fwolf":["reeze","zhanggang","koboshi","LelouchHe","neagle2009"]}

