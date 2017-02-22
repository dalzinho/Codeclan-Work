public class Runner {

    public static void main(String[] args) {
        Artist.deleteAll();

        Artist artist = new Artist("Led Zeppelin");
        Artist artist2 = new Artist("Super Furry Animals");
        Artist artist3 = new Artist("Sparks");

        Album album = new Album("Houses of the Holy", "Rock", artist);
        artist.save();
        artist2.save();
        artist3.save();
        album.save();

        artist.setName("Zeppelin");
        artist.update();
        artist.getArtistDetails();

    }
}