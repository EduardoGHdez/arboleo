class MagicLocationFiller {
  constructor() {
    this.componentContainers = this.getContainers();
  }

  load() {
    this.componentContainers.forEach((container) => {
      container.onclick = this.fillLocationFields;
    });
  }

  unload() {
    this.componentContainers.forEach((container) => {
      container.onclick = () => {};
    });
  }

  getContainers() {
    return document.querySelectorAll("[data-component=magic-location-fill]");
  }

  fillLocationFields(event) {
    event.target.classList.add("disabled");

    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition((position) => {
        const latitudeField = document.getElementById("plant_record_latitude");
        const longitudeField = document.getElementById("plant_record_longitude");

        latitudeField.value = position.coords.latitude;
        longitudeField.value = position.coords.longitude;

        event.target.classList.remove("disabled");
      });
    } else {
      x.innerHTML = "Geolocation is not supported by this browser.";
    }
  }
}

document.addEventListener("turbolinks:load", function() {
  new MagicLocationFiller().load();
});

document.addEventListener("before-cache", function() {
  MagicLocationFiller.unload();
});
