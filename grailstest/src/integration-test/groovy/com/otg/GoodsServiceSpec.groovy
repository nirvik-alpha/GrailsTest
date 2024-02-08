package com.otg

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class GoodsServiceSpec extends Specification {

    GoodsService goodsService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Goods(...).save(flush: true, failOnError: true)
        //new Goods(...).save(flush: true, failOnError: true)
        //Goods goods = new Goods(...).save(flush: true, failOnError: true)
        //new Goods(...).save(flush: true, failOnError: true)
        //new Goods(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //goods.id
    }

    void "test get"() {
        setupData()

        expect:
        goodsService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Goods> goodsList = goodsService.list(max: 2, offset: 2)

        then:
        goodsList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        goodsService.count() == 5
    }

    void "test delete"() {
        Long goodsId = setupData()

        expect:
        goodsService.count() == 5

        when:
        goodsService.delete(goodsId)
        sessionFactory.currentSession.flush()

        then:
        goodsService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Goods goods = new Goods()
        goodsService.save(goods)

        then:
        goods.id != null
    }
}
