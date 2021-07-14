# Comment.destroy_all
Poi.destroy_all
Image.destroy_all
RiverStretch.destroy_all

riverstretches = RiverStretch.create([
    {name: "Cataract Canyon", river: "Colorado" , miles: 40, img: "https://i.imgur.com/5EeQWhS.png", permit: true , permit_link: "recreation.gov", put_in: "Potash Road", information: "Cataract Canyon's rapids rank along with those of the Grand Canyon in power and difficult, and they can become truly awe-inspiring during high water in May and June. Cataract contains class IV rapids an dpossibly class V at some water levels.Rapids 21, 22, and 23 comprise The Big Drop, with a fall of 30 feet in less than a mile-one of the Colorado's steepest stretches. In September 1921 Unit States Geological Survey engineer Will R. Chenoweth surveyed and mapped the Colorado River through Cataract Canyon, numbered each rapid, and measured its fall. Since his rapid numbers have been widely accepted for more than 70 years, they are used in this book.To traverse Cataract Canyon within Canyonlands National Park you must either go with an authorized guide or obtain your own permit. For permit and fee information for Cataract Canyon (this includes the stretch between Potash and Hite on the Colorado and Mineral Bottom and Hit on the Green) contact: National Park Service River Offic in Moab at 435-719-2313 and see complete information about permits, fees, outfitters, shuttles, FAQs online."},
    {name: "Upper San Juan River", river: "San Juan", miles: 150, img: "https://i.imgur.com/eYvxW16.png", permit: true, permit_link: "reacreation.gov", put_in: "Sand Island" },
    {name: "Moab Daily" , river: "Colorado" , miles: 15, img: "https://i.imgur.com/RO5oY9L.png", permit: false, permit_link: "", put_in: "Hittle Bottom"},
    {name: "Middle Fork", river: "Salmon" , miles: 95, img: "https://i.imgur.com/puIyUy2.png", permit: true, permit_link: "recreation.gov", put_in: "wherever" },
    {name: "Brown's Canyon", river: "Arkansas", miles: 74, img: "https://i.imgur.com/MwPPFTU.png", permit: false, permit_link: "recreation.gov", put_in: "Fisherman's Bridge"}
])

cataract_images = Image.create([
    {source: "https://i.imgur.com/oT9TLZG.png", alt_text:"cataract_one", river_stretch: riverstretches[0], caption: "first leg of cataract canyon"},
    {source: "https://i.imgur.com/ewqqMKH.png", alt_text:"cataract_two", river_stretch: riverstretches[0], caption: "second leg of cataract canyon"},
    {source: "https://i.imgur.com/mMykfTg.png", alt_text:"cataract_three", river_stretch: riverstretches[0], caption: "third leg of cataract canyon"},
    {source: "https://i.imgur.com/R53070J.png", alt_text:"cataract_four", river_stretch: riverstretches[0], caption: "fourth leg of cataract canyon"}
])

cataract_pois = Poi.create([
    {icon: "water", information: "Class II rapid", coords: "0,0,8,9,7", image: cataract_images[0]},
    {icon: "details", information: "DaisyField Campsite", coords: "0,0,8,9,7", image: cataract_images[0]},
    {icon: "adjust", information: "Petroglyphs", coords: "0,0,8,9,7", image: cataract_images[0]}
])

# <span class="material-icons">
# adjust
# </span>