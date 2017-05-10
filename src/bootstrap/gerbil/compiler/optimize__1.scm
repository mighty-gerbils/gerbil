(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g14505_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g14506_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g14507_| (gx#core-quote-syntax 'make-optimizer-info))
  (define |gxc[1]#_g14508_| (gx#core-quote-syntax 'optimizer-info?))
  (define |gxc[1]#_g14509_| (gx#core-quote-syntax 'optimizer-info-type))
  (define |gxc[1]#_g14510_| (gx#core-quote-syntax 'optimizer-info-ssxi))
  (define |gxc[1]#_g14511_| (gx#core-quote-syntax 'optimizer-info-type-set!))
  (define |gxc[1]#_g14512_| (gx#core-quote-syntax 'optimizer-info-ssxi-set!))
  (define |gxc[1]#_g14513_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g14514_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g14515_| (gx#core-quote-syntax 'make-!type))
  (define |gxc[1]#_g14516_| (gx#core-quote-syntax '!type?))
  (define |gxc[1]#_g14517_| (gx#core-quote-syntax '!type-id))
  (define |gxc[1]#_g14518_| (gx#core-quote-syntax '!type-id-set!))
  (define |gxc[1]#_g14519_| (gx#core-quote-syntax '!alias::t))
  (define |gxc[1]#_g14520_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g14521_| (gx#core-quote-syntax '!alias::t))
  (define |gxc[1]#_g14522_| (gx#core-quote-syntax 'make-!alias))
  (define |gxc[1]#_g14523_| (gx#core-quote-syntax '!alias?))
  (define |gxc[1]#_g14524_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g14525_| (gx#core-quote-syntax '!struct-type::t))
  (define |gxc[1]#_g14526_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g14527_| (gx#core-quote-syntax '!struct-type::t))
  (define |gxc[1]#_g14528_| (gx#core-quote-syntax 'make-!struct-type))
  (define |gxc[1]#_g14529_| (gx#core-quote-syntax '!struct-type?))
  (define |gxc[1]#_g14530_| (gx#core-quote-syntax '!struct-type-super))
  (define |gxc[1]#_g14531_| (gx#core-quote-syntax '!struct-type-fields))
  (define |gxc[1]#_g14532_| (gx#core-quote-syntax '!struct-type-xfields))
  (define |gxc[1]#_g14533_| (gx#core-quote-syntax '!struct-type-ctor))
  (define |gxc[1]#_g14534_| (gx#core-quote-syntax '!struct-type-plist))
  (define |gxc[1]#_g14535_| (gx#core-quote-syntax '!struct-type-methods))
  (define |gxc[1]#_g14536_| (gx#core-quote-syntax '!struct-type-super-set!))
  (define |gxc[1]#_g14537_| (gx#core-quote-syntax '!struct-type-fields-set!))
  (define |gxc[1]#_g14538_| (gx#core-quote-syntax '!struct-type-xfields-set!))
  (define |gxc[1]#_g14539_| (gx#core-quote-syntax '!struct-type-ctor-set!))
  (define |gxc[1]#_g14540_| (gx#core-quote-syntax '!struct-type-plist-set!))
  (define |gxc[1]#_g14541_| (gx#core-quote-syntax '!struct-type-methods-set!))
  (define |gxc[1]#_g14542_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g14543_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g14544_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g14545_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g14546_| (gx#core-quote-syntax 'make-!procedure))
  (define |gxc[1]#_g14547_| (gx#core-quote-syntax '!procedure?))
  (define |gxc[1]#_g14548_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g14549_| (gx#core-quote-syntax '!struct-pred::t))
  (define |gxc[1]#_g14550_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g14551_| (gx#core-quote-syntax '!struct-pred::t))
  (define |gxc[1]#_g14552_| (gx#core-quote-syntax 'make-!struct-pred))
  (define |gxc[1]#_g14553_| (gx#core-quote-syntax '!struct-pred?))
  (define |gxc[1]#_g14554_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g14555_| (gx#core-quote-syntax '!struct-cons::t))
  (define |gxc[1]#_g14556_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g14557_| (gx#core-quote-syntax '!struct-cons::t))
  (define |gxc[1]#_g14558_| (gx#core-quote-syntax 'make-!struct-cons))
  (define |gxc[1]#_g14559_| (gx#core-quote-syntax '!struct-cons?))
  (define |gxc[1]#_g14560_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g14561_| (gx#core-quote-syntax '!struct-getf::t))
  (define |gxc[1]#_g14562_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g14563_| (gx#core-quote-syntax '!struct-getf::t))
  (define |gxc[1]#_g14564_| (gx#core-quote-syntax 'make-!struct-getf))
  (define |gxc[1]#_g14565_| (gx#core-quote-syntax '!struct-getf?))
  (define |gxc[1]#_g14566_| (gx#core-quote-syntax '!struct-getf-off))
  (define |gxc[1]#_g14567_| (gx#core-quote-syntax '!struct-getf-off-set!))
  (define |gxc[1]#_g14568_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g14569_| (gx#core-quote-syntax '!struct-setf::t))
  (define |gxc[1]#_g14570_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g14571_| (gx#core-quote-syntax '!struct-setf::t))
  (define |gxc[1]#_g14572_| (gx#core-quote-syntax 'make-!struct-setf))
  (define |gxc[1]#_g14573_| (gx#core-quote-syntax '!struct-setf?))
  (define |gxc[1]#_g14574_| (gx#core-quote-syntax '!struct-setf-off))
  (define |gxc[1]#_g14575_| (gx#core-quote-syntax '!struct-setf-off-set!))
  (define |gxc[1]#_g14576_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g14577_| (gx#core-quote-syntax '!lambda::t))
  (define |gxc[1]#_g14578_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g14579_| (gx#core-quote-syntax '!lambda::t))
  (define |gxc[1]#_g14580_| (gx#core-quote-syntax 'make-!lambda))
  (define |gxc[1]#_g14581_| (gx#core-quote-syntax '!lambda?))
  (define |gxc[1]#_g14582_| (gx#core-quote-syntax '!lambda-arity))
  (define |gxc[1]#_g14583_| (gx#core-quote-syntax '!lambda-dispatch))
  (define |gxc[1]#_g14584_| (gx#core-quote-syntax '!lambda-arity-set!))
  (define |gxc[1]#_g14585_| (gx#core-quote-syntax '!lambda-dispatch-set!))
  (define |gxc[1]#_g14586_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g14587_| (gx#core-quote-syntax '!case-lambda::t))
  (define |gxc[1]#_g14588_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g14589_| (gx#core-quote-syntax '!case-lambda::t))
  (define |gxc[1]#_g14590_| (gx#core-quote-syntax 'make-!case-lambda))
  (define |gxc[1]#_g14591_| (gx#core-quote-syntax '!case-lambda?))
  (define |gxc[1]#_g14592_| (gx#core-quote-syntax '!case-lambda-clauses))
  (define |gxc[1]#_g14593_| (gx#core-quote-syntax '!case-lambda-clauses-set!))
  (define |gxc[1]#_g14594_| (gx#core-quote-syntax '!procedure))
  (begin
    (define |gxc[:0:]#optimizer-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14505_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g14506_|
                   (cons |gxc[1]#_g14507_|
                         (cons |gxc[1]#_g14508_|
                               (cons (cons |gxc[1]#_g14509_|
                                           (cons |gxc[1]#_g14510_| '()))
                                     (cons (cons |gxc[1]#_g14511_|
                                                 (cons |gxc[1]#_g14512_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        '#f
        'optimizer-info
        ':init!
        '()
        '(type ssxi))))
    (define |gxc[:0:]#!type|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14513_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g14514_|
                   (cons |gxc[1]#_g14515_|
                         (cons |gxc[1]#_g14516_|
                               (cons (cons |gxc[1]#_g14517_| '())
                                     (cons (cons |gxc[1]#_g14518_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        '#f
        '!type
        '#f
        '()
        '(id))))
    (define |gxc[:0:]#!alias|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14519_|
       'expander-identifiers:
       (cons |gxc[1]#_g14520_|
             (cons |gxc[1]#_g14521_|
                   (cons |gxc[1]#_g14522_|
                         (cons |gxc[1]#_g14523_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14524_|
        '!alias
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-type|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14525_|
       'expander-identifiers:
       (cons |gxc[1]#_g14526_|
             (cons |gxc[1]#_g14527_|
                   (cons |gxc[1]#_g14528_|
                         (cons |gxc[1]#_g14529_|
                               (cons (cons |gxc[1]#_g14530_|
                                           (cons |gxc[1]#_g14531_|
                                                 (cons |gxc[1]#_g14532_|
                                                       (cons |gxc[1]#_g14533_|
                                                             (cons |gxc[1]#_g14534_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g14535_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gxc[1]#_g14536_|
                                                 (cons |gxc[1]#_g14537_|
                                                       (cons |gxc[1]#_g14538_|
                                                             (cons |gxc[1]#_g14539_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g14540_|
                                 (cons |gxc[1]#_g14541_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14542_|
        '!struct-type
        ':init!
        '()
        '(super fields xfields ctor plist methods))))
    (define |gxc[:0:]#!procedure|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14543_|
       'expander-identifiers:
       (cons |gxc[1]#_g14544_|
             (cons |gxc[1]#_g14545_|
                   (cons |gxc[1]#_g14546_|
                         (cons |gxc[1]#_g14547_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14548_|
        '!procedure
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-pred|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14549_|
       'expander-identifiers:
       (cons |gxc[1]#_g14550_|
             (cons |gxc[1]#_g14551_|
                   (cons |gxc[1]#_g14552_|
                         (cons |gxc[1]#_g14553_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14554_|
        '!struct-pred
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-cons|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14555_|
       'expander-identifiers:
       (cons |gxc[1]#_g14556_|
             (cons |gxc[1]#_g14557_|
                   (cons |gxc[1]#_g14558_|
                         (cons |gxc[1]#_g14559_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14560_|
        '!struct-cons
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-getf|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14561_|
       'expander-identifiers:
       (cons |gxc[1]#_g14562_|
             (cons |gxc[1]#_g14563_|
                   (cons |gxc[1]#_g14564_|
                         (cons |gxc[1]#_g14565_|
                               (cons (cons |gxc[1]#_g14566_| '())
                                     (cons (cons |gxc[1]#_g14567_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14568_|
        '!struct-getf
        '#f
        '()
        '(off))))
    (define |gxc[:0:]#!struct-setf|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14569_|
       'expander-identifiers:
       (cons |gxc[1]#_g14570_|
             (cons |gxc[1]#_g14571_|
                   (cons |gxc[1]#_g14572_|
                         (cons |gxc[1]#_g14573_|
                               (cons (cons |gxc[1]#_g14574_| '())
                                     (cons (cons |gxc[1]#_g14575_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14576_|
        '!struct-setf
        '#f
        '()
        '(off))))
    (define |gxc[:0:]#!lambda|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14577_|
       'expander-identifiers:
       (cons |gxc[1]#_g14578_|
             (cons |gxc[1]#_g14579_|
                   (cons |gxc[1]#_g14580_|
                         (cons |gxc[1]#_g14581_|
                               (cons (cons |gxc[1]#_g14582_|
                                           (cons |gxc[1]#_g14583_| '()))
                                     (cons (cons |gxc[1]#_g14584_|
                                                 (cons |gxc[1]#_g14585_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14586_|
        '!lambda
        '#f
        '()
        '(arity dispatch))))
    (define |gxc[:0:]#!case-lambda|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g14587_|
       'expander-identifiers:
       (cons |gxc[1]#_g14588_|
             (cons |gxc[1]#_g14589_|
                   (cons |gxc[1]#_g14590_|
                         (cons |gxc[1]#_g14591_|
                               (cons (cons |gxc[1]#_g14592_| '())
                                     (cons (cons |gxc[1]#_g14593_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g14594_|
        '!case-lambda
        '#f
        '()
        '(clauses))))
    (define |gxc[:0:]#defbasic-expression-type-builtin|
      (lambda (_$stx7213_)
        (let ((_g72177246_
               (lambda (_g72187242_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g72187242_))))
          (let ((_g72167347_
                 (lambda (_g72187250_)
                   (if (gx#stx-pair? _g72187250_)
                       (let ((_e72217253_ (gx#syntax-e _g72187250_)))
                         (let ((_hd72227257_ (##car _e72217253_))
                               (_tl72237260_ (##cdr _e72217253_)))
                           (if (gx#stx-pair/null? _tl72237260_)
                               (if (fx>= (gx#stx-length _tl72237260_) '0)
                                   (let ((_g14595_
                                          (gx#syntax-split-splice
                                           _tl72237260_
                                           '0)))
                                     (begin
                                       (let ((_g14596_
                                              (values-count _g14595_)))
                                         (if (not (fx= _g14596_ 2))
                                             (error "Context expects 2 values"
                                                    _g14596_)))
                                       (let ((_target72247263_
                                              (values-ref _g14595_ 0))
                                             (_tl72267266_
                                              (values-ref _g14595_ 1)))
                                         (if (gx#stx-null? _tl72267266_)
                                             (letrec ((_loop72277269_
                                                       (lambda (_hd72257273_
                                                                _type-e72317276_
                                                                _id72327278_)
                                                         (if (gx#stx-pair?
                                                              _hd72257273_)
                                                             (let ((_e72287281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd72257273_)))
                       (let ((_lp-hd72297285_ (##car _e72287281_))
                             (_lp-tl72307288_ (##cdr _e72287281_)))
                         (if (gx#stx-pair? _lp-hd72297285_)
                             (let ((_e72357291_ (gx#syntax-e _lp-hd72297285_)))
                               (let ((_hd72367295_ (##car _e72357291_))
                                     (_tl72377298_ (##cdr _e72357291_)))
                                 (if (gx#stx-pair? _tl72377298_)
                                     (let ((_e72387301_
                                            (gx#syntax-e _tl72377298_)))
                                       (let ((_hd72397305_ (##car _e72387301_))
                                             (_tl72407308_
                                              (##cdr _e72387301_)))
                                         (if (gx#stx-null? _tl72407308_)
                                             (_loop72277269_
                                              _lp-tl72307288_
                                              (cons _hd72397305_
                                                    _type-e72317276_)
                                              (cons _hd72367295_ _id72327278_))
                                             (_g72177246_ _g72187250_))))
                                     (_g72177246_ _g72187250_))))
                             (_g72177246_ _g72187250_))))
                     (let ((_type-e72337311_ (reverse _type-e72317276_))
                           (_id72347314_ (reverse _id72327278_)))
                       ((lambda (_L7317_ _L7319_)
                          (cons (gx#datum->syntax '#f 'begin)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _L7317_
                                   _L7319_)
                                  (foldr (lambda (_g73357339_
                                                  _g73367342_
                                                  _g73377344_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'hash-put!)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'basic-expression-type-builtin)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _g73367342_ '()))
                           (cons _g73357339_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g73377344_))
                                         '()
                                         _L7317_
                                         _L7319_))))
                        _type-e72337311_
                        _id72347314_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop72277269_
                                                _target72247263_
                                                '()
                                                '()))
                                             (_g72177246_ _g72187250_)))))
                                   (_g72177246_ _g72187250_))
                               (_g72177246_ _g72187250_))))
                       (_g72177246_ _g72187250_)))))
            (_g72167347_ _$stx7213_)))))))
