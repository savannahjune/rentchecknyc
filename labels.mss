//Road labels, determines at which zoom level the labels appear as well
//as the size and type of the font

#roadlabels { 

/*  [zoom>=13][type='motorway'] {
   text-name:"[name]";
   text-face-name:"Bebas Neue Regular";
   text-character-spacing:2;
   text-transform:uppercase;
   text-size:12;
   text-fill:black;
   text-halo-fill:rgba(255,255,255,1);
   text-halo-radius: 3;
   text-placement:line;
   text-min-distance: 900px;
  }
  [zoom >=14] [type='motorway_link'] {
   text-name:"[name]";
   text-face-name:"Bebas Neue Regular";
   text-character-spacing:2;
   text-transform:uppercase;
   text-size:12;
   text-fill:black;
   text-halo-fill:rgba(255,255,255,01);
   text-halo-radius: 3;
   text-placement:line;
   text-min-distance: 900px;
      } */ 

[zoom >= 16] {
   text-name:"[name]";
   text-face-name:@futura_med;
   text-character-spacing:2;
   //text-transform:uppercase;
   text-size:16;
   text-fill:#58503D;
   text-halo-fill:rgba(255,255,255,01);
   text-halo-radius: 2;
   text-placement:line;
   text-min-distance: 100px;
  }

[zoom >= 17] {
   text-name:"[name]";
   text-face-name:@futura_med;
   text-character-spacing:2;
   //text-transform:uppercase;
   text-size:17;
   text-fill:#58503D;
   text-halo-fill:rgba(255,255,255,01);
   text-halo-radius: 2;
   text-placement:line;
   text-min-distance: 100px;
   text-spacing: 10px;
  }
}


//Borough labels limits them to less than zoom level 13, determines location
//as well as the size and type of the font

#boronames  [zoom < 14] {
    text-name:"[BoroName]";
    text-face-name:"Bebas Neue Regular";
    text-character-spacing:3;
    text-transform:uppercase;
    text-size:30;
	text-fill:black;
  	text-halo-fill:rgba(255,255,255,0.5);
  	text-halo-radius: 2;
  	[zoom >= 12] { [BoroName = 'Staten Island'] {
    text-dx:10;
    text-dy:-130; 
  }
 }
}

//Neighborhood labels limits them to zoom levels greater than 12
//determines the size and type of the font at certain zoom levels

#neighborhoods [zoom > 12] {
  [Stacked >= 3] {
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:16;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
   }
}

#neighborhoods [zoom >= 14] {
  [Stacked >= 1] {
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:16;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3; }
}




