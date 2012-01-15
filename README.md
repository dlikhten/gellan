# About

This project is just about having a very simple api for rendering static
maps. I hope to also get dynamic map rendering here as well, the idea is
not to make fully-interactive maps but a simple way to render maps with
markers.

The eventual goal of this project is to have one api for rendering
simple static and dynamic maps, and eventually even directions + maps.

# Out-of-scope

I am intentionally not including geocoding into this project. There are
already many great geocoders in ruby, like geokit/geokid-rails which
handle cross-geocoder apis and geocoder fail-overs.

# Usage

Just include this gem. This is not specific to rails. It should just
work.

To use:

    mapper = Gellan.mapper # get the default mapper
    mapper.zoom = 13 # set the zoom level, can be left nil
    mapper.add(lat, lng, :color => 'blue', :label => 'Junkyard')
    # render a static map 300px by 300px
    mapper.render(:static, 300, 300)

To get a different type of mapper 
    
    mapper = Gellan.get_mapper(:bing) # not yet integrated

To render a different map type
    
    mapper.render(:interactive) # not yet intergrated



