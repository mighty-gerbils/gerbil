(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708352924)
  (begin
    (define __syntax::t
      (let ((__tmp76777 (list))
            (__tmp76775
             (let ((__tmp76776
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76776 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp76777
         '(e id)
         __tmp76775
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args76586_ (apply make-instance __syntax::t _$args76586_)))
    (define __syntax-e
      (let () (declare (not safe)) (make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let () (declare (not safe)) (make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp76780 (list __syntax::t))
            (__tmp76778
             (let ((__tmp76779
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76779 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp76780
         '()
         __tmp76778
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args76583_ (apply make-instance __core-form::t _$args76583_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp76783 (list __core-form::t))
            (__tmp76781
             (let ((__tmp76782
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76782 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp76783
         '()
         __tmp76781
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args76580_
        (apply make-instance __core-expression::t _$args76580_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp76786 (list __core-form::t))
            (__tmp76784
             (let ((__tmp76785
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76785 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp76786
         '()
         __tmp76784
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args76577_
        (apply make-instance __core-special-form::t _$args76577_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_id76575_)
        (let ((__tmp76787 (let () (declare (not safe)) (__AST-e _id76575_))))
          (declare (not safe))
          (hash-get __core __tmp76787))))
    (define __core-bound-id?__%
      (lambda (_id76559_ _is?76560_)
        (let ((_$e76562_
               (let () (declare (not safe)) (__core-resolve _id76559_))))
          (if _$e76562_ (_is?76560_ _$e76562_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id76568_)
        (let ((_is?76570_ true))
          (declare (not safe))
          (__core-bound-id?__% _id76568_ _is?76570_))))
    (define __core-bound-id?
      (lambda _g76789_
        (let ((_g76788_ (let () (declare (not safe)) (##length _g76789_))))
          (cond ((let () (declare (not safe)) (##fx= _g76788_ 1))
                 (apply (lambda (_id76568_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id76568_)))
                        _g76789_))
                ((let () (declare (not safe)) (##fx= _g76788_ 2))
                 (apply (lambda (_id76572_ _is?76573_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id76572_ _is?76573_)))
                        _g76789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g76789_))))))
    (define __core-bind-syntax!__%
      (lambda (_id76542_ _e76543_ _make76544_)
        (let ((__tmp76790
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e76543_
                      'gerbil/runtime/eval#__syntax::t))
                   _e76543_
                   (_make76544_ _e76543_ _id76542_))))
          (declare (not safe))
          (hash-put! __core _id76542_ __tmp76790))))
    (define __core-bind-syntax!__0
      (lambda (_id76549_ _e76550_)
        (let ((_make76552_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id76549_ _e76550_ _make76552_))))
    (define __core-bind-syntax!
      (lambda _g76792_
        (let ((_g76791_ (let () (declare (not safe)) (##length _g76792_))))
          (cond ((let () (declare (not safe)) (##fx= _g76791_ 2))
                 (apply (lambda (_id76549_ _e76550_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id76549_ _e76550_)))
                        _g76792_))
                ((let () (declare (not safe)) (##fx= _g76791_ 3))
                 (apply (lambda (_id76554_ _e76555_ _make76556_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id76554_
                             _e76555_
                             _make76556_)))
                        _g76792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g76792_))))))
    (define __SRC__%
      (lambda (_e76525_ _src-stx76526_)
        (if (or (let () (declare (not safe)) (pair? _e76525_))
                (let () (declare (not safe)) (symbol? _e76525_)))
            (let ((__tmp76796
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx76526_
                          'gerbil#AST::t))
                       (let ((__tmp76797
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx76526_))))
                         (declare (not safe))
                         (__locat __tmp76797))
                       '#f)))
              (declare (not safe))
              (##make-source _e76525_ __tmp76796))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e76525_ 'gerbil#AST::t))
                (let ((__tmp76795
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e76525_ '1 AST::t '#f)))
                      (__tmp76793
                       (let ((__tmp76794
                              (let ()
                                (declare (not safe))
                                (__AST-source _e76525_))))
                         (declare (not safe))
                         (__locat __tmp76794))))
                  (declare (not safe))
                  (##make-source __tmp76795 __tmp76793))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e76525_))))))
    (define __SRC__0
      (lambda (_e76534_)
        (let ((_src-stx76536_ '#f))
          (declare (not safe))
          (__SRC__% _e76534_ _src-stx76536_))))
    (define __SRC
      (lambda _g76799_
        (let ((_g76798_ (let () (declare (not safe)) (##length _g76799_))))
          (cond ((let () (declare (not safe)) (##fx= _g76798_ 1))
                 (apply (lambda (_e76534_)
                          (let () (declare (not safe)) (__SRC__0 _e76534_)))
                        _g76799_))
                ((let () (declare (not safe)) (##fx= _g76798_ 2))
                 (apply (lambda (_e76538_ _src-stx76539_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e76538_ _src-stx76539_)))
                        _g76799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g76799_))))))
    (define __locat
      (lambda (_loc76522_)
        (if (let () (declare (not safe)) (##locat? _loc76522_))
            _loc76522_
            '#f)))
    (define __check-values
      (lambda (_obj76517_ _k76518_)
        (let ((_count76520_
               (if (let () (declare (not safe)) (##values? _obj76517_))
                   (let () (declare (not safe)) (##vector-length _obj76517_))
                   '1)))
          (if (fx= _count76520_ _k76518_)
              '#!void
              (let ((__tmp76801
                     (if (fx< _count76520_ _k76518_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp76800
                     (if (let () (declare (not safe)) (##values? _obj76517_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj76517_))
                         _obj76517_)))
                (declare (not safe))
                (error __tmp76801 __tmp76800 _k76518_))))))
    (define __compile
      (lambda (_stx76487_)
        (let* ((_$e76489_ _stx76487_)
               (_$E7649176497_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76489_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76489_))
              (let* ((_$tgt7649276500_
                      (let () (declare (not safe)) (__AST-e _$e76489_)))
                     (_$hd7649376503_
                      (let () (declare (not safe)) (##car _$tgt7649276500_)))
                     (_$tl7649476506_
                      (let () (declare (not safe)) (##cdr _$tgt7649276500_))))
                (let* ((_form76510_ _$hd7649376503_)
                       (_$e76512_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form76510_))))
                  (if _$e76512_
                      ((lambda (_bind76515_)
                         ((##structure-ref _bind76515_ '1 __syntax::t '#f)
                          _stx76487_))
                       _$e76512_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx76487_
                         _form76510_)))))
              (let () (declare (not safe)) (_$E7649176497_))))))
    (define __compile-error__%
      (lambda (_stx76474_ _detail76475_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx76474_
           _detail76475_))))
    (define __compile-error__0
      (lambda (_stx76480_)
        (let ((_detail76482_ '#f))
          (declare (not safe))
          (__compile-error__% _stx76480_ _detail76482_))))
    (define __compile-error
      (lambda _g76803_
        (let ((_g76802_ (let () (declare (not safe)) (##length _g76803_))))
          (cond ((let () (declare (not safe)) (##fx= _g76802_ 1))
                 (apply (lambda (_stx76480_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx76480_)))
                        _g76803_))
                ((let () (declare (not safe)) (##fx= _g76802_ 2))
                 (apply (lambda (_stx76484_ _detail76485_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx76484_ _detail76485_)))
                        _g76803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g76803_))))))
    (define __compile-ignore%
      (lambda (_stx76471_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx76471_))))
    (define __compile-begin%
      (lambda (_stx76446_)
        (let* ((_$e76448_ _stx76446_)
               (_$E7645076456_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76448_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76448_))
              (let* ((_$tgt7645176459_
                      (let () (declare (not safe)) (__AST-e _$e76448_)))
                     (_$hd7645276462_
                      (let () (declare (not safe)) (##car _$tgt7645176459_)))
                     (_$tl7645376465_
                      (let () (declare (not safe)) (##cdr _$tgt7645176459_))))
                (let* ((_body76469_ _$tl7645376465_)
                       (__tmp76804
                        (let ((__tmp76805 (map __compile _body76469_)))
                          (declare (not safe))
                          (cons 'begin __tmp76805))))
                  (declare (not safe))
                  (__SRC__% __tmp76804 _stx76446_)))
              (let () (declare (not safe)) (_$E7645076456_))))))
    (define __compile-begin-foreign%
      (lambda (_stx76421_)
        (let* ((_$e76423_ _stx76421_)
               (_$E7642576431_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76423_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76423_))
              (let* ((_$tgt7642676434_
                      (let () (declare (not safe)) (__AST-e _$e76423_)))
                     (_$hd7642776437_
                      (let () (declare (not safe)) (##car _$tgt7642676434_)))
                     (_$tl7642876440_
                      (let () (declare (not safe)) (##cdr _$tgt7642676434_))))
                (let* ((_body76444_ _$tl7642876440_)
                       (__tmp76806
                        (let ((__tmp76807
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body76444_))))
                          (declare (not safe))
                          (cons 'begin __tmp76807))))
                  (declare (not safe))
                  (__SRC__% __tmp76806 _stx76421_)))
              (let () (declare (not safe)) (_$E7642576431_))))))
    (define __compile-import%
      (lambda (_stx76396_)
        (let* ((_$e76398_ _stx76396_)
               (_$E7640076406_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76398_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76398_))
              (let* ((_$tgt7640176409_
                      (let () (declare (not safe)) (__AST-e _$e76398_)))
                     (_$hd7640276412_
                      (let () (declare (not safe)) (##car _$tgt7640176409_)))
                     (_$tl7640376415_
                      (let () (declare (not safe)) (##cdr _$tgt7640176409_))))
                (let* ((_body76419_ _$tl7640376415_)
                       (__tmp76808
                        (let ((__tmp76809
                               (let ((__tmp76810
                                      (let ((__tmp76811
                                             (let ()
                                               (declare (not safe))
                                               (cons _body76419_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp76811))))
                                 (declare (not safe))
                                 (cons __tmp76810 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp76809))))
                  (declare (not safe))
                  (__SRC__% __tmp76808 _stx76396_)))
              (let () (declare (not safe)) (_$E7640076406_))))))
    (define __compile-begin-annotation%
      (lambda (_stx76343_)
        (let* ((_$e76345_ _stx76343_)
               (_$E7634776359_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76345_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76345_))
              (let* ((_$tgt7634876362_
                      (let () (declare (not safe)) (__AST-e _$e76345_)))
                     (_$hd7634976365_
                      (let () (declare (not safe)) (##car _$tgt7634876362_)))
                     (_$tl7635076368_
                      (let () (declare (not safe)) (##cdr _$tgt7634876362_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7635076368_))
                    (let* ((_$tgt7635176372_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7635076368_)))
                           (_$hd7635276375_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7635176372_)))
                           (_$tl7635376378_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7635176372_))))
                      (let ((_ann76382_ _$hd7635276375_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7635376378_))
                            (let* ((_$tgt7635476384_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7635376378_)))
                                   (_$hd7635576387_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7635476384_)))
                                   (_$tl7635676390_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7635476384_))))
                              (let ((_expr76394_ _$hd7635576387_))
                                (if (let ((__tmp76812
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7635676390_))))
                                      (declare (not safe))
                                      (equal? __tmp76812 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr76394_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7634776359_)))))
                            (let () (declare (not safe)) (_$E7634776359_)))))
                    (let () (declare (not safe)) (_$E7634776359_))))
              (let () (declare (not safe)) (_$E7634776359_))))))
    (define __compile-define-values%
      (lambda (_stx76234_)
        (let* ((_$e76236_ _stx76234_)
               (_$E7623876250_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76236_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76236_))
              (let* ((_$tgt7623976253_
                      (let () (declare (not safe)) (__AST-e _$e76236_)))
                     (_$hd7624076256_
                      (let () (declare (not safe)) (##car _$tgt7623976253_)))
                     (_$tl7624176259_
                      (let () (declare (not safe)) (##cdr _$tgt7623976253_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7624176259_))
                    (let* ((_$tgt7624276263_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7624176259_)))
                           (_$hd7624376266_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7624276263_)))
                           (_$tl7624476269_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7624276263_))))
                      (let ((_hd76273_ _$hd7624376266_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7624476269_))
                            (let* ((_$tgt7624576275_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7624476269_)))
                                   (_$hd7624676278_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7624576275_)))
                                   (_$tl7624776281_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7624576275_))))
                              (let ((_expr76285_ _$hd7624676278_))
                                (if (let ((__tmp76845
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7624776281_))))
                                      (declare (not safe))
                                      (equal? __tmp76845 '()))
                                    (let* ((_$e76287_ _hd76273_)
                                           (_$E7628976330_
                                            (lambda ()
                                              (let ((_$E7629076315_
                                                     (lambda ()
                                                       (let* ((_$E7629176302_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e76287_))))
                      (_ids76305_ _hd76273_)
                      (_len76307_ (length _ids76305_))
                      (_tmp76309_
                       (let ((__tmp76813 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp76813))))
                 (let ((__tmp76814
                        (let ((__tmp76815
                               (let ((__tmp76832
                                      (let ((__tmp76833
                                             (let ((__tmp76834
                                                    (let ((__tmp76835
                                                           (let ((__tmp76836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr76285_))))
                     (declare (not safe))
                     (cons __tmp76836 '()))))
              (declare (not safe))
              (cons _tmp76309_ __tmp76835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp76834))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76833 _stx76234_)))
                                     (__tmp76816
                                      (let ((__tmp76828
                                             (let ((__tmp76829
                                                    (let ((__tmp76830
                                                           (let ((__tmp76831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len76307_ '()))))
                     (declare (not safe))
                     (cons _tmp76309_ __tmp76831))))
              (declare (not safe))
              (cons '__check-values __tmp76830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp76829
                                                _stx76234_)))
                                            (__tmp76817
                                             (let ((__tmp76818
                                                    (let ((__tmp76820
                                                           (lambda (_id76312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k76313_)
                     (if (let () (declare (not safe)) (__AST-e _id76312_))
                         (let ((__tmp76821
                                (let ((__tmp76822
                                       (let ((__tmp76827
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id76312_)))
                                             (__tmp76823
                                              (let ((__tmp76824
                                                     (let ((__tmp76825
                                                            (let ((__tmp76826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k76313_ '()))))
                      (declare (not safe))
                      (cons _tmp76309_ __tmp76826))))
               (declare (not safe))
               (cons '##vector-ref __tmp76825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76824 '()))))
                                         (declare (not safe))
                                         (cons __tmp76827 __tmp76823))))
                                  (declare (not safe))
                                  (cons 'define __tmp76822))))
                           (declare (not safe))
                           (__SRC__% __tmp76821 _stx76234_))
                         '#f)))
                  (__tmp76819
                   (let () (declare (not safe)) (iota__0 _len76307_))))
              (declare (not safe))
              (filter-map2 __tmp76820 _ids76305_ __tmp76819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp76818))))
                                        (declare (not safe))
                                        (cons __tmp76828 __tmp76817))))
                                 (declare (not safe))
                                 (cons __tmp76832 __tmp76816))))
                          (declare (not safe))
                          (cons 'begin __tmp76815))))
                   (declare (not safe))
                   (__SRC__% __tmp76814 _stx76234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e76287_))
                                                    (let* ((_$tgt7629276318_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e76287_)))
                                                           (_$hd7629376321_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7629276318_)))
                                                           (_$tl7629476324_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7629276318_))))
                                                      (let ((_id76328_
                                                             _$hd7629376321_))
                                                        (if (let ((__tmp76842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7629476324_))))
                      (declare (not safe))
                      (equal? __tmp76842 '()))
                    (let ((__tmp76837
                           (let ((__tmp76838
                                  (let ((__tmp76841
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76328_)))
                                        (__tmp76839
                                         (let ((__tmp76840
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr76285_))))
                                           (declare (not safe))
                                           (cons __tmp76840 '()))))
                                    (declare (not safe))
                                    (cons __tmp76841 __tmp76839))))
                             (declare (not safe))
                             (cons 'define __tmp76838))))
                      (declare (not safe))
                      (__SRC__% __tmp76837 _stx76234_))
                    (let () (declare (not safe)) (_$E7629076315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7629076315_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e76287_))
                                          (let* ((_$tgt7629576333_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e76287_)))
                                                 (_$hd7629676336_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7629576333_)))
                                                 (_$tl7629776339_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7629576333_))))
                                            (if (let ((__tmp76844
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7629676336_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76844 '#f))
                                                (if (let ((__tmp76843
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7629776339_))))
                                                      (declare (not safe))
                                                      (equal? __tmp76843 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr76285_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7628976330_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7628976330_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7628976330_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7623876250_)))))
                            (let () (declare (not safe)) (_$E7623876250_)))))
                    (let () (declare (not safe)) (_$E7623876250_))))
              (let () (declare (not safe)) (_$E7623876250_))))))
    (define __compile-head-id
      (lambda (_e76232_)
        (let ((__tmp76846
               (if (let () (declare (not safe)) (__AST-e _e76232_))
                   _e76232_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp76846))))
    (define __compile-lambda-head
      (lambda (_hd76189_)
        (let _recur76191_ ((_rest76193_ _hd76189_))
          (let* ((_$e76195_ _rest76193_)
                 (_$E7619776215_
                  (lambda ()
                    (let ((_$E7619876212_
                           (lambda ()
                             (let* ((_$E7619976207_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e76195_))))
                                    (_tail76210_ _$e76195_))
                               (declare (not safe))
                               (__compile-head-id _tail76210_)))))
                      (if (let ((__tmp76847
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e76195_))))
                            (declare (not safe))
                            (equal? __tmp76847 '()))
                          '()
                          (let () (declare (not safe)) (_$E7619876212_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76195_))
                (let* ((_$tgt7620076218_
                        (let () (declare (not safe)) (__AST-e _$e76195_)))
                       (_$hd7620176221_
                        (let () (declare (not safe)) (##car _$tgt7620076218_)))
                       (_$tl7620276224_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7620076218_))))
                  (let* ((_hd76228_ _$hd7620176221_)
                         (_rest76230_ _$tl7620276224_))
                    (let ((__tmp76849
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd76228_)))
                          (__tmp76848
                           (let ()
                             (declare (not safe))
                             (_recur76191_ _rest76230_))))
                      (declare (not safe))
                      (cons __tmp76849 __tmp76848))))
                (let () (declare (not safe)) (_$E7619776215_)))))))
    (define __compile-lambda%
      (lambda (_stx76136_)
        (let* ((_$e76138_ _stx76136_)
               (_$E7614076152_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76138_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76138_))
              (let* ((_$tgt7614176155_
                      (let () (declare (not safe)) (__AST-e _$e76138_)))
                     (_$hd7614276158_
                      (let () (declare (not safe)) (##car _$tgt7614176155_)))
                     (_$tl7614376161_
                      (let () (declare (not safe)) (##cdr _$tgt7614176155_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7614376161_))
                    (let* ((_$tgt7614476165_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7614376161_)))
                           (_$hd7614576168_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7614476165_)))
                           (_$tl7614676171_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7614476165_))))
                      (let ((_hd76175_ _$hd7614576168_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7614676171_))
                            (let* ((_$tgt7614776177_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7614676171_)))
                                   (_$hd7614876180_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7614776177_)))
                                   (_$tl7614976183_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7614776177_))))
                              (let ((_body76187_ _$hd7614876180_))
                                (if (let ((__tmp76855
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7614976183_))))
                                      (declare (not safe))
                                      (equal? __tmp76855 '()))
                                    (let ((__tmp76850
                                           (let ((__tmp76851
                                                  (let ((__tmp76854
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd76175_)))
                                                        (__tmp76852
                                                         (let ((__tmp76853
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body76187_))))
                   (declare (not safe))
                   (cons __tmp76853 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76854
                                                          __tmp76852))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp76851))))
                                      (declare (not safe))
                                      (__SRC__% __tmp76850 _stx76136_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7614076152_)))))
                            (let () (declare (not safe)) (_$E7614076152_)))))
                    (let () (declare (not safe)) (_$E7614076152_))))
              (let () (declare (not safe)) (_$E7614076152_))))))
    (define __compile-case-lambda%
      (lambda (_stx75928_)
        (letrec ((_variadic?75930_
                  (lambda (_hd76101_)
                    (let* ((_$e76103_ _hd76101_)
                           (_$E7610576121_
                            (lambda ()
                              (let ((_$E7610676118_
                                     (lambda ()
                                       (let ((_$E7610776115_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e76103_)))))
                                         '#t))))
                                (if (let ((__tmp76856
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e76103_))))
                                      (declare (not safe))
                                      (equal? __tmp76856 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7610676118_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76103_))
                          (let* ((_$tgt7610876124_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76103_)))
                                 (_$hd7610976127_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7610876124_)))
                                 (_$tl7611076130_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7610876124_))))
                            (let ((_rest76134_ _$tl7611076130_))
                              (declare (not safe))
                              (_variadic?75930_ _rest76134_)))
                          (let () (declare (not safe)) (_$E7610576121_))))))
                 (_arity75931_
                  (lambda (_hd76066_)
                    (let _lp76068_ ((_rest76070_ _hd76066_) (_k76071_ '0))
                      (let* ((_$e76073_ _rest76070_)
                             (_$E7607576086_
                              (lambda ()
                                (let ((_$E7607676083_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e76073_)))))
                                  _k76071_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e76073_))
                            (let* ((_$tgt7607776089_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e76073_)))
                                   (_$hd7607876092_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7607776089_)))
                                   (_$tl7607976095_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7607776089_))))
                              (let* ((_rest76099_ _$tl7607976095_)
                                     (__tmp76857
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k76071_ '1))))
                                (declare (not safe))
                                (_lp76068_ _rest76099_ __tmp76857)))
                            (let () (declare (not safe)) (_$E7607576086_)))))))
                 (_generate75932_
                  (lambda (_rest75993_ _args75994_ _len75995_)
                    (let* ((_$e75997_ _rest75993_)
                           (_$E7599976010_
                            (lambda ()
                              (let* ((_$E7600076007_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e75997_))))
                                     (__tmp76858
                                      (let ((__tmp76859
                                             (let ((__tmp76860
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args75994_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp76860))))
                                        (declare (not safe))
                                        (cons 'error __tmp76859))))
                                (declare (not safe))
                                (__SRC__% __tmp76858 _stx75928_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75997_))
                          (let* ((_$tgt7600176013_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75997_)))
                                 (_$hd7600276016_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7600176013_)))
                                 (_$tl7600376019_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7600176013_))))
                            (let* ((_clause76023_ _$hd7600276016_)
                                   (_rest76025_ _$tl7600376019_)
                                   (_$e76027_ _clause76023_)
                                   (_$E7602976038_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e76027_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e76027_))
                                  (let* ((_$tgt7603076041_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e76027_)))
                                         (_$hd7603176044_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7603076041_)))
                                         (_$tl7603276047_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7603076041_))))
                                    (let ((_hd76051_ _$hd7603176044_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7603276047_))
                                          (let* ((_$tgt7603376053_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7603276047_)))
                                                 (_$hd7603476056_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7603376053_)))
                                                 (_$tl7603576059_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7603376053_))))
                                            (if (let ((__tmp76875
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7603576059_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76875 '()))
                                                (let ((_clen76063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity75931_
                                                          _hd76051_)))
                                                      (_cmp76064_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?75930_
                                                              _hd76051_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp76861
                                                         (let ((__tmp76862
                                                                (let ((__tmp76872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76873
                                      (let ((__tmp76874
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen76063_ '()))))
                                        (declare (not safe))
                                        (cons _len75995_ __tmp76874))))
                                 (declare (not safe))
                                 (cons _cmp76064_ __tmp76873)))
                              (__tmp76863
                               (let ((__tmp76866
                                      (let ((__tmp76867
                                             (let ((__tmp76868
                                                    (let ((__tmp76870
                                                           (let ((__tmp76871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause76023_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp76871)))
                  (__tmp76869
                   (let () (declare (not safe)) (cons _args75994_ '()))))
              (declare (not safe))
              (cons __tmp76870 __tmp76869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp76868))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76867 _stx75928_)))
                                     (__tmp76864
                                      (let ((__tmp76865
                                             (let ()
                                               (declare (not safe))
                                               (_generate75932_
                                                _rest76025_
                                                _args75994_
                                                _len75995_))))
                                        (declare (not safe))
                                        (cons __tmp76865 '()))))
                                 (declare (not safe))
                                 (cons __tmp76866 __tmp76864))))
                          (declare (not safe))
                          (cons __tmp76872 __tmp76863))))
                   (declare (not safe))
                   (cons 'if __tmp76862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp76861
                                                     _stx75928_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7602976038_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7602976038_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7602976038_)))))
                          (let () (declare (not safe)) (_$E7599976010_)))))))
          (let* ((_$e75934_ _stx75928_)
                 (_$E7593675968_
                  (lambda ()
                    (let ((_$E7593775950_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75934_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75934_))
                          (let* ((_$tgt7593875953_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75934_)))
                                 (_$hd7593975956_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7593875953_)))
                                 (_$tl7594075959_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7593875953_))))
                            (let ((_clauses75963_ _$tl7594075959_))
                              (let ((_args75965_
                                     (let ((__tmp76876 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76876 _stx75928_)))
                                    (_len75966_
                                     (let ((__tmp76877 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76877 _stx75928_))))
                                (let ((__tmp76878
                                       (let ((__tmp76879
                                              (let ((__tmp76880
                                                     (let ((__tmp76881
                                                            (let ((__tmp76882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76883
                                  (let ((__tmp76886
                                         (let ((__tmp76887
                                                (let ((__tmp76888
                                                       (let ((__tmp76889
                                                              (let ((__tmp76890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp76891
                                    (let ()
                                      (declare (not safe))
                                      (cons _args75965_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp76891))))
                        (declare (not safe))
                        (__SRC__% __tmp76890 _stx75928_))))
                 (declare (not safe))
                 (cons __tmp76889 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len75966_
                                                        __tmp76888))))
                                           (declare (not safe))
                                           (cons __tmp76887 '())))
                                        (__tmp76884
                                         (let ((__tmp76885
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate75932_
                                                   _clauses75963_
                                                   _args75965_
                                                   _len75966_))))
                                           (declare (not safe))
                                           (cons __tmp76885 '()))))
                                    (declare (not safe))
                                    (cons __tmp76886 __tmp76884))))
                             (declare (not safe))
                             (cons 'let __tmp76883))))
                      (declare (not safe))
                      (__SRC__% __tmp76882 _stx75928_))))
               (declare (not safe))
               (cons __tmp76881 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args75965_
                                                      __tmp76880))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp76879))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76878 _stx75928_)))))
                          (let () (declare (not safe)) (_$E7593775950_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75934_))
                (let* ((_$tgt7594175971_
                        (let () (declare (not safe)) (__AST-e _$e75934_)))
                       (_$hd7594275974_
                        (let () (declare (not safe)) (##car _$tgt7594175971_)))
                       (_$tl7594375977_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7594175971_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7594375977_))
                      (let* ((_$tgt7594475981_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7594375977_)))
                             (_$hd7594575984_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7594475981_)))
                             (_$tl7594675987_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7594475981_))))
                        (let ((_clause75991_ _$hd7594575984_))
                          (if (let ((__tmp76893
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7594675987_))))
                                (declare (not safe))
                                (equal? __tmp76893 '()))
                              (let ((__tmp76892
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause75991_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp76892))
                              (let () (declare (not safe)) (_$E7593675968_)))))
                      (let () (declare (not safe)) (_$E7593675968_))))
                (let () (declare (not safe)) (_$E7593675968_)))))))
    (define __compile-let-form
      (lambda (_stx75697_ _compile-simple75698_ _compile-values75699_)
        (letrec ((_simple-bind?75701_
                  (lambda (_hd75886_)
                    (let* ((_hd7588775897_ _hd75886_)
                           (_else7589075905_ (lambda () '#f)))
                      (let ((_K7589375918_ (lambda (_id75916_) '#t))
                            (_K7589275910_ (lambda () '#t)))
                        (let ((_try-match7588975913_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7588775897_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7589275910_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7589075905_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7588775897_))
                              (let ((_tl7589575923_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7588775897_)))
                                    (_hd7589475921_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7588775897_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7589575923_))
                                    (let ((_id75926_ _hd7589475921_))
                                      (declare (not safe))
                                      (_K7589375918_ _id75926_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7588975913_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7588975913_))))))))
                 (_car-e75702_
                  (lambda (_hd75884_)
                    (if (let () (declare (not safe)) (pair? _hd75884_))
                        (car _hd75884_)
                        _hd75884_))))
          (let* ((_$e75704_ _stx75697_)
                 (_$E7570675849_
                  (lambda ()
                    (let ((_$E7570775729_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75704_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75704_))
                          (let* ((_$tgt7570875732_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75704_)))
                                 (_$hd7570975735_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7570875732_)))
                                 (_$tl7571075738_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7570875732_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7571075738_))
                                (let* ((_$tgt7571175742_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7571075738_)))
                                       (_$hd7571275745_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7571175742_)))
                                       (_$tl7571375748_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7571175742_))))
                                  (let ((_hd75752_ _$hd7571275745_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7571375748_))
                                        (let* ((_$tgt7571475754_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7571375748_)))
                                               (_$hd7571575757_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7571475754_)))
                                               (_$tl7571675760_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7571475754_))))
                                          (let ((_body75764_ _$hd7571575757_))
                                            (if (let ((__tmp76896
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7571675760_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76896 '()))
                                                (let* ((_hd-ids75804_
                                                        (map (lambda (_bind75766_)
                                                               (let* ((_$e75768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind75766_)
                              (_$E7577075779_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75768_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75768_))
                             (let* ((_$tgt7577175782_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75768_)))
                                    (_$hd7577275785_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7577175782_)))
                                    (_$tl7577375788_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7577175782_))))
                               (let ((_ids75792_ _$hd7577275785_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7577375788_))
                                     (let* ((_$tgt7577475794_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7577375788_)))
                                            (_$hd7577575797_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7577475794_)))
                                            (_$tl7577675800_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7577475794_))))
                                       (if (let ((__tmp76894
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7577675800_))))
                                             (declare (not safe))
                                             (equal? __tmp76894 '()))
                                           _ids75792_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7577075779_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7577075779_)))))
                             (let () (declare (not safe)) (_$E7577075779_)))))
                     _hd75752_))
               (_exprs75844_
                (map (lambda (_bind75806_)
                       (let* ((_$e75808_ _bind75806_)
                              (_$E7581075819_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75808_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75808_))
                             (let* ((_$tgt7581175822_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75808_)))
                                    (_$hd7581275825_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7581175822_)))
                                    (_$tl7581375828_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7581175822_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7581375828_))
                                   (let* ((_$tgt7581475832_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7581375828_)))
                                          (_$hd7581575835_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7581475832_)))
                                          (_$tl7581675838_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7581475832_))))
                                     (let ((_expr75842_ _$hd7581575835_))
                                       (if (let ((__tmp76895
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7581675838_))))
                                             (declare (not safe))
                                             (equal? __tmp76895 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr75842_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7581075819_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7581075819_))))
                             (let () (declare (not safe)) (_$E7581075819_)))))
                     _hd75752_))
               (_body75846_
                (let () (declare (not safe)) (__compile _body75764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?75701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids75804_))
              (_compile-simple75698_
               (map _car-e75702_ _hd-ids75804_)
               _exprs75844_
               _body75846_)
              (_compile-values75699_ _hd-ids75804_ _exprs75844_ _body75846_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7570775729_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7570775729_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7570775729_))))
                          (let () (declare (not safe)) (_$E7570775729_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75704_))
                (let* ((_$tgt7571775852_
                        (let () (declare (not safe)) (__AST-e _$e75704_)))
                       (_$hd7571875855_
                        (let () (declare (not safe)) (##car _$tgt7571775852_)))
                       (_$tl7571975858_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7571775852_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7571975858_))
                      (let* ((_$tgt7572075862_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7571975858_)))
                             (_$hd7572175865_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7572075862_)))
                             (_$tl7572275868_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7572075862_))))
                        (if (let ((__tmp76898
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7572175865_))))
                              (declare (not safe))
                              (equal? __tmp76898 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7572275868_))
                                (let* ((_$tgt7572375872_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7572275868_)))
                                       (_$hd7572475875_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7572375872_)))
                                       (_$tl7572575878_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7572375872_))))
                                  (let ((_body75882_ _$hd7572475875_))
                                    (if (let ((__tmp76897
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7572575878_))))
                                          (declare (not safe))
                                          (equal? __tmp76897 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body75882_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7570675849_)))))
                                (let () (declare (not safe)) (_$E7570675849_)))
                            (let () (declare (not safe)) (_$E7570675849_))))
                      (let () (declare (not safe)) (_$E7570675849_))))
                (let () (declare (not safe)) (_$E7570675849_)))))))
    (define __compile-let-values%
      (lambda (_stx75512_)
        (letrec ((_compile-simple75514_
                  (lambda (_hd-ids75693_ _exprs75694_ _body75695_)
                    (let ((__tmp76899
                           (let ((__tmp76900
                                  (let ((__tmp76902
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75693_)
                                              _exprs75694_))
                                        (__tmp76901
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75695_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76902 __tmp76901))))
                             (declare (not safe))
                             (cons 'let __tmp76900))))
                      (declare (not safe))
                      (__SRC__% __tmp76899 _stx75512_))))
                 (_compile-values75515_
                  (lambda (_hd-ids75611_ _exprs75612_ _body75613_)
                    (let _lp75615_ ((_rest75617_ _hd-ids75611_)
                                    (_exprs75618_ _exprs75612_)
                                    (_bind75619_ '())
                                    (_post75620_ '()))
                      (let* ((_rest7562175635_ _rest75617_)
                             (_else7562475643_
                              (lambda ()
                                (let ((__tmp76903
                                       (let ((__tmp76904
                                              (let ((__tmp76907
                                                     (reverse _bind75619_))
                                                    (__tmp76905
                                                     (let ((__tmp76906
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post75516_
                                                               _post75620_
                                                               _body75613_))))
                                                       (declare (not safe))
                                                       (cons __tmp76906 '()))))
                                                (declare (not safe))
                                                (cons __tmp76907 __tmp76905))))
                                         (declare (not safe))
                                         (cons 'let __tmp76904))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76903 _stx75512_)))))
                        (let ((_K7562975676_
                               (lambda (_rest75673_ _id75674_)
                                 (let ((__tmp76913 (cdr _exprs75618_))
                                       (__tmp76908
                                        (let ((__tmp76909
                                               (let ((__tmp76912
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75674_)))
                                                     (__tmp76910
                                                      (let ((__tmp76911
                                                             (car _exprs75618_)))
                                                        (declare (not safe))
                                                        (cons __tmp76911
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76912
                                                       __tmp76910))))
                                          (declare (not safe))
                                          (cons __tmp76909 _bind75619_))))
                                   (declare (not safe))
                                   (_lp75615_
                                    _rest75673_
                                    __tmp76913
                                    __tmp76908
                                    _post75620_))))
                              (_K7562675658_
                               (lambda (_rest75647_ _hd75648_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75648_))
                                     (let ((__tmp76934 (cdr _exprs75618_))
                                           (__tmp76927
                                            (let ((__tmp76928
                                                   (let ((__tmp76933
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75648_)))
                                                         (__tmp76929
                                                          (let ((__tmp76930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76931
                                (let ((__tmp76932 (car _exprs75618_)))
                                  (declare (not safe))
                                  (cons __tmp76932 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76931))))
                    (declare (not safe))
                    (cons __tmp76930 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76933
                                                           __tmp76929))))
                                              (declare (not safe))
                                              (cons __tmp76928 _bind75619_))))
                                       (declare (not safe))
                                       (_lp75615_
                                        _rest75647_
                                        __tmp76934
                                        __tmp76927
                                        _post75620_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75648_))
                                         (let* ((_len75650_ (length _hd75648_))
                                                (_tmp75652_
                                                 (let ((__tmp76914 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76914))))
                                           (let ((__tmp76926
                                                  (cdr _exprs75618_))
                                                 (__tmp76922
                                                  (let ((__tmp76923
                                                         (let ((__tmp76924
                                                                (let ((__tmp76925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75618_)))
                          (declare (not safe))
                          (cons __tmp76925 '()))))
                   (declare (not safe))
                   (cons _tmp75652_ __tmp76924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76923
                                                          _bind75619_)))
                                                 (__tmp76915
                                                  (let ((__tmp76916
                                                         (let ((__tmp76917
                                                                (let ((__tmp76918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76920
                                      (lambda (_id75655_ _k75656_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75655_))
                                            (let ((__tmp76921
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75655_))))
                                              (declare (not safe))
                                              (cons __tmp76921 _k75656_))
                                            '#f)))
                                     (__tmp76919
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len75650_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76920
                                  _hd75648_
                                  __tmp76919))))
                          (declare (not safe))
                          (cons _len75650_ __tmp76918))))
                   (declare (not safe))
                   (cons _tmp75652_ __tmp76917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76916
                                                          _post75620_))))
                                             (declare (not safe))
                                             (_lp75615_
                                              _rest75647_
                                              __tmp76926
                                              __tmp76922
                                              __tmp76915)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75512_
                                            _hd75648_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7562175635_))
                              (let ((_tl7563175681_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7562175635_)))
                                    (_hd7563075679_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7562175635_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7563075679_))
                                    (let ((_tl7563375686_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7563075679_)))
                                          (_hd7563275684_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7563075679_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7563375686_))
                                          (let ((_id75689_ _hd7563275684_)
                                                (_rest75691_ _tl7563175681_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7562975676_
                                               _rest75691_
                                               _id75689_)))
                                          (let ((_hd75666_ _hd7563075679_)
                                                (_rest75668_ _tl7563175681_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7562675658_
                                               _rest75668_
                                               _hd75666_)))))
                                    (let ((_hd75666_ _hd7563075679_)
                                          (_rest75668_ _tl7563175681_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7562675658_
                                         _rest75668_
                                         _hd75666_)))))
                              (let ()
                                (declare (not safe))
                                (_else7562475643_))))))))
                 (_compile-post75516_
                  (lambda (_post75518_ _body75519_)
                    (let _lp75521_ ((_rest75523_ _post75518_)
                                    (_check75524_ '())
                                    (_bind75525_ '()))
                      (let* ((_rest7552675538_ _rest75523_)
                             (_else7552875546_
                              (lambda ()
                                (let ((__tmp76935
                                       (let ((__tmp76936
                                              (let ((__tmp76937
                                                     (let ((__tmp76938
                                                            (let ((__tmp76939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76940
                                  (let ((__tmp76941
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75519_ '()))))
                                    (declare (not safe))
                                    (cons _bind75525_ __tmp76941))))
                             (declare (not safe))
                             (cons 'let __tmp76940))))
                      (declare (not safe))
                      (__SRC__% __tmp76939 _stx75512_))))
               (declare (not safe))
               (cons __tmp76938 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp76937
                                                        _check75524_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp76936))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76935 _stx75512_))))
                             (_K7553075585_
                              (lambda (_rest75549_
                                       _init75550_
                                       _len75551_
                                       _tmp75552_)
                                (let ((__tmp76949
                                       (let ((__tmp76950
                                              (let ((__tmp76951
                                                     (let ((__tmp76952
                                                            (let ((__tmp76953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75551_ '()))))
                      (declare (not safe))
                      (cons _tmp75552_ __tmp76953))))
               (declare (not safe))
               (cons '__check-values __tmp76952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp76951
                                                 _stx75512_))))
                                         (declare (not safe))
                                         (cons __tmp76950 _check75524_)))
                                      (__tmp76942
                                       (let ((__tmp76943
                                              (lambda (_hd75554_ _r75555_)
                                                (let* ((_hd7555675563_
                                                        _hd75554_)
                                                       (_E7555875567_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7555675563_))))
               (_K7555975573_
                (lambda (_k75570_ _id75571_)
                  (let ((__tmp76944
                         (let ((__tmp76945
                                (let ((__tmp76946
                                       (let ((__tmp76947
                                              (let ((__tmp76948
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k75570_ '()))))
                                                (declare (not safe))
                                                (cons _tmp75552_ __tmp76948))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp76947))))
                                  (declare (not safe))
                                  (cons __tmp76946 '()))))
                           (declare (not safe))
                           (cons _id75571_ __tmp76945))))
                    (declare (not safe))
                    (cons __tmp76944 _r75555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7555675563_))
                                                      (let ((_hd7556075576_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7555675563_)))
                    (_tl7556175578_
                     (let () (declare (not safe)) (##cdr _hd7555675563_))))
                (let* ((_id75581_ _hd7556075576_) (_k75583_ _tl7556175578_))
                  (declare (not safe))
                  (_K7555975573_ _k75583_ _id75581_)))
              (let () (declare (not safe)) (_E7555875567_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp76943
                                                 _bind75525_
                                                 _init75550_))))
                                  (declare (not safe))
                                  (_lp75521_
                                   _rest75549_
                                   __tmp76949
                                   __tmp76942)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7552675538_))
                            (let ((_hd7553175588_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7552675538_)))
                                  (_tl7553275590_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7552675538_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7553175588_))
                                  (let ((_hd7553375593_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7553175588_)))
                                        (_tl7553475595_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7553175588_))))
                                    (let ((_tmp75598_ _hd7553375593_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7553475595_))
                                          (let ((_hd7553575600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7553475595_)))
                                                (_tl7553675602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7553475595_))))
                                            (let* ((_len75605_ _hd7553575600_)
                                                   (_init75607_ _tl7553675602_)
                                                   (_rest75609_
                                                    _tl7553275590_))
                                              (declare (not safe))
                                              (_K7553075585_
                                               _rest75609_
                                               _init75607_
                                               _len75605_
                                               _tmp75598_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7552875546_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7552875546_))))
                            (let ()
                              (declare (not safe))
                              (_else7552875546_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75512_
             _compile-simple75514_
             _compile-values75515_)))))
    (define __compile-letrec-values%
      (lambda (_stx75312_)
        (letrec ((_compile-simple75314_
                  (lambda (_hd-ids75508_ _exprs75509_ _body75510_)
                    (let ((__tmp76954
                           (let ((__tmp76955
                                  (let ((__tmp76957
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75508_)
                                              _exprs75509_))
                                        (__tmp76956
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75510_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76957 __tmp76956))))
                             (declare (not safe))
                             (cons 'letrec __tmp76955))))
                      (declare (not safe))
                      (__SRC__% __tmp76954 _stx75312_))))
                 (_compile-values75315_
                  (lambda (_hd-ids75422_ _exprs75423_ _body75424_)
                    (let _lp75426_ ((_rest75428_ _hd-ids75422_)
                                    (_exprs75429_ _exprs75423_)
                                    (_pre75430_ '())
                                    (_bind75431_ '())
                                    (_post75432_ '()))
                      (let* ((_rest7543375447_ _rest75428_)
                             (_else7543675455_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner75316_
                                   _pre75430_
                                   _bind75431_
                                   _post75432_
                                   _body75424_)))))
                        (let ((_K7544175491_
                               (lambda (_rest75488_ _id75489_)
                                 (let ((__tmp76963 (cdr _exprs75429_))
                                       (__tmp76958
                                        (let ((__tmp76959
                                               (let ((__tmp76962
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75489_)))
                                                     (__tmp76960
                                                      (let ((__tmp76961
                                                             (car _exprs75429_)))
                                                        (declare (not safe))
                                                        (cons __tmp76961
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76962
                                                       __tmp76960))))
                                          (declare (not safe))
                                          (cons __tmp76959 _bind75431_))))
                                   (declare (not safe))
                                   (_lp75426_
                                    _rest75488_
                                    __tmp76963
                                    _pre75430_
                                    __tmp76958
                                    _post75432_))))
                              (_K7543875473_
                               (lambda (_rest75459_ _hd75460_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75460_))
                                     (let ((__tmp76991 (cdr _exprs75429_))
                                           (__tmp76984
                                            (let ((__tmp76985
                                                   (let ((__tmp76990
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75460_)))
                                                         (__tmp76986
                                                          (let ((__tmp76987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76988
                                (let ((__tmp76989 (car _exprs75429_)))
                                  (declare (not safe))
                                  (cons __tmp76989 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76988))))
                    (declare (not safe))
                    (cons __tmp76987 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76990
                                                           __tmp76986))))
                                              (declare (not safe))
                                              (cons __tmp76985 _bind75431_))))
                                       (declare (not safe))
                                       (_lp75426_
                                        _rest75459_
                                        __tmp76991
                                        _pre75430_
                                        __tmp76984
                                        _post75432_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75460_))
                                         (let* ((_len75462_ (length _hd75460_))
                                                (_tmp75464_
                                                 (let ((__tmp76964 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76964))))
                                           (let ((__tmp76983
                                                  (cdr _exprs75429_))
                                                 (__tmp76976
                                                  (let ((__tmp76977
                                                         (lambda (_id75467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r75468_)
                   (if (let () (declare (not safe)) (__AST-e _id75467_))
                       (let ((__tmp76978
                              (let ((__tmp76982
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id75467_)))
                                    (__tmp76979
                                     (let ((__tmp76980
                                            (let ((__tmp76981
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp76981))))
                                       (declare (not safe))
                                       (cons __tmp76980 '()))))
                                (declare (not safe))
                                (cons __tmp76982 __tmp76979))))
                         (declare (not safe))
                         (cons __tmp76978 _r75468_))
                       _r75468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp76977
                                                            _pre75430_
                                                            _hd75460_)))
                                                 (__tmp76972
                                                  (let ((__tmp76973
                                                         (let ((__tmp76974
                                                                (let ((__tmp76975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75429_)))
                          (declare (not safe))
                          (cons __tmp76975 '()))))
                   (declare (not safe))
                   (cons _tmp75464_ __tmp76974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76973
                                                          _bind75431_)))
                                                 (__tmp76965
                                                  (let ((__tmp76966
                                                         (let ((__tmp76967
                                                                (let ((__tmp76968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76970
                                      (lambda (_id75470_ _k75471_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75470_))
                                            (let ((__tmp76971
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75470_))))
                                              (declare (not safe))
                                              (cons __tmp76971 _k75471_))
                                            '#f)))
                                     (__tmp76969
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len75462_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76970
                                  _hd75460_
                                  __tmp76969))))
                          (declare (not safe))
                          (cons _len75462_ __tmp76968))))
                   (declare (not safe))
                   (cons _tmp75464_ __tmp76967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76966
                                                          _post75432_))))
                                             (declare (not safe))
                                             (_lp75426_
                                              _rest75459_
                                              __tmp76983
                                              __tmp76976
                                              __tmp76972
                                              __tmp76965)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75312_
                                            _hd75460_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7543375447_))
                              (let ((_tl7544375496_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7543375447_)))
                                    (_hd7544275494_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7543375447_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7544275494_))
                                    (let ((_tl7544575501_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7544275494_)))
                                          (_hd7544475499_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7544275494_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7544575501_))
                                          (let ((_id75504_ _hd7544475499_)
                                                (_rest75506_ _tl7544375496_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7544175491_
                                               _rest75506_
                                               _id75504_)))
                                          (let ((_hd75481_ _hd7544275494_)
                                                (_rest75483_ _tl7544375496_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7543875473_
                                               _rest75483_
                                               _hd75481_)))))
                                    (let ((_hd75481_ _hd7544275494_)
                                          (_rest75483_ _tl7544375496_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7543875473_
                                         _rest75483_
                                         _hd75481_)))))
                              (let ()
                                (declare (not safe))
                                (_else7543675455_))))))))
                 (_compile-inner75316_
                  (lambda (_pre75417_ _bind75418_ _post75419_ _body75420_)
                    (if (let () (declare (not safe)) (null? _pre75417_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind75317_
                           _bind75418_
                           _post75419_
                           _body75420_))
                        (let ((__tmp76992
                               (let ((__tmp76993
                                      (let ((__tmp76996 (reverse _pre75417_))
                                            (__tmp76994
                                             (let ((__tmp76995
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind75317_
                                                       _bind75418_
                                                       _post75419_
                                                       _body75420_))))
                                               (declare (not safe))
                                               (cons __tmp76995 '()))))
                                        (declare (not safe))
                                        (cons __tmp76996 __tmp76994))))
                                 (declare (not safe))
                                 (cons 'let __tmp76993))))
                          (declare (not safe))
                          (__SRC__% __tmp76992 _stx75312_)))))
                 (_compile-bind75317_
                  (lambda (_bind75413_ _post75414_ _body75415_)
                    (let ((__tmp76997
                           (let ((__tmp76998
                                  (let ((__tmp77001 (reverse _bind75413_))
                                        (__tmp76999
                                         (let ((__tmp77000
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75318_
                                                   _post75414_
                                                   _body75415_))))
                                           (declare (not safe))
                                           (cons __tmp77000 '()))))
                                    (declare (not safe))
                                    (cons __tmp77001 __tmp76999))))
                             (declare (not safe))
                             (cons 'letrec __tmp76998))))
                      (declare (not safe))
                      (__SRC__% __tmp76997 _stx75312_))))
                 (_compile-post75318_
                  (lambda (_post75320_ _body75321_)
                    (let _lp75323_ ((_rest75325_ _post75320_)
                                    (_check75326_ '())
                                    (_bind75327_ '()))
                      (let* ((_rest7532875340_ _rest75325_)
                             (_else7533075348_
                              (lambda ()
                                (let ((__tmp77002
                                       (let ((__tmp77003
                                              (let ((__tmp77004
                                                     (let ((__tmp77005
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body75321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp77005 _bind75327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77004
                                                        _check75326_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77003))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77002 _stx75312_))))
                             (_K7533275387_
                              (lambda (_rest75351_
                                       _init75352_
                                       _len75353_
                                       _tmp75354_)
                                (let ((__tmp77014
                                       (let ((__tmp77015
                                              (let ((__tmp77016
                                                     (let ((__tmp77017
                                                            (let ((__tmp77018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75353_ '()))))
                      (declare (not safe))
                      (cons _tmp75354_ __tmp77018))))
               (declare (not safe))
               (cons '__check-values __tmp77017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77016
                                                 _stx75312_))))
                                         (declare (not safe))
                                         (cons __tmp77015 _check75326_)))
                                      (__tmp77006
                                       (let ((__tmp77007
                                              (lambda (_hd75356_ _r75357_)
                                                (let* ((_hd7535875365_
                                                        _hd75356_)
                                                       (_E7536075369_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7535875365_))))
               (_K7536175375_
                (lambda (_k75372_ _id75373_)
                  (let ((__tmp77008
                         (let ((__tmp77009
                                (let ((__tmp77010
                                       (let ((__tmp77011
                                              (let ((__tmp77012
                                                     (let ((__tmp77013
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k75372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp75354_ __tmp77013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp77012))))
                                         (declare (not safe))
                                         (cons __tmp77011 '()))))
                                  (declare (not safe))
                                  (cons _id75373_ __tmp77010))))
                           (declare (not safe))
                           (cons 'set! __tmp77009))))
                    (declare (not safe))
                    (cons __tmp77008 _r75357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7535875365_))
                                                      (let ((_hd7536275378_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7535875365_)))
                    (_tl7536375380_
                     (let () (declare (not safe)) (##cdr _hd7535875365_))))
                (let* ((_id75383_ _hd7536275378_) (_k75385_ _tl7536375380_))
                  (declare (not safe))
                  (_K7536175375_ _k75385_ _id75383_)))
              (let () (declare (not safe)) (_E7536075369_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77007
                                                 _bind75327_
                                                 _init75352_))))
                                  (declare (not safe))
                                  (_lp75323_
                                   _rest75351_
                                   __tmp77014
                                   __tmp77006)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7532875340_))
                            (let ((_hd7533375390_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7532875340_)))
                                  (_tl7533475392_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7532875340_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7533375390_))
                                  (let ((_hd7533575395_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7533375390_)))
                                        (_tl7533675397_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7533375390_))))
                                    (let ((_tmp75400_ _hd7533575395_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7533675397_))
                                          (let ((_hd7533775402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7533675397_)))
                                                (_tl7533875404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7533675397_))))
                                            (let* ((_len75407_ _hd7533775402_)
                                                   (_init75409_ _tl7533875404_)
                                                   (_rest75411_
                                                    _tl7533475392_))
                                              (declare (not safe))
                                              (_K7533275387_
                                               _rest75411_
                                               _init75409_
                                               _len75407_
                                               _tmp75400_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7533075348_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7533075348_))))
                            (let ()
                              (declare (not safe))
                              (_else7533075348_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75312_
             _compile-simple75314_
             _compile-values75315_)))))
    (define __compile-letrec*-values%
      (lambda (_stx75067_)
        (letrec ((_compile-simple75069_
                  (lambda (_hd-ids75308_ _exprs75309_ _body75310_)
                    (let ((__tmp77019
                           (let ((__tmp77020
                                  (let ((__tmp77022
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75308_)
                                              _exprs75309_))
                                        (__tmp77021
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75310_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77022 __tmp77021))))
                             (declare (not safe))
                             (cons 'letrec* __tmp77020))))
                      (declare (not safe))
                      (__SRC__% __tmp77019 _stx75067_))))
                 (_compile-values75070_
                  (lambda (_hd-ids75219_ _exprs75220_ _body75221_)
                    (let _lp75223_ ((_rest75225_ _hd-ids75219_)
                                    (_exprs75226_ _exprs75220_)
                                    (_bind75227_ '())
                                    (_post75228_ '()))
                      (let* ((_rest7522975243_ _rest75225_)
                             (_else7523275251_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind75071_
                                   _bind75227_
                                   _post75228_
                                   _body75221_)))))
                        (let ((_K7523775291_
                               (lambda (_rest75286_ _hd75287_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75287_))
                                     (let ((_id75289_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75287_))))
                                       (let ((__tmp77037 (cdr _exprs75226_))
                                             (__tmp77032
                                              (let ((__tmp77033
                                                     (let ((__tmp77034
                                                            (let ((__tmp77035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77036
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77036))))
                      (declare (not safe))
                      (cons __tmp77035 '()))))
               (declare (not safe))
               (cons _id75289_ __tmp77034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77033 _bind75227_)))
                                             (__tmp77028
                                              (let ((__tmp77029
                                                     (let ((__tmp77030
                                                            (let ((__tmp77031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs75226_)))
                      (declare (not safe))
                      (cons __tmp77031 '()))))
               (declare (not safe))
               (cons _id75289_ __tmp77030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77029
                                                      _post75228_))))
                                         (declare (not safe))
                                         (_lp75223_
                                          _rest75286_
                                          __tmp77037
                                          __tmp77032
                                          __tmp77028)))
                                     (let ((__tmp77027 (cdr _exprs75226_))
                                           (__tmp77023
                                            (let ((__tmp77024
                                                   (let ((__tmp77025
                                                          (let ((__tmp77026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs75226_)))
                    (declare (not safe))
                    (cons __tmp77026 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp77025))))
                                              (declare (not safe))
                                              (cons __tmp77024 _post75228_))))
                                       (declare (not safe))
                                       (_lp75223_
                                        _rest75286_
                                        __tmp77027
                                        _bind75227_
                                        __tmp77023)))))
                              (_K7523475271_
                               (lambda (_rest75255_ _hd75256_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75256_))
                                     (let ((_id75258_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75256_))))
                                       (let ((__tmp77073 (cdr _exprs75226_))
                                             (__tmp77068
                                              (let ((__tmp77069
                                                     (let ((__tmp77070
                                                            (let ((__tmp77071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77072
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77072))))
                      (declare (not safe))
                      (cons __tmp77071 '()))))
               (declare (not safe))
               (cons _id75258_ __tmp77070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77069 _bind75227_)))
                                             (__tmp77062
                                              (let ((__tmp77063
                                                     (let ((__tmp77064
                                                            (let ((__tmp77065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77066
                                  (let ((__tmp77067 (car _exprs75226_)))
                                    (declare (not safe))
                                    (cons __tmp77067 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp77066))))
                      (declare (not safe))
                      (cons __tmp77065 '()))))
               (declare (not safe))
               (cons _id75258_ __tmp77064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77063
                                                      _post75228_))))
                                         (declare (not safe))
                                         (_lp75223_
                                          _rest75255_
                                          __tmp77073
                                          __tmp77068
                                          __tmp77062)))
                                     (if (let ((__tmp77061
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd75256_))))
                                           (declare (not safe))
                                           (not __tmp77061))
                                         (let ((__tmp77060 (cdr _exprs75226_))
                                               (__tmp77056
                                                (let ((__tmp77057
                                                       (let ((__tmp77058
                                                              (let ((__tmp77059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs75226_)))
                        (declare (not safe))
                        (cons __tmp77059 '()))))
                 (declare (not safe))
                 (cons '#f __tmp77058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp77057
                                                        _post75228_))))
                                           (declare (not safe))
                                           (_lp75223_
                                            _rest75255_
                                            __tmp77060
                                            _bind75227_
                                            __tmp77056))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd75256_))
                                             (let* ((_len75260_
                                                     (length _hd75256_))
                                                    (_tmp75262_
                                                     (let ((__tmp77038
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp77038))))
                                               (let ((__tmp77055
                                                      (cdr _exprs75226_))
                                                     (__tmp77048
                                                      (let ((__tmp77049
                                                             (lambda (_id75265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r75266_)
                       (if (let () (declare (not safe)) (__AST-e _id75265_))
                           (let ((__tmp77050
                                  (let ((__tmp77054
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id75265_)))
                                        (__tmp77051
                                         (let ((__tmp77052
                                                (let ((__tmp77053
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp77053))))
                                           (declare (not safe))
                                           (cons __tmp77052 '()))))
                                    (declare (not safe))
                                    (cons __tmp77054 __tmp77051))))
                             (declare (not safe))
                             (cons __tmp77050 _r75266_))
                           _r75266_))))
                (declare (not safe))
                (foldl1 __tmp77049 _bind75227_ _hd75256_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp77039
                                                      (let ((__tmp77040
                                                             (let ((__tmp77041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77047 (car _exprs75226_))
                                  (__tmp77042
                                   (let ((__tmp77043
                                          (let ((__tmp77045
                                                 (lambda (_id75268_ _k75269_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id75268_))
                                                       (let ((__tmp77046
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id75268_))))
                 (declare (not safe))
                 (cons __tmp77046 _k75269_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp77044
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len75260_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp77045
                                             _hd75256_
                                             __tmp77044))))
                                     (declare (not safe))
                                     (cons _len75260_ __tmp77043))))
                              (declare (not safe))
                              (cons __tmp77047 __tmp77042))))
                       (declare (not safe))
                       (cons _tmp75262_ __tmp77041))))
                (declare (not safe))
                (cons __tmp77040 _post75228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp75223_
                                                  _rest75255_
                                                  __tmp77055
                                                  __tmp77048
                                                  __tmp77039)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx75067_
                                                _hd75256_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7522975243_))
                              (let ((_tl7523975296_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7522975243_)))
                                    (_hd7523875294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7522975243_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7523875294_))
                                    (let ((_tl7524175301_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7523875294_)))
                                          (_hd7524075299_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7523875294_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7524175301_))
                                          (let ((_hd75304_ _hd7524075299_)
                                                (_rest75306_ _tl7523975296_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7523775291_
                                               _rest75306_
                                               _hd75304_)))
                                          (let ((_hd75279_ _hd7523875294_)
                                                (_rest75281_ _tl7523975296_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7523475271_
                                               _rest75281_
                                               _hd75279_)))))
                                    (let ((_hd75279_ _hd7523875294_)
                                          (_rest75281_ _tl7523975296_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7523475271_
                                         _rest75281_
                                         _hd75279_)))))
                              (let ()
                                (declare (not safe))
                                (_else7523275251_))))))))
                 (_compile-bind75071_
                  (lambda (_bind75215_ _post75216_ _body75217_)
                    (let ((__tmp77074
                           (let ((__tmp77075
                                  (let ((__tmp77078 (reverse _bind75215_))
                                        (__tmp77076
                                         (let ((__tmp77077
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75072_
                                                   _post75216_
                                                   _body75217_))))
                                           (declare (not safe))
                                           (cons __tmp77077 '()))))
                                    (declare (not safe))
                                    (cons __tmp77078 __tmp77076))))
                             (declare (not safe))
                             (cons 'let __tmp77075))))
                      (declare (not safe))
                      (__SRC__% __tmp77074 _stx75067_))))
                 (_compile-post75072_
                  (lambda (_post75074_ _body75075_)
                    (let ((__tmp77079
                           (let ((__tmp77080
                                  (let ((__tmp77081
                                         (let ((__tmp77083
                                                (lambda (_hd75077_ _r75078_)
                                                  (let* ((_hd7507975102_
                                                          _hd75077_)
                                                         (_E7508375106_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7507975102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7509675200_
                                                           (lambda (_expr75198_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr75198_ _r75078_))))
                  (_K7509175178_
                   (lambda (_expr75175_ _id75176_)
                     (let ((__tmp77084
                            (let ((__tmp77085
                                   (let ((__tmp77086
                                          (let ((__tmp77087
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr75175_ '()))))
                                            (declare (not safe))
                                            (cons _id75176_ __tmp77087))))
                                     (declare (not safe))
                                     (cons 'set! __tmp77086))))
                              (declare (not safe))
                              (__SRC__% __tmp77085 _stx75067_))))
                       (declare (not safe))
                       (cons __tmp77084 _r75078_))))
                  (_K7508475145_
                   (lambda (_init75110_ _len75111_ _expr75112_ _tmp75113_)
                     (let ((__tmp77088
                            (let ((__tmp77089
                                   (let ((__tmp77090
                                          (let ((__tmp77104
                                                 (let ((__tmp77105
                                                        (let ((__tmp77106
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr75112_ '()))))
                  (declare (not safe))
                  (cons _tmp75113_ __tmp77106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77105 '())))
                                                (__tmp77091
                                                 (let ((__tmp77100
                                                        (let ((__tmp77101
                                                               (let ((__tmp77102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp77103
                                     (let ()
                                       (declare (not safe))
                                       (cons _len75111_ '()))))
                                (declare (not safe))
                                (cons _tmp75113_ __tmp77103))))
                         (declare (not safe))
                         (cons '__check-values __tmp77102))))
                  (declare (not safe))
                  (__SRC__% __tmp77101 _stx75067_)))
               (__tmp77092
                (let ((__tmp77093
                       (map (lambda (_hd75115_)
                              (let* ((_hd7511675123_ _hd75115_)
                                     (_E7511875127_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7511675123_))))
                                     (_K7511975133_
                                      (lambda (_k75130_ _id75131_)
                                        (let ((__tmp77094
                                               (let ((__tmp77095
                                                      (let ((__tmp77096
                                                             (let ((__tmp77097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77098
                                   (let ((__tmp77099
                                          (let ()
                                            (declare (not safe))
                                            (cons _k75130_ '()))))
                                     (declare (not safe))
                                     (cons _tmp75113_ __tmp77099))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp77098))))
                       (declare (not safe))
                       (cons __tmp77097 '()))))
                (declare (not safe))
                (cons _id75131_ __tmp77096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp77095))))
                                          (declare (not safe))
                                          (__SRC__% __tmp77094 _stx75067_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7511675123_))
                                    (let ((_hd7512075136_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7511675123_)))
                                          (_tl7512175138_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7511675123_))))
                                      (let* ((_id75141_ _hd7512075136_)
                                             (_k75143_ _tl7512175138_))
                                        (declare (not safe))
                                        (_K7511975133_ _k75143_ _id75141_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7511875127_)))))
                            _init75110_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp77093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77100
                                                         __tmp77092))))
                                            (declare (not safe))
                                            (cons __tmp77104 __tmp77091))))
                                     (declare (not safe))
                                     (cons 'let __tmp77090))))
                              (declare (not safe))
                              (__SRC__% __tmp77089 _stx75067_))))
                       (declare (not safe))
                       (cons __tmp77088 _r75078_)))))
              (if (let () (declare (not safe)) (##pair? _hd7507975102_))
                  (let ((_tl7509875205_
                         (let () (declare (not safe)) (##cdr _hd7507975102_)))
                        (_hd7509775203_
                         (let () (declare (not safe)) (##car _hd7507975102_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7509775203_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7509875205_))
                            (let ((_tl7510075210_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7509875205_)))
                                  (_hd7509975208_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7509875205_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7510075210_))
                                  (let ((_expr75213_ _hd7509975208_))
                                    (declare (not safe))
                                    (_K7509675200_ _expr75213_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7510075210_))
                                      (let ((_tl7509075164_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7510075210_)))
                                            (_hd7508975162_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7510075210_))))
                                        (let ((_tmp75153_ _hd7509775203_)
                                              (_expr75160_ _hd7509975208_)
                                              (_len75167_ _hd7508975162_)
                                              (_init75169_ _tl7509075164_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7508475145_
                                             _init75169_
                                             _len75167_
                                             _expr75160_
                                             _tmp75153_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7508375106_)))))
                            (let () (declare (not safe)) (_E7508375106_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7509875205_))
                            (let ((_tl7509575190_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7509875205_)))
                                  (_hd7509475188_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7509875205_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7509575190_))
                                  (let ((_id75186_ _hd7509775203_)
                                        (_expr75193_ _hd7509475188_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7509175178_ _expr75193_ _id75186_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7509575190_))
                                      (let ((_tl7509075164_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7509575190_)))
                                            (_hd7508975162_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7509575190_))))
                                        (let ((_tmp75153_ _hd7509775203_)
                                              (_expr75160_ _hd7509475188_)
                                              (_len75167_ _hd7508975162_)
                                              (_init75169_ _tl7509075164_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7508475145_
                                             _init75169_
                                             _len75167_
                                             _expr75160_
                                             _tmp75153_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7508375106_)))))
                            (let () (declare (not safe)) (_E7508375106_)))))
                  (let () (declare (not safe)) (_E7508375106_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp77082 (list _body75075_)))
                                           (declare (not safe))
                                           (foldl1 __tmp77083
                                                   __tmp77082
                                                   _post75074_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp77081))))
                             (declare (not safe))
                             (cons 'begin __tmp77080))))
                      (declare (not safe))
                      (__SRC__% __tmp77079 _stx75067_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75067_
             _compile-simple75069_
             _compile-values75070_)))))
    (define __compile-call%
      (lambda (_stx75027_)
        (let* ((_$e75029_ _stx75027_)
               (_$E7503175040_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75029_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75029_))
              (let* ((_$tgt7503275043_
                      (let () (declare (not safe)) (__AST-e _$e75029_)))
                     (_$hd7503375046_
                      (let () (declare (not safe)) (##car _$tgt7503275043_)))
                     (_$tl7503475049_
                      (let () (declare (not safe)) (##cdr _$tgt7503275043_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7503475049_))
                    (let* ((_$tgt7503575053_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7503475049_)))
                           (_$hd7503675056_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7503575053_)))
                           (_$tl7503775059_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7503575053_))))
                      (let* ((_rator75063_ _$hd7503675056_)
                             (_rands75065_ _$tl7503775059_)
                             (__tmp77107
                              (let ((__tmp77109
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator75063_)))
                                    (__tmp77108 (map __compile _rands75065_)))
                                (declare (not safe))
                                (cons __tmp77109 __tmp77108))))
                        (declare (not safe))
                        (__SRC__% __tmp77107 _stx75027_)))
                    (let () (declare (not safe)) (_$E7503175040_))))
              (let () (declare (not safe)) (_$E7503175040_))))))
    (define __compile-ref%
      (lambda (_stx74989_)
        (let* ((_$e74991_ _stx74989_)
               (_$E7499375002_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74991_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74991_))
              (let* ((_$tgt7499475005_
                      (let () (declare (not safe)) (__AST-e _$e74991_)))
                     (_$hd7499575008_
                      (let () (declare (not safe)) (##car _$tgt7499475005_)))
                     (_$tl7499675011_
                      (let () (declare (not safe)) (##cdr _$tgt7499475005_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7499675011_))
                    (let* ((_$tgt7499775015_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7499675011_)))
                           (_$hd7499875018_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7499775015_)))
                           (_$tl7499975021_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7499775015_))))
                      (let ((_id75025_ _$hd7499875018_))
                        (if (let ((__tmp77110
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7499975021_))))
                              (declare (not safe))
                              (equal? __tmp77110 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id75025_ _stx74989_))
                            (let () (declare (not safe)) (_$E7499375002_)))))
                    (let () (declare (not safe)) (_$E7499375002_))))
              (let () (declare (not safe)) (_$E7499375002_))))))
    (define __compile-setq%
      (lambda (_stx74936_)
        (let* ((_$e74938_ _stx74936_)
               (_$E7494074952_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74938_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74938_))
              (let* ((_$tgt7494174955_
                      (let () (declare (not safe)) (__AST-e _$e74938_)))
                     (_$hd7494274958_
                      (let () (declare (not safe)) (##car _$tgt7494174955_)))
                     (_$tl7494374961_
                      (let () (declare (not safe)) (##cdr _$tgt7494174955_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7494374961_))
                    (let* ((_$tgt7494474965_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7494374961_)))
                           (_$hd7494574968_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7494474965_)))
                           (_$tl7494674971_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7494474965_))))
                      (let ((_id74975_ _$hd7494574968_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7494674971_))
                            (let* ((_$tgt7494774977_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7494674971_)))
                                   (_$hd7494874980_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7494774977_)))
                                   (_$tl7494974983_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7494774977_))))
                              (let ((_expr74987_ _$hd7494874980_))
                                (if (let ((__tmp77116
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7494974983_))))
                                      (declare (not safe))
                                      (equal? __tmp77116 '()))
                                    (let ((__tmp77111
                                           (let ((__tmp77112
                                                  (let ((__tmp77115
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id74975_
                                                            _stx74936_)))
                                                        (__tmp77113
                                                         (let ((__tmp77114
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr74987_))))
                   (declare (not safe))
                   (cons __tmp77114 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77115
                                                          __tmp77113))))
                                             (declare (not safe))
                                             (cons 'set! __tmp77112))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77111 _stx74936_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7494074952_)))))
                            (let () (declare (not safe)) (_$E7494074952_)))))
                    (let () (declare (not safe)) (_$E7494074952_))))
              (let () (declare (not safe)) (_$E7494074952_))))))
    (define __compile-if%
      (lambda (_stx74868_)
        (let* ((_$e74870_ _stx74868_)
               (_$E7487274887_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74870_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74870_))
              (let* ((_$tgt7487374890_
                      (let () (declare (not safe)) (__AST-e _$e74870_)))
                     (_$hd7487474893_
                      (let () (declare (not safe)) (##car _$tgt7487374890_)))
                     (_$tl7487574896_
                      (let () (declare (not safe)) (##cdr _$tgt7487374890_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7487574896_))
                    (let* ((_$tgt7487674900_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7487574896_)))
                           (_$hd7487774903_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7487674900_)))
                           (_$tl7487874906_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7487674900_))))
                      (let ((_p74910_ _$hd7487774903_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7487874906_))
                            (let* ((_$tgt7487974912_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7487874906_)))
                                   (_$hd7488074915_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7487974912_)))
                                   (_$tl7488174918_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7487974912_))))
                              (let ((_t74922_ _$hd7488074915_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7488174918_))
                                    (let* ((_$tgt7488274924_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7488174918_)))
                                           (_$hd7488374927_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7488274924_)))
                                           (_$tl7488474930_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7488274924_))))
                                      (let ((_f74934_ _$hd7488374927_))
                                        (if (let ((__tmp77124
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7488474930_))))
                                              (declare (not safe))
                                              (equal? __tmp77124 '()))
                                            (let ((__tmp77117
                                                   (let ((__tmp77118
                                                          (let ((__tmp77123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p74910_)))
                        (__tmp77119
                         (let ((__tmp77122
                                (let ()
                                  (declare (not safe))
                                  (__compile _t74922_)))
                               (__tmp77120
                                (let ((__tmp77121
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f74934_))))
                                  (declare (not safe))
                                  (cons __tmp77121 '()))))
                           (declare (not safe))
                           (cons __tmp77122 __tmp77120))))
                    (declare (not safe))
                    (cons __tmp77123 __tmp77119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp77118))))
                                              (declare (not safe))
                                              (__SRC__% __tmp77117 _stx74868_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7487274887_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7487274887_)))))
                            (let () (declare (not safe)) (_$E7487274887_)))))
                    (let () (declare (not safe)) (_$E7487274887_))))
              (let () (declare (not safe)) (_$E7487274887_))))))
    (define __compile-quote%
      (lambda (_stx74830_)
        (let* ((_$e74832_ _stx74830_)
               (_$E7483474843_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74832_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74832_))
              (let* ((_$tgt7483574846_
                      (let () (declare (not safe)) (__AST-e _$e74832_)))
                     (_$hd7483674849_
                      (let () (declare (not safe)) (##car _$tgt7483574846_)))
                     (_$tl7483774852_
                      (let () (declare (not safe)) (##cdr _$tgt7483574846_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7483774852_))
                    (let* ((_$tgt7483874856_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7483774852_)))
                           (_$hd7483974859_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7483874856_)))
                           (_$tl7484074862_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7483874856_))))
                      (let ((_e74866_ _$hd7483974859_))
                        (if (let ((__tmp77128
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7484074862_))))
                              (declare (not safe))
                              (equal? __tmp77128 '()))
                            (let ((__tmp77125
                                   (let ((__tmp77126
                                          (let ((__tmp77127
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e74866_))))
                                            (declare (not safe))
                                            (cons __tmp77127 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77126))))
                              (declare (not safe))
                              (__SRC__% __tmp77125 _stx74830_))
                            (let () (declare (not safe)) (_$E7483474843_)))))
                    (let () (declare (not safe)) (_$E7483474843_))))
              (let () (declare (not safe)) (_$E7483474843_))))))
    (define __compile-quote-syntax%
      (lambda (_stx74792_)
        (let* ((_$e74794_ _stx74792_)
               (_$E7479674805_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74794_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74794_))
              (let* ((_$tgt7479774808_
                      (let () (declare (not safe)) (__AST-e _$e74794_)))
                     (_$hd7479874811_
                      (let () (declare (not safe)) (##car _$tgt7479774808_)))
                     (_$tl7479974814_
                      (let () (declare (not safe)) (##cdr _$tgt7479774808_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7479974814_))
                    (let* ((_$tgt7480074818_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7479974814_)))
                           (_$hd7480174821_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7480074818_)))
                           (_$tl7480274824_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7480074818_))))
                      (let ((_e74828_ _$hd7480174821_))
                        (if (let ((__tmp77131
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7480274824_))))
                              (declare (not safe))
                              (equal? __tmp77131 '()))
                            (let ((__tmp77129
                                   (let ((__tmp77130
                                          (let ()
                                            (declare (not safe))
                                            (cons _e74828_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77130))))
                              (declare (not safe))
                              (__SRC__% __tmp77129 _stx74792_))
                            (let () (declare (not safe)) (_$E7479674805_)))))
                    (let () (declare (not safe)) (_$E7479674805_))))
              (let () (declare (not safe)) (_$E7479674805_))))))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin
       __compile-begin%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-foreign
       __compile-begin-foreign%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#module
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#import
       __compile-import%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#export
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#provide
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-values
       __compile-define-values%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-alias
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-runtime
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#extern
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#declare
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-annotation
       __compile-begin-annotation%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote
       __compile-quote%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote-syntax
       __compile-quote-syntax%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#lambda
       __compile-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#case-lambda
       __compile-case-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#let-values
       __compile-let-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-values
       __compile-letrec-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec*-values
       __compile-letrec*-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#include __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-syntax
       __compile-error
       make-__core-form))))
