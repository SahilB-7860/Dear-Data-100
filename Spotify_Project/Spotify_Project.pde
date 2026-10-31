
Table spotify;


void TotalSongs() {
  println("Total songs: " + spotify.getRowCount());
}


void PrintAllSongNames() {
  for (TableRow song : spotify.rows()) {
    String name = song.getString("track_name");
    println(name);
  }
}

void setup() {
  size(100, 100);

  // Load the CSV file
  spotify = loadTable("spotify_temp_data.csv", "header");

  // Call your methods
  TotalSongs();
  PrintAllSongNames();
}
