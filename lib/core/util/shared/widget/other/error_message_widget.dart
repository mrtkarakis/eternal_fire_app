import 'package:flutter/material.dart';

import '../../../../import/theme_import.dart';
import '../../../../import/extension_import.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
    required this.text,
    this.checkIsEmpty = true,
  });
  final String text;
  final bool checkIsEmpty;

  @override
  Widget build(BuildContext context) {
    return checkIsEmpty && text.isEmpty
        ? const SizedBox(height: 18)
        : Row(
            children: [
              Icon(
                Icons.error_outline_rounded,
                color: context.colorScheme.error,
                size: 18,
              ),
              const SizedBox(width: AppSize.halfSize * 0.5),
              Flexible(
                child: Text(
                  text,
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: context.colorScheme.error,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          );
  }
}
