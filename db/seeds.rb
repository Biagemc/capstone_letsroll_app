User.create!([
  { name: "Augusto Santos", email: "augusto@gmail.com", city: "Uberlandia", gym: "Ribeiro Jiu-Jitsu", afiliation: "Six Blades", avatar: "https://res.cloudinary.com/biagemc/image/upload/v1589861837/letsRoll%20App/ribeiro-logo_sqlzvr.png", belt: "black", password: "password" },
  { name: "John Fernando", email: "fernando@gmail.com", city: "Sao Paolo", gym: "Aliance SP", afiliation: "Aliance", avatar: "https://res.cloudinary.com/biagemc/image/upload/v1589861648/letsRoll%20App/aliance-logo_hzu065.png", belt: "black", password: "password" },
  { name: "Lucas Liason", email: "lucas@gmail.com", city: "Atlanta", gym: "Lucas Lepri/Aliance", afiliation: "Alliance", avatar: "https://res.cloudinary.com/biagemc/image/upload/v1589861737/letsRoll%20App/lucas-logo_mup2xf.png", belt: "black", password: "password" },
  { name: "Rodrigo Brick", email: "rodrigo@gmail.com", city: "Uberlandia", gym: "Atos Uberlandia", afiliation: "Atos", avatar: "https://res.cloudinary.com/biagemc/image/upload/v1589861786/letsRoll%20App/atos-logo_oof2dm.png", belt: "black", password: "password" },
  { name: "Moreno Biage", email: "moreno@gmail.com", city: "Toronto", gym: "Salvosa - Scarborough", afiliation: "Ascencion", avatar: "https://res.cloudinary.com/daopqmnvp/image/upload/v1589646335/letsRoll%20App/salvosa-logo_fmomjg.png", belt: "Purple", password: "password" },
])

Position.create!([
  { name: "8 Simple and Effective Takedowns", url: "https://www.youtube.com/watch?v=ShhErYDUie4", description: "Ever wanted to ragdoll someone? Well, now you can. In fact, now you have 8 ways to ragdoll people! 8 simple and effective ways.", user_id: 2, situation: "takedown" },
  { name: "Open-Guard Passing Concepts", url: "https://www.youtube.com/watch?v=q9K7YaVZY-s", description: "3rd degree jiu jitsu black belt Nic Gregoriades demonstrates some specific guard passing concepts and details.", user_id: 2, situation: "passing" },
  { name: "Passing using lapel", url: "https://www.youtube.com/watch?v=dEbFbgwZK8Q", description: "Having dificulties passing that open guard? I already had those, but when I tried to use these techniques everything became easier", user_id: 5, situation: "passing" },
  { name: "Concepts for Maintaining Mount", url: "https://www.youtube.com/watch?v=Wy6Si0FuQaU", description: "In order to attack, you need to have a solid foundation and be comfortable in a position. Here are some of the key points you need to focus on when maintaining and controlling the mount", user_id: 3, situation: "mounting" },
  { name: "Powerful Lapel Choke from Side Control", url: "https://www.youtube.com/watch?v=aCgpic9x7sA", description: "Powerful Lapel Choke from Side Control: This is a old school side control choke who a learn for more them 20 years ago and still very effective. Make sure you keep your opponent shoulders flat on the grow by using your shoulder pressure. From there... Is just work to take your lapel and choke the opponent.", user_id: 4, situation: "submission" },
  { name: "15 BJJ Drills you should do EVERYDAY by Cobrinha", url: "https://www.youtube.com/watch?v=xY4S_lgM3Yc", description: "Here are some functional mobility drills that are particularly useful for grappling movements based off of those common in bjj and wrestling. Minimal to no equipment is needed, making these drills easy to do almost anywhere, anytime to take your BJJ to the next level.", user_id: 5, situation: "drills" },
  { name: "3 Bjj Position from X-Guard", url: "https://www.youtube.com/watch?v=IEiMjQ00jBQ", description: "Diving deeper into the x-guard, Erin Herle teaches 3 sweeps from this position. Wrapping your legs to secure the x-guard can inhibit your opponent's movement and destabilize their base -- use these sweeps to take your opponent down and advance your position.", user_id: 1, situation: "sweeping" },
  { name: "Mount Position Breakdown by Andre Galvao", url: "https://www.youtube.com/watch?v=luPhbVPoQ1E", description: "Welcome to the Atos jiu-jitsu academy’s YOUTUBE CHANNEL! Professor Andre Galvao has developed these specially-curated COURSES, to give Atos jiu-jitsu online academy users of all levels easy-to-follow sets of techniques to add to your daily training!", user_id: 5, situation: "mounting" },
  { name: "Plyometrics Training Workout", url: "https://www.youtube.com/watch?v=yN1t4uVpzJA", description: "You can do this work out 2x week giving a space of a 36-48hrs minimum of resting between the training. Example: if you do it on Monday then you do again only on Thursday. This will give you a great recovery! 

    If this is your first time doing it you can rest 2-4min between the sets!", user_id: 5, situation: "drills" },
  { name: "Submission combo arm trap - Ronaldo Jr.", url: "https://www.youtube.com/watch?v=Fjj8BAgCb5A", description: "If you want to get complete access to all tips from professor Galvao and be sure to check out our online academy link below!", user_id: 5, situation: "submission" },
  { name: "Reverse half guard escape - Andre Galvao", url: "https://www.youtube.com/watch?v=-Jb4wDymHQE", description: "Andre Galvao is one of the greatest Brazilian Jiu-Jitsu athletes of all time, with 6 IBJJF World Championship titles, 10 IBJJF Pan American Championships, and 6 ADCC World Championship titles (4x as the ADCC Super Fight Champion). He received his black belt from Luis “Careca” Dagmar, having also worked extensively with Fernando Terere. Galvão is also a former mixed martial artist, with an MMA record of 5-2-0 before he retired to lead the Atos Jiu-Jitsu Academy's Headquarters in San Diego, California. Today, Atos is considered one of the best jiu-jitsu academies in the world, producing World Champion athletes at all levels, from juvenile and white belt all the way to black belt.  ", user_id: 5, situation: "guard" },
  { name: "Jiu Jiutsu Drills", url: "https://www.youtube.com/watch?v=6Pu84O4xd4Q", description: "If you have any questions or techniques you would like to ask and have answered comment them below and we will be sure to get to them!!", user_id: 5, situation: "drills" },
  { name: "One Leg X defense", url: "https://www.youtube.com/watch?v=dJ1dh5I-7sA", description: "If you want to get complete access to all tips from professor Galvao and be sure to check out our online academy link below!", user_id: 5, situation: "passing" },
  { name: "Double Under Pass Defense to Triangle", url: "https://www.youtube.com/watch?v=pN8N-efR54g", description: "If you've ever been caught in a double under pass, you'll know how strong it is! But it's not unbeatable! Check out this video of Atos black belt Mike Carbullido showing two slick double under defenses - one when your opponent locks his/her hands and another when he/she grabs the lapel - straight to a nice triangle or arm bar from triangle guard!", user_id: 5, situation: "sweeping" },
  { name: "The most effective way to escape a triangle choke by Andre Galvao", url: "https://www.youtube.com/watch?v=YZENtdUlpmg", description: "Galvao's mission is to share the lessons, techniques, and experience he has acquired over his 20+ years of experience as a BJJ practitioner, professor, and world-class competitor. ", user_id: 5, situation: "passing" },
  { name: "The Left Headlock Wrestling Takedown by Pat Downey", url: "https://www.youtube.com/watch?v=oX6Qp623OYs", description: "The Left Headlock Wrestling Takedown by Pat Downey", user_id: 3, situation: "takedown" },
  { name: "The Dynamic Pin In Brazilian Jiu Jitsu by John Danaher", url: "https://www.youtube.com/watch?v=4zWa-pcjuLw", description: "Bernardo Faria is a 5x World Champion. Bernardo started training Brazilian Jiu-Jitsu in Juiz de Fora - MG, Brazil at the age of 14 in 2001. After receiving the Black Belt from his first instructor Ricardo Marques in 2008, He moved to Sao Paulo to join BJJ legend Fabio Gurgel and his Alliance team. After many years of training and winning many major titles, Bernardo moved to NYC in 2013 to train and teach at Marcelo Garcia Academy. In 2015 Bernardo achieved his dream of winning the IBJJF World Championship Open class title and his division, doing the double Gold and becoming the 1st in the IBJJF Ranking and also choosed as the best athlete of 2015.", user_id: nil, situation: "Sweep" },
  { name: "How To Pass The De La Riva Guard Going Straight To The Armbar by Amaury Bitetti", url: "https://www.youtube.com/watch?v=tDWwlBoYbpM", description: "How To Pass The De La Riva Guard Going Straight To The Armbar by Amaury Bitetti", user_id: 3, situation: "passing" },
  { name: "Very Unique Way To Sweep From One Leg X Guard", url: "https://www.youtube.com/watch?v=ZrbJDU0lIBo", description: "Very Unique Way To Sweep From One Leg X Guard (Single X) Mixed With Spider Guard by Jonnatas Gracie", user_id: 3, situation: "sweep" },
  { name: "Tips To Improve Your Side Control", url: "https://www.youtube.com/watch?v=oQikaS0j300", description: "Fundamentals and Beyond. Professor Omar Salvosa shares some game-changing tips to help maintain dominant side control against an opponent determined to escape. 

    We hope this helps to bolster your control so that you can continue to be an offensive threat from this position.
    
    Visit us at mmatoronto.com for more information about our academy based in Toronto, Canada.", user_id: 3, situation: "sweep" },
  { name: "Gracie Combatives - Lesson 1", url: "https://www.youtube.com/watch?v=NkUO9Gw5S1s", description: "The Fastest Way to Street Readiness. Guaranteed - - - In this video clip, you are viewing 1 of 6 sample clips from Lesson 1 of the 36-lesson Gracie Combatives program. Our objective in making it available on YouTube is to give you an idea of the level of detail you can expect each lesson and to introduce you to the ground-breaking linear learning format that makes the Gracie Combatives DVD collection the most highly regarded martial arts instructional DVD series of all time.", user_id: 3, situation: "submission" },
  { name: "Takedowns for BJJ - Yoko Tomoe Nage", url: "https://www.youtube.com/watch?v=fcyP84q9Knc", description: "National level Judoka and MMA veteran Joel Gerson demonstrates a throw that is both beautiful and useful when going against a stiff armed opponent in a BJJ match. Usually in Judo, practitioners are penalized for being too stiff armed because it is stalling and it is too defensive. This yoko tomoe nage is a nifty solution of the situation.", user_id: 3, situation: "takedown" },
  { name: "Leg Lasso Tomoe Nage Sweep", url: "https://www.youtube.com/watch?v=MXv2TYCeCbE", description: "Leg Lasso Tomoe Nage Sweep", user_id: 3, situation: "sweep" },
])

Tag.create!([
  { name: "Sweep" },
  { name: "Side Control" },
  { name: "X-guard" },
  { name: "Open Guard" },
  { name: "Mount" },
  { name: "Submission" },
  { name: "Drill" },
  { name: "Lapel Guard" },
  { name: "Close Guard" },
  { name: "Butterfly" },
  { name: "Passing Guard" },
  { name: "Back Control" },
  { name: "Top Position" },
  { name: "Bottom Position" },
  { name: "Escaping" },
  { name: "Z-Guard" },
  { name: "takedown" },
])
Favourite.create!([
  { user_id: 3, position_id: 7 },
  { user_id: 3, position_id: 1 },
])
Post.create!([
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 1 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 2 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 3 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 4 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 5 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 6 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 7 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 8 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 9 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 10 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 11 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 12 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 13 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 14 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 15 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 16 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 17 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 18 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 19 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 20 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 21 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 22 },
  { post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 23 },
])
# Sequence.create!([
#   { name: "Takedown to open guard passing", position_id: 3, user_id: 2 },
#   { name: "Open guard passing and choking from side control", position_id: 4, user_id: 4 },
#   { name: "Drills to practice takedowns", position_id: 2, user_id: 3 },
# ])
# PositionSequence.create!([
#   { position_id: 3, sequence_id: 2, rank: 1 },
#   { position_id: 6, sequence_id: 2, rank: 2 },
#   { position_id: 2, sequence_id: 1, rank: 1 },
#   { position_id: 3, sequence_id: 1, rank: 2 },
#   { position_id: 7, sequence_id: 3, rank: 1 },
#   { position_id: 2, sequence_id: 3, rank: 2 },
# ])
PositionTag.create!([
  { tag_id: 3, position_id: 1 },
  { tag_id: 14, position_id: 1 },
  { tag_id: 1, position_id: 1 },
  { tag_id: 4, position_id: 3 },
  { tag_id: 11, position_id: 3 },
  { tag_id: 17, position_id: 2 },
  { tag_id: 7, position_id: 2 },
  { tag_id: 5, position_id: 5 },
  { tag_id: 13, position_id: 5 },
  { tag_id: 2, position_id: 6 },
  { tag_id: 6, position_id: 6 },
  { tag_id: 14, position_id: 6 },
  { tag_id: 4, position_id: 7 },
  { tag_id: 4, position_id: 4 },
  { tag_id: 7, position_id: 20 },
  { tag_id: 8, position_id: 20 },
  { tag_id: 9, position_id: 20 },
  { tag_id: 10, position_id: 21 },
  { tag_id: 11, position_id: 21 },
  { tag_id: 10, position_id: 22 },
  { tag_id: 7, position_id: 9 },
  { tag_id: 8, position_id: 9 },
  { tag_id: 5, position_id: 10 },
  { tag_id: 3, position_id: 10 },
  { tag_id: 15, position_id: 11 },
  { tag_id: 14, position_id: 11 },
  { tag_id: 12, position_id: 12 },
  { tag_id: 5, position_id: 12 },
  { tag_id: 1, position_id: 13 },
  { tag_id: 2, position_id: 14 },
  { tag_id: 4, position_id: 14 },
  { tag_id: 10, position_id: 15 },
  { tag_id: 7, position_id: 15 },
  { tag_id: 8, position_id: 16 },
  { tag_id: 1, position_id: 17 },
  { tag_id: 2, position_id: 18 },
])

Comment.create!([
  { content: "This is a great position", user_id: 3, post_id: 1 },
  { content: "I practiced this one last week.", user_id: 4, post_id: 1 },
  { content: "Thanks for sharing", user_id: 5, post_id: 1 },
  { content: "Do you have other videos on this?", user_id: 2, post_id: 1 },
  { content: "Cool. Osss!!!", user_id: 3, post_id: 3 },
])

Comment.create!([
  { content: "This is a great position", user_id: 3, post_id: 2 },
  { content: "I practiced this one last week.", user_id: 4, post_id: 2 },
  { content: "Thanks for sharing", user_id: 5, post_id: 2 },
  { content: "Do you have other videos on this?", user_id: 2, post_id: 2 },
  { content: "Cool. Osss!!!", user_id: 3, post_id: 2 },
])

Comment.create!([
  { content: "This is a great position", user_id: 3, post_id: 4 },
  { content: "I practiced this one last week.", user_id: 4, post_id: 4 },
  { content: "Thanks for sharing", user_id: 5, post_id: 4 },
  { content: "Do you have other videos on this?", user_id: 2, post_id: 4 },
  { content: "Cool. Osss!!!", user_id: 3, post_id: 4 },
])

Comment.create!([
  { content: "This is a great position", user_id: 3, post_id: 5 },
  { content: "I practiced this one last week.", user_id: 4, post_id: 5 },
  { content: "Thanks for sharing", user_id: 5, post_id: 5 },
  { content: "Do you have other videos on this?", user_id: 2, post_id: 5 },
  { content: "Cool. Osss!!!", user_id: 3, post_id: 5 },
])
