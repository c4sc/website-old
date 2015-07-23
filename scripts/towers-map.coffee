---
---
map = L.map 'map'
        .setView [11.684688, 76.254516], 10

towerIcon = L.icon
                iconUrl: '/scripts/images/radio-wireless-tower.png'

                iconSize: [64, 64]
                iconAnchor: [32, 32]
                popupAnchor: [-5, -32]

apIcon = L.icon
            iconUrl: '/scripts/images/wireless-ap.png'

            iconSize: [32, 32]
            iconAnchor: [16, 16]
            popupAnchor: [-5, -32]

L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map)

for item in window.Towers
    if item[3].toLowerCase().trim() == "backbone"
        L.marker [item[1], item[2]], { icon: towerIcon }
            .addTo map
            .bindPopup item[0]
    else
        L.marker [item[1], item[2]], { icon: apIcon }
            .addTo map
            .bindPopup item[0]
