(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g196367_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196369_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196371_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196376_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196379_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196384_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196387_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196392_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196395_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196400_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196403_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx191157_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx191157_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx191160_)
        (let* ((_g191163191187_
                (lambda (_g191164191183_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g191164191183_))))
               (_g191162191490_
                (lambda (_g191164191191_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g191164191191_))
                      (let ((_e191169191194_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g191164191191_))))
                        (let ((_hd191168191198_
                               (let ()
                                 (declare (not safe))
                                 (##car _e191169191194_)))
                              (_tl191167191201_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e191169191194_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl191167191201_))
                              (let ((_e191172191204_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl191167191201_))))
                                (let ((_hd191171191208_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e191172191204_)))
                                      (_tl191170191211_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e191172191204_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl191170191211_))
                                      (let ((_g196338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl191170191211_
                                                '0))))
                                        (begin
                                          (let ((_g196339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196338_)
                                                       (##vector-length
                                                        _g196338_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196339_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196339_)))
                                          (let ((_target191173191214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g196338_ 0)))
                                                (_tl191175191217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g196338_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl191175191217_))
                                                (letrec ((_loop191176191220_
                                                          (lambda (_hd191174191224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause191180191227_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd191174191224_))
                        (let ((_e191177191230_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd191174191224_))))
                          (let ((_lp-hd191178191234_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e191177191230_)))
                                (_lp-tl191179191237_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e191177191230_))))
                            (_loop191176191220_
                             _lp-tl191179191237_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd191178191234_
                                     _clause191180191227_)))))
                        (let ((_clause191181191240_
                               (reverse _clause191180191227_)))
                          ((lambda (_L191244_ _L191246_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L191246_))
                                 (let* ((_g191265191282_
                                         (lambda (_g191266191278_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g191266191278_))))
                                        (_g191264191343_
                                         (lambda (_g191266191286_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g191266191286_))
                                               (let ((_g196340_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g191266191286_
                                                         '0))))
                                                 (begin
                                                   (let ((_g196341_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g196340_)
                        (##vector-length _g196340_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g196341_ 2)))
                 (error "Context expects 2 values" _g196341_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target191268191289_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g196340_
                                                             0)))
                                                         (_tl191270191292_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g196340_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl191270191292_))
                                                         (letrec ((_loop191271191295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd191269191299_ _clause191275191302_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd191269191299_))
                                 (let ((_e191272191305_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd191269191299_))))
                                   (let ((_lp-hd191273191309_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191272191305_)))
                                         (_lp-tl191274191312_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191272191305_))))
                                     (_loop191271191295_
                                      _lp-tl191274191312_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd191273191309_
                                              _clause191275191302_)))))
                                 (let ((_clause191276191315_
                                        (reverse _clause191275191302_)))
                                   ((lambda (_L191319_)
                                      (let ()
                                        (let ((__tmp196353
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp196342
                                               (let ((__tmp196351
                                                      (let ((__tmp196352
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp196352 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp196343
                                                      (let ((__tmp196344
                                                             (let ((__tmp196350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp196345
                            (let ((__tmp196349
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp196346
                                   (let ((__tmp196347
                                          (let ((__tmp196348
                                                 (lambda (_g191334191337_
                                                          _g191335191340_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g191334191337_
                                                           _g191335191340_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp196348
                                                    '()
                                                    _L191319_))))
                                     (declare (not safe))
                                     (cons _L191246_ __tmp196347))))
                              (declare (not safe))
                              (cons __tmp196349 __tmp196346))))
                       (declare (not safe))
                       (cons __tmp196350 __tmp196345))))
                (declare (not safe))
                (cons __tmp196344 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp196351
                                                       __tmp196343))))
                                          (declare (not safe))
                                          (cons __tmp196353 __tmp196342))))
                                    _clause191276191315_))))))
                   (_loop191271191295_ _target191268191289_ '()))
                 (_g191265191282_ _g191266191286_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g191265191282_
                                                _g191266191286_)))))
                                   (_g191264191343_
                                    (let ((__tmp196356
                                           (lambda (_clause191347_)
                                             (let* ((___stx196284196285_
                                                     _clause191347_)
                                                    (_g191351191378_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx196284196285_)))))
                                               (let ((___kont196287196288_
                                                      (lambda (_L191463_
                                                               _L191465_)
                                                        (let ((__tmp196357
                                                               (let ((__tmp196358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp196360
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp196359
                                     (let ()
                                       (declare (not safe))
                                       (cons _L191463_ '()))))
                                (declare (not safe))
                                (cons __tmp196360 __tmp196359))))
                         (declare (not safe))
                         (cons __tmp196358 '()))))
                  (declare (not safe))
                  (cons _L191465_ __tmp196357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont196289196290_
                                                      (lambda (_L191415_
                                                               _L191417_
                                                               _L191418_)
                                                        (let ((__tmp196361
                                                               (let ((__tmp196362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp196363
                                     (let ((__tmp196365
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp196364
                                            (let ()
                                              (declare (not safe))
                                              (cons _L191415_ '()))))
                                       (declare (not safe))
                                       (cons __tmp196365 __tmp196364))))
                                (declare (not safe))
                                (cons __tmp196363 '()))))
                         (declare (not safe))
                         (cons _L191417_ __tmp196362))))
                  (declare (not safe))
                  (cons _L191418_ __tmp196361)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx196284196285_))
                                                     (let ((_e191357191443_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx196284196285_))))
                                                       (let ((_tl191355191450_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e191357191443_)))
                     (_hd191356191447_
                      (let () (declare (not safe)) (##car _e191357191443_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl191355191450_))
                     (let ((_e191360191453_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl191355191450_))))
                       (let ((_tl191358191460_
                              (let ()
                                (declare (not safe))
                                (##cdr _e191360191453_)))
                             (_hd191359191457_
                              (let ()
                                (declare (not safe))
                                (##car _e191360191453_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl191358191460_))
                             (___kont196287196288_
                              _hd191359191457_
                              _hd191356191447_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl191358191460_))
                                 (let ((_e191372191405_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl191358191460_))))
                                   (let ((_tl191370191412_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191372191405_)))
                                         (_hd191371191409_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191372191405_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl191370191412_))
                                         (___kont196289196290_
                                          _hd191371191409_
                                          _hd191359191457_
                                          _hd191356191447_)
                                         (let ()
                                           (declare (not safe))
                                           (_g191351191378_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g191351191378_))))))
                     (let () (declare (not safe)) (_g191351191378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g191351191378_)))))))
                                          (__tmp196354
                                           (let ((__tmp196355
                                                  (lambda (_g191481191484_
                                                           _g191482191487_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g191481191484_
                                                            _g191482191487_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp196355
                                                     '()
                                                     _L191244_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp196356 __tmp196354))))
                                 (_g191163191187_ _g191164191191_)))
                           _clause191181191240_
                           _hd191171191208_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop191176191220_
                                                   _target191173191214_
                                                   '()))
                                                (_g191163191187_
                                                 _g191164191191_)))))
                                      (_g191163191187_ _g191164191191_))))
                              (_g191163191187_ _g191164191191_))))
                      (_g191163191187_ _g191164191191_)))))
          (_g191162191490_ _stx191160_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj196327
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196366 |gxc[1]#_g196367_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           __tmp196366
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196368 |gxc[1]#_g196369_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           __tmp196368
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196370 |gxc[1]#_g196371_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           __tmp196370
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196372
               (let ((__tmp196377
                      (let ((__tmp196378 |gxc[1]#_g196379_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196378)))
                     (__tmp196373
                      (let ((__tmp196374
                             (let ((__tmp196375 |gxc[1]#_g196376_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196375))))
                        (declare (not safe))
                        (cons __tmp196374 '()))))
                 (declare (not safe))
                 (cons __tmp196377 __tmp196373))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           __tmp196372
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196380
               (let ((__tmp196385
                      (let ((__tmp196386 |gxc[1]#_g196387_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196386)))
                     (__tmp196381
                      (let ((__tmp196382
                             (let ((__tmp196383 |gxc[1]#_g196384_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196383))))
                        (declare (not safe))
                        (cons __tmp196382 '()))))
                 (declare (not safe))
                 (cons __tmp196385 __tmp196381))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           __tmp196380
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196388
               (let ((__tmp196393
                      (let ((__tmp196394 |gxc[1]#_g196395_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196394)))
                     (__tmp196389
                      (let ((__tmp196390
                             (let ((__tmp196391 |gxc[1]#_g196392_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196391))))
                        (declare (not safe))
                        (cons __tmp196390 '()))))
                 (declare (not safe))
                 (cons __tmp196393 __tmp196389))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           __tmp196388
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196396
               (let ((__tmp196401
                      (let ((__tmp196402 |gxc[1]#_g196403_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196402)))
                     (__tmp196397
                      (let ((__tmp196398
                             (let ((__tmp196399 |gxc[1]#_g196400_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196399))))
                        (declare (not safe))
                        (cons __tmp196398 '()))))
                 (declare (not safe))
                 (cons __tmp196401 __tmp196397))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196327
           __tmp196396
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj196327))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx191496_)
        (let* ((_g191500191514_
                (lambda (_g191501191510_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g191501191510_))))
               (_g191499191555_
                (lambda (_g191501191518_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g191501191518_))
                      (let ((_e191505191521_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g191501191518_))))
                        (let ((_hd191504191525_
                               (let ()
                                 (declare (not safe))
                                 (##car _e191505191521_)))
                              (_tl191503191528_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e191505191521_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl191503191528_))
                              (let ((_e191508191531_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl191503191528_))))
                                (let ((_hd191507191535_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e191508191531_)))
                                      (_tl191506191538_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e191508191531_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl191506191538_))
                                      ((lambda (_L191541_)
                                         (let ((__tmp196411
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp196404
                                                (let ((__tmp196410
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp196405
                                                       (let ((__tmp196406
                                                              (let ((__tmp196409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp196407
                             (let ((__tmp196408
                                    (let ()
                                      (declare (not safe))
                                      (cons _L191541_ '()))))
                               (declare (not safe))
                               (cons '() __tmp196408))))
                        (declare (not safe))
                        (cons __tmp196409 __tmp196407))))
                 (declare (not safe))
                 (cons __tmp196406 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp196410
                                                        __tmp196405))))
                                           (declare (not safe))
                                           (cons __tmp196411 __tmp196404)))
                                       _hd191507191535_)
                                      (_g191500191514_ _g191501191518_))))
                              (_g191500191514_ _g191501191518_))))
                      (_g191500191514_ _g191501191518_)))))
          (_g191499191555_ _$stx191496_))))))
