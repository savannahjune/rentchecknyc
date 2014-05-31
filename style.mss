/* Map of NYC for RentCheck.Me Emphasizes neighorhoods and streets.*/

//fonts

@futura_med: "Futura Medium","Function Pro Medium","Ubuntu Regular","Trebuchet MS Regular","DejaVu Sans Book";
@futura_italic: "Futura Medium Italic","Function Pro Medium Italic","Ubuntu Italic","Trebuchet MS Italic","DejaVu Sans Oblique";
@futura_bold: "Futura Bold","Function Pro Bold","Ubuntu Bold";

//Colors for map

@water: #b8dee6;
@land:  #f7f7d9;
@building_outline: #c4c2c2;
@building_fill:#dadada;
  
@parks: #8dbd75;     
  
//Roadway colors and opacity

@motorway_line:     #ce5041;    
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #E68A5C;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #f9d983;  
@primary_fill:      lighten(@primary_line,10%);
@primary_case:      @primary_line * 0.9;

@secondary_line:    #FFE873; 
@secondary_fill:    lighten(@secondary_line,10%);
@secondary_case:    @secondary_line * 0.9;
  
@standard_line:     @land * 0.85;
@standard_fill:     #fff;
@standard_case:     @land * 0.9;
    
@pedestrian_line:   @standard_line;
@pedestrian_fill:   #FAFAF5;
@pedestrian_case:   @land;

@cycle_line:        @standard_line;
@cycle_case:        @land;

@rail_line:         #999; 
@rail_fill:         #fff;
@rail_case:         @land;
 
//Texture of water
Map { 
  background-image: url(dotslight.png);
}
 
//Shape of states surrounding NYC
#states {
  polygon-opacity:1;
  polygon-fill:@land;
}

//If these layer is moved on top of map it will show more rivers going
//north of the city
#water {
    polygon-pattern-file: url(dotslight.png);
}

//Colors of building lines and fill. Fill is commmented out as requested
#buildings { 
  [zoom > 14] {
  polygon-opacity:1;
  polygon-fill:@building_fill;
  line-color:@building_outline;
  line-width:0.5;
}
  [zoom > 16] {
  line-color:@building_outline;
  line-width:1.75;
  }
}

//Color and opacity of parks on map.

#parks {
  polygon-opacity:0.75;
  polygon-fill:@parks;
}


//Road sizing, when roads appear at which zoom levels and colors 
//as determined at top of the style sheet
#roads [zoom>=12] {
  [type='motorway'] {
   line-color: @primary_line;
   line-width: 2.5;
  }
  [type='motorway_link'] {
    line-color: @primary_line;
    line-width: 2.5;}
      
  [type='trunk'] {
    line-color: @primary_line;
    line-width: 1.5;
  }
  [type='trunk_link'] {
    line-color: @primary_line;
    line-width: 1.5;
  }
   [type='primary'] { 
    line-color: @primary_line; 
    line-width: 1.5; }
}

#roads [zoom>=13]
{
    [type='secondary'] { line-color: @primary_line; line-width: 2}
    [type='tertiary'] { line-color: @primary_line; line-width: 2 }
    [type="residential"],
    [type="unclassified"],
    [type="service"],
    [type="secondary_link"],
    [type="tertiary_link"],
    [type="living_street"]
    {
    line-color: @primary_line; line-width: 2;
    }
}

#roads[zoom>13]
{
    [type="cycleway"],
    [type="footway"],
    [type="unsurfaced"],
    [type="track"]    
    {
    	line-color: @primary_line; line-width: 1;
    }
}
