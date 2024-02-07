package com.otg
enum TransferType {
    INTERNAL("Internal"),
    EXTERNAL("External")

    final String label

    TransferType(String label) {
        this.label = label
    }
}

class Transfer {

    TransferType type
    String senderName
    String senderAddress

    String receiverName
    String receiverAddress
    String vehicleInformation

    static constraints = {
        
    }
}
