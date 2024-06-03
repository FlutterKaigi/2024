let buildArgsList;

// `modulePromise` is a promise to the `WebAssembly.module` object to be
//   instantiated.
// `importObjectPromise` is a promise to an object that contains any additional
//   imports needed by the module that aren't provided by the standard runtime.
//   The fields on this object will be merged into the importObject with which
//   the module will be instantiated.
// This function returns a promise to the instantiated module.
export const instantiate = async (modulePromise, importObjectPromise) => {
    let dartInstance;

    function stringFromDartString(string) {
        const totalLength = dartInstance.exports.$stringLength(string);
        let result = '';
        let index = 0;
        while (index < totalLength) {
          let chunkLength = Math.min(totalLength - index, 0xFFFF);
          const array = new Array(chunkLength);
          for (let i = 0; i < chunkLength; i++) {
              array[i] = dartInstance.exports.$stringRead(string, index++);
          }
          result += String.fromCharCode(...array);
        }
        return result;
    }

    function stringToDartString(string) {
        const length = string.length;
        let range = 0;
        for (let i = 0; i < length; i++) {
            range |= string.codePointAt(i);
        }
        if (range < 256) {
            const dartString = dartInstance.exports.$stringAllocate1(length);
            for (let i = 0; i < length; i++) {
                dartInstance.exports.$stringWrite1(dartString, i, string.codePointAt(i));
            }
            return dartString;
        } else {
            const dartString = dartInstance.exports.$stringAllocate2(length);
            for (let i = 0; i < length; i++) {
                dartInstance.exports.$stringWrite2(dartString, i, string.charCodeAt(i));
            }
            return dartString;
        }
    }

    // Prints to the console
    function printToConsole(value) {
      if (typeof dartPrint == "function") {
        dartPrint(value);
        return;
      }
      if (typeof console == "object" && typeof console.log != "undefined") {
        console.log(value);
        return;
      }
      if (typeof print == "function") {
        print(value);
        return;
      }

      throw "Unable to print message: " + js;
    }

    // Converts a Dart List to a JS array. Any Dart objects will be converted, but
    // this will be cheap for JSValues.
    function arrayFromDartList(constructor, list) {
        const length = dartInstance.exports.$listLength(list);
        const array = new constructor(length);
        for (let i = 0; i < length; i++) {
            array[i] = dartInstance.exports.$listRead(list, i);
        }
        return array;
    }

    buildArgsList = function(list) {
        const dartList = dartInstance.exports.$makeStringList();
        for (let i = 0; i < list.length; i++) {
            dartInstance.exports.$listAdd(dartList, stringToDartString(list[i]));
        }
        return dartList;
    }

    // A special symbol attached to functions that wrap Dart functions.
    const jsWrappedDartFunctionSymbol = Symbol("JSWrappedDartFunction");

    function finalizeWrapper(dartFunction, wrapped) {
        wrapped.dartFunction = dartFunction;
        wrapped[jsWrappedDartFunctionSymbol] = true;
        return wrapped;
    }

    // Imports
    const dart2wasm = {

_1: (x0,x1,x2) => x0.set(x1,x2),
_2: (x0,x1,x2) => x0.set(x1,x2),
_6: f => finalizeWrapper(f,x0 => dartInstance.exports._6(f,x0)),
_7: x0 => new window.FinalizationRegistry(x0),
_8: (x0,x1,x2,x3) => x0.register(x1,x2,x3),
_9: (x0,x1) => x0.unregister(x1),
_10: (x0,x1,x2) => x0.slice(x1,x2),
_11: (x0,x1) => x0.decode(x1),
_12: (x0,x1) => x0.segment(x1),
_13: () => new TextDecoder(),
_14: x0 => x0.buffer,
_15: x0 => x0.wasmMemory,
_16: () => globalThis.window._flutter_skwasmInstance,
_17: x0 => x0.rasterStartMilliseconds,
_18: x0 => x0.rasterEndMilliseconds,
_19: x0 => x0.imageBitmaps,
_166: x0 => x0.focus(),
_167: x0 => x0.select(),
_168: (x0,x1) => x0.append(x1),
_169: x0 => x0.remove(),
_172: x0 => x0.unlock(),
_177: x0 => x0.getReader(),
_187: x0 => new MutationObserver(x0),
_206: (x0,x1,x2) => x0.addEventListener(x1,x2),
_207: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_210: x0 => new ResizeObserver(x0),
_213: (x0,x1) => new Intl.Segmenter(x0,x1),
_214: x0 => x0.next(),
_215: (x0,x1) => new Intl.v8BreakIterator(x0,x1),
_292: x0 => x0.close(),
_293: (x0,x1,x2,x3,x4) => ({type: x0,data: x1,premultiplyAlpha: x2,colorSpaceConversion: x3,preferAnimation: x4}),
_294: x0 => new window.ImageDecoder(x0),
_295: x0 => x0.close(),
_296: x0 => ({frameIndex: x0}),
_297: (x0,x1) => x0.decode(x1),
_300: f => finalizeWrapper(f,x0 => dartInstance.exports._300(f,x0)),
_301: f => finalizeWrapper(f,x0 => dartInstance.exports._301(f,x0)),
_302: (x0,x1) => ({addView: x0,removeView: x1}),
_303: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._303(f,arguments.length,x0) }),
_304: f => finalizeWrapper(f,() => dartInstance.exports._304(f)),
_305: (x0,x1) => ({initializeEngine: x0,autoStart: x1}),
_306: f => finalizeWrapper(f, function(x0) { return dartInstance.exports._306(f,arguments.length,x0) }),
_307: x0 => ({runApp: x0}),
_308: x0 => new Uint8Array(x0),
_310: x0 => x0.preventDefault(),
_311: x0 => x0.stopPropagation(),
_312: (x0,x1) => x0.addListener(x1),
_313: (x0,x1) => x0.removeListener(x1),
_314: (x0,x1) => x0.prepend(x1),
_315: x0 => x0.remove(),
_316: x0 => x0.disconnect(),
_317: (x0,x1) => x0.addListener(x1),
_318: (x0,x1) => x0.removeListener(x1),
_321: (x0,x1) => x0.append(x1),
_322: x0 => x0.remove(),
_323: x0 => x0.stopPropagation(),
_327: x0 => x0.preventDefault(),
_328: (x0,x1) => x0.append(x1),
_329: x0 => x0.remove(),
_334: (x0,x1) => x0.appendChild(x1),
_335: (x0,x1,x2) => x0.insertBefore(x1,x2),
_336: (x0,x1) => x0.removeChild(x1),
_337: (x0,x1) => x0.appendChild(x1),
_338: (x0,x1) => x0.transferFromImageBitmap(x1),
_339: (x0,x1) => x0.append(x1),
_340: (x0,x1) => x0.append(x1),
_341: (x0,x1) => x0.append(x1),
_342: x0 => x0.remove(),
_343: x0 => x0.focus(),
_344: x0 => x0.focus(),
_345: x0 => x0.remove(),
_346: x0 => x0.focus(),
_347: x0 => x0.remove(),
_348: x0 => x0.focus(),
_349: (x0,x1) => x0.appendChild(x1),
_350: (x0,x1) => x0.appendChild(x1),
_351: x0 => x0.remove(),
_352: (x0,x1) => x0.append(x1),
_353: (x0,x1) => x0.append(x1),
_354: x0 => x0.remove(),
_355: (x0,x1) => x0.append(x1),
_356: (x0,x1) => x0.append(x1),
_357: (x0,x1,x2) => x0.insertBefore(x1,x2),
_358: (x0,x1) => x0.append(x1),
_359: (x0,x1,x2) => x0.insertBefore(x1,x2),
_360: x0 => x0.remove(),
_361: x0 => x0.remove(),
_362: (x0,x1) => x0.append(x1),
_363: x0 => x0.remove(),
_364: (x0,x1) => x0.append(x1),
_365: x0 => x0.remove(),
_366: x0 => x0.remove(),
_367: x0 => x0.getBoundingClientRect(),
_368: x0 => x0.remove(),
_369: x0 => x0.blur(),
_371: x0 => x0.focus(),
_372: x0 => x0.focus(),
_373: x0 => x0.remove(),
_374: x0 => x0.focus(),
_375: x0 => x0.focus(),
_376: x0 => x0.blur(),
_377: x0 => x0.remove(),
_390: (x0,x1) => x0.append(x1),
_391: x0 => x0.remove(),
_392: (x0,x1) => x0.append(x1),
_393: (x0,x1,x2) => x0.insertBefore(x1,x2),
_394: x0 => x0.focus(),
_395: x0 => x0.focus(),
_396: x0 => x0.focus(),
_397: x0 => x0.focus(),
_398: x0 => x0.focus(),
_399: x0 => x0.focus(),
_400: x0 => x0.blur(),
_401: x0 => x0.remove(),
_403: x0 => x0.preventDefault(),
_404: x0 => x0.focus(),
_405: x0 => x0.preventDefault(),
_406: x0 => x0.preventDefault(),
_407: x0 => x0.preventDefault(),
_408: x0 => x0.focus(),
_409: x0 => x0.focus(),
_410: x0 => x0.focus(),
_411: x0 => x0.focus(),
_412: x0 => x0.focus(),
_413: x0 => x0.focus(),
_414: (x0,x1) => x0.observe(x1),
_415: x0 => x0.disconnect(),
_416: (x0,x1) => x0.appendChild(x1),
_417: (x0,x1) => x0.appendChild(x1),
_418: (x0,x1) => x0.appendChild(x1),
_419: (x0,x1) => x0.append(x1),
_420: x0 => x0.remove(),
_421: (x0,x1) => x0.append(x1),
_422: (x0,x1) => x0.append(x1),
_423: (x0,x1) => x0.appendChild(x1),
_424: (x0,x1) => x0.append(x1),
_425: x0 => x0.remove(),
_426: (x0,x1) => x0.append(x1),
_430: (x0,x1) => x0.appendChild(x1),
_431: x0 => x0.remove(),
_990: () => globalThis.window.flutterConfiguration,
_991: x0 => x0.assetBase,
_996: x0 => x0.debugShowSemanticsNodes,
_997: x0 => x0.hostElement,
_998: x0 => x0.multiViewEnabled,
_999: x0 => x0.nonce,
_1001: x0 => x0.fontFallbackBaseUrl,
_1002: x0 => x0.useColorEmoji,
_1006: x0 => x0.console,
_1007: x0 => x0.devicePixelRatio,
_1008: x0 => x0.document,
_1009: x0 => x0.history,
_1010: x0 => x0.innerHeight,
_1011: x0 => x0.innerWidth,
_1012: x0 => x0.location,
_1013: x0 => x0.navigator,
_1014: x0 => x0.visualViewport,
_1015: x0 => x0.performance,
_1016: (x0,x1) => x0.fetch(x1),
_1019: (x0,x1) => x0.dispatchEvent(x1),
_1020: (x0,x1) => x0.matchMedia(x1),
_1021: (x0,x1) => x0.getComputedStyle(x1),
_1023: x0 => x0.screen,
_1024: (x0,x1) => x0.requestAnimationFrame(x1),
_1025: f => finalizeWrapper(f,x0 => dartInstance.exports._1025(f,x0)),
_1029: (x0,x1) => x0.warn(x1),
_1032: (x0,x1) => x0.debug(x1),
_1033: () => globalThis.window,
_1034: () => globalThis.Intl,
_1035: () => globalThis.Symbol,
_1038: x0 => x0.clipboard,
_1039: x0 => x0.maxTouchPoints,
_1040: x0 => x0.vendor,
_1041: x0 => x0.language,
_1042: x0 => x0.platform,
_1043: x0 => x0.userAgent,
_1044: x0 => x0.languages,
_1045: x0 => x0.documentElement,
_1047: (x0,x1) => x0.querySelector(x1),
_1049: (x0,x1) => x0.createElement(x1),
_1052: (x0,x1) => x0.execCommand(x1),
_1055: (x0,x1) => x0.createTextNode(x1),
_1056: (x0,x1) => x0.createEvent(x1),
_1061: x0 => x0.head,
_1062: x0 => x0.body,
_1063: (x0,x1) => x0.title = x1,
_1067: x0 => x0.activeElement,
_1069: x0 => x0.visibilityState,
_1070: () => globalThis.document,
_1071: (x0,x1,x2) => x0.addEventListener(x1,x2),
_1072: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1073: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1074: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_1077: f => finalizeWrapper(f,x0 => dartInstance.exports._1077(f,x0)),
_1078: x0 => x0.target,
_1080: x0 => x0.timeStamp,
_1081: x0 => x0.type,
_1082: x0 => x0.preventDefault(),
_1087: (x0,x1,x2,x3) => x0.initEvent(x1,x2,x3),
_1092: x0 => x0.firstChild,
_1097: x0 => x0.parentElement,
_1099: x0 => x0.parentNode,
_1102: (x0,x1) => x0.removeChild(x1),
_1103: (x0,x1) => x0.removeChild(x1),
_1104: x0 => x0.isConnected,
_1105: (x0,x1) => x0.textContent = x1,
_1107: (x0,x1) => x0.contains(x1),
_1112: x0 => x0.firstElementChild,
_1114: x0 => x0.nextElementSibling,
_1115: x0 => x0.clientHeight,
_1116: x0 => x0.clientWidth,
_1117: x0 => x0.offsetHeight,
_1118: x0 => x0.offsetWidth,
_1119: x0 => x0.id,
_1120: (x0,x1) => x0.id = x1,
_1123: (x0,x1) => x0.spellcheck = x1,
_1124: x0 => x0.tagName,
_1125: x0 => x0.style,
_1126: (x0,x1) => x0.append(x1),
_1127: (x0,x1) => x0.getAttribute(x1),
_1128: x0 => x0.getBoundingClientRect(),
_1131: (x0,x1) => x0.closest(x1),
_1133: (x0,x1) => x0.querySelectorAll(x1),
_1134: x0 => x0.remove(),
_1136: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1138: (x0,x1) => x0.removeAttribute(x1),
_1139: (x0,x1) => x0.tabIndex = x1,
_1143: x0 => x0.scrollTop,
_1144: (x0,x1) => x0.scrollTop = x1,
_1145: x0 => x0.scrollLeft,
_1146: (x0,x1) => x0.scrollLeft = x1,
_1147: x0 => x0.classList,
_1148: (x0,x1) => x0.className = x1,
_1152: (x0,x1) => x0.getElementsByClassName(x1),
_1153: x0 => x0.click(),
_1155: (x0,x1) => x0.hasAttribute(x1),
_1158: (x0,x1) => x0.attachShadow(x1),
_1161: (x0,x1) => x0.getPropertyValue(x1),
_1163: (x0,x1,x2,x3) => x0.setProperty(x1,x2,x3),
_1165: (x0,x1) => x0.removeProperty(x1),
_1167: x0 => x0.offsetLeft,
_1168: x0 => x0.offsetTop,
_1169: x0 => x0.offsetParent,
_1171: (x0,x1) => x0.name = x1,
_1172: x0 => x0.content,
_1173: (x0,x1) => x0.content = x1,
_1186: (x0,x1) => x0.nonce = x1,
_1191: x0 => x0.now(),
_1193: (x0,x1) => x0.width = x1,
_1195: (x0,x1) => x0.height = x1,
_1199: (x0,x1) => x0.getContext(x1),
_1276: x0 => x0.status,
_1278: x0 => x0.body,
_1280: x0 => x0.arrayBuffer(),
_1285: x0 => x0.read(),
_1286: x0 => x0.value,
_1287: x0 => x0.done,
_1289: x0 => x0.name,
_1290: x0 => x0.x,
_1291: x0 => x0.y,
_1294: x0 => x0.top,
_1295: x0 => x0.right,
_1296: x0 => x0.bottom,
_1297: x0 => x0.left,
_1306: x0 => x0.height,
_1307: x0 => x0.width,
_1308: (x0,x1) => x0.value = x1,
_1310: (x0,x1) => x0.placeholder = x1,
_1311: (x0,x1) => x0.name = x1,
_1312: x0 => x0.selectionDirection,
_1313: x0 => x0.selectionStart,
_1314: x0 => x0.selectionEnd,
_1317: x0 => x0.value,
_1319: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1324: x0 => x0.readText(),
_1325: (x0,x1) => x0.writeText(x1),
_1326: x0 => x0.altKey,
_1327: x0 => x0.code,
_1328: x0 => x0.ctrlKey,
_1329: x0 => x0.key,
_1330: x0 => x0.keyCode,
_1331: x0 => x0.location,
_1332: x0 => x0.metaKey,
_1333: x0 => x0.repeat,
_1334: x0 => x0.shiftKey,
_1335: x0 => x0.isComposing,
_1336: (x0,x1) => x0.getModifierState(x1),
_1337: x0 => x0.state,
_1341: (x0,x1) => x0.go(x1),
_1342: (x0,x1,x2,x3) => x0.pushState(x1,x2,x3),
_1343: (x0,x1,x2,x3) => x0.replaceState(x1,x2,x3),
_1344: x0 => x0.pathname,
_1345: x0 => x0.search,
_1346: x0 => x0.hash,
_1349: x0 => x0.state,
_1354: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1354(f,x0,x1)),
_1356: (x0,x1,x2) => x0.observe(x1,x2),
_1359: x0 => x0.attributeName,
_1360: x0 => x0.type,
_1361: x0 => x0.matches,
_1364: x0 => x0.matches,
_1365: x0 => x0.relatedTarget,
_1366: x0 => x0.clientX,
_1367: x0 => x0.clientY,
_1368: x0 => x0.offsetX,
_1369: x0 => x0.offsetY,
_1372: x0 => x0.button,
_1373: x0 => x0.buttons,
_1374: x0 => x0.ctrlKey,
_1375: (x0,x1) => x0.getModifierState(x1),
_1376: x0 => x0.pointerId,
_1377: x0 => x0.pointerType,
_1378: x0 => x0.pressure,
_1379: x0 => x0.tiltX,
_1380: x0 => x0.tiltY,
_1381: x0 => x0.getCoalescedEvents(),
_1382: x0 => x0.deltaX,
_1383: x0 => x0.deltaY,
_1384: x0 => x0.wheelDeltaX,
_1385: x0 => x0.wheelDeltaY,
_1386: x0 => x0.deltaMode,
_1391: x0 => x0.changedTouches,
_1393: x0 => x0.clientX,
_1394: x0 => x0.clientY,
_1395: x0 => x0.data,
_1396: (x0,x1) => x0.type = x1,
_1397: (x0,x1) => x0.max = x1,
_1398: (x0,x1) => x0.min = x1,
_1399: (x0,x1) => x0.value = x1,
_1400: x0 => x0.value,
_1401: x0 => x0.disabled,
_1402: (x0,x1) => x0.disabled = x1,
_1403: (x0,x1) => x0.placeholder = x1,
_1404: (x0,x1) => x0.name = x1,
_1405: (x0,x1) => x0.autocomplete = x1,
_1406: x0 => x0.selectionDirection,
_1407: x0 => x0.selectionStart,
_1408: x0 => x0.selectionEnd,
_1411: (x0,x1,x2) => x0.setSelectionRange(x1,x2),
_1417: (x0,x1) => x0.add(x1),
_1421: (x0,x1) => x0.noValidate = x1,
_1422: (x0,x1) => x0.method = x1,
_1423: (x0,x1) => x0.action = x1,
_1450: x0 => x0.orientation,
_1451: x0 => x0.width,
_1452: x0 => x0.height,
_1453: (x0,x1) => x0.lock(x1),
_1470: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1470(f,x0,x1)),
_1480: x0 => x0.length,
_1482: (x0,x1) => x0.item(x1),
_1483: x0 => x0.length,
_1484: (x0,x1) => x0.item(x1),
_1485: x0 => x0.iterator,
_1486: x0 => x0.Segmenter,
_1487: x0 => x0.v8BreakIterator,
_1490: x0 => x0.done,
_1491: x0 => x0.value,
_1492: x0 => x0.index,
_1496: (x0,x1) => x0.adoptText(x1),
_1497: x0 => x0.first(),
_1499: x0 => x0.next(),
_1500: x0 => x0.current(),
_1512: x0 => x0.hostElement,
_1513: x0 => x0.viewConstraints,
_1515: x0 => x0.maxHeight,
_1516: x0 => x0.maxWidth,
_1517: x0 => x0.minHeight,
_1518: x0 => x0.minWidth,
_1519: x0 => x0.loader,
_1520: () => globalThis._flutter,
_1521: (x0,x1) => x0.didCreateEngineInitializer(x1),
_1522: (x0,x1,x2) => x0.call(x1,x2),
_1523: () => globalThis.Promise,
_1524: f => finalizeWrapper(f,(x0,x1) => dartInstance.exports._1524(f,x0,x1)),
_1529: x0 => x0.length,
_1532: x0 => x0.tracks,
_1536: x0 => x0.image,
_1541: x0 => x0.codedWidth,
_1542: x0 => x0.codedHeight,
_1545: x0 => x0.duration,
_1548: x0 => x0.ready,
_1549: x0 => x0.selectedTrack,
_1550: x0 => x0.repetitionCount,
_1551: x0 => x0.frameCount,
_1602: (x0,x1,x2,x3) => x0.addEventListener(x1,x2,x3),
_1603: (x0,x1,x2) => x0.addEventListener(x1,x2),
_1604: (x0,x1) => x0.createElement(x1),
_1605: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1606: x0 => x0.preventDefault(),
_1607: x0 => x0.preventDefault(),
_1609: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1610: (x0,x1,x2) => x0.setAttribute(x1,x2),
_1611: (x0,x1,x2) => x0.removeEventListener(x1,x2),
_1612: (x0,x1,x2,x3) => x0.removeEventListener(x1,x2,x3),
_1613: f => finalizeWrapper(f,x0 => dartInstance.exports._1613(f,x0)),
_1614: f => finalizeWrapper(f,x0 => dartInstance.exports._1614(f,x0)),
_1615: (x0,x1,x2,x3) => x0.open(x1,x2,x3),
_1636: x0 => new Array(x0),
_1670: (decoder, codeUnits) => decoder.decode(codeUnits),
_1671: () => new TextDecoder("utf-8", {fatal: true}),
_1672: () => new TextDecoder("utf-8", {fatal: false}),
_1673: v => stringToDartString(v.toString()),
_1674: (d, digits) => stringToDartString(d.toFixed(digits)),
_1678: x0 => new WeakRef(x0),
_1679: x0 => x0.deref(),
_1685: Date.now,
_1687: s => new Date(s * 1000).getTimezoneOffset() * 60 ,
_1688: s => {
      const jsSource = stringFromDartString(s);
      if (!/^\s*[+-]?(?:Infinity|NaN|(?:\.\d+|\d+(?:\.\d*)?)(?:[eE][+-]?\d+)?)\s*$/.test(jsSource)) {
        return NaN;
      }
      return parseFloat(jsSource);
    },
_1689: () => {
          let stackString = new Error().stack.toString();
          let frames = stackString.split('\n');
          let drop = 2;
          if (frames[0] === 'Error') {
              drop += 1;
          }
          return frames.slice(drop).join('\n');
        },
_1690: () => typeof dartUseDateNowForTicks !== "undefined",
_1691: () => 1000 * performance.now(),
_1692: () => Date.now(),
_1695: () => new WeakMap(),
_1696: (map, o) => map.get(o),
_1697: (map, o, v) => map.set(o, v),
_1698: () => globalThis.WeakRef,
_1708: s => stringToDartString(JSON.stringify(stringFromDartString(s))),
_1709: s => printToConsole(stringFromDartString(s)),
_1718: (o, t) => o instanceof t,
_1720: f => finalizeWrapper(f,x0 => dartInstance.exports._1720(f,x0)),
_1721: f => finalizeWrapper(f,x0 => dartInstance.exports._1721(f,x0)),
_1722: o => Object.keys(o),
_1723: (ms, c) =>
              setTimeout(() => dartInstance.exports.$invokeCallback(c),ms),
_1724: (handle) => clearTimeout(handle),
_1725: (ms, c) =>
          setInterval(() => dartInstance.exports.$invokeCallback(c), ms),
_1726: (handle) => clearInterval(handle),
_1727: (c) =>
              queueMicrotask(() => dartInstance.exports.$invokeCallback(c)),
_1728: () => Date.now(),
_1760: (a, i) => a.push(i),
_1764: a => a.pop(),
_1765: (a, i) => a.splice(i, 1),
_1767: (a, s) => a.join(s),
_1768: (a, s, e) => a.slice(s, e),
_1771: a => a.length,
_1773: (a, i) => a[i],
_1774: (a, i, v) => a[i] = v,
_1776: a => a.join(''),
_1779: (s, t) => s.split(t),
_1780: s => s.toLowerCase(),
_1781: s => s.toUpperCase(),
_1782: s => s.trim(),
_1783: s => s.trimLeft(),
_1784: s => s.trimRight(),
_1786: (s, p, i) => s.indexOf(p, i),
_1787: (s, p, i) => s.lastIndexOf(p, i),
_1788: (o, offsetInBytes, lengthInBytes) => {
      var dst = new ArrayBuffer(lengthInBytes);
      new Uint8Array(dst).set(new Uint8Array(o, offsetInBytes, lengthInBytes));
      return new DataView(dst);
    },
_1789: (o, start, length) => new Uint8Array(o.buffer, o.byteOffset + start, length),
_1790: (o, start, length) => new Int8Array(o.buffer, o.byteOffset + start, length),
_1791: (o, start, length) => new Uint8ClampedArray(o.buffer, o.byteOffset + start, length),
_1792: (o, start, length) => new Uint16Array(o.buffer, o.byteOffset + start, length),
_1793: (o, start, length) => new Int16Array(o.buffer, o.byteOffset + start, length),
_1794: (o, start, length) => new Uint32Array(o.buffer, o.byteOffset + start, length),
_1795: (o, start, length) => new Int32Array(o.buffer, o.byteOffset + start, length),
_1797: (o, start, length) => new BigInt64Array(o.buffer, o.byteOffset + start, length),
_1798: (o, start, length) => new Float32Array(o.buffer, o.byteOffset + start, length),
_1799: (o, start, length) => new Float64Array(o.buffer, o.byteOffset + start, length),
_1801: Object.is,
_1802: (t, s) => t.set(s),
_1804: (o) => new DataView(o.buffer, o.byteOffset, o.byteLength),
_1806: o => o.buffer,
_1807: o => o.byteOffset,
_1808: Function.prototype.call.bind(Object.getOwnPropertyDescriptor(DataView.prototype, 'byteLength').get),
_1809: (b, o) => new DataView(b, o),
_1810: (b, o, l) => new DataView(b, o, l),
_1811: Function.prototype.call.bind(DataView.prototype.getUint8),
_1812: Function.prototype.call.bind(DataView.prototype.setUint8),
_1813: Function.prototype.call.bind(DataView.prototype.getInt8),
_1814: Function.prototype.call.bind(DataView.prototype.setInt8),
_1815: Function.prototype.call.bind(DataView.prototype.getUint16),
_1816: Function.prototype.call.bind(DataView.prototype.setUint16),
_1817: Function.prototype.call.bind(DataView.prototype.getInt16),
_1818: Function.prototype.call.bind(DataView.prototype.setInt16),
_1819: Function.prototype.call.bind(DataView.prototype.getUint32),
_1820: Function.prototype.call.bind(DataView.prototype.setUint32),
_1821: Function.prototype.call.bind(DataView.prototype.getInt32),
_1822: Function.prototype.call.bind(DataView.prototype.setInt32),
_1825: Function.prototype.call.bind(DataView.prototype.getBigInt64),
_1826: Function.prototype.call.bind(DataView.prototype.setBigInt64),
_1827: Function.prototype.call.bind(DataView.prototype.getFloat32),
_1828: Function.prototype.call.bind(DataView.prototype.setFloat32),
_1829: Function.prototype.call.bind(DataView.prototype.getFloat64),
_1830: Function.prototype.call.bind(DataView.prototype.setFloat64),
_1836: s => stringToDartString(stringFromDartString(s).toUpperCase()),
_1837: s => stringToDartString(stringFromDartString(s).toLowerCase()),
_1839: (s, m) => {
          try {
            return new RegExp(s, m);
          } catch (e) {
            return String(e);
          }
        },
_1840: (x0,x1) => x0.exec(x1),
_1841: (x0,x1) => x0.test(x1),
_1842: (x0,x1) => x0.exec(x1),
_1843: (x0,x1) => x0.exec(x1),
_1844: x0 => x0.pop(),
_1848: (x0,x1,x2) => x0[x1] = x2,
_1850: o => o === undefined,
_1851: o => typeof o === 'boolean',
_1852: o => typeof o === 'number',
_1854: o => typeof o === 'string',
_1857: o => o instanceof Int8Array,
_1858: o => o instanceof Uint8Array,
_1859: o => o instanceof Uint8ClampedArray,
_1860: o => o instanceof Int16Array,
_1861: o => o instanceof Uint16Array,
_1862: o => o instanceof Int32Array,
_1863: o => o instanceof Uint32Array,
_1864: o => o instanceof Float32Array,
_1865: o => o instanceof Float64Array,
_1866: o => o instanceof ArrayBuffer,
_1867: o => o instanceof DataView,
_1868: o => o instanceof Array,
_1869: o => typeof o === 'function' && o[jsWrappedDartFunctionSymbol] === true,
_1871: o => {
            const proto = Object.getPrototypeOf(o);
            return proto === Object.prototype || proto === null;
          },
_1872: o => o instanceof RegExp,
_1873: (l, r) => l === r,
_1874: o => o,
_1875: o => o,
_1876: o => o,
_1877: b => !!b,
_1878: o => o.length,
_1881: (o, i) => o[i],
_1882: f => f.dartFunction,
_1883: l => arrayFromDartList(Int8Array, l),
_1884: l => arrayFromDartList(Uint8Array, l),
_1885: l => arrayFromDartList(Uint8ClampedArray, l),
_1886: l => arrayFromDartList(Int16Array, l),
_1887: l => arrayFromDartList(Uint16Array, l),
_1888: l => arrayFromDartList(Int32Array, l),
_1889: l => arrayFromDartList(Uint32Array, l),
_1890: l => arrayFromDartList(Float32Array, l),
_1891: l => arrayFromDartList(Float64Array, l),
_1892: (data, length) => {
          const view = new DataView(new ArrayBuffer(length));
          for (let i = 0; i < length; i++) {
              view.setUint8(i, dartInstance.exports.$byteDataGetUint8(data, i));
          }
          return view;
        },
_1893: l => arrayFromDartList(Array, l),
_1894: stringFromDartString,
_1895: stringToDartString,
_1896: () => ({}),
_1897: () => [],
_1898: l => new Array(l),
_1899: () => globalThis,
_1900: (constructor, args) => {
      const factoryFunction = constructor.bind.apply(
          constructor, [null, ...args]);
      return new factoryFunction();
    },
_1901: (o, p) => p in o,
_1902: (o, p) => o[p],
_1903: (o, p, v) => o[p] = v,
_1904: (o, m, a) => o[m].apply(o, a),
_1906: o => String(o),
_1907: (p, s, f) => p.then(s, f),
_1908: s => {
      let jsString = stringFromDartString(s);
      if (/[[\]{}()*+?.\\^$|]/.test(jsString)) {
          jsString = jsString.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
      }
      return stringToDartString(jsString);
    },
_1911: x0 => x0.index,
_1912: x0 => x0.groups,
_1913: x0 => x0.length,
_1915: (x0,x1) => x0[x1],
_1919: x0 => x0.flags,
_1920: x0 => x0.multiline,
_1921: x0 => x0.ignoreCase,
_1922: x0 => x0.unicode,
_1923: x0 => x0.dotAll,
_1924: (x0,x1) => x0.lastIndex = x1,
_1925: (o, p) => p in o,
_1926: (o, p) => o[p],
_1927: (o, p, v) => o[p] = v,
_2090: x0 => x0.style,
_3769: () => globalThis.window,
_3849: x0 => x0.navigator,
_4330: x0 => x0.userAgent,
_8605: x0 => x0.target,
_8734: x0 => x0.lastChild,
_8744: () => globalThis.document,
_9199: x0 => x0.tagName,
_9208: x0 => x0.shadowRoot,
_12292: (x0,x1) => x0.cursor = x1,
_12302: (x0,x1) => x0.display = x1,
_12464: (x0,x1) => x0.height = x1,
_12678: (x0,x1) => x0.opacity = x1,
_13152: (x0,x1) => x0.width = x1
    };

    const baseImports = {
        dart2wasm: dart2wasm,


        Math: Math,
        Date: Date,
        Object: Object,
        Array: Array,
        Reflect: Reflect,
    };

    const jsStringPolyfill = {
        "charCodeAt": (s, i) => s.charCodeAt(i),
        "compare": (s1, s2) => {
            if (s1 < s2) return -1;
            if (s1 > s2) return 1;
            return 0;
        },
        "concat": (s1, s2) => s1 + s2,
        "equals": (s1, s2) => s1 === s2,
        "fromCharCode": (i) => String.fromCharCode(i),
        "length": (s) => s.length,
        "substring": (s, a, b) => s.substring(a, b),
    };

    dartInstance = await WebAssembly.instantiate(await modulePromise, {
        ...baseImports,
        ...(await importObjectPromise),
        "wasm:js-string": jsStringPolyfill,
    });

    return dartInstance;
}

// Call the main function for the instantiated module
// `moduleInstance` is the instantiated dart2wasm module
// `args` are any arguments that should be passed into the main function.
export const invoke = (moduleInstance, ...args) => {
    const dartMain = moduleInstance.exports.$getMain();
    const dartArgs = buildArgsList(args);
    moduleInstance.exports.$invokeMain(dartMain, dartArgs);
}

