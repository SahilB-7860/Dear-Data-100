
Table spotify;

void setup() {
  size(600, 400);

  // Load the CSV file
  spotify = loadTable(
    "spotify_first_30_tracks.csv","header"
  );

  // Check how many songs were loaded - Method 1
  println("Total songs: " + spotify.getRowCount());

  // Print the names of all 30 songs - Method 2
  for (TableRow song : spotify.rows()) {
    String name = song.getString("track_name");
    println(name);
  }
}
