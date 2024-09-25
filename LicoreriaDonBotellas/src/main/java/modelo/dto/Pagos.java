package modelo.dto;
public class Pagos {
   private int pago_id;
   private int pedido_id;
   private int metodo_id;
   private double monto;
   
   public Pagos() {}

    public Pagos(int pago_id, int pedido_id, int metodo_id, double monto) {
        this.pago_id = pago_id;
        this.pedido_id = pedido_id;
        this.metodo_id = metodo_id;
        this.monto = monto;
    }

    public int getPago_id() {
        return pago_id;
    }

    public void setPago_id(int pago_id) {
        this.pago_id = pago_id;
    }

    public int getPedido_id() {
        return pedido_id;
    }

    public void setPedido_id(int pedido_id) {
        this.pedido_id = pedido_id;
    }

    public int getMetodo_id() {
        return metodo_id;
    }

    public void setMetodo_id(int metodo_id) {
        this.metodo_id = metodo_id;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }
   
   
}
