(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g203338_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203340_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203342_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203347_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203350_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203355_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203358_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203363_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203366_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203371_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203374_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx198629_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx198629_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx198632_)
        (let* ((_g198635198659_
                (lambda (_g198636198655_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g198636198655_))))
               (_g198634198962_
                (lambda (_g198636198663_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g198636198663_))
                      (let ((_e198641198666_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g198636198663_))))
                        (let ((_hd198640198670_
                               (let ()
                                 (declare (not safe))
                                 (##car _e198641198666_)))
                              (_tl198639198673_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e198641198666_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl198639198673_))
                              (let ((_e198644198676_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl198639198673_))))
                                (let ((_hd198643198680_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e198644198676_)))
                                      (_tl198642198683_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e198644198676_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl198642198683_))
                                      (let ((_g203309_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl198642198683_
                                                '0))))
                                        (begin
                                          (let ((_g203310_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203309_)
                                                       (##vector-length
                                                        _g203309_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203310_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203310_)))
                                          (let ((_target198645198686_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g203309_ 0)))
                                                (_tl198647198689_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g203309_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl198647198689_))
                                                (letrec ((_loop198648198692_
                                                          (lambda (_hd198646198696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause198652198699_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd198646198696_))
                        (let ((_e198649198702_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd198646198696_))))
                          (let ((_lp-hd198650198706_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e198649198702_)))
                                (_lp-tl198651198709_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e198649198702_))))
                            (_loop198648198692_
                             _lp-tl198651198709_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd198650198706_
                                     _clause198652198699_)))))
                        (let ((_clause198653198712_
                               (reverse _clause198652198699_)))
                          ((lambda (_L198716_ _L198718_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L198718_))
                                 (let* ((_g198737198754_
                                         (lambda (_g198738198750_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g198738198750_))))
                                        (_g198736198815_
                                         (lambda (_g198738198758_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g198738198758_))
                                               (let ((_g203311_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g198738198758_
                                                         '0))))
                                                 (begin
                                                   (let ((_g203312_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g203311_)
                        (##vector-length _g203311_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g203312_ 2)))
                 (error "Context expects 2 values" _g203312_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target198740198761_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g203311_
                                                             0)))
                                                         (_tl198742198764_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g203311_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl198742198764_))
                                                         (letrec ((_loop198743198767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd198741198771_ _clause198747198774_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd198741198771_))
                                 (let ((_e198744198777_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd198741198771_))))
                                   (let ((_lp-hd198745198781_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e198744198777_)))
                                         (_lp-tl198746198784_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e198744198777_))))
                                     (_loop198743198767_
                                      _lp-tl198746198784_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd198745198781_
                                              _clause198747198774_)))))
                                 (let ((_clause198748198787_
                                        (reverse _clause198747198774_)))
                                   ((lambda (_L198791_)
                                      (let ()
                                        (let ((__tmp203324
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp203313
                                               (let ((__tmp203322
                                                      (let ((__tmp203323
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp203323 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp203314
                                                      (let ((__tmp203315
                                                             (let ((__tmp203321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp203316
                            (let ((__tmp203320
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp203317
                                   (let ((__tmp203318
                                          (let ((__tmp203319
                                                 (lambda (_g198806198809_
                                                          _g198807198812_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g198806198809_
                                                           _g198807198812_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp203319
                                                    '()
                                                    _L198791_))))
                                     (declare (not safe))
                                     (cons _L198718_ __tmp203318))))
                              (declare (not safe))
                              (cons __tmp203320 __tmp203317))))
                       (declare (not safe))
                       (cons __tmp203321 __tmp203316))))
                (declare (not safe))
                (cons __tmp203315 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp203322
                                                       __tmp203314))))
                                          (declare (not safe))
                                          (cons __tmp203324 __tmp203313))))
                                    _clause198748198787_))))))
                   (_loop198743198767_ _target198740198761_ '()))
                 (_g198737198754_ _g198738198758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g198737198754_
                                                _g198738198758_)))))
                                   (_g198736198815_
                                    (let ((__tmp203327
                                           (lambda (_clause198819_)
                                             (let* ((___stx203255203256_
                                                     _clause198819_)
                                                    (_g198823198850_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx203255203256_)))))
                                               (let ((___kont203258203259_
                                                      (lambda (_L198935_
                                                               _L198937_)
                                                        (let ((__tmp203328
                                                               (let ((__tmp203329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp203331
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp203330
                                     (let ()
                                       (declare (not safe))
                                       (cons _L198935_ '()))))
                                (declare (not safe))
                                (cons __tmp203331 __tmp203330))))
                         (declare (not safe))
                         (cons __tmp203329 '()))))
                  (declare (not safe))
                  (cons _L198937_ __tmp203328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont203260203261_
                                                      (lambda (_L198887_
                                                               _L198889_
                                                               _L198890_)
                                                        (let ((__tmp203332
                                                               (let ((__tmp203333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp203334
                                     (let ((__tmp203336
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp203335
                                            (let ()
                                              (declare (not safe))
                                              (cons _L198887_ '()))))
                                       (declare (not safe))
                                       (cons __tmp203336 __tmp203335))))
                                (declare (not safe))
                                (cons __tmp203334 '()))))
                         (declare (not safe))
                         (cons _L198889_ __tmp203333))))
                  (declare (not safe))
                  (cons _L198890_ __tmp203332)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx203255203256_))
                                                     (let ((_e198829198915_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx203255203256_))))
                                                       (let ((_tl198827198922_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e198829198915_)))
                     (_hd198828198919_
                      (let () (declare (not safe)) (##car _e198829198915_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl198827198922_))
                     (let ((_e198832198925_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl198827198922_))))
                       (let ((_tl198830198932_
                              (let ()
                                (declare (not safe))
                                (##cdr _e198832198925_)))
                             (_hd198831198929_
                              (let ()
                                (declare (not safe))
                                (##car _e198832198925_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl198830198932_))
                             (___kont203258203259_
                              _hd198831198929_
                              _hd198828198919_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl198830198932_))
                                 (let ((_e198844198877_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl198830198932_))))
                                   (let ((_tl198842198884_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e198844198877_)))
                                         (_hd198843198881_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e198844198877_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl198842198884_))
                                         (___kont203260203261_
                                          _hd198843198881_
                                          _hd198831198929_
                                          _hd198828198919_)
                                         (let ()
                                           (declare (not safe))
                                           (_g198823198850_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g198823198850_))))))
                     (let () (declare (not safe)) (_g198823198850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g198823198850_)))))))
                                          (__tmp203325
                                           (let ((__tmp203326
                                                  (lambda (_g198953198956_
                                                           _g198954198959_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g198953198956_
                                                            _g198954198959_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp203326
                                                     '()
                                                     _L198716_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp203327 __tmp203325))))
                                 (_g198635198659_ _g198636198663_)))
                           _clause198653198712_
                           _hd198643198680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop198648198692_
                                                   _target198645198686_
                                                   '()))
                                                (_g198635198659_
                                                 _g198636198663_)))))
                                      (_g198635198659_ _g198636198663_))))
                              (_g198635198659_ _g198636198663_))))
                      (_g198635198659_ _g198636198663_)))))
          (_g198634198962_ _stx198632_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj203298
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
           __obj203298
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp203337 |gxc[1]#_g203338_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           __tmp203337
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp203339 |gxc[1]#_g203340_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           __tmp203339
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp203341 |gxc[1]#_g203342_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           __tmp203341
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp203343
               (let ((__tmp203348
                      (let ((__tmp203349 |gxc[1]#_g203350_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp203349)))
                     (__tmp203344
                      (let ((__tmp203345
                             (let ((__tmp203346 |gxc[1]#_g203347_|))
                               (declare (not safe))
                               (cons 'bindings __tmp203346))))
                        (declare (not safe))
                        (cons __tmp203345 '()))))
                 (declare (not safe))
                 (cons __tmp203348 __tmp203344))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           __tmp203343
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp203351
               (let ((__tmp203356
                      (let ((__tmp203357 |gxc[1]#_g203358_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp203357)))
                     (__tmp203352
                      (let ((__tmp203353
                             (let ((__tmp203354 |gxc[1]#_g203355_|))
                               (declare (not safe))
                               (cons 'bindings __tmp203354))))
                        (declare (not safe))
                        (cons __tmp203353 '()))))
                 (declare (not safe))
                 (cons __tmp203356 __tmp203352))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           __tmp203351
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp203359
               (let ((__tmp203364
                      (let ((__tmp203365 |gxc[1]#_g203366_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp203365)))
                     (__tmp203360
                      (let ((__tmp203361
                             (let ((__tmp203362 |gxc[1]#_g203363_|))
                               (declare (not safe))
                               (cons 'bindings __tmp203362))))
                        (declare (not safe))
                        (cons __tmp203361 '()))))
                 (declare (not safe))
                 (cons __tmp203364 __tmp203360))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           __tmp203359
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp203367
               (let ((__tmp203372
                      (let ((__tmp203373 |gxc[1]#_g203374_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp203373)))
                     (__tmp203368
                      (let ((__tmp203369
                             (let ((__tmp203370 |gxc[1]#_g203371_|))
                               (declare (not safe))
                               (cons 'bindings __tmp203370))))
                        (declare (not safe))
                        (cons __tmp203369 '()))))
                 (declare (not safe))
                 (cons __tmp203372 __tmp203368))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj203298
           __tmp203367
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj203298))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx198968_)
        (let* ((_g198972198986_
                (lambda (_g198973198982_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g198973198982_))))
               (_g198971199027_
                (lambda (_g198973198990_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g198973198990_))
                      (let ((_e198977198993_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g198973198990_))))
                        (let ((_hd198976198997_
                               (let ()
                                 (declare (not safe))
                                 (##car _e198977198993_)))
                              (_tl198975199000_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e198977198993_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl198975199000_))
                              (let ((_e198980199003_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl198975199000_))))
                                (let ((_hd198979199007_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e198980199003_)))
                                      (_tl198978199010_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e198980199003_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl198978199010_))
                                      ((lambda (_L199013_)
                                         (let ((__tmp203382
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp203375
                                                (let ((__tmp203381
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp203376
                                                       (let ((__tmp203377
                                                              (let ((__tmp203380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp203378
                             (let ((__tmp203379
                                    (let ()
                                      (declare (not safe))
                                      (cons _L199013_ '()))))
                               (declare (not safe))
                               (cons '() __tmp203379))))
                        (declare (not safe))
                        (cons __tmp203380 __tmp203378))))
                 (declare (not safe))
                 (cons __tmp203377 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp203381
                                                        __tmp203376))))
                                           (declare (not safe))
                                           (cons __tmp203382 __tmp203375)))
                                       _hd198979199007_)
                                      (_g198972198986_ _g198973198990_))))
                              (_g198972198986_ _g198973198990_))))
                      (_g198972198986_ _g198973198990_)))))
          (_g198971199027_ _$stx198968_))))))
