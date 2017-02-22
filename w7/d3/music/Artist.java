import java.sql.ResultSet;

import db.SqlRunner;

public class Artist {

    private String name;
    private int id;

    public Artist(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

    public int getId() {
        return this.id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void save() {
        String sql = String.format("INSERT INTO artists (name) VALUES ('%s');", this.name);
        this.id = SqlRunner.executeUpdate(sql);
        SqlRunner.closeConnection();
    }

    public static void all(){
        String sql = "SELECT * FROM artists;";
        ResultSet rs = SqlRunner.executeQuery(sql);
        try {
        while(rs.next()) {
            String name = rs.getString("name");
            System.out.println(name);
            System.out.println();
        }
        }
        catch (Exception e) {
                System.err.println(e.getClass().getName() + " : " + e.getMessage());
                System.exit(0);
            }
        finally{
            SqlRunner.closeConnection();
        }
        }

    public void getArtistDetails(){
        String sql = String.format("SELECT artists.name, albums.title, albums.genre FROM artists JOIN albums ON artists.id = albums.artist_id WHERE artists.id = %d;", this.id);
        ResultSet rs = SqlRunner.executeQuery(sql);
        try {
            while(rs.next()) {

                String name = rs.getString("name");
                String title = rs.getString("title");
                String genre = rs.getString("genre");
                System.out.println(name);
                System.out.println(title);
                System.out.println(genre);

                System.out.println();
            }
        }
        catch (Exception e) {
            System.err.println(e.getClass().getName() + " : " + e.getMessage());
            System.exit(0);
        }
        finally{
            SqlRunner.closeConnection();
        }
    }

    public static void deleteAll(){
        String sql = "DELETE FROM artists;";
        SqlRunner.executeUpdate(sql);
        SqlRunner.closeConnection();

    }

    public void update(){
        String sql = String.format("UPDATE artists SET name = '%s' WHERE id = %d;", this.name, this.id);
        SqlRunner.executeUpdate(sql);
        SqlRunner.closeConnection();
    }
}


