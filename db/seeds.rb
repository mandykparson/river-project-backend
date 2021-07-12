Comment.destroy_all
PointOfInterest.destroy_all
Image.destroy_all
RiverStretch.destroy_all

riverstretches = RiverStretch.create([
    {name: "Cataract Canyon", river: "Colorado" , miles: "10-54", permit: true , permit_link: "recreation.gov", put_in: "Potash Road"},
    {name: "Upper San Juan River", river: "San Juan", miles: "32-90", permit: true, permit_link: "reacreation.gov", put_in: "Sand Island" },
    {name: "Moab Daily" , river: "Colorado" , miles: "64-120", permit: false, permit_link: "", put_in: "Hittle Bottom"},
    {name: "Middle Fork", river: "Salmon" , miles: "44-97", permit: true, permit_link: "recreation.gov", put_in: "wherever" },
    {name: "Brown's Canyon", river: "Arkansas", miles: "1-45" , permit: false, permit_link: "recreation.gov", put_in: "Fisherman's Bridge"}
])
