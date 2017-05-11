(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g16028_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g16029_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g16030_| (gx#core-quote-syntax 'make-optimizer-info))
  (define |gxc[1]#_g16031_| (gx#core-quote-syntax 'optimizer-info?))
  (define |gxc[1]#_g16032_| (gx#core-quote-syntax 'optimizer-info-type))
  (define |gxc[1]#_g16033_| (gx#core-quote-syntax 'optimizer-info-ssxi))
  (define |gxc[1]#_g16034_| (gx#core-quote-syntax 'optimizer-info-type-set!))
  (define |gxc[1]#_g16035_| (gx#core-quote-syntax 'optimizer-info-ssxi-set!))
  (define |gxc[1]#_g16036_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g16037_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g16038_| (gx#core-quote-syntax 'make-!type))
  (define |gxc[1]#_g16039_| (gx#core-quote-syntax '!type?))
  (define |gxc[1]#_g16040_| (gx#core-quote-syntax '!type-id))
  (define |gxc[1]#_g16041_| (gx#core-quote-syntax '!type-id-set!))
  (define |gxc[1]#_g16042_| (gx#core-quote-syntax '!alias::t))
  (define |gxc[1]#_g16043_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g16044_| (gx#core-quote-syntax '!alias::t))
  (define |gxc[1]#_g16045_| (gx#core-quote-syntax 'make-!alias))
  (define |gxc[1]#_g16046_| (gx#core-quote-syntax '!alias?))
  (define |gxc[1]#_g16047_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g16048_| (gx#core-quote-syntax '!struct-type::t))
  (define |gxc[1]#_g16049_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g16050_| (gx#core-quote-syntax '!struct-type::t))
  (define |gxc[1]#_g16051_| (gx#core-quote-syntax 'make-!struct-type))
  (define |gxc[1]#_g16052_| (gx#core-quote-syntax '!struct-type?))
  (define |gxc[1]#_g16053_| (gx#core-quote-syntax '!struct-type-super))
  (define |gxc[1]#_g16054_| (gx#core-quote-syntax '!struct-type-fields))
  (define |gxc[1]#_g16055_| (gx#core-quote-syntax '!struct-type-xfields))
  (define |gxc[1]#_g16056_| (gx#core-quote-syntax '!struct-type-ctor))
  (define |gxc[1]#_g16057_| (gx#core-quote-syntax '!struct-type-plist))
  (define |gxc[1]#_g16058_| (gx#core-quote-syntax '!struct-type-methods))
  (define |gxc[1]#_g16059_| (gx#core-quote-syntax '!struct-type-super-set!))
  (define |gxc[1]#_g16060_| (gx#core-quote-syntax '!struct-type-fields-set!))
  (define |gxc[1]#_g16061_| (gx#core-quote-syntax '!struct-type-xfields-set!))
  (define |gxc[1]#_g16062_| (gx#core-quote-syntax '!struct-type-ctor-set!))
  (define |gxc[1]#_g16063_| (gx#core-quote-syntax '!struct-type-plist-set!))
  (define |gxc[1]#_g16064_| (gx#core-quote-syntax '!struct-type-methods-set!))
  (define |gxc[1]#_g16065_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g16066_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g16067_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g16068_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g16069_| (gx#core-quote-syntax 'make-!procedure))
  (define |gxc[1]#_g16070_| (gx#core-quote-syntax '!procedure?))
  (define |gxc[1]#_g16071_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g16072_| (gx#core-quote-syntax '!struct-pred::t))
  (define |gxc[1]#_g16073_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g16074_| (gx#core-quote-syntax '!struct-pred::t))
  (define |gxc[1]#_g16075_| (gx#core-quote-syntax 'make-!struct-pred))
  (define |gxc[1]#_g16076_| (gx#core-quote-syntax '!struct-pred?))
  (define |gxc[1]#_g16077_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g16078_| (gx#core-quote-syntax '!struct-cons::t))
  (define |gxc[1]#_g16079_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g16080_| (gx#core-quote-syntax '!struct-cons::t))
  (define |gxc[1]#_g16081_| (gx#core-quote-syntax 'make-!struct-cons))
  (define |gxc[1]#_g16082_| (gx#core-quote-syntax '!struct-cons?))
  (define |gxc[1]#_g16083_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g16084_| (gx#core-quote-syntax '!struct-getf::t))
  (define |gxc[1]#_g16085_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g16086_| (gx#core-quote-syntax '!struct-getf::t))
  (define |gxc[1]#_g16087_| (gx#core-quote-syntax 'make-!struct-getf))
  (define |gxc[1]#_g16088_| (gx#core-quote-syntax '!struct-getf?))
  (define |gxc[1]#_g16089_| (gx#core-quote-syntax '!struct-getf-off))
  (define |gxc[1]#_g16090_| (gx#core-quote-syntax '!struct-getf-off-set!))
  (define |gxc[1]#_g16091_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g16092_| (gx#core-quote-syntax '!struct-setf::t))
  (define |gxc[1]#_g16093_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g16094_| (gx#core-quote-syntax '!struct-setf::t))
  (define |gxc[1]#_g16095_| (gx#core-quote-syntax 'make-!struct-setf))
  (define |gxc[1]#_g16096_| (gx#core-quote-syntax '!struct-setf?))
  (define |gxc[1]#_g16097_| (gx#core-quote-syntax '!struct-setf-off))
  (define |gxc[1]#_g16098_| (gx#core-quote-syntax '!struct-setf-off-set!))
  (define |gxc[1]#_g16099_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g16100_| (gx#core-quote-syntax '!lambda::t))
  (define |gxc[1]#_g16101_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g16102_| (gx#core-quote-syntax '!lambda::t))
  (define |gxc[1]#_g16103_| (gx#core-quote-syntax 'make-!lambda))
  (define |gxc[1]#_g16104_| (gx#core-quote-syntax '!lambda?))
  (define |gxc[1]#_g16105_| (gx#core-quote-syntax '!lambda-arity))
  (define |gxc[1]#_g16106_| (gx#core-quote-syntax '!lambda-dispatch))
  (define |gxc[1]#_g16107_| (gx#core-quote-syntax '!lambda-arity-set!))
  (define |gxc[1]#_g16108_| (gx#core-quote-syntax '!lambda-dispatch-set!))
  (define |gxc[1]#_g16109_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g16110_| (gx#core-quote-syntax '!case-lambda::t))
  (define |gxc[1]#_g16111_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g16112_| (gx#core-quote-syntax '!case-lambda::t))
  (define |gxc[1]#_g16113_| (gx#core-quote-syntax 'make-!case-lambda))
  (define |gxc[1]#_g16114_| (gx#core-quote-syntax '!case-lambda?))
  (define |gxc[1]#_g16115_| (gx#core-quote-syntax '!case-lambda-clauses))
  (define |gxc[1]#_g16116_| (gx#core-quote-syntax '!case-lambda-clauses-set!))
  (define |gxc[1]#_g16117_| (gx#core-quote-syntax '!procedure))
  (begin
    (define |gxc[:0:]#optimizer-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16028_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16029_|
                   (cons |gxc[1]#_g16030_|
                         (cons |gxc[1]#_g16031_|
                               (cons (cons |gxc[1]#_g16032_|
                                           (cons |gxc[1]#_g16033_| '()))
                                     (cons (cons |gxc[1]#_g16034_|
                                                 (cons |gxc[1]#_g16035_| '()))
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
       |gxc[1]#_g16036_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16037_|
                   (cons |gxc[1]#_g16038_|
                         (cons |gxc[1]#_g16039_|
                               (cons (cons |gxc[1]#_g16040_| '())
                                     (cons (cons |gxc[1]#_g16041_| '())
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
       |gxc[1]#_g16042_|
       'expander-identifiers:
       (cons |gxc[1]#_g16043_|
             (cons |gxc[1]#_g16044_|
                   (cons |gxc[1]#_g16045_|
                         (cons |gxc[1]#_g16046_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16047_|
        '!alias
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-type|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16048_|
       'expander-identifiers:
       (cons |gxc[1]#_g16049_|
             (cons |gxc[1]#_g16050_|
                   (cons |gxc[1]#_g16051_|
                         (cons |gxc[1]#_g16052_|
                               (cons (cons |gxc[1]#_g16053_|
                                           (cons |gxc[1]#_g16054_|
                                                 (cons |gxc[1]#_g16055_|
                                                       (cons |gxc[1]#_g16056_|
                                                             (cons |gxc[1]#_g16057_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g16058_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gxc[1]#_g16059_|
                                                 (cons |gxc[1]#_g16060_|
                                                       (cons |gxc[1]#_g16061_|
                                                             (cons |gxc[1]#_g16062_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g16063_|
                                 (cons |gxc[1]#_g16064_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16065_|
        '!struct-type
        ':init!
        '()
        '(super fields xfields ctor plist methods))))
    (define |gxc[:0:]#!procedure|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16066_|
       'expander-identifiers:
       (cons |gxc[1]#_g16067_|
             (cons |gxc[1]#_g16068_|
                   (cons |gxc[1]#_g16069_|
                         (cons |gxc[1]#_g16070_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16071_|
        '!procedure
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-pred|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16072_|
       'expander-identifiers:
       (cons |gxc[1]#_g16073_|
             (cons |gxc[1]#_g16074_|
                   (cons |gxc[1]#_g16075_|
                         (cons |gxc[1]#_g16076_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16077_|
        '!struct-pred
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-cons|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16078_|
       'expander-identifiers:
       (cons |gxc[1]#_g16079_|
             (cons |gxc[1]#_g16080_|
                   (cons |gxc[1]#_g16081_|
                         (cons |gxc[1]#_g16082_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16083_|
        '!struct-cons
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-getf|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16084_|
       'expander-identifiers:
       (cons |gxc[1]#_g16085_|
             (cons |gxc[1]#_g16086_|
                   (cons |gxc[1]#_g16087_|
                         (cons |gxc[1]#_g16088_|
                               (cons (cons |gxc[1]#_g16089_| '())
                                     (cons (cons |gxc[1]#_g16090_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16091_|
        '!struct-getf
        '#f
        '()
        '(off))))
    (define |gxc[:0:]#!struct-setf|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16092_|
       'expander-identifiers:
       (cons |gxc[1]#_g16093_|
             (cons |gxc[1]#_g16094_|
                   (cons |gxc[1]#_g16095_|
                         (cons |gxc[1]#_g16096_|
                               (cons (cons |gxc[1]#_g16097_| '())
                                     (cons (cons |gxc[1]#_g16098_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16099_|
        '!struct-setf
        '#f
        '()
        '(off))))
    (define |gxc[:0:]#!lambda|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16100_|
       'expander-identifiers:
       (cons |gxc[1]#_g16101_|
             (cons |gxc[1]#_g16102_|
                   (cons |gxc[1]#_g16103_|
                         (cons |gxc[1]#_g16104_|
                               (cons (cons |gxc[1]#_g16105_|
                                           (cons |gxc[1]#_g16106_| '()))
                                     (cons (cons |gxc[1]#_g16107_|
                                                 (cons |gxc[1]#_g16108_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16109_|
        '!lambda
        '#f
        '()
        '(arity dispatch))))
    (define |gxc[:0:]#!case-lambda|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16110_|
       'expander-identifiers:
       (cons |gxc[1]#_g16111_|
             (cons |gxc[1]#_g16112_|
                   (cons |gxc[1]#_g16113_|
                         (cons |gxc[1]#_g16114_|
                               (cons (cons |gxc[1]#_g16115_| '())
                                     (cons (cons |gxc[1]#_g16116_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g16117_|
        '!case-lambda
        '#f
        '()
        '(clauses))))
    (define |gxc[:0:]#defbasic-expression-type-builtin|
      (lambda (_$stx8549_)
        (let ((_g85538582_
               (lambda (_g85548578_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g85548578_))))
          (let ((_g85528683_
                 (lambda (_g85548586_)
                   (if (gx#stx-pair? _g85548586_)
                       (let ((_e85578589_ (gx#syntax-e _g85548586_)))
                         (let ((_hd85588593_ (##car _e85578589_))
                               (_tl85598596_ (##cdr _e85578589_)))
                           (if (gx#stx-pair/null? _tl85598596_)
                               (if (fx>= (gx#stx-length _tl85598596_) '0)
                                   (let ((_g16118_
                                          (gx#syntax-split-splice
                                           _tl85598596_
                                           '0)))
                                     (begin
                                       (let ((_g16119_
                                              (values-count _g16118_)))
                                         (if (not (fx= _g16119_ 2))
                                             (error "Context expects 2 values"
                                                    _g16119_)))
                                       (let ((_target85608599_
                                              (values-ref _g16118_ 0))
                                             (_tl85628602_
                                              (values-ref _g16118_ 1)))
                                         (if (gx#stx-null? _tl85628602_)
                                             (letrec ((_loop85638605_
                                                       (lambda (_hd85618609_
                                                                _type-e85678612_
                                                                _id85688614_)
                                                         (if (gx#stx-pair?
                                                              _hd85618609_)
                                                             (let ((_e85648617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd85618609_)))
                       (let ((_lp-hd85658621_ (##car _e85648617_))
                             (_lp-tl85668624_ (##cdr _e85648617_)))
                         (if (gx#stx-pair? _lp-hd85658621_)
                             (let ((_e85718627_ (gx#syntax-e _lp-hd85658621_)))
                               (let ((_hd85728631_ (##car _e85718627_))
                                     (_tl85738634_ (##cdr _e85718627_)))
                                 (if (gx#stx-pair? _tl85738634_)
                                     (let ((_e85748637_
                                            (gx#syntax-e _tl85738634_)))
                                       (let ((_hd85758641_ (##car _e85748637_))
                                             (_tl85768644_
                                              (##cdr _e85748637_)))
                                         (if (gx#stx-null? _tl85768644_)
                                             (_loop85638605_
                                              _lp-tl85668624_
                                              (cons _hd85758641_
                                                    _type-e85678612_)
                                              (cons _hd85728631_ _id85688614_))
                                             (_g85538582_ _g85548586_))))
                                     (_g85538582_ _g85548586_))))
                             (_g85538582_ _g85548586_))))
                     (let ((_type-e85698647_ (reverse _type-e85678612_))
                           (_id85708650_ (reverse _id85688614_)))
                       ((lambda (_L8653_ _L8655_)
                          (cons (gx#datum->syntax '#f 'begin)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _L8653_
                                   _L8655_)
                                  (foldr (lambda (_g86718675_
                                                  _g86728678_
                                                  _g86738680_)
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
                                 (cons _g86728678_ '()))
                           (cons _g86718675_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g86738680_))
                                         '()
                                         _L8653_
                                         _L8655_))))
                        _type-e85698647_
                        _id85708650_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop85638605_
                                                _target85608599_
                                                '()
                                                '()))
                                             (_g85538582_ _g85548586_)))))
                                   (_g85538582_ _g85548586_))
                               (_g85538582_ _g85548586_))))
                       (_g85538582_ _g85548586_)))))
            (_g85528683_ _$stx8549_)))))))
