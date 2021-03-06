import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/components/card2/author_card.dart';
import 'package:flutter_training/components/card2/fooderlich_theme.dart';
import 'package:flutter_training/models/explore_recipe.dart';

class Card2 extends StatelessWidget {
  final ExploreRecipe recipe;
  const Card2({Key key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(recipe.backgroundImage),
        fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: <Widget>[
            //TODO 1: add Author
            AuthorCard(
              authorName: recipe.authorName,
              title: recipe.role,
              imageProvider: AssetImage(recipe.profileImage),
            ),
            //TODO 4: add Positioned
            Expanded(child: Stack(
              children: <Widget>[
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(recipe.title  ,
                    style: FooderlichTheme.lightTextTheme.headline1,)),
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(recipe.subtitle,style: FooderlichTheme.lightTextTheme.headline1,))
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
