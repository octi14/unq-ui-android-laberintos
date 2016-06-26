package repo;

import com.google.common.base.Objects;
import java.util.List;
import org.eclipse.xtend.lib.annotations.Accessors;
import org.eclipse.xtext.xbase.lib.Pure;

@Accessors
@SuppressWarnings("all")
public class Repo {
  private static Repo repo;
  
  private /* List<Laberinto> */Object laberintos;
  
  private /* List<Item> */Object inventario;
  
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
    List<Object> _inicializarInventario = this.inicializarInventario();
    this.inventario = _inicializarInventario;
  }
  
  public /* List<Object> */Object inicializarInventario() {
    throw new Error("Unresolved compilation problems:"
      + "\nItem cannot be resolved."
      + "\nItem cannot be resolved."
      + "\nItem cannot be resolved."
      + "\nItem cannot be resolved."
      + "\nItem cannot be resolved."
      + "\nItem cannot be resolved."
      + "\nItem cannot be resolved."
      + "\nItem cannot be resolved.");
  }
  
  public /* List<Object> */Object inicializarLaberintos() {
    throw new Error("Unresolved compilation problems:"
      + "\nLaberinto cannot be resolved."
      + "\nLaberinto cannot be resolved."
      + "\nLaberinto cannot be resolved."
      + "\nLaberinto cannot be resolved."
      + "\nLaberinto cannot be resolved.");
  }
  
  @Pure
  public /* List<Laberinto> */Object getLaberintos() {
    return this.laberintos;
  }
  
  public void setLaberintos(final /* List<Laberinto> */Object laberintos) {
    this.laberintos = laberintos;
  }
  
  @Pure
  public /* List<Item> */Object getInventario() {
    return this.inventario;
  }
  
  public void setInventario(final /* List<Item> */Object inventario) {
    this.inventario = inventario;
  }
}
