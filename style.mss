
@water: #b8dee6;
@land: #fafaf0;
@building_outline: #757575;
@building_fill:#dadada;

@parks: #8dbd75;

@motorway_line:     #5949A3;
//#E65C5C; 
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #E68A5C;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #F8BD14;
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

@futura_med: "Futura Medium","Function Pro Medium","Ubuntu Regular","Trebuchet MS Regular","DejaVu Sans Book";
@futura_italic: "Futura Medium Italic","Function Pro Medium Italic","Ubuntu Italic","Trebuchet MS Italic","DejaVu Sans Oblique";
@futura_bold: "Futura Bold","Function Pro Bold","Ubuntu Bold","Trebuchet MS Bold","DejaVu Sans Bold";

@avenir: "avenir_roman",Arial,sans-serif;

 
Map {
  background-image: url(obstruction2.png);
}


#states {
  polygon-opacity:1;
  polygon-fill:@land;
}

#ocean {
  polygon-opacity:1;
  polygon-pattern-file:url(watertexter.svg);
}

#coastlines {
  polygon-opacity:1;
  polygon-fill:@land;
}


#buildings { 
  [zoom > 14] {
  polygon-opacity:1;
  polygon-fill:@building_fill;
  line-color:@building_outline;
  line-width:0.5;
}
  [zoom > 16] {
  line-color:@building_outline;
  line-width:0.75;
  }
}

#parks {
  polygon-opacity:0.75;
  polygon-fill:@parks;
}

#roads [zoom>=9] 
{
  [type='motorway'] {
   line-color: @motorway_line;
  }
  [type='motorway_link'] {
    line-color: @motorway_line;
  }
  [type='trunk'] {
    line-color: @trunk_line;
  }
  [type='trunk_link'] {
    line-color: @trunk_line;
  }
  [type='primary'] { line-color: @primary_line; line-width: 2.5; }
  [type='secondary'] { line-color: @secondary_line; line-width: 2}
  [type='tertiary'] { line-color: @standard_line; line-width: 1 }
}

#roads [zoom>=13]
{
  [type="residential"],
    [type="unclassified"],
    [type="service"],
    [type="secondary_link"],
    [type="tertiary_link"],
    [type="living_street"]
    {
    line-color: @standard_line; line-width: 1;
    }
}

#roads[zoom>14]
{
    [type="cycleway"],
    [type="footway"],
    [type="unsurfaced"],
    [type="track"]    
    {
    	line-color: @standard_line; line-width: 1;
    }
}

#boronames  [zoom < 14] {
    text-name:"[BoroName]";
    text-face-name:@futura_med;
    text-character-spacing:2;
    text-transform:uppercase;
    text-size:25;
	text-fill:black;
  	text-halo-fill:rgba(255,255,255,0.5);
  	text-halo-radius: 2;
}



#neighborhoods [zoom > 12] {
  text-name:'[Name]';
  text-face-name:@futura_med;
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:8;
  text-fill:black;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
}

#neighborhoods  [zoom > 14] {
  text-name:'[Name]';
  text-face-name:@futura_bold;
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:10;
  text-fill:black;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
}
