'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "f17a293d422e2c0b3a04962e68236cc2",
"canvaskit/canvaskit.wasm": "afe4e31e8f3adb944a0883a694706404",
"canvaskit/canvaskit.js.symbols": "b85fedc601db924025e7936d851e7e7e",
"canvaskit/skwasm.js.symbols": "c6f605aa7f865f54f11010319bec4307",
"canvaskit/skwasm.wasm": "cae92e9f0585c2ecccb9fae9062349f8",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/chromium/canvaskit.wasm": "938f6103658d67ab8971f6225502b8af",
"canvaskit/chromium/canvaskit.js.symbols": "9f2dfa8c181a437290aa2b58e55da15d",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"main.dart.wasm": "78f90048aaf68112da744f676b1bf608",
"flutter_bootstrap.js": "59ca313cf2a08ca5a1ef4ffef53f29a5",
"version.json": "97a4eb23434b364e6755e56a665bb588",
"ogp.png": "f3b0d658491711d999577906360e731b",
"index.html": "b84c469047eb63b212090d00db673826",
"/": "b84c469047eb63b212090d00db673826",
"main.dart.mjs": "0792d358475d2699ecc459293407f475",
"main.dart.js": "2652e15ac25fdcf4ed3cf90732fa57c2",
"assets/AssetManifest.json": "0d683dc52f4ecee164f5b9bb3d9bdc3d",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "dc0022d2c9885da3fe0c4584ee4845bb",
"assets/fonts/MaterialIcons-Regular.otf": "d34759c02a2db624520f4810950cb7d8",
"assets/assets/images/icon.webp": "de56943cb9ae0250ae34f5f48ac6cb2b",
"assets/assets/images/dash.webp": "051816d487067d5c8e73068313d89db2",
"assets/assets/fonts/Poppins/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins/OFL.txt": "17293189e4ca3f79c0bcca524d41ba52",
"assets/assets/fonts/Poppins/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/NotoSansJP/NotoSansJP-Bold.otf": "080526524381a9d25bd47c5ca085de0f",
"assets/assets/fonts/NotoSansJP/NotoSansJP-Regular.otf": "9c2cc6fe1f598328c265633e0464b4ca",
"assets/assets/fonts/NotoSansJP/NotoSansJP-Medium.otf": "f9a2e2cb6e93aa8ec452ad48c0954e4b",
"assets/assets/fonts/NotoSansJP/OFL.txt": "6c7802e99b3d76592e59e8d703e5c0f0",
"assets/assets/svg/bg_bottom.svg": "855aad791299931fcc04027e18ec5e09",
"assets/assets/svg/bg_top.svg": "41f844c3d6f10f38ecd6dbbafe9896e6",
"assets/assets/svg/flutter_icon.svg": "6ad10f687d4224a1bb29b6484d45f96a",
"assets/assets/svg/products/github.svg": "6792afa85dd5d9650e877d7bff9dc813",
"assets/assets/svg/products/x.svg": "2a7a1f5a3934a9245f4b18d53765646d",
"assets/assets/svg/products/discord.svg": "9dddb6280f60243145fa1c5c61cd3b6c",
"assets/assets/svg/products/medium.svg": "330c8b4fa9889e9677d92a408504c0fc",
"assets/assets/svg/bg_footer.svg": "4633f92a146f097b350615e583c1f2c5",
"assets/NOTICES": "79322cd62651d54b0898862138f5e19e",
"assets/AssetManifest.bin": "ce953d1befa2ac810259412b099bed99",
"assets/FontManifest.json": "ad5acd13cb05f7f43be3a5e808adc306",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"main.dart.wasm",
"main.dart.mjs",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
