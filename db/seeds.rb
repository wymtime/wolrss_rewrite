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
    {title: "Cooking"},
    {title: "DIY"},
    {title: "Photography"},
    {title: "Entertainment"},
    {title: "Science"},
    {title: "Sports"},
    {title: "Health"},
    {title: "Entrepeneur"}
  ])

  id = Category.find_by_title("Music").id

  Feed.find_or_create_by_url("https://pitchfork.com/rss/news/",
  "https://pbs.twimg.com/profile_images/839758429963104256/UZ90wIZU_400x400.jpg", id)
  Feed.find_or_create_by_url("https://www.rollingstone.com/rss",
  "https://pbs.twimg.com/profile_images/875453682170576896/KDcOPtgI_400x400.jpg", id)
  Feed.find_or_create_by_url("",
  "", id)
  Feed.find_or_create_by_url("",
  "", id)
  Feed.find_or_create_by_url("",
  "", id)
  Feed.find_or_create_by_url("",
  "", id)
  Feed.find_or_create_by_url("",
  "", id)
  Feed.find_or_create_by_url("",
  "", id)





  id = Category.find_by_title("News").id

  Feed.find_or_create_by_url("http://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml",
  "https://pbs.twimg.com/profile_images/942784892882112513/qV4xB0I3_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.npr.org/rss/rss.php?id=1001",
  "https://pbs.twimg.com/profile_images/722199003845304320/s2zwEoao_400x400.jpg", id)

  Feed.find_or_create_by_url("http://feeds.bbci.co.uk/news/rss.xml",
  "https://pbs.twimg.com/profile_images/875702138680246273/BfQLzf7G_400x400.jpg", id)

  Feed.find_or_create_by_url("http://rss.cnn.com/rss/cnn_topstories.rss",
  "https://pbs.twimg.com/profile_images/454309589777780736/5mfxlzAs.jpeg", id)

  Feed.find_or_create_by_url("http://www.reuters.com/rssFeed/topNews",
  "https://pbs.twimg.com/profile_images/877554927932891136/ZBEs235N_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.vice.com/rss",
  "https://pbs.twimg.com/profile_images/785208513177985024/Guc3ohmz_400x400.jpg", id)

  Feed.find_or_create_by_url("http://www.theguardian.com/uk/rss",
  "https://pbs.twimg.com/profile_images/2814613165/f3c9e3989acac29769ce01b920f526bb.png", id)

  Feed.find_or_create_by_url("http://fivethirtyeight.com/all/feed",
  "https://pbs.twimg.com/profile_images/875426588061573121/lpQG3W6i_400x400.jpg", id)



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
  "https://pbs.twimg.com/profile_images/1861146796/Twitter_-_Avatar.png", id)

  # Feed.find_or_create_by_url("http://www.engadget.com/rss.xml",
  # "https://pbs.twimg.com/profile_images/458692107188727808/pp_QyGUm.png", id)

  Feed.find_or_create_by_url("https://www.digitaltrends.com/feed/",
  "https://pbs.twimg.com/profile_images/837464340219383808/w6PhY8ib_400x400.jpg", id)

  # Feed.find_or_create_by_url("http://www.readwriteweb.com/rss.xml",
  # "https://pbs.twimg.com/profile_images/2750899250/294d9c7b13ba263c7c3f634a487d468d.jpeg", id)

  #DOESN'T WORK
  # Feed.find_or_create_by_url("http://feeds.feedburner.com/hacker-news-feed-50?format=xml",
  # "https://pbs.twimg.com/profile_images/712101873/Y_Combinator_Logo_400.gif", id)
  #



  #STOPPED HERE

  id = Category.find_by_title("Business").id

  Feed.find_or_create_by_url("http://feeds2.feedburner.com/businessinsider",
  "https://pbs.twimg.com/profile_images/3381256262/28c6bc5924fb01f8ba4071e8939f85d7.png", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/entrepreneur/latest?fmt=xml",
  "https://pbs.twimg.com/profile_images/474753665970868224/GcoCzmcI.jpeg", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/venturebeat",
  "https://pbs.twimg.com/profile_images/1818169678/VB_twitter_logo.jpg", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/fastcompany/headlines",
  "https://pbs.twimg.com/profile_images/435840321952288770/IaWfR33b.png", id)

  Feed.find_or_create_by_url("http://online.wsj.com/xml/rss/3_7014.xml",
  "https://pbs.twimg.com/profile_images/458681605477785600/cFOQ_6Ox.jpeg", id)

  # Feed.find_or_create_by_url("http://www.businessweek.com/feeds/most-popular.rss",
  # "https://pbs.twimg.com/profile_images/461499999121981440/6RriLE4H.jpeg", id)

  Feed.find_or_create_by_url("http://rss.cnn.com/rss/magazines_fortune.rss",
  "https://pbs.twimg.com/profile_images/459373605852172288/XtTZlC8V.png", id)

  Feed.find_or_create_by_url("http://www.forbes.com/most-popular/feed/",
  "https://pbs.twimg.com/profile_images/1824717932/Forbes_Icon.png", id)


  id = Category.find_by_title("Finance").id
  #
  #
  Feed.find_or_create_by_url("http://feeds.marketwatch.com/marketwatch/topstories/",
  "https://pbs.twimg.com/profile_images/459467961355366400/8FyQHMZc.jpeg", id)

  Feed.find_or_create_by_url("http://www.ft.com/rss/home/us",
  "https://pbs.twimg.com/profile_images/466976697120587776/R0Exfy1i.png", id)

  Feed.find_or_create_by_url("http://rss.cnn.com/rss/money_topstories.rss",
  "https://pbs.twimg.com/profile_images/1344702851/fb_cnnmoney_new_logo_avatar.jpg", id)



  Feed.find_or_create_by_url("http://online.wsj.com/xml/rss/3_7031.xml",
  "https://pbs.twimg.com/profile_images/3506611410/67f4571793d00237fc10ca0df7811f09.jpeg", id)

  # #DOESN'T WORK
  # Feed.find_or_create_by_url("http://www.economist.com/feeds/print-sections/79/finance-and-economics.xml",
  # "https://pbs.twimg.com/profile_images/461499742950678528/2JnpHjUo.png", id)

  Feed.find_or_create_by_url("http://freakonomics.com/feed/",
  "https://pbs.twimg.com/profile_images/464517238075060225/g295Q3ey.png", id)


  id = Category.find_by_title("Gaming").id


  Feed.find_or_create_by_url("http://feeds.gawker.com/kotaku/vip",
  "https://pbs.twimg.com/profile_images/378800000483599841/b1e511e53161fb612a5bf00430f9687a.png", id)

  Feed.find_or_create_by_url("http://feeds.ign.com/ign/games-all",
  "https://pbs.twimg.com/profile_images/433413072040898560/LXg26Ea9.png", id)

  Feed.find_or_create_by_url("http://www.joystiq.com/rss.xml",
  "https://pbs.twimg.com/profile_images/979078171/joystiq-square-icon.jpg", id)

  Feed.find_or_create_by_url("http://www.polygon.com/rss/index.xml",
  "https://pbs.twimg.com/profile_images/2785670422/b0f08dd3b999bd0debb5352a058707aa.png", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/RockPaperShotgun",
  "https://pbs.twimg.com/profile_images/1443642491/twit.jpg", id)


  id = Category.find_by_title("Design").id

  Feed.find_or_create_by_url("http://feeds.feedburner.com/abduzeedo",
  "https://pbs.twimg.com/profile_images/453209986563207168/9Gqvw5sX.png", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/design-milk",
  "https://pbs.twimg.com/profile_images/1765276661/DMLogoTM-carton-icon-facebook-twitter.jpg", id)

  Feed.find_or_create_by_url("http://www.coolhunting.com/atom.xml",
  "https://pbs.twimg.com/profile_images/2663871909/f4f9ce5b92cda47354bd7ec77c81cce8.png", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/colossal",
  "https://pbs.twimg.com/profile_images/450852976337248256/fOVTBYJu.png", id)

  Feed.find_or_create_by_url("http://feeds.kottke.org/main",
  "https://pbs.twimg.com/profile_images/421227828/apple-touch-icon_400x400.png", id)
  #
  #
  id = Category.find_by_title("Fashion").id

  Feed.find_or_create_by_url("http://www.style.com/stylefile/feed/rss2",
  "https://pbs.twimg.com/profile_images/420194919634857985/6h-wjKyF.png", id)

  Feed.find_or_create_by_url("http://www.elle.com/rss/fashion/",
  "https://pbs.twimg.com/profile_images/476898161852571648/fgj81Qmg.png", id)

  Feed.find_or_create_by_url("http://www.gq.com/services/rss/feeds/latest.xml",
  "https://pbs.twimg.com/profile_images/477168161028993024/XVlmFNQ0.jpeg", id)

  Feed.find_or_create_by_url("http://feeds.feedburner.com/TheSartorialist",
  "https://pbs.twimg.com/profile_images/378800000059052332/60e6bc4dfba2dacd2fd12445abd6efb3.jpeg", id)

  Feed.find_or_create_by_url("http://www.vogue.com/rss/just-in/",
  "https://pbs.twimg.com/profile_images/344513261577911564/0aadb575a7e2fe5092ced30a46d31ff7.png", id)

  # Feed.find_or_create_by_url("http://feeds.feedburner.com/SFstyle",
  # "https://pbs.twimg.com/profile_images/2794778110/95f5e27740f4fcebcaae18598d3021b1.png", id)

  # Category.find_by_title("Marketing")
  #
  # Category.find_by_title("Cooking")
  #
  # Category.find_by_title("DIY")
  #
  # Category.find_by_title("Photography")
  #
  # Category.find_by_title("Entertainment")
  #
  # Category.find_by_title("Science")
  #
  # Category.find_by_title("Sports")
  #
  # Category.find_by_title("Health")
  #
  # Category.find_by_title("Entrepeneur")
