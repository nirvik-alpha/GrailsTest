package com.otg

import grails.gorm.services.Service

@Service(Transfer)
interface TransferService {

    Transfer get(Serializable id)

    List<Transfer> list(Map args)

    Long count()

    void delete(Serializable id)

    Transfer save(Transfer transfer)

}