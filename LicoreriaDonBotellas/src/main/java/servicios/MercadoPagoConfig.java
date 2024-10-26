package servicios;
import com.mercadopago.MercadoPago;
import com.mercadopago.exceptions.MPException;


public class MercadoPagoConfig {
    public static void initialize() throws MPException {
        MercadoPago.SDK.setClientSecret("pjYubFxZQbHWxvnlJEc9LPkj14lJJ4rw");
        MercadoPago.SDK.setClientId("4081514870005078");
        System.out.println("Mercado Pago configurado correctamente.");
    }
}
