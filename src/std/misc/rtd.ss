;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; safe type descriptor accessors
(import :std/error)
(export (rename: checked-object-type object-type)
        type? type=? type-id type-name type-super
        type-descriptor?
        (rename: checked-type-descriptor-precedence-list type-descriptor-precedence-list)
        (rename: checked-type-descriptor-all-slots type-descriptor-all-slots)
        (rename: checked-type-descriptor-alist type-descriptor-alist)
        (rename: checked-type-descriptor-constructor type-descriptor-constructor)
        (rename: checked-type-descriptor-slot-table type-descriptor-slot-table)
        (rename: checked-type-descriptor-methods type-descriptor-methods))

(extern namespace: #f
  type-descriptor-precedence-list
  type-descriptor-all-slots
  type-descriptor-alist
  type-descriptor-constructor
  type-descriptor-slot-table
  type-descriptor-methods
  type=?)

(def (checked-object-type obj)
  (if (object? obj)
    (object-type obj)
    (raise-bad-argument checked-object-type "object" obj)))

(def (type? obj)
  (##type? obj))

(defrules defcheck-type ()
  ((_ id getf)
   (def (id obj)
     (if (##type? obj)
       (getf obj)
       (raise-bad-argument id "type object" obj)))))

(defrules defcheck-type-descriptor ()
  ((_ id getf)
   (def (id obj)
     (if (type-descriptor? obj)
       (getf obj)
       (raise-bad-argument id "type descriptor" obj)))))

(defcheck-type type-id ##type-id)
(defcheck-type type-name ##type-name)
(defcheck-type type-super ##type-super)

(defcheck-type-descriptor checked-type-descriptor-precedence-list type-descriptor-precedence-list)
(defcheck-type-descriptor checked-type-descriptor-all-slots type-descriptor-all-slots)
(defcheck-type-descriptor checked-type-descriptor-alist type-descriptor-alist)
(defcheck-type-descriptor checked-type-descriptor-constructor type-descriptor-constructor)
(defcheck-type-descriptor checked-type-descriptor-slot-table type-descriptor-slot-table)
(defcheck-type-descriptor checked-type-descriptor-methods type-descriptor-methods)
