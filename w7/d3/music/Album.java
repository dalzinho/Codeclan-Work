import db.SqlRunner;

public class Album {

    private String title;
    private String genre;
    private Artist artist;
    private int id;

    public Album(String title, String genre, Artist artist) {
        this.title = title;
        this.genre = genre;
        this.artist = artist;
    }

    public String getTitle() {
        return this.title;
    }

    public String getGenre() {
        return this.genre;
    }

    public Artist getArtist()  {
        return this.artist;
    }

    public void save() {
        int artist_id = artist.getId();
        String sql = String.format(
                "INSERT INTO albums (title, genre, artist_id) VALUES ('%s', '%s', %d);"
                , this.title, this.genre, artist_id);
        this.id = SqlRunner.executeUpdate(sql);
        SqlRunner.closeConnection();
    }

}