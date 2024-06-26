import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tv_shows/models/tv_show_model.dart';
import 'package:tv_shows/widgets/tv_show_metadata.dart';

class TVShowItem extends StatelessWidget {
  const TVShowItem({super.key, required this.tvShow, required this.onTVShowTap});

  final TvShow tvShow;
  final void Function(TvShow tvShow) onTVShowTap; 
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onTVShowTap(tvShow);
        },
        child: Stack(
          children: [
            FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: NetworkImage(tvShow.imageUrl),
                fit:BoxFit.cover,
                height: 220,
                width: double.infinity,                
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 45),
                child: Column(
                  children: [
                    Text(
                      tvShow.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis, // the text...
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TVShowItemMetadata(icon: Icons.calendar_month, label: tvShow.releaseYear.toString(),),
                      const SizedBox(width: 10),
                      TVShowItemMetadata(icon: Icons.language, label: tvShow.language,),
                      const SizedBox(width: 10),
                      TVShowItemMetadata(icon: Icons.numbers_rounded, label: 'Episodes ${tvShow.numEpisodes.toString()}',)
                    ],),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
