
@water: #b8dee6;
@land: #fafaf0;
@building_outline: #757575;
@building_fill:#dadada;
  
@parks: #8dbd75;   
  
@motorway_line:     #ce5041;    
//#E65C5C; 
@motorway_fill:     lighten(@motorway_line,10%);
@motorway_case:     @motorway_line * 0.9;

@trunk_line:        #E68A5C;
@trunk_fill:        lighten(@trunk_line,10%);
@trunk_case:        @trunk_line * 0.9;

@primary_line:      #ffb900;
//#FFB000   
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
  background-image: url(whoooooooaaahh-dark.png);
  //background-color:@water; 
}
 

#states {
  polygon-opacity:1;
  polygon-fill:@land;
}

#coastlines {
  polygon-opacity:1;
  polygon-fill:@land;
}


#buildings { 
  [zoom > 14] {
 // polygon-opacity:1;
 // polygon-fill:@building_fill;
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

#roads [zoom>=12] {
  [type='motorway'] {
   line-color: @primary_line;
   line-width: 3;
  }
  [type='motorway_link'] {
    line-color: @primary_line;
    line-width: 3;}
      
  [type='trunk'] {
    line-color: @primary_line;
    line-width: 2.5;
  }
  [type='trunk_link'] {
    line-color: @primary_line;
    line-width: 2.5;
  }
   [type='primary'] { 
    line-color: @primary_line; 
    line-width: 2.5; }
}

#roads [zoom>=14]
{
    [type='secondary'] { line-color: @primary_line; line-width: 2}
    [type='tertiary'] { line-color: @primary_line; line-width: 1 }
    [type="residential"],
    [type="unclassified"],
    [type="service"],
    [type="secondary_link"],
    [type="tertiary_link"],
    [type="living_street"]
    {
    line-color: @primary_line; line-width: 1;
    }
}

#roads[zoom>14]
{
    [type="cycleway"],
    [type="footway"],
    [type="unsurfaced"],
    [type="track"]    
    {
    	line-color: @primary_line; line-width: 1;
    }
}

#boronames  [zoom < 13] {
    text-name:"[BoroName]";
    text-face-name:@futura_med;
    text-character-spacing:2;
    text-transform:uppercase;
    text-size:25;
	text-fill:black;
  	text-halo-fill:rgba(255,255,255,0.5);
  	text-halo-radius: 2;
  	[zoom >= 12] { [BoroName = 'Staten Island'] {
    text-dx:10;
    text-dy:-130; 
  }
 }
}



#neighborhoods [zoom > 12] {
  [Stacked = 1] {
  text-name:'[Name]';
  text-face-name:@futura_bold;
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:12;
  text-fill:#E65C5C;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
   }
}

#neighborhoods [zoom > 13] {
  [Stacked <=  2] {
  text-name:'[Name]';
  text-face-name:@futura_bold;
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:12;
  text-fill:#E65C5C;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
   }
}

#neighborhoods  [zoom > 14] {
  text-name:'[Name]';
  text-face-name:@futura_bold;
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:14;
  text-fill:#E65C5C;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
}

