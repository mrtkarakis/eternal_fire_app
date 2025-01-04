import 'package:flutter/material.dart';

final class ImageNetwork {
  final String? path;
  final bool? onlyUrl;
  final bool? downloadImage;
  final Map<String, String>? headers;
  final Widget? errorWidget;

  ImageNetwork({
    this.path,
    this.onlyUrl = false,
    this.downloadImage = false,
    this.headers,
    this.errorWidget,
  });
}
