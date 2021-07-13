# Comment.destroy_all
Poi.destroy_all
Image.destroy_all
RiverStretch.destroy_all

riverstretches = RiverStretch.create([
    {name: "Cataract Canyon", river: "Colorado" , miles: "40", permit: true , permit_link: "recreation.gov", put_in: "Potash Road"},
    {name: "Upper San Juan River", river: "San Juan", miles: "150", permit: true, permit_link: "reacreation.gov", put_in: "Sand Island" },
    {name: "Moab Daily" , river: "Colorado" , miles: "15", permit: false, permit_link: "", put_in: "Hittle Bottom"},
    {name: "Middle Fork", river: "Salmon" , miles: "44-97", permit: true, permit_link: "recreation.gov", put_in: "wherever" },
    {name: "Brown's Canyon", river: "Arkansas", miles: "74" , permit: false, permit_link: "recreation.gov", put_in: "Fisherman's Bridge"}
])

cataract_images = Image.create([
    {source: "https://i.imgur.com/oT9TLZG.png", alt_text:"cataract_one", river_stretch: riverstretches[0], caption: "first leg of cataract canyon"},
    {source: "https://i.imgur.com/ewqqMKH.png", alt_text:"cataract_two", river_stretch: riverstretches[0], caption: "second leg of cataract canyon"},
    {source: "https://i.imgur.com/mMykfTg.png", alt_text:"cataract_three", river_stretch: riverstretches[0], caption: "third leg of cataract canyon"},
    {source: "https://i.imgur.com/R53070J.png", alt_text:"cataract_four", river_stretch: riverstretches[0], caption: "fourth leg of cataract canyon"}
])

cataract_pois = Poi.create([
    {icon: "here.com", information: "Class II rapid", coords: "0,0,8,9,7", image: cataract_images[0]},
    {icon: "here.com", information: "DaisyField Campsite", coords: "0,0,8,9,7", image: cataract_images[0]},
    {icon: "here.com", information: "Petroglyphs", coords: "0,0,8,9,7", image: cataract_images[0]}
])