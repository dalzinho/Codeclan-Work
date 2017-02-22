package jewellery;

public class Ring {

  private MetalType metal;
  private GemType gem;

  public Ring(MetalType metal, GemType gem) {
    this.metal = metal;
    this.gem = gem;
  }

  public MetalType getMetal(){
    return this.metal;
  }

  public GemType getGem(){
    return this.gem;
  }
}