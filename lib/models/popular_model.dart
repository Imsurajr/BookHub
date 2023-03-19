class PopularBookModel {
  String title, author, price, image, description, summary;
  int color;

  PopularBookModel(this.title, this.author, this.price, this.image, this.color,
      this.description, this.summary);
}

List<PopularBookModel> populars =

popularBookData
    .map((item) => PopularBookModel(
    item['title'].toString(),
    item['author'].toString(),
    item['price'].toString(),
    item['image'].toString(),
    int.tryParse(item['color'].toString()) ?? 0,
    item['description'].toString(),
    item['summary'].toString())).toList();


var popularBookData = [
  {
    "title": "The Way I Used to Be",
    "author": "Amber Smith",
    "price": "20",
    "image": "assets/images/img_popular_book1.jpg",
    "color": 0xFFFFD3B6,
    "description":
    "This novel has been gaining fame on TikTok and is now hitting the bestseller charts as an unputdownable "
        "story about the lasting effects of trauma.",
    "summary": "      The Way I Used to Be is a YA novel written by author Amber Smith \. "
        "The book, published in 2016, is a New York Times bestseller. Smith, an "
        " advocate for spreading awareness about issues related to gendered violence,"
        "  tackles themes of sexual and domestic abuse in her young adult novels. "
        "   The Way I Used to Be follows Eden McCrorey, a teenager who is raped by her older brother’s best friend, "
        "Kevin. The novel is divided into four parts, with each part corresponding to a single year in high school—beginning with "
        " her freshman year immediately after she is raped and concluding with her senior year. Over that four-year period, the "
        "narrative shows the ways in which Eden is transformed—and damaged—by her traumatic experience.\""
        "The first part, “Freshman Year,” deals with the immediate aftermath of Eden’s sexual assault. A “band-geek”"
        "who is mocked by her peers, Eden forms the Lunch-Break Book Club with her friends Mara, Stephen,"
        " and Cameron so that they have an excuse to avoid bullies during their lunch period. At the end of Part 1, "
        " Edy’s personality begins to change: She is no longer the “good girl” she used to be. She smokes cigarettes,"
        "she quits band, she gets into arguments with her parents. Eden vows that in the year to come, she will not let "
        "  anyone take advantage of her the way that Kevin did."
        " In the second part, “Sophomore Year,” Eden is approached by the popular senior Josh Miller during study hall. "
        " Eden acts aloof at first, but she eventually agrees to go on a date with Josh. Not long after, Eden and Josh are"
        " spending each night together, deepening their relationship even while Eden has difficulty expressing her feelings and "
        "  being vulnerable around Josh. She refuses to be his girlfriend, even when Josh tells her that he wants to make their "
        " relationship official. Meanwhile, the little sister of Kevin, the boy that raped Eden, starts a rumor at school that Eden is "
        '   a “slut,” writing slurs about Eden all over the bathroom walls. Soon, the entire school is talking about how promiscuous Eden is. '
        ' On Eden’s birthday, Mara decorates Eden’s locker with a sign that says “Happy 15th birthday,” which reveals to Josh that Eden has been '
        ' lying about her age. Angry and hurt, Josh confronts Eden and asks her if she would even care if he were arrested for statutory rape. '
        ' Affecting a cold and hardened exterior, Eden says that she does not care about him, and they break-up. When Caelin, Eden’s older brother,'
        "catches wind of the fact that Eden had a relationship with Josh, he beats Josh up at a New Year’s Eve party."
        " Eden is livid that Caelin did this, which further distances Eden and Caelin from each other. Eden’s relationship with "
        " her mother and father are strained, too."
        " Eden’s reputation as a “bad girl”—and, particularly, a promiscuous one—is solidified in the third part, “Junior"
        "  Year.” Eden and Mara both experiment with drugs and alcohol, and the girls celebrate Mara’s 16th birthday in "
        " a playground drinking contraband beers at night, where they meet two stoner guys by the name of Troy and "
        "Alex. Troy and Alex introduce the girls to a new social scene, and they begin going to more and more parties together. "
        "  At one such party, Eden discovers that, through casual sex, she is able to temporarily escape her troubles. Eden sleeps "
        " with Troy’s older brother, despite her knowing that Troy has a crush on her. Relations with Eden and her family become "
        " even worse; Eden fights with her parents on a daily basis."
        "By the time Eden is gearing up to graduate high school in the fourth part, “Senior Year,” her life is in a complete"
        "  downward spiral. Eden does not care about going to college the following year, and the number of casual sexual encounters "
        "  she has with strangers continues to increase. Alongside drugs and alcohol, sex is Eden’s primary means of escaping her trouble state. "
        "  When Kevin is accused of rape by a girl in his dorm, a police investigation follows. Eden grapples with whether she should report him."
        "     She decides yes, but that she needs to tell Josh first. They meet at a 24-hour diner, where she tells Josh the entire story. "
        "     Eden tells her brother Caelin next, who is devastated to learn that this happened to Eden. The novel closes with Eden reporting "
        " her own rape at the police station."
        " Through Eden’s story, The Way I Used to Be is a coming-of-age tale that explores themes surrounding the devastating consequences "
        "  of sexual assault, particularly during the formative adolescent years. The book also investigates the social forces that lead to "
        "  women’s silence, in general, around sexual violence."
  },
  {
    "title": "It Starts with Us: A Novel",
    "author": "Colleen Hoover",
    "price": "40",
    "image": "assets/images/img_popular_book2.jpg",
    "color": 0xFF2B325C,
    "description":
    "While the title makes it seem like this is the first book, this is actually the sequel to It Ends With Us."
        " After you’ve read It Ends With Us, you’ll definitely want to follow it up with this newest release that everyone "
        "can’t stop talking about.",
    "summary": "“It Starts With Us” is Colleen Hoover’s sequel to her best-selling novel and BookTok sensation, “It Ends With Us.” The sequel begins directly after “It Ends With Us” and brings the reader through the intricacies of life after divorce and domestic abuse. “It Starts With Us” is a lighter read than its predecessor,  allowing the reader to experience Atlas and Lily’s relationship as they navigate divorce, found family and starting a new life after abuse. In many ways, Hoover presents a “second-chance” romance that alternates between Atlas’s and Lily’s points of views. “It Ends With Us” must be read first in order to fully understand the magnitude of some of the trivial events in “It Starts With Us.”"
        "It’s clear that Hoover trusts her audience and doesn’t shy away from harsh themes in "
        "  any of her novels; she certainly does not portray an uncomplicated love in “It Starts With Us.” "
        "While playing with the sweet idea of a reunited first love, Hoover makes the struggle of relationships clear:"
        "  You always have to work towards love. "
        " “It Starts with Us” consistently provides intriguing storylines that feel honest for the lives of the characters,"
        "  showing both the messy and the beautiful."
        "Unique among sequels, the story didn’t feel dragged out: “It Starts With Us” has enough action and driving themes "
        "  to make it its own individual story. While not a standalone, the plotlines reflected in this novel feel fresh and "
        " separated from “It Ends With Us,” developing the story in a tasteful way."
        "As a child of divorced parents and a childhood filled with co-parenting, “It Starts With Us” deeply resonated with"
        " me and felt like an accurate portrayal of the difficulties of marriage which I saw growing up. Almost half of marriages "
        "  end in divorce, and this novel makes this statistic come to life."
        "  'Initially' toying the line between respecting her ex-husband, Ryle, and his position in her life and wanting to move on"
        "in her love life, Lily eventually sees what she deserves in a romantic relationship and takes the steps to "
        "  having a better life, following her divorce at the end of “It Ends With Us.\” "
        "In “It Starts With Us,” Atlas and Lily attempt to rekindle the love they felt for each other as teenagers,"
        " but must deal with the repercussions their love may have now as adults. Hoover illustrates a beautiful, "
        "innocent love between Atlas and Lily. Atlas and Lily love each other like kids. They love each other like "
        " cheesy one-liners from “Finding Nemo” — a frequent inside joke throughout both books. Their love is sweet"
        "and embarrassing, but is much healthier than the toxic relationships they both experienced before. Perhaps"
        " love should be a bit naive, Hoover suggests."
        " In addition to love, Hoover also explores the complexity of hate — playing with the readers’ sense of right "
        "and wrong. In making her readers feel empathy for the antagonists in the novel, Hoover effectively proves that "
        "  there is no true “antagonist” in life."
        "Every antagonist in “It Starts With Us” fell into a gray, middle-ground role of both victim and enabler, "
        "  including both ex-lovers and ex-mothers. These complex characters were taught or treated poorly, leading "
        "  them to be hurt and lash out against Lily and Atlas. The “antagonists” in the novel were not easy to dislike: "
        " They simply didn’t have the same resources as Lily and Atlas. They remained in a cycle of relationship violence,"
        "  despite their efforts to start something new. The novel never paints them in a negative light but rather"
        "shows how these people may not fit in the lives of those recovering from abuse. The antagonists in "
        "  “It Starts With Us” have the potential to be protagonists — if only given the proper help."
        " “It Starts With Us” digs deeper into Atlas’s story than its predecessor. Where the previous book"
        "  often highlighted Lily’s point of view, “It Starts With Us” shows us more of Atlas’s perspective. "
        " The novel dives beneath the surface, and provides backgrounds on Atlas, Lily and Ryle. The flashback"
        " scenes between younger Atlas and Lily show us the enduring impacts of abuse. Readers can see how abuse"
        " can affect every relationship the victim has and will continue to have. It can end the cycle of "
        " violence or perpetrate it; regardless, it’s difficult to blame the victim."
        " Simply, “It Ends With Us” is about someone who has the support and resources to break out of "
        " the cyclical nature of violence. “It Starts With Us” instead focuses on recovery and starting a"
        "  new life of healthy love. It’s a story about feeling loved for the first time and giving the love"
        " you believe others deserve from you. This book explains that not all parental love is unconditional "
        " and not all romantic love will end. I feel certain that readers will find parallels between the novel "
        " and their own life, particularly the messiness that comes with love and loving."
        "“It Starts With Us” explores the  reality of relationships: Falling in love is easy, "
        " but loving is hard work. And in some way, all relationships are flawed — we simply must "
        " choose which imperfections we are willing to accept. As we grow older, we all redefine"
        "  relationships, perhaps reflecting your parents’ love or an act of caring that you "
        "  received when you were twelve. Some love arrives all at once, like typical parental "
        "  love, and some love is felt in an instance."
        "Overall, “It Starts With Us” is a beautiful read to complete the story started in "
        " “It Ends With Us.” The novel gently resolves some of the trauma at fault in the first "
        "  novel and demonstrates to readers the possibility of happiness in fearful new beginnings."
        "  While lacking the emotional depth that made its predecessor so powerful, “It Starts With Us” "
        "successfully continues Lily’s story by telling the story of second chance love.  ",
  },
  {
    "title": "The Midnight Library",
    "author": "Matt Haig",
    "price": "60",
    "image": "assets/images/img_popular_book3.jpg",
    "color": 0xFFF7EA4A,
    "description":
    "Nora Seed feels stuck in her life, bound to the choices she made that she still isn't sure were right. "
        "When Nora is ready to leave it all behind, she finds herself in a peculiar library, where each of the "
        "infinite books offers a portal to a parallel world, showing her all the many ways her life could have been "
        "slightly or drastically different, had she made other decisions.",
    "summary": " Matt Haig's unique novel The Midnight Library ponders the infinite possibilities of life. '"
        "It is about a young woman named Nora Seed, who lives a monotonous, ordinary life and feels unwanted and "
        "  'unaccomplished. One night, her despair reaches a peak and she commits suicide. But the story doesn't end "
        "there--Nora gets a chance to experience various ways her life could've unfolded had she made slightly different '"
        " ' 'choices. She finds herself in a place called the Midnight Library, which exists between life and death and is''"
        "  ' filled with books in which lie endless parallel lives she might've lived; she is given the chance to undo her "
        "regrets by trying out these lives, starting right where her alternate self would've been on the night she "
        "  ended her life. While in the Midnight Library, Nora lives hundreds of lives and becomes hundreds of different "
        " versions of herself--some she'd never even fathomed--but she is faced with a difficult decision. She must decide'"
        "  'perfect for a time but, as she realizes, there are really new sets of challenges awaiting. Nora's exploration of"
        "  herself is captivating as she attempts to discern what is really important in life."
        " This novel is very well-written and thought-provoking. Nora's emotions are deeply portrayed, '"
        " 'and I was captivated by the depth of Haig's "
        " storytelling. While the concept is simple, it drew me in as a reader and encompassed so many"
        " different emotional experiences that come with life. I spent much of The Midnight Library reflecting "
        " on my own life and the decisions I've made, as well as looking to the future and imagining the infinite '"
        "possibilities--this is a sign of a talented author. While I appreciated the depth of this novel, sometimes"
        " ' it took on a repetitive, almost pedantic tone when an important idea was already clear but kept being '"
        " 'elaborated on--this was common when life lessons came up. There were also attempts to make Nora's"
        " life-jumping seem scientifically possible, with reference to quantum physics, and I didn't think this'"
        "  ' was necessary, as the focus was on Nora's life and personal growth. Overall, I very much enjoyed The "
        " Midnight Library. The character development, setting, and plot are engaging, while also discussing important"
        " themes such as mental health."
        " I would recommend The Midnight Library to teens and adults alike. It's a short, worthwhile read'"
        "  ' that will get you thinking and have you on the edge of your seat. And it may just awaken you to "
        "  how much unlocked potential you have!"
  },
  {
    "title": "Girls With Bright Futures",
    "author": "Wendy Katzman and Tracy Dobmeier",
    "price": "9",
    "image": "assets/images/img_popular_book4.jpg",
    "color": 0xFFF7EA4A,
    "description":
    "This thriller follows three moms as they go into overdrive to try to get their daughters a single, coveted spot at Stanford—including possibly attempted murder. (So no, you're doing just fine!)",
    "summary": "Three dreams to get into Stanford. Three Daughters. Three Mothers. Three Motivations."
        "  It is college admissions time at EBA (Elliot Bay Academy) in Seattle. Applications have been submitted, "
        " fingers have been crossed and lines have been crossed. Everyone is upset when Stanford announces that they"
        "  are only allotting one slot to the school to non-athletes, students and parents alike are scrambling."
        " Alicia is a tech giant who is determined that her daughter, Brooke is going to attend Stanford. "
        "  Alicia went there and wants her daughter to get in so bad she can taste it. It consumes her. Her daughter, "
        "  on the other hand is ambivalent and at best, an average student. Alicia is willing and ready to do what it takes "
        "  for her daughter to attend Stanford."
        "  Maren is Alicia's assistant and her daughter; Winnie is the top of her class. She is intelligent, '"
        "articulate and wants to go to Stanford so bad that she can taste it. Things get sticky as Alicia is Maren"
        "''s boss and has been paying Winnie's tuition to EBA and has promised to also pay her college tuition as well. '"
        "  'Maren cannot afford the tuition and hopes Alicia keeps her promise of paying for Winnie's college education."
        "  Kelly, a Stanford alum, has three children attending EBA and uses her influence with the PTA and insider knowledge "
        "  to try to get her fragile daughter, Krissie, into Stanford. She wants her daughter to go to Stanford so bad that she"
        "  can taste it. She is willing to do whatever it takes to make sure her daughter in the student from EBA who attends Stanford."
        "  But with only one spot left, who will get in? Who will Stanford select? Will big buck donations help a student get "
        "  admitted? Will underhanded actions be what it takes to get your child an acceptance letter? Will brains and hard work win "
        " Stanford over?"
        "  With just one slot available, who will come out on top?"
        "  Days before final applications are due, a student has a near fatal accident. But is it an"
        "  accident? It does not appear to be. But who would do such a thing? Is it a coincidence? Is it related to the admission process?"
        "  Talk about a timely read with the college admissions bribery scandal in 2019 which involved celebrities and "
        "  wealthy parents getting caught cheating, bribing and scheming to get their children into top universities. Jeepers, "
        "  just what will parents do to see their children get ahead. Plus, what message are you sending your children? "
        "  In this book, the antics of some parents are quite dastardly, produce eye rolls and are comical at times."
        "  Who knew college admissions were so cutthroat! Every parent wants the best for their child, but what"
        "  if your dreams for your child do not coincide with their wants and dreams? What if you wanted something so badly for them that "
        "  you lose all sense of right and wrong? What if you do not care? What if you are willing to do ANYTHING to make things happen for"
        "  your child?"
        "This was a fun and gripping look at power, greed, privilege, losing sight of the important things, college admissions,"
        "  and being supportive of your child. It was fun to watch as the story unraveled, and we get a glimpse into the mothers’"
        "  thoughts and motivations through their POV chapters. The book is also told in parts and each one shines."
        "  Thought provoking, captivating and entertaining!"
        "  Thank you to Sourcebooks Landmark and NetGalley who provided me with a copy of this book in exchange for "
        "  an honest review. All the thoughts and opinions are my own.\,\""
  },
  {
    "title": "Where the Crawdads Sing",
    "author": "Delia Owens ",
    "price": "10",
    "image": "assets/images/img_popular_book5.jpg",
    "color": 0xFFF7EA4A,
    "description":
    "NOW A MAJOR MOTION PICTURE—The #1 New York Times bestselling worldwide sensation with more than 18 million copies sold, hailed by The New York Times Book Review as “a painfully beautiful first novel that is at once a murder mystery, a coming-of-age narrative and a celebration of nature.”",
    "summary": "For years, rumors of the \"Marsh Girl\" have haunted Barkley Cove, a quiet town on the North Carolina coast. So in late 1969, when handsome Chase Andrews is found dead, the locals immediately suspect Kya Clark, the so-called Marsh Girl. But Kya is not what they say. Sensitive and intelligent, she has survived for years alone in the marsh that she calls home, finding friends in the gulls and lessons in the sand. Then the time comes when she yearns to be touched and loved. When two young men from town become intrigued by her wild beauty, Kya opens herself to a new life - until the unthinkable happens."
        "  Perfect for fans of Barbara Kingsolver and Karen Russell, Where the Crawdads Sing "
        " is at once an exquisite ode to the natural world, a heartbreaking coming-of-age"
        "  story, and a surprising tale of possible murder. Owens reminds us that we are "
        "  forever shaped by the children we once were, "
        "and that we are all subject to the beautiful and violent secrets that nature keeps.",
  },
  {
    "title": "Good Company",
    "author": "Cynthia D'Aprix Sweeney",
    "price": "12",
    "image": "assets/images/img_popular_book6.jpg",
    "color": 0xFFF7EA4A,
    "description":
    "A warm, incisive new novel about the enduring bonds of marriage and friendship from Cynthia D’Aprix Sweeney, author of the instant New York Times bestseller The Nest",
    "summary": "Flora Mancini has been happily married for more than twenty years. But everything she thought "
        "she knew about herself, her marriage, and her relationship with her best friend, Margot, is upended when she "
        "stumbles upon an envelope containing her husband’s wedding ring—the one he claimed he lost one summer when their daughter, "
        "Ruby, was five."
        "Flora and Julian struggled for years, scraping together just enough acting work to raise Ruby in Manhattan and keep Julian’s "
        "small theater company—Good Company—afloat. A move to Los Angeles brought their first real career successes, a "
        "chance to breathe easier, and a reunion with Margot, now a bona fide television star. But has their new life been "
        "built on lies? What happened that summer all those years ago? And what happens now?"
        "With Cynthia D’Aprix Sweeney’s signature tenderness, humor, and insight, Good Company tells a bighearted story of the "
        "lifelong relationships that both wound and heal us. \"\,"
  },
  {
    "title": "World Travel",
    "author": "Anthony Bourdain",
    "price": "20",
    "image": "assets/images/img_popular_book7.jpg",
    "color": 0xFFF7EA4A,
    "description":
    "A guide to some of the world’s most fascinating places, as seen and experienced by writer, television host, and relentlessly curious traveler Anthony Bourdain",
    "summary": "Anthony Bourdain saw more of the world than nearly anyone. His travels took him from the hidden pockets of his hometown of New York to a tribal longhouse in Borneo, from cosmopolitan Buenos Aires, Paris, and Shanghai to Tanzania’s utter beauty and the stunning desert solitude of Oman’s Empty Quarter—and many places beyond."
        "In World Travel, a life of experience is collected into an entertaining, practical, fun and frank travel guide that"
        "gives readers an introduction to some of his favorite places—in his own words. Featuring essential advice on how "
        "to get there, what to eat, where to stay and, in some cases, what to avoid, World Travel provides essential context "
        "that will help readers further appreciate the reasons why Bourdain found a place enchanting and memorable."
        "Supplementing Bourdain’s words are a handful of essays by friends, colleagues, and family that tell even deeper "
        "stories about a place, including sardonic accounts of traveling with Bourdain by his brother, Chris; a guide to "
        "Chicago’s best cheap eats by legendary music producer Steve Albini, and more. Additionally, each chapter"
        "includes illustrations by Wesley Allsbrook."
        "For veteran travelers, armchair enthusiasts, and those in between, World Travel offers a chance to "
        "experience the world like Anthony Bourdain."
  },
  {
    "title": "All About Love",
    "author": "Bell Hooks",
    "price": "20",
    "image": "assets/images/img_popular_book8.jpg",
    "color": 0xFFF7EA4A,
    "description":
    "All About Love (2000) breaks down why love remains elusive for many of us. From our flawed understanding of what love is to our misguided expectations of romantic love, author bell hooks examines common barriers to love and explains the steps individuals need to take for society to become more loving and nurturing.",
    "summary": "What’s a topic we’re all familiar with, one that can be found in the movies we watch, the books we read, and the songs we sing along to? If you’re guessing love, then you’re spot on. But despite being surrounded by images of, and ideas about love, a lot of us have a flawed understanding of what it is exactly. This makes finding love in our own lives a lot harder."
        "We tend to think of love  as strong affection for family, friends, or romantic partners. However, "
        "the problem with focusing on that feeling is that we ignore the choices and actions that are necessary for love "
        "to truly flourish. In some cases, this emphasis on the feeling even causes us to overlook or excuse actions "
        "that are clearly devoid of love. Just consider the fact that many people who are mistreated in relationships "
        "insist that they love their partners and their partners love them."
        "This idea that we’re loved even when we’re being hurt isn’t only associated with romantic relationships; we "
        "actually learn it as children. Many parents discipline their children with physical punishment or shouting while "
        "still maintaining that they love them. Because of this, children become adults who believe that it’s okay for those"
        "who claim to love them to mistreat them."
        "If we want to truly know love, we need to understand it not just as a feeling, but also as a verb. "
        "The author suggests a definition shared by many psychologists and theorists before her: that love is the"
        "active nurturing of spiritual growth in ourselves and others."
        "When we think of love in this way, we start looking for acts of love that we can perform – rather than relying only "
        "on feelings – and we create a society that’s less tolerant of abuse and neglect in any kind of relationship. \" \,",
  },
];

