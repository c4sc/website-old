---
---
map = L.map 'map'
        .setView [11.664688, 76.254516], 15


L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map)

L.marker [11.667802, 76.251136]
    .addTo map
