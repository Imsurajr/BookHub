import 'package:bookhub/constants/colours.dart';
import 'package:flutter/material.dart';

class RoundedRectangleTabIndicator extends Decoration{
  final BoxPainter _painter;

  RoundedRectangleTabIndicator({required Color color, required double weight , required double width}):
        _painter = _RRectanglePainterColor(color,weight,width);

  @override
  BoxPainter createBoxPainter([ VoidCallback? onChanged]) =>_painter;
}

class _RRectanglePainterColor extends BoxPainter{
   final Paint _paint;
  final double weight ;
  final double width ;

  _RRectanglePainterColor(Color color, this.weight , this.width) : _paint =Paint()
  ..color=color
  ..isAntiAlias =true;

  @override
  void paint (Canvas canvas, Offset offset, ImageConfiguration cfg) {
   // final Offset customOffset = offset + Offset(0, cfg.size.height - weight );
    final Offset customOffset = offset + Offset(0, cfg.size?.height ?? 0 - weight );

    Rect myRect = customOffset & Size(width, weight);

    RRect myRRect = RRect.fromRectXY(myRect, weight, weight);

    canvas.save();
    canvas.clipRRect(myRRect);
    canvas.drawRect(myRect, _paint);
    canvas.restore();

  }
}