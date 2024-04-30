
import 'exports.dart';

extension IterableExt on Iterable<Widget> {
  Iterable<Widget> toAddSeparator({required Widget element}) sync* {
    final iterator = this.iterator;
    if (iterator.moveNext()) {
      yield iterator.current;
      while (iterator.moveNext()) {
        yield element;
        yield iterator.current;
      }
    }
  }
}