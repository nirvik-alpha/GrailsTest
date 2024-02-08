package com.otg

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class GoodsController {

    GoodsService goodsService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond goodsService.list(params), model:[goodsCount: goodsService.count()]
    }

    def show(Long id) {
        respond goodsService.get(id)
    }

    def create() {
        respond new Goods(params)
    }

    def save(Goods goods) {
        if (goods == null) {
            notFound()
            return
        }

        try {
            goodsService.save(goods)
        } catch (ValidationException e) {
            respond goods.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'goods.label', default: 'Goods'), goods.id])
                redirect goods
            }
            '*' { respond goods, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond goodsService.get(id)
    }

    def update(Goods goods) {
        if (goods == null) {
            notFound()
            return
        }

        try {
            goodsService.save(goods)
        } catch (ValidationException e) {
            respond goods.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'goods.label', default: 'Goods'), goods.id])
                redirect goods
            }
            '*'{ respond goods, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        goodsService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'goods.label', default: 'Goods'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'goods.label', default: 'Goods'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
