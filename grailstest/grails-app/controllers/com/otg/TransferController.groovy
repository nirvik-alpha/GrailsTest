package com.otg

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TransferController {

    TransferService transferService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 2, 100)
        respond transferService.list(params), model:[transferCount: transferService.count()]
    }

    def show(Long id) {
        respond transferService.get(id)
    }

    def create() {
        respond new Transfer(params)
    }

    def save(Transfer transfer) {
        if (transfer == null) {
            notFound()
            return
        }

        try {
            transferService.save(transfer)
        } catch (ValidationException e) {
            respond transfer.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'transfer.label', default: 'Transfer'), transfer.id])
                redirect transfer
            }
            '*' { respond transfer, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond transferService.get(id)
    }

    def update(Transfer transfer) {
        if (transfer == null) {
            notFound()
            return
        }

        try {
            transferService.save(transfer)
        } catch (ValidationException e) {
            respond transfer.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'transfer.label', default: 'Transfer'), transfer.id])
                redirect transfer
            }
            '*'{ respond transfer, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        transferService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'transfer.label', default: 'Transfer'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'transfer.label', default: 'Transfer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
