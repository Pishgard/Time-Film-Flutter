class Movie {
  late int id;
  late String title;
  late String genre;
  late String image;
  late String description;
  late double rate;
  late int year_make;
  late int time;
  // final List<Cast> actors;

  // Movie({
  //   required this.id,
  //   required this.title,
  //   required this.genre,
  //   required this.image,
  //   required this.description,
  //   required this.rate,
  //   required this.year_make,
  //   required this.time,
  //   // required this.actors,
  // });

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    genre = json['genre'];
    image = json['image'];
    description = json['description'];
    rate = json['rate'];
    year_make = json['year_make'];
    time = json['time'];
    // actors: json['actors'],
  }
}

class Cast {
  final int id;
  final String name;
  final String image;
  final int age;
  final String description;

  Cast(
      {required this.id,
      required this.name,
      required this.image,
      required this.age,
      required this.description});
}

// var popularMovie = [
//   Movie(
//     id: 1,
//     title: "Mulan",
//     genre: "Action",
//     imgPoster: "assets/images/mulan-poster.jpg",
//     minute: 180,
//     rating: 8.1,
//     year: 2020,
//     overview:
//         "To save her ailing father from serving in the Imperial Army, a fearless young woman disguises herself as a man to battle northern invaders in China.",
//     casts: [
//       Cast(id: 1, name: "Donnie Yen", image: "assets/cast/donnie-yen.jpg"),
//       Cast(id: 2, name: "Gong Li", image: "assets/cast/gong-li.jpg"),
//       Cast(id: 3, name: "Jet Li", image: "assets/cast/jet-li.jpg"),
//       Cast(id: 4, name: "Liu Yifei", image: "assets/cast/liu-yifei.jpg"),
//       Cast(id: 5, name: "Tzi Ma", image: "assets/cast/tzi-ma.jpg"),
//       Cast(id: 6, name: "Yoson An", image: "assets/cast/yoson-an.jpg"),
//     ],
//   ),
//   Movie(
//     id: 2,
//     title: "Avenger : End Game",
//     genre: "Action",
//     imgPoster: "assets/images/avenger-endgame-poster.jpg",
//     minute: 180,
//     rating: 8.1,
//     year: 2019,
//     overview:
//         "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.",
//     casts: [],
//   ),
//   Movie(
//     id: 3,
//     title: "Captain Marvel",
//     genre: "Action",
//     imgPoster: "assets/images/captain-marvel-poster.jpg",
//     minute: 180,
//     rating: 8.1,
//     year: 2019,
//     overview:
//         "Captain Marvel is an extraterrestrial Kree warrior who finds herself caught in the middle of an intergalactic battle between her people and the Skrulls. Living on Earth in 1995, she keeps having recurring memories of another life as U.S. Air Force pilot Carol Danvers. With help from Nick Fury, Captain Marvel tries to uncover the secrets of her past while harnessing her special superpowers to end the war with the evil Skrulls.",
//     casts: [],
//   ),
//   Movie(
//     id: 4,
//     title: "Iron Man",
//     genre: "Action",
//     imgPoster: "assets/images/iron-man-poster.jpg",
//     minute: 180,
//     rating: 8.1,
//     year: 2019,
//     overview:
//         "A billionaire industrialist and genius inventor, Tony Stark (Robert Downey Jr.), is conducting weapons tests overseas, but terrorists kidnap him to force him to build a devastating weapon. Instead, he builds an armored suit and upends his captors. Returning to America, Stark refines the suit and uses it to combat crime and terrorism.",
//     casts: [],
//   ),
// ];

// var nowShowing = [
//   Movie(
//     id: 5,
//     title: "Aladin",
//     genre: "Action",
//     imgPoster: "assets/images/aladin-poster.jpg",
//     minute: 180,
//     rating: 7.3,
//     year: 2018,
//     overview:
//         "Aladdin is a lovable street urchin who meets Princess Jasmine, the beautiful daughter of the sultan of Agrabah. While visiting her exotic palace, Aladdin stumbles upon a magic oil lamp that unleashes a powerful, wisecracking, larger-than-life genie. As Aladdin and the genie start to become friends, they must soon embark on a dangerous mission to stop the evil sorcerer, Jafar, from overthrowing young Jasmine's kingdom.",
//     casts: [],
//   ),
//   Movie(
//     id: 6,
//     title: "Arrival",
//     genre: "Action",
//     imgPoster: "assets/images/arrival-poster.jpg",
//     minute: 180,
//     rating: 7.5,
//     year: 2018,
//     overview:
//         "Linguistics professor Louise Banks (Amy Adams) leads an elite team of investigators when gigantic spaceships touch down in 12 locations around the world. As nations teeter on the verge of global war, Banks and her crew must race against time to find a way to communicate with the extraterrestrial visitors. Hoping to unravel the mystery, she takes a chance that could threaten her life and quite possibly all of mankind.",
//     casts: [],
//   ),
//   Movie(
//     id: 7,
//     title: "Assasins",
//     genre: "Action",
//     imgPoster: "assets/images/assasins-poster.jpg",
//     minute: 180,
//     rating: 7.3,
//     year: 2018,
//     overview:
//         "Assassin Robert Rath (Sylvester Stallone) arrives at a funeral to kill a prominent mobster, only to witness rival hired gun Miguel Bain (Antonio Banderas) complete the job for him -- with grisly results. Horrified by the murder of innocent bystanders, Rath decides to take one last job and then return to civilian life. But finding his way out of the world of contract killing grows ever more dangerous as Rath falls for his target, Electra (Julianne Moore), and becomes a marked man himself.",
//     casts: [],
//   ),
//   Movie(
//     id: 8,
//     title: "Blood Shot",
//     genre: "Action",
//     imgPoster: "assets/images/blood-shot-poster.jpg",
//     minute: 180,
//     rating: 7.3,
//     year: 2018,
//     overview:
//         "A misguided cop (Brennan Elliott) tries to destroy a vampire (Michael Bailey Smith) who works as a government assassin and is trying to thwart a terrorist attack on Los Angeles.",
//     casts: [],
//   ),
// ];

// var continueWatching = [
//   Movie(
//     title: "Moonlight",
//     genre: "Action",
//     imgPoster: "assets/images/moonlight-poster.jpg",
//     minute: 180,
//     rating: 7.3,
//     year: 2018,
//     overview:
//         "A look at three defining chapters in the life of Chiron, a young black man growing up in Miami. His epic journey to manhood is guided by the kindness, support and love of the community that helps raise him.",
//     casts: [],
//   ),
//   Movie(
//     title: "The Hill",
//     genre: "Action",
//     imgPoster: "assets/images/the-hill-poster.jpg",
//     minute: 180,
//     rating: 7.3,
//     year: 2018,
//     overview:
//         "Five British soldiers are sent to a detention camp in the Libyan Desert, including Sergeant Major Roberts (Sean Connery), whose conviction for the assault of an officer is shrouded in mystery. As punishment, the vicious Staff Sergeant Williams (Ian Hendry) orders the prisoners to continuously climb a man-made hill in the scorching desert heat. Though his colleague, Staff Sergeant Harris (Ian Bannen), sympathizes with the new detainees, he can only watch as Williams goes to sadistic extremes.",
//     casts: [],
//   ),
//   Movie(
//     title: "Wonder Woman 1984",
//     genre: "Action",
//     imgPoster: "assets/images/wonder-woman-poster.jpg",
//     minute: 180,
//     rating: 7.3,
//     year: 2018,
//     overview:
//         "Wonder Woman 1984 is a 2020 American superhero film based on the DC Comics character Wonder Woman. ... Set in 1984 during the Cold War, the film follows Diana and her past love Steve Trevor as they face off against Max Lord and Cheetah.",
//     casts: [],
//   ),
//   Movie(
//     title: "Zombie Land",
//     genre: "Action",
//     imgPoster: "assets/images/zombie-land-poster.jpg",
//     minute: 180,
//     rating: 7.3,
//     year: 2018,
//     overview:
//         "After a virus turns most people into zombies, the world's surviving humans remain locked in an ongoing battle against the hungry undead. Four survivors -- Tallahassee (Woody Harrelson) and his cohorts Columbus (Jesse Eisenberg), Wichita (Emma Stone) and Little Rock (Abigail Breslin) -- abide by a list of survival rules and zombie-killing strategies as they make their way toward a rumored safe haven in Los Angeles.",
//     casts: [],
//   ),
// ];
