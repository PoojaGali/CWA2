import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class webImage extends Image {
  webImage({
    required String url,
    required BuildContext context,
    double height = 200.0,
  }) : super.network(url, height: height, errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          print('======= webimage error: $exception');
          return Icon(
            Icons.error,
            size: height,
          );
        }, loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null)
            return child;
          else {
            return CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            );
          }
        });
}
