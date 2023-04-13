    var cruises=[
                ['South Pacific', -30.0, -125.0, 1,'./AfficheOcean.php?id_area="6"','./IMG/SP.png'],
                ['North Pacific',15.0, -145.0, 2,'./AfficheOcean.php?id_area="7"','./IMG/NP.png'],
                ['Mediterranean Sea', 36.0,5.,3,'./AfficheOcean.php?id_area="1"','./IMG/MED.png'],
                ['North Atlantic', 25.,-45.,4,'./AfficheOcean.php?id_area="3"','./IMG/NA.png'],
		['Black Sea',42 ,30,5,'./AfficheOcean.php?id_area="2"','./IMG/Black.png'],
		['Indian Ocean',-10 ,75,6,'./AfficheOcean.php?id_area="8"','./IMG/Indian.png'],
		['South Atlantic',-25.,-15.,7,'./AfficheOcean.php?id_area="4"','./IMG/SA.png'],
		['Southern Ocean',-60.,-5.,8,'./AfficheOcean.php?id_area="5"','./IMG/Southern.png']
                ];


    /*declaration de map*/
    var map;    
    map = new OpenLayers.Map("mapdiv");
 

   var ol_wms=new OpenLayers.Layer.WMS( "OpenLayers WMS",
                    "http://vmap0.tiles.osgeo.org/wms/vmap0?", {layers: 'basic'} );



    var vectorLayer = new OpenLayers.Layer.Vector("Overlay",{
    eventListeners:{
        'featureselected':function(evt){
            var feature = evt.feature;
            var popup = new OpenLayers.Popup.FramedCloud("popup",
                OpenLayers.LonLat.fromString(feature.geometry.toShortString()),
                null,
                '<div style="color:#7391ad; font-family:Fantasy; font-size=10;font-weight:bold;" >'+feature.attributes.description+',</div>',
                null,
                false,
                null
            );
            popup.autoSize = true;
            popup.maxSize = new OpenLayers.Size(400,800);
            popup.fixedRelativePosition = true;
            feature.popup = popup;
            map.addPopup(popup);
        },
        'featureunselected':function(evt){
            var feature = evt.feature;
            map.removePopup(feature.popup);
            feature.popup.destroy();
            feature.popup = null;
        },
		'featureclick':function(evt){
			var feature=evt.feature;
			window.open(feature.attributes.weblink);
		}
    }
}); // on definit une couche de vecteurs  
    
    // The array of markers was define     
    //Loop through the markers array
    for (var i=0; i<cruises.length; i++) {
      
       var lon = cruises[i][2];
       var lat = cruises[i][1];
       var name_cruises = cruises[i][0];
       var link = cruises[i][4];
	   var pi=cruises[i][5];
	var png=cruises[i][5];
       var id = cruises[i][3];
       
       feature = new OpenLayers.Feature.Vector(
                new OpenLayers.Geometry.Point( lon, lat ).transform(new OpenLayers.Projection("EPSG:4326"), map.getProjectionObject()),attributes={description: name_cruises, weblink:link} ,
                {externalGraphic: png, graphicHeight: 35, graphicWidth: 71, graphicXOffset:-12, graphicYOffset:-25  }
            );   // on definit les features

          
        vectorLayer.addFeatures(feature); // on ajoute les feature au vectorLayer
    }  

	//Step 3 - create the selectFeature control
	var selector = new OpenLayers.Control.SelectFeature(vectorLayer,{
    	hover:true,
    	autoActivate:true,
		clickout:true
	});    
                  
    map.addControl(selector);
    map.addLayers([ol_wms,vectorLayer]); // on ajoute la couche de vectors (avec le addLayers ca ne marche plus)
    
    map.zoomToMaxExtent(); /*sinon ca se barre*/ 

