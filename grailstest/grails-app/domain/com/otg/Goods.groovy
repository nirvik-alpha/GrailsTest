package com.otg

enum Unit {
    KG("KG"),
    CFT("CFT")

    final String label

    Unit(String label) {
        this.label = label
    }
}

class Goods {

    String name
    Unit unit
    Integer quality

    static belongsTo = [transfer: Transfer]
    

    static constraints = {
    }
}
