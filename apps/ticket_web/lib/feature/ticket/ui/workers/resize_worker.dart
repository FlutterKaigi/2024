// このファイルを編集したら次のコマンドを実行して js ファイルを生成してください
//
// ```shell
// fvm dart compile js apps/ticket_web/lib/feature/ticket/ui/workers/resize_worker.dart -o apps/ticket_web/assets/workers/resize_worker.js
// ```

import 'dart:js_interop';
import 'dart:typed_data';

import 'package:ticket_web/feature/ticket/ui/workers/resize.dart';
import 'package:web/web.dart' as web;

@JS('postMessage')
external void postMessage(JSAny? message);

@JS('onmessage')
external set onmessage(JSAny? message);

void main() async {
  onmessage = ((web.MessageEvent message) {
    final croppedImage =
        (message.data as JSUint8Array?)?.toDart ?? Uint8List.fromList([]);
    postMessage(
      resize(croppedImage).toJS,
    );
  }).toJS;
}
