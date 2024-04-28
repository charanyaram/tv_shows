
import 'package:tv_shows/models/tv_show_model.dart';

const availableTvShows = [
  TvShow(
    id: 'm1', 
    categories: ['c1'], 
    title: 'My Mister', 
    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/3/31/MyMisterposter.jpg', 
    language: 'Korean', 
    information: [
      'Directed by: Kim Won-seok',
      'Description: My Mister is a 2018 South Korean television series about Dong-hoon and Ji-an,  two kindred spirits who start finding comfort in each other''s company and eventually grow very protective of each other',
    ],
    releaseYear: 2018,
    numEpisodes: 16, 
    rating: Rating.TVPG, 
    isAwardWinning: true, 
    hasSubtitles: true, 
    isTearjerker: true, 
    isPeriodDrama: false
  ),
  TvShow(
    id: 'm2', 
    categories: ['c1','c2'], 
    title: 'Jack Whitehall: Travels with my Father', 
    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/b/be/Travels_with_My_Father.jpg', 
    language: 'English', 
    information: [
      'Created by: Jack Whitehall',
      'Description: Jack Whitehall: Travels with My Father is a comedy television series covers the Jack and his dad''s travels, encountering silly and awkward situations.',
    ],
    releaseYear: 2017,
    numEpisodes: 18, 
    rating: Rating.TVMA, 
    isAwardWinning: false, 
    hasSubtitles: false, 
    isTearjerker: false, 
    isPeriodDrama: false
  ),
  TvShow(
    id: 'm3', 
    categories: ['c1','c2','c10'], 
    title: 'After Life', 
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BZjdjOWIxMDgtYTgwNS00MjE4LTliZWYtZGI1NDhhZmIyYjM1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
    language: 'English', 
    information: [
      'Directed by: Ricky Gervais',
      'Description: After Life',
    ],
    releaseYear: 2019,
    numEpisodes: 18, 
    rating: Rating.TVPG, 
    isAwardWinning: false, 
    hasSubtitles: true, 
    isTearjerker: true, 
    isPeriodDrama: false
  ),
];

 