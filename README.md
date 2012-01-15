# About

This project is just about having a very simple api for rendering static
maps. I hope to also get dynamic map rendering here as well, the idea is
not to make fully-interactive maps but a simple way to render maps with
markers.

# Usage

Just include this gem. This is not specific to rails. It should just
work.

To use:

    mapper = Gellan.mapper # get the default mapper
    mapper.zoom = 13 # set the zoom level
    mapper.add(lat, lng, :color => 'blue', :label => 'Junkyard')
    # render a static map 300pxx300px
    mapper.render(:static, 300, 300)

To get a different type of mapper 
    
    mapper = Gellan.get_mapper(:bing) # not yet integrated

To render a different map type
    
    mapper.render(:interactive) # not yet intergrated



