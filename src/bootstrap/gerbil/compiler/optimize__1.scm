(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g13445_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g13446_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g13447_| (gx#core-quote-syntax 'make-optimizer-info))
  (define |gxc[1]#_g13448_| (gx#core-quote-syntax 'optimizer-info?))
  (define |gxc[1]#_g13449_| (gx#core-quote-syntax 'optimizer-info-type))
  (define |gxc[1]#_g13450_| (gx#core-quote-syntax 'optimizer-info-ssxi))
  (define |gxc[1]#_g13451_| (gx#core-quote-syntax 'optimizer-info-type-set!))
  (define |gxc[1]#_g13452_| (gx#core-quote-syntax 'optimizer-info-ssxi-set!))
  (define |gxc[1]#_g13453_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g13454_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g13455_| (gx#core-quote-syntax 'make-!type))
  (define |gxc[1]#_g13456_| (gx#core-quote-syntax '!type?))
  (define |gxc[1]#_g13457_| (gx#core-quote-syntax '!type-id))
  (define |gxc[1]#_g13458_| (gx#core-quote-syntax '!type-id-set!))
  (define |gxc[1]#_g13459_| (gx#core-quote-syntax '!alias::t))
  (define |gxc[1]#_g13460_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g13461_| (gx#core-quote-syntax '!alias::t))
  (define |gxc[1]#_g13462_| (gx#core-quote-syntax 'make-!alias))
  (define |gxc[1]#_g13463_| (gx#core-quote-syntax '!alias?))
  (define |gxc[1]#_g13464_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g13465_| (gx#core-quote-syntax '!struct-type::t))
  (define |gxc[1]#_g13466_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g13467_| (gx#core-quote-syntax '!struct-type::t))
  (define |gxc[1]#_g13468_| (gx#core-quote-syntax 'make-!struct-type))
  (define |gxc[1]#_g13469_| (gx#core-quote-syntax '!struct-type?))
  (define |gxc[1]#_g13470_| (gx#core-quote-syntax '!struct-type-super))
  (define |gxc[1]#_g13471_| (gx#core-quote-syntax '!struct-type-fields))
  (define |gxc[1]#_g13472_| (gx#core-quote-syntax '!struct-type-xfields))
  (define |gxc[1]#_g13473_| (gx#core-quote-syntax '!struct-type-ctor))
  (define |gxc[1]#_g13474_| (gx#core-quote-syntax '!struct-type-plist))
  (define |gxc[1]#_g13475_| (gx#core-quote-syntax '!struct-type-super-set!))
  (define |gxc[1]#_g13476_| (gx#core-quote-syntax '!struct-type-fields-set!))
  (define |gxc[1]#_g13477_| (gx#core-quote-syntax '!struct-type-xfields-set!))
  (define |gxc[1]#_g13478_| (gx#core-quote-syntax '!struct-type-ctor-set!))
  (define |gxc[1]#_g13479_| (gx#core-quote-syntax '!struct-type-plist-set!))
  (define |gxc[1]#_g13480_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g13481_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g13482_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g13483_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g13484_| (gx#core-quote-syntax 'make-!procedure))
  (define |gxc[1]#_g13485_| (gx#core-quote-syntax '!procedure?))
  (define |gxc[1]#_g13486_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g13487_| (gx#core-quote-syntax '!struct-pred::t))
  (define |gxc[1]#_g13488_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g13489_| (gx#core-quote-syntax '!struct-pred::t))
  (define |gxc[1]#_g13490_| (gx#core-quote-syntax 'make-!struct-pred))
  (define |gxc[1]#_g13491_| (gx#core-quote-syntax '!struct-pred?))
  (define |gxc[1]#_g13492_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g13493_| (gx#core-quote-syntax '!struct-cons::t))
  (define |gxc[1]#_g13494_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g13495_| (gx#core-quote-syntax '!struct-cons::t))
  (define |gxc[1]#_g13496_| (gx#core-quote-syntax 'make-!struct-cons))
  (define |gxc[1]#_g13497_| (gx#core-quote-syntax '!struct-cons?))
  (define |gxc[1]#_g13498_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g13499_| (gx#core-quote-syntax '!struct-getf::t))
  (define |gxc[1]#_g13500_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g13501_| (gx#core-quote-syntax '!struct-getf::t))
  (define |gxc[1]#_g13502_| (gx#core-quote-syntax 'make-!struct-getf))
  (define |gxc[1]#_g13503_| (gx#core-quote-syntax '!struct-getf?))
  (define |gxc[1]#_g13504_| (gx#core-quote-syntax '!struct-getf-off))
  (define |gxc[1]#_g13505_| (gx#core-quote-syntax '!struct-getf-off-set!))
  (define |gxc[1]#_g13506_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g13507_| (gx#core-quote-syntax '!struct-setf::t))
  (define |gxc[1]#_g13508_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g13509_| (gx#core-quote-syntax '!struct-setf::t))
  (define |gxc[1]#_g13510_| (gx#core-quote-syntax 'make-!struct-setf))
  (define |gxc[1]#_g13511_| (gx#core-quote-syntax '!struct-setf?))
  (define |gxc[1]#_g13512_| (gx#core-quote-syntax '!struct-setf-off))
  (define |gxc[1]#_g13513_| (gx#core-quote-syntax '!struct-setf-off-set!))
  (define |gxc[1]#_g13514_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g13515_| (gx#core-quote-syntax '!lambda::t))
  (define |gxc[1]#_g13516_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g13517_| (gx#core-quote-syntax '!lambda::t))
  (define |gxc[1]#_g13518_| (gx#core-quote-syntax 'make-!lambda))
  (define |gxc[1]#_g13519_| (gx#core-quote-syntax '!lambda?))
  (define |gxc[1]#_g13520_| (gx#core-quote-syntax '!lambda-arity))
  (define |gxc[1]#_g13521_| (gx#core-quote-syntax '!lambda-dispatch))
  (define |gxc[1]#_g13522_| (gx#core-quote-syntax '!lambda-arity-set!))
  (define |gxc[1]#_g13523_| (gx#core-quote-syntax '!lambda-dispatch-set!))
  (define |gxc[1]#_g13524_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g13525_| (gx#core-quote-syntax '!case-lambda::t))
  (define |gxc[1]#_g13526_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g13527_| (gx#core-quote-syntax '!case-lambda::t))
  (define |gxc[1]#_g13528_| (gx#core-quote-syntax 'make-!case-lambda))
  (define |gxc[1]#_g13529_| (gx#core-quote-syntax '!case-lambda?))
  (define |gxc[1]#_g13530_| (gx#core-quote-syntax '!case-lambda-clauses))
  (define |gxc[1]#_g13531_| (gx#core-quote-syntax '!case-lambda-clauses-set!))
  (define |gxc[1]#_g13532_| (gx#core-quote-syntax '!procedure))
  (begin
    (define |gxc[:0:]#optimizer-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g13445_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g13446_|
                   (cons |gxc[1]#_g13447_|
                         (cons |gxc[1]#_g13448_|
                               (cons (cons |gxc[1]#_g13449_|
                                           (cons |gxc[1]#_g13450_| '()))
                                     (cons (cons |gxc[1]#_g13451_|
                                                 (cons |gxc[1]#_g13452_| '()))
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
       |gxc[1]#_g13453_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g13454_|
                   (cons |gxc[1]#_g13455_|
                         (cons |gxc[1]#_g13456_|
                               (cons (cons |gxc[1]#_g13457_| '())
                                     (cons (cons |gxc[1]#_g13458_| '())
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
       |gxc[1]#_g13459_|
       'expander-identifiers:
       (cons |gxc[1]#_g13460_|
             (cons |gxc[1]#_g13461_|
                   (cons |gxc[1]#_g13462_|
                         (cons |gxc[1]#_g13463_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g13464_|
        '!alias
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-type|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g13465_|
       'expander-identifiers:
       (cons |gxc[1]#_g13466_|
             (cons |gxc[1]#_g13467_|
                   (cons |gxc[1]#_g13468_|
                         (cons |gxc[1]#_g13469_|
                               (cons (cons |gxc[1]#_g13470_|
                                           (cons |gxc[1]#_g13471_|
                                                 (cons |gxc[1]#_g13472_|
                                                       (cons |gxc[1]#_g13473_|
                                                             (cons |gxc[1]#_g13474_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gxc[1]#_g13475_|
                                                 (cons |gxc[1]#_g13476_|
                                                       (cons |gxc[1]#_g13477_|
                                                             (cons |gxc[1]#_g13478_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g13479_| '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g13480_|
        '!struct-type
        '#f
        '()
        '(super fields xfields ctor plist))))
    (define |gxc[:0:]#!procedure|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g13481_|
       'expander-identifiers:
       (cons |gxc[1]#_g13482_|
             (cons |gxc[1]#_g13483_|
                   (cons |gxc[1]#_g13484_|
                         (cons |gxc[1]#_g13485_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g13486_|
        '!procedure
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-pred|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g13487_|
       'expander-identifiers:
       (cons |gxc[1]#_g13488_|
             (cons |gxc[1]#_g13489_|
                   (cons |gxc[1]#_g13490_|
                         (cons |gxc[1]#_g13491_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g13492_|
        '!struct-pred
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-cons|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g13493_|
       'expander-identifiers:
       (cons |gxc[1]#_g13494_|
             (cons |gxc[1]#_g13495_|
                   (cons |gxc[1]#_g13496_|
                         (cons |gxc[1]#_g13497_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g13498_|
        '!struct-cons
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-getf|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g13499_|
       'expander-identifiers:
       (cons |gxc[1]#_g13500_|
             (cons |gxc[1]#_g13501_|
                   (cons |gxc[1]#_g13502_|
                         (cons |gxc[1]#_g13503_|
                               (cons (cons |gxc[1]#_g13504_| '())
                                     (cons (cons |gxc[1]#_g13505_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g13506_|
        '!struct-getf
        '#f
        '()
        '(off))))
    (define |gxc[:0:]#!struct-setf|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g13507_|
       'expander-identifiers:
       (cons |gxc[1]#_g13508_|
             (cons |gxc[1]#_g13509_|
                   (cons |gxc[1]#_g13510_|
                         (cons |gxc[1]#_g13511_|
                               (cons (cons |gxc[1]#_g13512_| '())
                                     (cons (cons |gxc[1]#_g13513_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g13514_|
        '!struct-setf
        '#f
        '()
        '(off))))
    (define |gxc[:0:]#!lambda|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g13515_|
       'expander-identifiers:
       (cons |gxc[1]#_g13516_|
             (cons |gxc[1]#_g13517_|
                   (cons |gxc[1]#_g13518_|
                         (cons |gxc[1]#_g13519_|
                               (cons (cons |gxc[1]#_g13520_|
                                           (cons |gxc[1]#_g13521_| '()))
                                     (cons (cons |gxc[1]#_g13522_|
                                                 (cons |gxc[1]#_g13523_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g13524_|
        '!lambda
        '#f
        '()
        '(arity dispatch))))
    (define |gxc[:0:]#!case-lambda|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g13525_|
       'expander-identifiers:
       (cons |gxc[1]#_g13526_|
             (cons |gxc[1]#_g13527_|
                   (cons |gxc[1]#_g13528_|
                         (cons |gxc[1]#_g13529_|
                               (cons (cons |gxc[1]#_g13530_| '())
                                     (cons (cons |gxc[1]#_g13531_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g13532_|
        '!case-lambda
        '#f
        '()
        '(clauses))))
    (define |gxc[:0:]#defbasic-expression-type-builtin|
      (lambda (_$stx7154_)
        (let ((_g71587187_
               (lambda (_g71597183_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g71597183_))))
          (let ((_g71577288_
                 (lambda (_g71597191_)
                   (if (gx#stx-pair? _g71597191_)
                       (let ((_e71627194_ (gx#syntax-e _g71597191_)))
                         (let ((_hd71637198_ (##car _e71627194_))
                               (_tl71647201_ (##cdr _e71627194_)))
                           (if (gx#stx-pair/null? _tl71647201_)
                               (if (fx>= (gx#stx-length _tl71647201_) '0)
                                   (let ((_g13533_
                                          (gx#syntax-split-splice
                                           _tl71647201_
                                           '0)))
                                     (begin
                                       (let ((_g13534_
                                              (values-count _g13533_)))
                                         (if (not (fx= _g13534_ 2))
                                             (error "Context expects 2 values"
                                                    _g13534_)))
                                       (let ((_target71657204_
                                              (values-ref _g13533_ 0))
                                             (_tl71677207_
                                              (values-ref _g13533_ 1)))
                                         (if (gx#stx-null? _tl71677207_)
                                             (letrec ((_loop71687210_
                                                       (lambda (_hd71667214_
                                                                _type-e71727217_
                                                                _id71737219_)
                                                         (if (gx#stx-pair?
                                                              _hd71667214_)
                                                             (let ((_e71697222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd71667214_)))
                       (let ((_lp-hd71707226_ (##car _e71697222_))
                             (_lp-tl71717229_ (##cdr _e71697222_)))
                         (if (gx#stx-pair? _lp-hd71707226_)
                             (let ((_e71767232_ (gx#syntax-e _lp-hd71707226_)))
                               (let ((_hd71777236_ (##car _e71767232_))
                                     (_tl71787239_ (##cdr _e71767232_)))
                                 (if (gx#stx-pair? _tl71787239_)
                                     (let ((_e71797242_
                                            (gx#syntax-e _tl71787239_)))
                                       (let ((_hd71807246_ (##car _e71797242_))
                                             (_tl71817249_
                                              (##cdr _e71797242_)))
                                         (if (gx#stx-null? _tl71817249_)
                                             (_loop71687210_
                                              _lp-tl71717229_
                                              (cons _hd71807246_
                                                    _type-e71727217_)
                                              (cons _hd71777236_ _id71737219_))
                                             (_g71587187_ _g71597191_))))
                                     (_g71587187_ _g71597191_))))
                             (_g71587187_ _g71597191_))))
                     (let ((_type-e71747252_ (reverse _type-e71727217_))
                           (_id71757255_ (reverse _id71737219_)))
                       ((lambda (_L7258_ _L7260_)
                          (cons (gx#datum->syntax '#f 'begin)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _L7258_
                                   _L7260_)
                                  (foldr (lambda (_g72767280_
                                                  _g72777283_
                                                  _g72787285_)
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
                                 (cons _g72777283_ '()))
                           (cons _g72767280_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g72787285_))
                                         '()
                                         _L7258_
                                         _L7260_))))
                        _type-e71747252_
                        _id71757255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop71687210_
                                                _target71657204_
                                                '()
                                                '()))
                                             (_g71587187_ _g71597191_)))))
                                   (_g71587187_ _g71597191_))
                               (_g71587187_ _g71597191_))))
                       (_g71587187_ _g71597191_)))))
            (_g71577288_ _$stx7154_)))))))
