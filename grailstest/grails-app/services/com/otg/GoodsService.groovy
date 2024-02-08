package com.otg

import grails.gorm.services.Service

@Service(Goods)
interface GoodsService {

    Goods get(Serializable id)

    List<Goods> list(Map args)

    Long count()

    void delete(Serializable id)

    Goods save(Goods goods)

}