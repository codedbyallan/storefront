package br.com.dio.storefront.dto;

import java.util.UUID;

public record StockStatusMessage(UUID id, String status) {
//    public boolean active(){
//        return status.equals("AVAILABLE");
//

//+robusto:

    public boolean active() {
        return "AVAILABLE".equalsIgnoreCase(status);
    }

}
