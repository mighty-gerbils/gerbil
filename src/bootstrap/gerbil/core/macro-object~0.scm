(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/macro-object::timestamp 1711108653)
  (begin
    (define gerbil/core/macro-object#macro-object::t
      (let ((__tmp36222 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil.core#macro-object::t
         'macro-object
         __tmp36222
         '(macro)
         '()
         '#f)))
    (define gerbil/core/macro-object#macro-object?
      (let ()
        (declare (not safe))
        (make-class-predicate gerbil/core/macro-object#macro-object::t)))
    (define gerbil/core/macro-object#make-macro-object
      (lambda _$args36214_
        (apply make-instance
               gerbil/core/macro-object#macro-object::t
               _$args36214_)))
    (define gerbil/core/macro-object#macro-object-macro
      (let ()
        (declare (not safe))
        (make-class-slot-accessor
         gerbil/core/macro-object#macro-object::t
         'macro)))
    (define gerbil/core/macro-object#macro-object-macro-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator
         gerbil/core/macro-object#macro-object::t
         'macro)))
    (define gerbil/core/macro-object#&macro-object-macro
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gerbil/core/macro-object#macro-object::t
         'macro)))
    (define gerbil/core/macro-object#&macro-object-macro-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gerbil/core/macro-object#macro-object::t
         'macro)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander
      (lambda (_self36211_ _stx36212_)
        (gx#core-apply-expander
         (let ((__obj36221 _self36211_))
           (if (let ()
                 (declare (not safe))
                 (##structure-direct-instance-of?
                  __obj36221
                  'gerbil.core#macro-object::t))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref
                  __obj36221
                  '1
                  gerbil/core/macro-object#macro-object::t
                  '#f))
               (class-slot-ref
                gerbil/core/macro-object#macro-object::t
                __obj36221
                'macro)))
         _stx36212_)))
    (define gerbil/core/macro-object#macro-object::apply-macro-expander::specialize
      (lambda (__klass36216 __method-table36217)
        (let ((__macro36218
               (let ((__slot36219
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass36216 'macro))))
                 (if __slot36219
                     __slot36219
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'macro))))))
          (lambda (_self36211_ _stx36212_)
            (gx#core-apply-expander
             (let ()
               (declare (not safe))
               (##unchecked-structure-ref
                _self36211_
                __macro36218
                __klass36216
                '#f))
             _stx36212_)))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gerbil/core/macro-object#macro-object::apply-macro-expander
       gerbil/core/macro-object#macro-object::apply-macro-expander::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gerbil/core/macro-object#macro-object::t
       'apply-macro-expander
       gerbil/core/macro-object#macro-object::apply-macro-expander
       '#f))))
