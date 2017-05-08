(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[1]#_g9976_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g9977_| (gx#core-quote-syntax 'optimizer-info::t))
  (define |gxc[1]#_g9978_| (gx#core-quote-syntax 'make-optimizer-info))
  (define |gxc[1]#_g9979_| (gx#core-quote-syntax 'optimizer-info?))
  (define |gxc[1]#_g9980_| (gx#core-quote-syntax 'optimizer-info-type))
  (define |gxc[1]#_g9981_| (gx#core-quote-syntax 'optimizer-info-ssxi))
  (define |gxc[1]#_g9982_| (gx#core-quote-syntax 'optimizer-info-type-set!))
  (define |gxc[1]#_g9983_| (gx#core-quote-syntax 'optimizer-info-ssxi-set!))
  (define |gxc[1]#_g9984_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g9985_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g9986_| (gx#core-quote-syntax 'make-!type))
  (define |gxc[1]#_g9987_| (gx#core-quote-syntax '!type?))
  (define |gxc[1]#_g9988_| (gx#core-quote-syntax '!type-id))
  (define |gxc[1]#_g9989_| (gx#core-quote-syntax '!type-id-set!))
  (define |gxc[1]#_g9990_| (gx#core-quote-syntax '!alias::t))
  (define |gxc[1]#_g9991_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g9992_| (gx#core-quote-syntax '!alias::t))
  (define |gxc[1]#_g9993_| (gx#core-quote-syntax 'make-!alias))
  (define |gxc[1]#_g9994_| (gx#core-quote-syntax '!alias?))
  (define |gxc[1]#_g9995_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g9996_| (gx#core-quote-syntax '!struct-type::t))
  (define |gxc[1]#_g9997_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g9998_| (gx#core-quote-syntax '!struct-type::t))
  (define |gxc[1]#_g9999_| (gx#core-quote-syntax 'make-!struct-type))
  (define |gxc[1]#_g10000_| (gx#core-quote-syntax '!struct-type?))
  (define |gxc[1]#_g10001_| (gx#core-quote-syntax '!struct-type-super))
  (define |gxc[1]#_g10002_| (gx#core-quote-syntax '!struct-type-fields))
  (define |gxc[1]#_g10003_| (gx#core-quote-syntax '!struct-type-xfields))
  (define |gxc[1]#_g10004_| (gx#core-quote-syntax '!struct-type-ctor))
  (define |gxc[1]#_g10005_| (gx#core-quote-syntax '!struct-type-plist))
  (define |gxc[1]#_g10006_| (gx#core-quote-syntax '!struct-type-super-set!))
  (define |gxc[1]#_g10007_| (gx#core-quote-syntax '!struct-type-fields-set!))
  (define |gxc[1]#_g10008_| (gx#core-quote-syntax '!struct-type-xfields-set!))
  (define |gxc[1]#_g10009_| (gx#core-quote-syntax '!struct-type-ctor-set!))
  (define |gxc[1]#_g10010_| (gx#core-quote-syntax '!struct-type-plist-set!))
  (define |gxc[1]#_g10011_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g10012_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g10013_| (gx#core-quote-syntax '!type::t))
  (define |gxc[1]#_g10014_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g10015_| (gx#core-quote-syntax 'make-!procedure))
  (define |gxc[1]#_g10016_| (gx#core-quote-syntax '!procedure?))
  (define |gxc[1]#_g10017_| (gx#core-quote-syntax '!type))
  (define |gxc[1]#_g10018_| (gx#core-quote-syntax '!struct-pred::t))
  (define |gxc[1]#_g10019_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g10020_| (gx#core-quote-syntax '!struct-pred::t))
  (define |gxc[1]#_g10021_| (gx#core-quote-syntax 'make-!struct-pred))
  (define |gxc[1]#_g10022_| (gx#core-quote-syntax '!struct-pred?))
  (define |gxc[1]#_g10023_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g10024_| (gx#core-quote-syntax '!struct-cons::t))
  (define |gxc[1]#_g10025_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g10026_| (gx#core-quote-syntax '!struct-cons::t))
  (define |gxc[1]#_g10027_| (gx#core-quote-syntax 'make-!struct-cons))
  (define |gxc[1]#_g10028_| (gx#core-quote-syntax '!struct-cons?))
  (define |gxc[1]#_g10029_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g10030_| (gx#core-quote-syntax '!struct-getf::t))
  (define |gxc[1]#_g10031_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g10032_| (gx#core-quote-syntax '!struct-getf::t))
  (define |gxc[1]#_g10033_| (gx#core-quote-syntax 'make-!struct-getf))
  (define |gxc[1]#_g10034_| (gx#core-quote-syntax '!struct-getf?))
  (define |gxc[1]#_g10035_| (gx#core-quote-syntax '!struct-getf-off))
  (define |gxc[1]#_g10036_| (gx#core-quote-syntax '!struct-getf-off-set!))
  (define |gxc[1]#_g10037_| (gx#core-quote-syntax '!procedure))
  (define |gxc[1]#_g10038_| (gx#core-quote-syntax '!struct-setf::t))
  (define |gxc[1]#_g10039_| (gx#core-quote-syntax '!procedure::t))
  (define |gxc[1]#_g10040_| (gx#core-quote-syntax '!struct-setf::t))
  (define |gxc[1]#_g10041_| (gx#core-quote-syntax 'make-!struct-setf))
  (define |gxc[1]#_g10042_| (gx#core-quote-syntax '!struct-setf?))
  (define |gxc[1]#_g10043_| (gx#core-quote-syntax '!struct-setf-off))
  (define |gxc[1]#_g10044_| (gx#core-quote-syntax '!struct-setf-off-set!))
  (define |gxc[1]#_g10045_| (gx#core-quote-syntax '!procedure))
  (begin
    (define |gxc[:0:]#optimizer-info|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g9976_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g9977_|
                   (cons |gxc[1]#_g9978_|
                         (cons |gxc[1]#_g9979_|
                               (cons (cons |gxc[1]#_g9980_|
                                           (cons |gxc[1]#_g9981_| '()))
                                     (cons (cons |gxc[1]#_g9982_|
                                                 (cons |gxc[1]#_g9983_| '()))
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
       |gxc[1]#_g9984_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g9985_|
                   (cons |gxc[1]#_g9986_|
                         (cons |gxc[1]#_g9987_|
                               (cons (cons |gxc[1]#_g9988_| '())
                                     (cons (cons |gxc[1]#_g9989_| '())
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
       |gxc[1]#_g9990_|
       'expander-identifiers:
       (cons |gxc[1]#_g9991_|
             (cons |gxc[1]#_g9992_|
                   (cons |gxc[1]#_g9993_|
                         (cons |gxc[1]#_g9994_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g9995_|
        '!alias
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-type|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g9996_|
       'expander-identifiers:
       (cons |gxc[1]#_g9997_|
             (cons |gxc[1]#_g9998_|
                   (cons |gxc[1]#_g9999_|
                         (cons |gxc[1]#_g10000_|
                               (cons (cons |gxc[1]#_g10001_|
                                           (cons |gxc[1]#_g10002_|
                                                 (cons |gxc[1]#_g10003_|
                                                       (cons |gxc[1]#_g10004_|
                                                             (cons |gxc[1]#_g10005_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gxc[1]#_g10006_|
                                                 (cons |gxc[1]#_g10007_|
                                                       (cons |gxc[1]#_g10008_|
                                                             (cons |gxc[1]#_g10009_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gxc[1]#_g10010_| '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g10011_|
        '!struct-type
        '#f
        '()
        '(super fields xfields ctor plist))))
    (define |gxc[:0:]#!procedure|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10012_|
       'expander-identifiers:
       (cons |gxc[1]#_g10013_|
             (cons |gxc[1]#_g10014_|
                   (cons |gxc[1]#_g10015_|
                         (cons |gxc[1]#_g10016_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g10017_|
        '!procedure
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-pred|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10018_|
       'expander-identifiers:
       (cons |gxc[1]#_g10019_|
             (cons |gxc[1]#_g10020_|
                   (cons |gxc[1]#_g10021_|
                         (cons |gxc[1]#_g10022_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g10023_|
        '!struct-pred
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-cons|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10024_|
       'expander-identifiers:
       (cons |gxc[1]#_g10025_|
             (cons |gxc[1]#_g10026_|
                   (cons |gxc[1]#_g10027_|
                         (cons |gxc[1]#_g10028_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g10029_|
        '!struct-cons
        '#f
        '()
        '())))
    (define |gxc[:0:]#!struct-getf|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10030_|
       'expander-identifiers:
       (cons |gxc[1]#_g10031_|
             (cons |gxc[1]#_g10032_|
                   (cons |gxc[1]#_g10033_|
                         (cons |gxc[1]#_g10034_|
                               (cons (cons |gxc[1]#_g10035_| '())
                                     (cons (cons |gxc[1]#_g10036_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g10037_|
        '!struct-getf
        '#f
        '()
        '(off))))
    (define |gxc[:0:]#!struct-setf|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g10038_|
       'expander-identifiers:
       (cons |gxc[1]#_g10039_|
             (cons |gxc[1]#_g10040_|
                   (cons |gxc[1]#_g10041_|
                         (cons |gxc[1]#_g10042_|
                               (cons (cons |gxc[1]#_g10043_| '())
                                     (cons (cons |gxc[1]#_g10044_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        '#f
        |gxc[1]#_g10045_|
        '!struct-setf
        '#f
        '()
        '(off))))
    (define |gxc[:0:]#defbasic-expression-type-builtin|
      (lambda (_$stx6526_)
        (let ((_g65306559_
               (lambda (_g65316555_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g65316555_))))
          (let ((_g65296660_
                 (lambda (_g65316563_)
                   (if (gx#stx-pair? _g65316563_)
                       (let ((_e65346566_ (gx#syntax-e _g65316563_)))
                         (let ((_hd65356570_ (##car _e65346566_))
                               (_tl65366573_ (##cdr _e65346566_)))
                           (if (gx#stx-pair/null? _tl65366573_)
                               (if (fx>= (gx#stx-length _tl65366573_) '0)
                                   (let ((_g10046_
                                          (gx#syntax-split-splice
                                           _tl65366573_
                                           '0)))
                                     (begin
                                       (let ((_g10047_
                                              (values-count _g10046_)))
                                         (if (not (fx= _g10047_ 2))
                                             (error "Context expects 2 values"
                                                    _g10047_)))
                                       (let ((_target65376576_
                                              (values-ref _g10046_ 0))
                                             (_tl65396579_
                                              (values-ref _g10046_ 1)))
                                         (if (gx#stx-null? _tl65396579_)
                                             (letrec ((_loop65406582_
                                                       (lambda (_hd65386586_
                                                                _type-e65446589_
                                                                _id65456591_)
                                                         (if (gx#stx-pair?
                                                              _hd65386586_)
                                                             (let ((_e65416594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd65386586_)))
                       (let ((_lp-hd65426598_ (##car _e65416594_))
                             (_lp-tl65436601_ (##cdr _e65416594_)))
                         (if (gx#stx-pair? _lp-hd65426598_)
                             (let ((_e65486604_ (gx#syntax-e _lp-hd65426598_)))
                               (let ((_hd65496608_ (##car _e65486604_))
                                     (_tl65506611_ (##cdr _e65486604_)))
                                 (if (gx#stx-pair? _tl65506611_)
                                     (let ((_e65516614_
                                            (gx#syntax-e _tl65506611_)))
                                       (let ((_hd65526618_ (##car _e65516614_))
                                             (_tl65536621_
                                              (##cdr _e65516614_)))
                                         (if (gx#stx-null? _tl65536621_)
                                             (_loop65406582_
                                              _lp-tl65436601_
                                              (cons _hd65526618_
                                                    _type-e65446589_)
                                              (cons _hd65496608_ _id65456591_))
                                             (_g65306559_ _g65316563_))))
                                     (_g65306559_ _g65316563_))))
                             (_g65306559_ _g65316563_))))
                     (let ((_type-e65466624_ (reverse _type-e65446589_))
                           (_id65476627_ (reverse _id65456591_)))
                       ((lambda (_L6630_ _L6632_)
                          (cons (gx#datum->syntax '#f 'begin)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _L6630_
                                   _L6632_)
                                  (foldr (lambda (_g66486652_
                                                  _g66496655_
                                                  _g66506657_)
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
                                 (cons _g66496655_ '()))
                           (cons _g66486652_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g66506657_))
                                         '()
                                         _L6630_
                                         _L6632_))))
                        _type-e65466624_
                        _id65476627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop65406582_
                                                _target65376576_
                                                '()
                                                '()))
                                             (_g65306559_ _g65316563_)))))
                                   (_g65306559_ _g65316563_))
                               (_g65306559_ _g65316563_))))
                       (_g65306559_ _g65316563_)))))
            (_g65296660_ _$stx6526_)))))))
