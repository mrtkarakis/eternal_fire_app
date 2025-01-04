import 'package:flutter/material.dart';
import '/core/import/extension_import.dart';

enum ESnackBarType {
  message,
  error;

  const ESnackBarType();

  Color backgroundColor(final BuildContext context) {
    switch (this) {
      case ESnackBarType.message:
        return context.colorScheme.onPrimary;

      case ESnackBarType.error:
        return context.colorScheme.error;
    }
  }

  Color foregroundColor(final BuildContext context) {
    switch (this) {
      case ESnackBarType.message:
        return context.colorScheme.shadow;

      case ESnackBarType.error:
        return context.colorScheme.onPrimary;
    }
  }
}
