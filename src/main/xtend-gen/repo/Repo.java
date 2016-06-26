package repo;

import com.google.common.base.Objects;
import java.util.List;

@SuppressWarnings("all")
public class Repo {
  private static Repo repo;
  
  private /* List<Laberinto> */Object laberintos;
  
  public static Repo getRepo() {
    boolean _equals = Objects.equal(Repo.repo, null);
    if (_equals) {
      Repo _repo = new Repo();
      Repo.repo = _repo;
    }
    return Repo.repo;
  }
  
  public Repo() {
    List<Object> _inicializarLaberintos = this.inicializarLaberintos();
    this.laberintos = _inicializarLaberintos;
  }
  
  public /* List<Object> */Object inicializarLaberintos() {
    throw new Error("Unresolved compilation problems:"
      + "\nLaberinto cannot be resolved."
      + "\nLaberinto cannot be resolved."
      + "\nLaberinto cannot be resolved."
      + "\nLaberinto cannot be resolved."
      + "\nLaberinto cannot be resolved.");
  }
}
