import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

showStarRating(rating, color) {
  return SmoothStarRating(
      allowHalfRating: false,
      onRated: (v) {},
      starCount: 5,
      rating: rating,
      size: 20.0,
      isReadOnly: true,
      halfFilledIconData: Icons.blur_on,
      color: color,
      borderColor: Colors.grey.shade400,
      spacing: 0.0);
}
