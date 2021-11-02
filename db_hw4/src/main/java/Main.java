import org.jetbrains.annotations.NotNull;
import org.flywaydb.core.Flyway;

public final class Main {
    public static final @NotNull String CONNECTION = "jdbc:postgresql://127.0.0.1:5432/";
    public static final @NotNull String DB_NAME = "hw4";
    public static final @NotNull String USERNAME = "postgres";
    public static final @NotNull String PASSWORD = "postgres";

    public static void main(@NotNull String[] args) {
        final Flyway flyway = Flyway
                .configure()
                .dataSource(CONNECTION + DB_NAME, USERNAME, PASSWORD)
                .locations("db")
                .load();
        flyway.clean();
        flyway.migrate();
        System.out.println("Migrations applied successfully");
    }
}
