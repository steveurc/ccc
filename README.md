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

/api/v1/ccc/github_repos_and_gazers?name=octocat

{"repos_by_name":{"octocat":["git-consortium","hello-worId","Hello-World"],"mysugar":["arm64-docker-builder","cas","ci-blog"],"saber110":["51","Buttons","CI-AdminLTE"],"tofaelmax":["Google-"],"SuriyaaKudoIsc":["AHD","ali_kernel","alos"],"grant":["20-Apps","3D-printing-guide","8192"],"amitburst":["amitburst.me","code-problems","HackerNews"],"justindeguzman":["api-version-middleware","express-default-errors","hackathons"],"mkmathur":["badger-dubhacks","badger-old","borrowabook.today"],"vladimirjeune":["android-vision","constraint-layout","create-your-own-adventure"],"KonradIT":["2014","add-to-homescreen-winphone","Alarmist-Android"],"itsJarrett":["AdminPanel","Annihilation","garrysmod"],"gabboman":["aia_trabajo_2016","api_auto-meet","automeet_client"],"TheMolkaPL":["AceOfSpadesMiniGame","AdvDrop","android"],"ElDzi":["AceOfSpadesMiniGame","aimdroid","AimPanel4J"],"schacon":["3D-Me","aeon","agitmemnon"],"temmi2000":["aeon"],"SmartKnowledge":[],"gabe":["gabe.github.com","jQuery-Tagit","mombot"],"vmunix":["go-push-server","LimeChat-Themes","node_leak"],"adelcambre":["99bottles","adelcambre.github.com","appraisal"],"angusshire":["cs-exams-downloader","exams","greenhat"],"usergenic":["brendan.github.com","brendanbaldwin.com","brew"]},"gazers_by_repo":{"git-consortium":["mysugar","tofaelmax","SuriyaaKudoIsc"],"hello-worId":["grant","KonradIT","itsJarrett"],"Hello-World":["schacon","adelcambre","usergenic"],"arm64-docker-builder":[],"cas":[],"ci-blog":["saber110"],"51":[],"Buttons":[],"CI-AdminLTE":[],"Google-":["tofaelmax"],"AHD":[],"ali_kernel":[],"alos":["SuriyaaKudoIsc"],"20-Apps":["amitburst","justindeguzman","mkmathur"],"3D-printing-guide":["vladimirjeune"],"8192":[],"amitburst.me":[],"code-problems":[],"HackerNews":["grant","pabloquinteros","csu"],"api-version-middleware":[],"express-default-errors":[],"hackathons":[],"badger-dubhacks":["dzt"],"badger-old":[],"borrowabook.today":[],"android-vision":["vladimirjeune"],"constraint-layout":["vladimirjeune"],"create-your-own-adventure":["vladimirjeune"],"2014":[],"add-to-homescreen-winphone":[],"Alarmist-Android":[],"AdminPanel":[],"Annihilation":["gabboman","TheMolkaPL","ElDzi"],"garrysmod":[],"aia_trabajo_2016":[],"api_auto-meet":[],"automeet_client":[],"AceOfSpadesMiniGame":[],"AdvDrop":[],"android":[],"aimdroid":[],"AimPanel4J":["SystemZ","ElDzi"],"3D-Me":[],"aeon":["schacon","wilsonminer","luxus"],"agitmemnon":["schacon","gabe","vmunix"],"gabe.github.com":["gabe"],"jQuery-Tagit":["gabe"],"mombot":["gabe"],"go-push-server":[],"LimeChat-Themes":["vmunix"],"node_leak":["vmunix"],"99bottles":[],"adelcambre.github.com":["adelcambre","angusshire"],"appraisal":["adelcambre"],"cs-exams-downloader":["kianxineki","AlbatzPerm","ChristianCSE"],"exams":["hghorayeb","gabrielsimas","ekinhbayar"],"greenhat":["angusshire","benbieler","Ma27"],"brendan.github.com":["usergenic"],"brendanbaldwin.com":["usergenic"],"brew":[]}}

