import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../import/theme_import.dart';
import '../../../../import/extension_import.dart';

final class CountdownWidget extends StatefulWidget {
  const CountdownWidget({
    super.key,
    required this.duration,
    this.per = AppDuration.sec1,
    this.finish = Duration.zero,
    this.onlySecond = false,
    this.autoOnlySecond = false,
    this.textStyle,
    this.onChangeDuration,
  });

  final Duration duration;
  final Duration per;
  final Duration finish;
  final bool onlySecond;
  final bool autoOnlySecond;
  final TextStyle? textStyle;
  final Function(Duration)? onChangeDuration;

  @override
  State<CountdownWidget> createState() => _CountdownWidgetState();
}

final class _CountdownWidgetState extends State<CountdownWidget> {
  Duration newDuration = const Duration();
  Timer? timer;
  @override
  void initState() {
    super.initState();
    newDuration = widget.duration;
    timer = Timer.periodic(widget.per, (timer) {
      newDuration = newDuration - widget.per;
      widget.onChangeDuration?.call(newDuration);
      setState(() {});
      if (newDuration <= widget.finish) {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final Duration duration =
        widget.finish > newDuration ? widget.finish : newDuration;
    final String text =
        widget.onlySecond || (widget.autoOnlySecond && duration.inMinutes <= 0)
            ? duration.toSecond
            : "${duration.toMinute}:${duration.toSecond}";
    return AnimatedDefaultTextStyle(
      duration: AppDuration.ms750,
      style: widget.textStyle ?? const TextStyle(),
      child: Text(text),
    );
  }
}
