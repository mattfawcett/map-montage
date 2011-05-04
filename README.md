Map Montage
===========

Download a set of Google map tiles and then use the ImageMagick montage utility to merge them into 1 big image

Dependencies
------------
* `curl` to be in your path
* `montage` to be in your path (path of ImageMagick)

Instructions
------------
* Clone the git repo
* Create a tiles folder
* Edit create_tiles.rb to change the x and y ranges and zoom level.
* Run the scipt. A file called finished-map.jpg will be created

Issues
------
* Sometimes montage hangs, rerunning usually fixes
* If the map doesn't look how it should, it's likely you have a corrupt tile which has thrown the montage out. Redownload the offending tile.
