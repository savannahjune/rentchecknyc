//Road labels, determines at which zoom level the labels appear as well
//as the size and type of the font
//bridge = 0 means that only roads that are not bridges show
//as all bridges are classified as bridge = 1

#roadlabels { 

[zoom >= 16] [bridge = 0] {
   text-name:"[name]";
   text-face-name:@futura_med;
   text-character-spacing:2;
   //text-transform:uppercase;
   text-size:12;
   text-fill:#58503D;
   text-halo-fill:rgba(255,255,255,01);
   text-halo-radius: 2;
   text-placement:line;
   text-min-distance: 100px;
  }

[zoom >= 17] [bridge = 0] {
   text-name:"[name]";
   text-face-name:@futura_med;
   text-character-spacing:2;
   //text-transform:uppercase;
   text-size:12;
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

#boronames  [zoom < 13] {
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

#neighborhoods [zoom > 12 ] {
  [Name = 'Battery Park City'],
  [Name = 'Chelsea'], 
  [Name = 'East Harlem'],
  [Name = 'East Village'],
  [Name = 'Financial District'],
  [Name = 'Gramercy'], 
  [Name = "Central Harlem"],
  [Name = "Hell’s Kitchen"],
  [Name = "Lower East Side"],
  [Name = "Midtown"],
  [Name = "Morningside Heights"],
  [Name = "Murray Hill"],
  [Name = "Soho"],
  [Name = "Stuyvesant Town"],
  [Name = "Tribeca"],
  [Name = "Upper East Side"],
  [Name = "Upper West Side"],
  [Name = "Washington Heights"],
  [Name = "West Village"],
  [Stacked = 1],
{
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:16;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;
 }
}

#neighborhoods [zoom = 15 ] {
  [Name = 'Battery Park City'],
  [Name = 'Chelsea'], 
  [Name = 'East Harlem'],
  [Name = 'East Village'],
  [Name = 'Financial District'],
  [Name = 'Gramercy'], 
  [Name = "Central Harlem"],
  [Name = "Hell’s Kitchen"],
  [Name = "Lower East Side"],
  [Name = "Midtown"],
  [Name = "Morningside Heights"],
  [Name = "Murray Hill"],
  [Name = "Soho"],
  [Name = "Stuyvesant Town"],
  [Name = "Tribeca"],
  [Name = "Upper East Side"],
  [Name = "Upper West Side"],
  [Name = "Washington Heights"],
  [Name = "West Village"],
  [Stacked = 1],
{
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:22;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;
 }
}

#neighborhoods [zoom >= 16] {
  [Name = 'Battery Park City'],
  [Name = 'Chelsea'], 
  [Name = 'East Harlem'],
  [Name = 'East Village'],
  [Name = 'Financial District'],
  [Name = 'Gramercy'], 
  [Name = "Central Harlem"],
  [Name = "Hell’s Kitchen"],
  [Name = "Lower East Side"],
  [Name = "Midtown"],
  [Name = "Morningside Heights"],
  [Name = "Murray Hill"],
  [Name = "Soho"],
  [Name = "Stuyvesant Town"],
  [Name = "Tribeca"],
  [Name = "Upper East Side"],
  [Name = "Upper West Side"],
  [Name = "Washington Heights"],
  [Name = "West Village"],
  [Stacked = 1],
{
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:40;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;
 }
}

//made seperate layer for neighborhoods that
//were improperly labeled in data

#hellkitchen [zoom > 12] {
  [AnnoLine1 = "Kitchen"] {
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:16;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;
}
}

#hellkitchen [zoom = 15] {
  [AnnoLine1 = "Kitchen"] {
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:22;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;
}
}

#hellkitchen [zoom >= 16] {
  [AnnoLine1 = "Kitchen"] {
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:20;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;
}
}

#hellkitchen [zoom = 15] {  
  [AnnoLine1 = "Kips"] {
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:22;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-dx:-80;
  text-dy:160; 
  text-allow-overlap: true;
}
}

#hellkitchen [zoom >= 16] {  
  [AnnoLine1 = "Kips"] {
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:40;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-dx:-80;
  text-dy:160; 
  text-allow-overlap: true;
}
}


//neighborhood data missing from original file

#extraneighborhoods [zoom = 14] {
  text-name:'[name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:16;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;
}

#extraneighborhoods [zoom = 15] {
  text-name:'[name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:22;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;
}

#extraneighborhoods [zoom >= 16] {
  text-name:'[name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:40;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;
}



//adds in all of the neighborhoods at zoom 15 and greater

#neighborhood [zoom = 15] {
  [Stacked >= 1] {
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:22;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;}
}

#neighborhood [zoom >= 16] {
  [Stacked >= 1] {
  text-name:'[Name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:40;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-allow-overlap: true;}
}



//labeling for central park

#parks [zoom = 15] {
  polygon-opacity:0.75;
  polygon-fill:@parks;
  [name = 'Central Park'] {
  text-name:'[name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:22;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-dx:80;
  text-dy:-160;
  text-allow-overlap: true;
    }
}

#parks [zoom >= 16] {
  polygon-opacity:0.75;
  polygon-fill:@parks;
  [name = 'Central Park'] {
  text-name:'[name]';
  text-face-name:"Bebas Neue Regular";
  text-character-spacing:2;
  text-transform:uppercase;
  text-size:40;
  text-fill:#a51414;
  text-halo-fill:rgba(255,255,255,01);
  text-halo-radius: 3;
  text-dx:80;
  text-dy:-160;
  text-allow-overlap: true;
    }
}




