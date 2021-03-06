document.addEventListener("turbolinks:load", function() {
  const mapDiv = document.querySelectorAll("[data-component=map]")[0];

  if(mapDiv && mapDiv.hasChildNodes())
    return

  try {
    renderGoogleMaps()
  } catch (error) {
    // NOTE: Catching the error just to avoid noise in console. We are aware that it always fails
    //       in first load because google-package loads async.
  }
});
