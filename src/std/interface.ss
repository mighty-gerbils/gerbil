;;; -*- Gerbil -*-
;;; © vyzo
;;; interface utilities
(import :gerbil/runtime/interface)
(export #t)

(defsyntax (@interface-method-index Interface method)
  XXX
  )

(def (get-interface-method-by-name (descriptor : interface-descriptor)
                                   (method     : :symbol)
                                   object)
  => :procedure
  (get-interface-method-by-index descriptor
                                 (get-interface-method-index descriptor method)
                                 object))

(def (get-interface-method-by-index (descriptor   : interface-descriptor)
                                    (method-index : :fixnum)
                                    object)
  => :procedure
  (let (proto (get-prototype descriptor object))
    (:- (##unchecked-structure-ref proto method-index #f 'get-interface-method)
        :procedure)))


(def (get-interface-method-index (descriptor : interface-descriptor)
                                 (method     : :symbol))
  => :fixnum
  (let loop ((rest descriptor.methods) (index 1))
    => :fixnum
    (match rest
      ([method-spec . rest]
       (let loop-inner ((methods-rest method-spec))
         (match methods-rest
           ([method-name . methods-rest]
            (if (eq? method-name method)
              index
              (loop-inner methods-rest)))
           (else
            (loop-outer rest (fx1+ index))))))
      (else
       (raise-cast-error 'get-interface-method-index "not an interface method"
                         interface: descriptor method: method)))))
