import 'package:flutter/widgets.dart';
import 'package:flutter_note_app/generated/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension GetString on BuildContext {
  S getString() {
    return S.current;
  }
}
extension ReadExtension on WidgetRef {
  T readProvider<T>(StateNotifierProvider provider) {
    return read(provider.notifier as ProviderListenable<T>);
  }
}