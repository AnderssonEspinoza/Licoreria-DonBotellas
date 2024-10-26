package com.mycompany.licoreriadonbotellas;

import com.mercadopago.exceptions.MPException;
import com.mercadopago.resources.Preference;
import com.mercadopago.resources.datastructures.preference.Item;
import servicios.MercadoPagoConfig;

public class MainApp {
    public static void main(String[] args) throws MPException {
        // Inicializar Mercado Pago
        MercadoPagoConfig.initialize();
        
        // Crear una preferencia de pago
        Preference preference = new Preference();
        
        Item item = new Item();
        item.setTitle("Producto de prueba")
            .setQuantity(1)
            .setUnitPrice((float) 100.0);
        
        preference.appendItem(item);
        preference.save();
        
        System.out.println("Preferencia creada: " + preference.getId());
    }
    
}
