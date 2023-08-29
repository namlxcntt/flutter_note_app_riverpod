import 'package:flutter/widgets.dart';
import 'package:flutter_note_app/generated/l10n.dart';

extension GetString on BuildContext {
  S getString(){
    return S.current;
  }
}