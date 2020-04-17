# # Users initial Database
# user = User.create(name: "Lucas Lepri", city: "Atlanta", gym: "Lucas Lepri/Aliance", avatar: "../public/images/lucaslepri.png", belt: "black")

# user = User.create(name: "Rodrigo Oliveira", city: "Uberlandia", gym: "Atos Uberlandia", avatar: "../public/images/logo-atos.png", belt: "black")

# user = User.create(name: "Moreno Biage", city: "Toronto", gym: "Salvosa Bjj", avatar: "../public/images/salvosa-logo.png", belt: "purple")

# user = User.create(name: "Augusto Maciel", city: "Uberlandia", gym: "Ribeiro Jiu-Jitsu", avatar: "../public/images/ribeiro-logo.png", belt: "black")

# user = User.create(name: "Fernando Reis", city: "Sao Paolo", gym: "Aliance SP", avatar: "../public/images/alliance-logo.png", belt: "black")

# # Tags Initial Database

# tag = Tag.create(name: "Sweep")

# tag = Tag.create(name: "Side Control")

# tag = Tag.create(name: "X-guard")

# tag = Tag.create(name: "Open Guard")

# tag = Tag.create(name: "Mount")

# tag = Tag.create(name: "Submission")

# tag = Tag.create(name: "Drill")

# tag = Tag.create(name: "Lapel Guard")

# tag = Tag.create(name: "Close Guard")

# tag = Tag.create(name: "Butterfly")

# tag = Tag.create(name: "Passing Guard")

# tag = Tag.create(name: "Back Control")

# tag = Tag.create(name: "Top Position")

# tag = Tag.create(name: "Bottom Position")

# tag = Tag.create(name: "Escaping")

# tag = Tag.create(name: "Z-Guard")

# tag = Tag.create(name: "takedown")

# # Positions Initial Database

# position = Position.create(name: "3 Bjj Sweep from X-Guard", situation: "sweeping", url: "https://www.youtube.com/watch?v=IEiMjQ00jBQ", description: "Diving deeper into the x-guard, Erin Herle teaches 3 sweeps from this position. Wrapping your legs to secure the x-guard can inhibit your opponent's movement and destabilize their base -- use these sweeps to take your opponent down and advance your position.", user_id: 1)

# position = Position.create(name: "8 Simple and Effective Takedowns", situation: "takedown", url: "https://www.youtube.com/watch?v=ShhErYDUie4", description: "Ever wanted to ragdoll someone? Well, now you can. In fact, now you have 8 ways to ragdoll people! 8 simple and effective ways.", user_id: 2)

# position = Position.create(name: "Open-Guard Passing Concepts", situation: "passing", url: "https://www.youtube.com/watch?v=q9K7YaVZY-s", description: "3rd degree jiu jitsu black belt Nic Gregoriades demonstrates some specific guard passing concepts and details.", user_id: 2)

# position = Position.create(name: "Passing using lapel", situation: "passing", url: "https://www.youtube.com/watch?v=dEbFbgwZK8Q", description: "Having dificulties passing that open guard? I already had those, but when I tried to use these techniques everything became easier", user_id: 5)

# position = Position.create(name: "Concepts for Maintaining Mount", situation: "mounting", url: "https://www.youtube.com/watch?v=Wy6Si0FuQaU", description: "In order to attack, you need to have a solid foundation and be comfortable in a position. Here are some of the key points you need to focus on when maintaining and controlling the mount", user_id: 3)

# position = Position.create(name: "Powerful Lapel Choke from Side Control", situation: "", url: "https://www.youtube.com/watch?v=aCgpic9x7sA", description: "Powerful Lapel Choke from Side Control: This is a old school side control choke who a learn for more them 20 years ago and still very effective. Make sure you keep your opponent shoulders flat on the grow by using your shoulder pressure. From there... Is just work to take your lapel and choke the opponent.", user_id: 4)

# position = Position.create(name: "15 BJJ Drills you should do EVERYDAY by Cobrinha", situation: "drills", url: "https://www.youtube.com/watch?v=xY4S_lgM3Yc", description: "Here are some functional mobility drills that are particularly useful for grappling movements based off of those common in bjj and wrestling. Minimal to no equipment is needed, making these drills easy to do almost anywhere, anytime to take your BJJ to the next level.", user_id: 5)

# # Sequences Initial Database

# sequence = Sequence.create(name: "Takedown to open guard passing", user_id: 2)

# sequence = Sequence.create(name: "Open guard passing and choking from side control", user_id: 4)

# sequence = Sequence.create(name: "Drills to practice takedowns", user_id: 3)

# # Position_tags Initial Database

# pos_tag = PositionTag.create(tag_id: 3, position_id: 1)

# pos_tag = PositionTag.create(tag_id: 14, position_id: 1)

# pos_tag = PositionTag.create(tag_id: 1, position_id: 1)

# pos_tag = PositionTag.create(tag_id: 4, position_id: 3)

# pos_tag = PositionTag.create(tag_id: 11, position_id: 3)

# pos_tag = PositionTag.create(tag_id: 17, position_id: 2)

# pos_tag = PositionTag.create(tag_id: 7, position_id: 2)

# pos_tag = PositionTag.create(tag_id: 5, position_id: 5)

# pos_tag = PositionTag.create(tag_id: 13, position_id: 5)

# pos_tag = PositionTag.create(tag_id: 2, position_id: 6)

# pos_tag = PositionTag.create(tag_id: 6, position_id: 6)

# pos_tag = PositionTag.create(tag_id: 14, position_id: 6)

# # PositionSequence Initial Database

# pos_seq = PositionSequence.create(position_id: 3, sequence_id: 2, rank: 1)

# pos_seq = PositionSequence.create(position_id: 6, sequence_id: 2, rank: 2)

# pos_seq = PositionSequence.create(position_id: 2, sequence_id: 1, rank: 1)

# pos_seq = PositionSequence.create(position_id: 3, sequence_id: 1, rank: 2)

# pos_seq = PositionSequence.create(position_id: 7, sequence_id: 3, rank: 1)

# pos_seq = PositionSequence.create(position_id: 2, sequence_id: 3, rank: 2)

# # Posts Initital Database

# post = Post.create(post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 1)

# post = Post.create(post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 1)

# post = Post.create(post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 2)

# post = Post.create(post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 3)

# post = Post.create(post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 4)

# post = Post.create(post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 5)

# post = Post.create(post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 6)

# post = Post.create(post: "Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci. Etiam risus libero, fringilla sed neque a, porta interdum nisi. Quisque eros urna, luctus sed interdum non, posuere tristique nisi. Sed vitae tempor velit. Fusce accumsan magna vitae accumsan posuere. Pellentesque blandit risus sed magna tempor, ut lacinia arcu faucibus", position_id: 7)

# # Comments Initial Database

# comment = Comment.create(content: "Etiam risus libero, fringilla sed neque a, porta interdum nisi.", user_id: 1)

# comment = Comment.create(content: "Etiam risus libero, fringilla sed neque a, porta interdum nisi.Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci.", user_id: 2)

# comment = Comment.create(content: "Etiam risus libero, fringilla sed neque a, porta interdum nisi.", user_id: 3)

# comment = Comment.create(content: "Etiam risus libero, fringilla sed neque a, porta interdum nisi.Aliquam diam nibh, auctor sit amet odio vitae, eleifend feugiat nulla. Praesent ac laoreet eros. Nunc maximus mi sit amet libero feugiat rutrum. Suspendisse vel pulvinar velit, blandit molestie orci.", user_id: 4)

# comment = Comment.create(content: "Etiam risus libero, fringilla sed neque a, porta interdum nisi.", user_id: 5)
