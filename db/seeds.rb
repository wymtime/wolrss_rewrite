# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ActiveRecord::Base.transaction do
  categories = Category.create!([
    {title: "Music"},
    {title: "News"},
    {title: "Technology"},
    {title: "Business"},
    {title: "Finance"},
    {title: "Gaming"},
    {title: "Design"},
    {title: "Fashion"},
    {title: "Marketing"},
    {title: "Food"},
    {title: "DIY"},
    {title: "Photography"},
    {title: "Entertainment"},
    {title: "Science"},
    {title: "Sports"},
    {title: "Health"}
  ])

  id = Category.find_by_title("Music").id

  Feed.find_or_create_by_url("https://pitchfork.com/rss/news/",
  "https://pbs.twimg.com/profile_images/839758429963104256/UZ90wIZU_400x400.jpg", id)
  Feed.find_or_create_by_url("https://www.rollingstone.com/rss",
  "https://pbs.twimg.com/profile_images/875453682170576896/KDcOPtgI_400x400.jpg", id)
  Feed.find_or_create_by_url("http://consequenceofsound.net/feed/",
  "https://pbs.twimg.com/profile_images/953052543625715712/6Pp-BdiV_400x400.jpg", id)
  Feed.find_or_create_by_url("http://pigeonsandplanes.com/feeds/generator/e/n/3.rss",
  "https://pbs.twimg.com/profile_images/755417835191623680/PEEosNS5_400x400.jpg", id)
  Feed.find_or_create_by_url("http://www.stereogum.com/feed",
  "https://pbs.twimg.com/profile_images/454380975095414784/xiBiLgZe_400x400.png", id)
  Feed.find_or_create_by_url("http://www.factmag.com/feed/",
  "https://pbs.twimg.com/profile_images/911154084073308160/ggEMZ5eu_400x400.jpg", id)
  # Feed.find_or_create_by_url("http://hypem.com/feed/popular/3day/1/feed.xml",
  # "https://pbs.twimg.com/profile_images/527101684082692096/M4viLDF0_400x400.png", id)
  Feed.find_or_create_by_url("http://theboombox.com/feed",
  "https://pbs.twimg.com/profile_images/344513261578427446/39f780221890d8540d0e61a4ec238f44_400x400.jpeg", id)
  Feed.find_or_create_by_url("http://drownedinsound.com/feed",
  "https://pbs.twimg.com/profile_images/826686320881840128/Pgs_4vPo_400x400.jpg", id)
  Feed.find_or_create_by_url("http://thissongissick.com/feeds/feed",
  "https://pbs.twimg.com/profile_images/476810547707408385/I1n4bDg5_400x400.jpeg", id)
  Feed.find_or_create_by_url("http://rapradar.com/feed/",
  "https://pbs.twimg.com/profile_images/861724989157801984/N6OFU8qT_400x400.jpg", id)
  Feed.find_or_create_by_url("http://www.rap-up.com/feed/rss",
  "https://pbs.twimg.com/profile_images/796276487951249409/mMrB3I6s_400x400.jpg", id)




  id = Category.find_by_title("News").id

  Feed.find_or_create_by_url("http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml",
  "https://pbs.twimg.com/profile_images/942784892882112513/qV4xB0I3_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.npr.org/rss/rss.php?id=1001",
  "https://pbs.twimg.com/profile_images/722199003845304320/s2zwEoao_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.bbci.co.uk/news/rss.xml",
  "https://pbs.twimg.com/profile_images/875702138680246273/BfQLzf7G_400x400.jpg", id)

  Feed.find_or_create_by_url("http://rss.cnn.com/rss/cnn_topstories.rss",
  "https://pbs.twimg.com/profile_images/508960761826131968/LnvhR8ED_400x400.png", id)

  Feed.find_or_create_by_url("http://www.reuters.com/rssFeed/topNews",
  "https://pbs.twimg.com/profile_images/877554927932891136/ZBEs235N_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.vice.com/rss",
  "https://pbs.twimg.com/profile_images/785208513177985024/Guc3ohmz_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.theguardian.com/uk/rss",
  "https://pbs.twimg.com/profile_images/952866338187423744/0hj7a-EH_400x400.jpg", id)

  Feed.find_or_create_by_url("http://fivethirtyeight.com/all/feed",
  "https://pbs.twimg.com/profile_images/875426588061573121/lpQG3W6i_400x400.jpg", id)

  Feed.find_or_create_by_url("https://abcnews.go.com/abcnews/topstories",
  "https://pbs.twimg.com/profile_images/877547979363758080/ny06RNTT_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.aljazeera.com/xml/rss/all.xml",
  "https://pbs.twimg.com/profile_images/875638617606987776/YBOKib96_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.buzzfeed.com/index.xml",
  "https://pbs.twimg.com/profile_images/687767655214891008/n9pHVYUl_400x400.png", id)




  id = Category.find_by_title("Technology").id


  Feed.find_or_create_by_url("http://feeds.feedburner.com/TechCrunch/?fmt=xml",
  "https://pbs.twimg.com/profile_images/969240943671955456/mGuud28F_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.theverge.com/rss/index.xml",
  "https://pbs.twimg.com/profile_images/877903823133704194/Mqp1PXU8_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.mashable.com/Mashable?format=xml",
  "https://pbs.twimg.com/profile_images/941796662770651137/cDtLVz1j_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.wired.com/feed/rss",
  "https://pbs.twimg.com/profile_images/615598832726970372/jsK-gBSt_400x400.png", id)

  Feed.find_or_create_by_url("https://gizmodo.com/rss",
  "https://pbs.twimg.com/profile_images/590508740010348544/eS1F7mN5_400x400.png", id)

  Feed.find_or_create_by_url("http://feeds.arstechnica.com/arstechnica/features",
  "https://pbs.twimg.com/profile_images/2215576731/ars-logo_400x400.png", id)

  Feed.find_or_create_by_url("https://lifehacker.com/rss",
  "https://pbs.twimg.com/profile_images/590971614545612800/eV8h6rz7_400x400.png", id)

  Feed.find_or_create_by_url("https://www.digitaltrends.com/feed/",
  "https://pbs.twimg.com/profile_images/837464340219383808/w6PhY8ib_400x400.jpg", id)


  #STOPPED HERE

  id = Category.find_by_title("Business").id

  Feed.find_or_create_by_url("http://feeds2.feedburner.com/businessinsider",
  "https://pbs.twimg.com/profile_images/887662979902304257/azSzxYkB_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/entrepreneur/latest?fmt=xml",
  "https://pbs.twimg.com/profile_images/474753665970868224/GcoCzmcI_400x400.jpeg", id)

  Feed.find_or_create_by_url("https://venturebeat.com/feed/",
  "https://pbs.twimg.com/profile_images/615577992815882240/Iap3Di46_400x400.png", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/fastcompany/headlines",
  "https://pbs.twimg.com/profile_images/875769219400351744/ib7iIvRF_400x400.jpg", id)

  Feed.find_or_create_by_url("http://online.wsj.com/xml/rss/3_7014.xml",
  "https://pbs.twimg.com/profile_images/971415515754266624/zCX0q9d5_400x400.jpg", id)

  Feed.find_or_create_by_url("http://rss.cnn.com/rss/money_latest.rss",
  "https://pbs.twimg.com/profile_images/921416918711635968/sYrMI3VY_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.forbes.com/most-popular/feed/",
  "https://pbs.twimg.com/profile_images/882603270484766720/YFx4Lsh4_400x400.jpg", id)


  id = Category.find_by_title("Finance").id
  #
  #
  Feed.find_or_create_by_url("https://www.economist.com/sections/business-finance/rss.xml",
  "https://pbs.twimg.com/profile_images/879361767914262528/HdRauDM-_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.marketwatch.com/marketwatch/topstories/",
  "https://pbs.twimg.com/profile_images/705601245596090368/Z6xUOnRg_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.ft.com/rss/home/us",
  "https://pbs.twimg.com/profile_images/931156393108885504/EqEMtLhM_400x400.jpg", id)

  Feed.find_or_create_by_url("http://rss.cnn.com/rss/money_topstories.rss",
  "https://pbs.twimg.com/profile_images/921416918711635968/sYrMI3VY_400x400.jpg", id)

  Feed.find_or_create_by_url("http://online.wsj.com/xml/rss/3_7031.xml",
  "https://pbs.twimg.com/profile_images/954404826212904960/TnG97-_8_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.reuters.com/news/wealth",
  "https://pbs.twimg.com/profile_images/877554927932891136/ZBEs235N_400x400.jpg", id)

  Feed.find_or_create_by_url("http://freakonomics.com/feed/",
  "https://pbs.twimg.com/profile_images/622081637459759104/GFurjqwe_400x400.jpg", id)



  id = Category.find_by_title("Gaming").id


  Feed.find_or_create_by_url("https://kotaku.com/rss",
  "https://pbs.twimg.com/profile_images/925726499294011398/s2kPEKGx_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.ign.com/ign/games-all",
  "https://pbs.twimg.com/profile_images/954497359693561856/dqJfrXJG_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.gameinformer.com/feeds/thefeedrss.aspx",
  "https://pbs.twimg.com/profile_images/798310412508770304/EVgG-Ldt_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.polygon.com/rss/index.xml",
  "https://pbs.twimg.com/profile_images/877267279523741696/rzCAYZLP_400x400.jpg", id)

  Feed.find_or_create_by_url("https://feeds.feedburner.com/Destructoid-Rss",
  "https://pbs.twimg.com/profile_images/704387295714131968/st1on-tV_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/RockPaperShotgun",
  "https://pbs.twimg.com/profile_images/1443642491/twit_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.vg247.com/feed/",
  "https://pbs.twimg.com/profile_images/427834982015324161/0opUjXJP_400x400.jpeg", id)

  Feed.find_or_create_by_url("https://www.eurogamer.net/?format=rss",
  "https://pbs.twimg.com/profile_images/981830126697664514/HlM2N_7P_400x400.jpg", id)


  id = Category.find_by_title("Design").id

  Feed.find_or_create_by_url("http://feeds.feedburner.com/abduzeedo",
  "https://pbs.twimg.com/profile_images/563892489384243200/iRI8Qdmq_400x400.png", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/design-milk",
  "https://pbs.twimg.com/profile_images/875888895455485952/VrTcjG6g_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.coolhunting.com/atom.xml",
  "https://pbs.twimg.com/profile_images/749247033211555840/W3v1EnT0_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/colossal",
  "https://pbs.twimg.com/profile_images/920685695907303424/ZrILX0vl_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.kottke.org/main",
  "https://pbs.twimg.com/profile_images/775300604646359040/6mkGOPp0_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.feedblitz.com/thedieline",
  "https://pbs.twimg.com/profile_images/750424016154877952/ZKul5SF9_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds2.feedburner.com/itsnicethat/SlXC",
  "https://pbs.twimg.com/profile_images/751327076960051204/qBy0hFW3_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.designernews.co/?format=rss",
  "https://pbs.twimg.com/profile_images/639524662263721984/4CRC3rLF_400x400.png", id)

  Feed.find_or_create_by_url("http://www.creativeapplications.net/feed/",
  "https://pbs.twimg.com/profile_images/809714289070211072/ksyQVK0c_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.designboom.com/weblog/rss.php",
  "https://pbs.twimg.com/profile_images/2488952290/rracjn6v3803d6txfpo2_400x400.gif", id)

  Feed.find_or_create_by_url("http://designtaxi.com/news.rss",
  "https://pbs.twimg.com/profile_images/446325938121216000/mfMTNQxO_400x400.png", id)

  Feed.find_or_create_by_url("https://www.dezeen.com/feed",
  "https://pbs.twimg.com/profile_images/801122329908707328/cVOgX_ER_400x400.jpg", id)
  #
  #
  id = Category.find_by_title("Fashion").id

  Feed.find_or_create_by_url("http://www.elle.com/rss/fashion/",
  "https://pbs.twimg.com/profile_images/840584515710001154/hZKofewI_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.gq.com/services/rss/feeds/latest.xml",
  "https://pbs.twimg.com/profile_images/745329700512358402/IRo9CY0o_400x400.jpg", id)

  # Feed.find_or_create_by_url("http://www.vogue.com/feed",
  # "https://pbs.twimg.com/profile_images/949349571087536129/jClOJzBv_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.whowhatwear.com/rss",
  "https://pbs.twimg.com/profile_images/786559168807309312/J31jgtHy_400x400.jpg", id)

  Feed.find_or_create_by_url("http://purple.fr/feed/",
  "https://scontent-lax3-1.cdninstagram.com/vp/188f62e71e57a78ce2dba597cfb0168c/5B87A8B3/t51.2885-19/s150x150/29094571_397511577380338_4531719710265311232_n.jpg", id)

  # Feed.find_or_create_by_url("http://www.fashionmagazine.com/feed",
  # "https://pbs.twimg.com/profile_images/848895619766681601/Pq0E0ipO_400x400.jpg", id)

  Feed.find_or_create_by_url("http://lookbook.nu/rss",
  "https://pbs.twimg.com/profile_images/816356757941456899/mzd5WZqy_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.theblondesalad.com/feed",
  "https://pbs.twimg.com/profile_images/602131075557629952/WtRsovGo_400x400.jpg", id)

  # Feed.find_or_create_by_url("http://www.refinery29.com/fashion/rss.xml",
  # "https://pbs.twimg.com/profile_images/848161466213691395/lNcTj-L__400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.popsugar.com/fashion/feed",
  "https://pbs.twimg.com/profile_images/674732932745920512/esBu3m8J_400x400.png", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/TheSartorialist",
  "https://pbs.twimg.com/profile_images/378800000059052332/60e6bc4dfba2dacd2fd12445abd6efb3_400x400.jpeg", id)


  id = Category.find_by_title("Marketing").id

  # Feed.find_or_create_by_url("https://blog.hubspot.com/marketing/rss.xml",
  # "https://pbs.twimg.com/profile_images/931608729174372352/CvDh2aKQ_400x400.jpg", id)

  Feed.find_or_create_by_url("https://moz.com/blog/feed",
  "https://pbs.twimg.com/profile_images/991028078385090560/gxyqHomH_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.adweek.com/rss",
  "https://pbs.twimg.com/profile_images/876830371257753600/EHy4adK3_400x400.jpg", id)

  Feed.find_or_create_by_url("https://blog.kissmetrics.com/feed",
  "https://pbs.twimg.com/profile_images/883377552231849984/DtU2FDKR_400x400.jpg", id)

  Feed.find_or_create_by_url("http://sethgodin.typepad.com/seths_blog/atom.xml",
  "https://pbs.twimg.com/profile_images/935270007331749888/xZNXud5R_400x400.jpg", id)

  #
  id = Category.find_by_title("Food").id

  Feed.find_or_create_by_url("https://www.eater.com/rss/index.xml",
  "https://pbs.twimg.com/profile_images/513845495882477568/UDiDBo66_400x400.png", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/seriouseatsfeaturesvideos",
  "https://pbs.twimg.com/profile_images/883020631977144324/Nhe2vc2D_400x400.jpg", id)

  Feed.find_or_create_by_url("https://food52.com/blog.rss",
  "https://pbs.twimg.com/profile_images/729725723565395971/3eWxWjEe_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.bonappetit.com/feed/rss",
  "https://pbs.twimg.com/profile_images/1308597170/bon-appetit-twitter-icon_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/elise/simplyrecipes",
  "https://pbs.twimg.com/profile_images/3535149806/3dcb7f4bda5329ca8329e83c59b0d2a0_400x400.png", id)

  Feed.find_or_create_by_url("https://www.finedininglovers.com/rss/all/latest",
  "https://pbs.twimg.com/profile_images/2134677999/LOGO_fdl_black_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.specialtyfood.com/rss/featured-articles/",
  "https://pbs.twimg.com/profile_images/884858016838934528/VmTneaXd_400x400.jpg", id)

  Feed.find_or_create_by_url("https://eatyourworld.com/rss/what_to_eat",
  "https://pbs.twimg.com/profile_images/378800000539414244/8e7bd996dbf4a3c1d7ec1e3ae04bef8b_400x400.jpeg", id)
  #
  id = Category.find_by_title("DIY").id

  Feed.find_or_create_by_url("https://www.popsci.com/rss-diy.xml",
  "https://pbs.twimg.com/profile_images/915646486381084672/y9rvRKcy_400x400.jpg", id)

  Feed.find_or_create_by_url("https://makezine.com/feed/",
  "https://pbs.twimg.com/profile_images/783080298665775108/LESsgngz_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.curbly.com/site_index.rss",
  "https://pbs.twimg.com/profile_images/666094667117662212/74Bydd4N_400x400.png", id)

  Feed.find_or_create_by_url("http://craftgossip.com/feed/",
  "https://pbs.twimg.com/profile_images/838986141902610432/RuJWQ2Mn_400x400.jpg", id)

  #
  id = Category.find_by_title("Photography").id

  Feed.find_or_create_by_url("https://iso.500px.com/feed",
  "https://pbs.twimg.com/profile_images/864200552506208256/wdGxW1ko_400x400.jpg", id)

  Feed.find_or_create_by_url("https://fstoppers.com/feed",
  "https://pbs.twimg.com/profile_images/378800000766204011/f0702aee0308e945543fbe4f359c8758_400x400.jpeg", id)

  Feed.find_or_create_by_url("https://www.outdoorphotographer.com/feed/",
  "https://pbs.twimg.com/profile_images/788077608210616320/rCwrPYR8_400x400.jpg", id)

  Feed.find_or_create_by_url("http://petapixel.com/feed",
  "https://pbs.twimg.com/profile_images/211156611/avatar_400x400.jpg", id)

  #
  id = Category.find_by_title("Entertainment").id

  Feed.find_or_create_by_url("http://feeds.feedburner.com/EtsBreakingNews",
  "https://pbs.twimg.com/profile_images/996075416896069632/WyklK6si_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.tmz.com/rss.xml",
  "https://pbs.twimg.com/profile_images/948698715220410368/EkNILtvi_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.accesshollywood.com/AccessHollywood/LatestNews?_ga=2.142642421.1389580908.1526252801-1006887570.1526252801",
  "https://pbs.twimg.com/profile_images/940196323357212672/yM7Buo0f_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.esquire.com/rss/entertainment.xml/",
  "https://pbs.twimg.com/profile_images/862046057303351296/bocaIajL_400x400.jpg", id)

  #
  id = Category.find_by_title("Science").id

  Feed.find_or_create_by_url("http://rss.sciam.com/ScientificAmerican-News",
  "https://pbs.twimg.com/profile_images/676776763431620608/1eNZzxq0_400x400.png", id)

  Feed.find_or_create_by_url("https://www.popularmechanics.com/rss/all.xml/",
  "https://pbs.twimg.com/profile_images/812327935319293952/Yuw9IY2k_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.sciencedaily.com/rss/all.xml",
  "https://pbs.twimg.com/profile_images/887738529668673536/LQyAlyUh_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.sciencemag.org/rss/news_current.xml",
  "https://pbs.twimg.com/profile_images/885961364644261888/k2uehOaU_400x400.jpg", id)

  #
  id = Category.find_by_title("Sports").id

  Feed.find_or_create_by_url("http://www.espn.com/espn/rss/news",
  "https://pbs.twimg.com/profile_images/984280988699234304/VYthX7o1_400x400.jpg", id)

  Feed.find_or_create_by_url("https://api.foxsports.com/v1/rss?partnerKey=zBaFxRyGKCfxBagJG9b8pqLyndmvo7UU",
  "https://pbs.twimg.com/profile_images/824007776489738241/pFk_8LLO_400x400.jpg", id)

  Feed.find_or_create_by_url("https://rss.cbssports.com/rss/headlines/",
  "https://pbs.twimg.com/profile_images/876873707406319616/nIgd2BNe_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.si.com/rss/si_topstories.rss",
  "https://pbs.twimg.com/profile_images/876883699559780352/ixURaEXt_400x400.jpg", id)

  #
  id = Category.find_by_title("Health").id

  Feed.find_or_create_by_url("http://www.health.com/news/feed",
  "https://pbs.twimg.com/profile_images/875380001159380992/k80-BjQp_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.mayoclinic.org/rss/all-news",
  "https://pbs.twimg.com/profile_images/878347163272486912/ktSje-hR_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.health.harvard.edu/blog/feed",
  "https://pbs.twimg.com/profile_images/897872949998387200/aLAkB7yk_400x400.jpg", id)

  Feed.find_or_create_by_url("https://www.telegraph.co.uk/news/rss.xml",
  "https://pbs.twimg.com/profile_images/943090005723041792/2cjxINlJ_400x400.jpg", id)

end
