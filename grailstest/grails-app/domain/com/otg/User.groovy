package com.otg

class User {

    String firstName
    String lastName
    String email
    String password

    static constraints = {
        email(email: true, nullable: false, unique: true, blank: false)
        password(blank: false)
    }
}
