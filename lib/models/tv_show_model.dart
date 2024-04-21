
enum Rating {
  TVY,
  TVY7,
  TVY7FV,
  TVG,
  TVPG,
  TV14,
  TVMA
}


class TvShow {
  const TvShow({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.language,
    required this.information,
    required this.releaseYear,
    required this.numEpisodes,
    required this.rating,
    required this.isAwardWinning,
    required this.hasSubtitles,
    required this.isTearjerker,
    required this.isPeriodDrama,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String language;
  final List<String> information;
  final int releaseYear;
  final int numEpisodes;
  final Rating rating;
  final bool isAwardWinning;
  final bool hasSubtitles;
  final bool isTearjerker;
  final bool isPeriodDrama;
}
