create table if not exists Artist(
	Artist_id INTEGER primary key,
	name VARCHAR(60) not null
);

create table if not exists Genre(
	Genre_id INTEGER primary key,
	name VARCHAR(60) not null
);

create table if not exists GenreArtist(
	Genre_id INTEGER references Genre(Genre_id),
	Artist_id INTEGER references Artist(Artist_id), 
	constraint GenreArtist_pk primary key (Genre_id, Artist_id)
);

create table if not exists Album(
	Album_id INTEGER primary key,
	name VARCHAR(60) not null 
);

create table if not exists ArtistAlbum(
	Artist_id INTEGER references Artist(Artist_id),
	Album_id INTEGER references Album(Album_id),
	constraint ArtistAlbum_pk primary key (Artist_id, Album_id)
);
create table if not exists Playlist(
	Playlist_id INTEGER primary key,
	name VARCHAR(60) not null
);

create table if not exists Songs(
	Songs_id INTEGER primary key,
	name VARCHAR(60) not null,
	length VARCHAR(5) not null,
	fk_album INTEGER unique references Album(Album_id)
);

create table if not exists PlaylistSongs(
	Songs_id INTEGER references Songs(Songs_id),
	Playlist_id INTEGER references Playlist(Playlist_id),
	constraint PlaylistSongs_pk primary key (Songs_id, Playlist_id)
);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
)
