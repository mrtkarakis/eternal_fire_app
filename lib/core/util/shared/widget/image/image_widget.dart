import 'dart:io' as io show File;

import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../global.dart';
import '../../../../import/theme_import.dart';
import '../../../../import/enum_import.dart';
import 'model/image_network_model.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({
    super.key,
    this.path,
    this.icon,
    this.network,
    this.size,
    this.blendMode,
    this.imageType,
    this.color,
    this.fit = BoxFit.contain,
    this.hasFile = false,
    this.alignment = Alignment.center,
  });
  final String? path;
  final EIcons? icon;
  final ImageNetwork? network;
  final Color? color;
  final BoxFit fit;
  final Size? size;
  final BlendMode? blendMode;
  final EImageType? imageType;
  final bool hasFile;
  final Alignment alignment;

  static void clear() {
    cacheManager.emptyCache();
    loadablePath.clear();
    unloadablePath.clear();
  }

  static const String _networkCacheKey = "NetworkImage";

  static final BaseCacheManager cacheManager = CacheManager(
    Config(
      _networkCacheKey,
      stalePeriod: const Duration(days: 14),
      maxNrOfCacheObjects: 180,
      repo: JsonCacheInfoRepository(databaseName: _networkCacheKey),
      fileSystem: IOFileSystem(_networkCacheKey),
      fileService: HttpFileService(),
    ),
  );

  static final List<String> loadablePath = [];
  static final Set<String> unloadablePath = {};

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  static String? url;
  static String? imagePath;

  @override
  Widget build(final BuildContext context) {
    imagePath = widget.icon?.fullPath ?? widget.path;
    final EImageType type = widget.imageType ??
        (widget.network?.path != null
            ? EImageType.network
            : widget.icon != null
                ? widget.icon!.type
                : _imageType(imagePath ?? ""));
    if (type == EImageType.network) {
      url = widget.network?.path ?? "";
    }
    return image(type);
  }

  EImageType _imageType(final String path) {
    final int dotIndex = path.lastIndexOf(".");

    final String type = path.substring(dotIndex + 1, path.length);
    for (EImageType element in EImageType.values) {
      if (element.name == type) {
        return element;
      }
    }
    return EImageType.error;
  }

  Widget image(final EImageType type) {
    final Key imageKey = widget.key ?? Key(imagePath ?? url ?? "");
    if (type == EImageType.png) {
      return Image.asset(
        "$imagePath",
        key: imageKey,
        fit: widget.fit,
        color: widget.color,
        width: widget.size?.width,
        height: widget.size?.height,
        colorBlendMode: widget.blendMode,
      );
    } else if (type == EImageType.network) {
      if (ImageWidget.unloadablePath.contains(url) &&
          !ImageWidget.loadablePath.contains(url)) {
        return widget.network?.errorWidget ?? const SizedBox.shrink();
      }
      if (url?.endsWith("svg") ?? false) {
        return SvgPicture.network(
          url ?? "",
          key: imageKey,
          fit: widget.fit,
          colorFilter: widget.color != null
              ? ColorFilter.mode(
                  widget.color ?? AppColor.transparent,
                  widget.blendMode ?? BlendMode.srcIn,
                )
              : null,
          width: widget.size?.width,
          height: widget.size?.height,
          alignment: widget.alignment,
          headers: widget.network?.headers,
        );
      }

      return CachedNetworkImage(
          key: imageKey,
          cacheKey: url ?? "",
          imageUrl: url ?? "",
          fit: widget.fit,
          color: widget.color,
          width: widget.size?.width,
          height: widget.size?.height,
          colorBlendMode: widget.blendMode,
          cacheManager: ImageWidget.cacheManager,
          httpHeaders: widget.network?.headers,
          alignment: widget.alignment,
          placeholder: (_, __) =>
              const Center(child: CircularProgressIndicator()),
          imageBuilder: (_, imageProvider) {
            if (!ImageWidget.loadablePath.contains(url)) {
              ImageWidget.loadablePath.add(url ?? "");
            }
            return Image(
              image: imageProvider,
              fit: widget.fit,
              color: widget.color,
              width: widget.size?.width,
              height: widget.size?.height,
              colorBlendMode: widget.blendMode,
              alignment: widget.alignment,
            );
          },
          errorWidget: (_, String errorUrl, __) {
            ImageWidget.unloadablePath.add(errorUrl);
            _removeCacheFile(errorUrl);

            return widget.network?.errorWidget ?? const SizedBox.shrink();
          });
    } else if (type == EImageType.svg) {
      return SvgPicture.asset(
        "$imagePath",
        key: imageKey,
        fit: widget.fit,
        colorFilter: widget.color != null
            ? ColorFilter.mode(
                widget.color!,
                widget.blendMode ?? BlendMode.srcIn,
              )
            : null,
        width: widget.size?.width,
        height: widget.size?.height,
      );
    } else if (type == EImageType.file) {
      return Image.file(
        io.File(
          // widget.hasFile
          //     ? "deviceService.getAppDocDirPath}/${widget.network?.path}"
          //     :

          imagePath ?? widget.network?.path ?? "",
        ),
        key: imageKey,
        fit: widget.fit,
        color: widget.color,
        width: widget.size?.width,
        height: widget.size?.height,
        colorBlendMode: widget.blendMode,
      );
    }
    return SizedBox(
      key: imageKey,
      height: widget.size?.height,
      width: widget.size?.width,
    );
  }

  _removeCacheFile(final String url) async {
    final cacheFile = await ImageWidget.cacheManager.getFileFromCache(url);
    if (cacheFile == null) return;

    await ImageWidget.cacheManager.removeFile(url);
    ImageWidget.loadablePath.remove(url);
    developerLog("File removed from cache.", name: "ImageWidget.CacheManager");
  }
}
