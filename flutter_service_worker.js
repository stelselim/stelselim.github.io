'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "426313f2f3133c2f20415344c4a22df3",
"index.html": "73cf18222deb394ac6d0992cd88f1d83",
"/": "73cf18222deb394ac6d0992cd88f1d83",
"main.dart.js": "6311cfd4f62667bd0eb73636cf89eaaa",
"favicon.png": "d0880d3165226cf6af887a28501e298c",
"icons/Icon-192.png": "159e14d62de3101ae01abbe1057fcace",
"icons/Icon-512.png": "e25cf8ffba387a523089b581171d80e6",
"manifest.json": "a83bbbd9d23ea4d752fbcd44cdc544fa",
"cv/cv.pdf": "a3392f48402313a026f4c39cf19636fd",
"assets/AssetManifest.json": "e9274f6aaf62f9db517c5e13247d5f49",
"assets/NOTICES": "f5a00610fefb0289ad8642f72f655050",
"assets/FontManifest.json": "3ddd9b2ab1c2ae162d46e3cc7b78ba88",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/myself/githubPage.png": "1db90af22c81e95163012567d9e4a919",
"assets/assets/myself/desktop.png": "5d41fdf57e916e1e617d2d38ecc21990",
"assets/assets/myself/githubSmall.png": "8e885d1cf7242fe9f730cfeda72b918c",
"assets/assets/myself/profile.jpg": "d60e30ba57f5ff00efcd1cfc53477517",
"assets/assets/myself/desktopSmall.png": "0e124eb62ff1c7b68c7d3bd5d7a599d9",
"assets/assets/projects/changescenario/4.png": "4597efbfddee63000e443984859a13f0",
"assets/assets/projects/changescenario/5.png": "75438bdedf530664ad2a5bd3fd09724e",
"assets/assets/projects/changescenario/2.png": "c674d9404c84a0c34fedb0f91d0222b5",
"assets/assets/projects/changescenario/3.png": "86252a4a0020d2569e858bd7e7f15fb5",
"assets/assets/projects/changescenario/1.png": "8ab6c01ca0f8e369ceca320871964d82",
"assets/assets/projects/panda/4.jpeg": "67974e7e6438dda63540aee7145dcaf8",
"assets/assets/projects/panda/2.jpeg": "1e7c8bf3081a9d7516609057e8d1ce83",
"assets/assets/projects/panda/1.png": "053d835b6e2ccaa9f6ca6c5dd397ca8b",
"assets/assets/projects/panda/3.jpeg": "76a2c41c03f58b8777c13c419bd0f85b",
"assets/assets/projects/pomodorolite/2.png": "860ce8caa7485ce385d266fe34d835e9",
"assets/assets/projects/pomodorolite/3.png": "493d8e78803293cefaa747a8e2ea3d3c",
"assets/assets/projects/pomodorolite/1.png": "08152ae1148b8737977c12a456dab62e",
"assets/assets/projects/raf/1.jpeg": "06c3fa6e03d58608679b427a822ed057",
"assets/assets/projects/raf/4.jpeg": "1d3e76406676b87f692aeb7ee8f045d4",
"assets/assets/projects/raf/5.jpeg": "e6217695b6065ee9d47d71a12bb938f4",
"assets/assets/projects/raf/2.jpeg": "66204b57afb95495d2a1214a2f5cf085",
"assets/assets/projects/raf/3.jpeg": "f5bc46351c8b28fada31bfa3e093e7f2",
"assets/assets/projects/minimalistPdf/2.png": "ab1d852e556c6f9ff02f8082008f2180",
"assets/assets/projects/minimalistPdf/3.png": "d307c00dcf4a5af8dc563f1ee86f9bd9",
"assets/assets/projects/minimalistPdf/1.png": "134f25e018dd0455e64275b9b730dc1d",
"assets/assets/projects/ControlAlgorithms/4.png": "50e86b3cfa4cb30f4701a49aeeb632fd",
"assets/assets/projects/ControlAlgorithms/5.png": "0485eae9cd2b5d9706c6dcc3098a4bc9",
"assets/assets/projects/ControlAlgorithms/2.png": "88220f2c30f6387bbf8278d08ae8053c",
"assets/assets/projects/ControlAlgorithms/3.png": "bf69170576ba62f375e5cded556f91c0",
"assets/assets/projects/ControlAlgorithms/1.png": "8d3f8ad9bbaed8a0f23342875f4fe12d",
"assets/assets/projects/countToGoal/1.jpeg": "ff12c90ffff6ed2e017cd4aaef76eabd",
"assets/assets/projects/countToGoal/2.jpeg": "09e67a0d69ee28d150e9ca727fc3b72a",
"assets/assets/projects/countToGoal/3.jpeg": "4fe8b71688276b5f8fa2fa809095a561",
"assets/assets/projects/phone.png": "fdfae0f7cfe60e530633f5f020234075",
"assets/assets/projects/videosaver/2.png": "962b05643a0d20962f7daa5c36386078",
"assets/assets/projects/videosaver/1.png": "fd6d813a92458905d473ce216f8dc470",
"assets/assets/projects/diyetin/1.jpeg": "30f6f6d24dd5b3e5173718e22a6995de",
"assets/assets/projects/diyetin/6.jpeg": "97cc97e181474a26a27551980b41bb5c",
"assets/assets/projects/diyetin/7.jpeg": "4eedb06913b979ef1cd6162ba6b9cf20",
"assets/assets/projects/diyetin/8.jpeg": "fc204af4d8c0500558485167d7e52190",
"assets/assets/projects/diyetin/4.jpeg": "625a6284d6a8c5f30a43a439669476af",
"assets/assets/projects/diyetin/5.jpeg": "fc780d8c9b4ce80db4110963f0b77f00",
"assets/assets/projects/diyetin/2.jpeg": "1e8e41b10ed24342536337e6723685a1",
"assets/assets/projects/diyetin/3.jpeg": "68be1be660c0092595d950f4990bdda5"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
