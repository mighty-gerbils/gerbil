(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g202516_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202518_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202520_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202525_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202528_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202533_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202536_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202541_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202544_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202549_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202552_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx197306_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx197306_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx197309_)
        (let* ((_g197312197336_
                (lambda (_g197313197332_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g197313197332_))))
               (_g197311197639_
                (lambda (_g197313197340_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g197313197340_))
                      (let ((_e197318197343_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g197313197340_))))
                        (let ((_hd197317197347_
                               (let ()
                                 (declare (not safe))
                                 (##car _e197318197343_)))
                              (_tl197316197350_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e197318197343_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl197316197350_))
                              (let ((_e197321197353_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl197316197350_))))
                                (let ((_hd197320197357_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e197321197353_)))
                                      (_tl197319197360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e197321197353_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl197319197360_))
                                      (let ((_g202487_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl197319197360_
                                                '0))))
                                        (begin
                                          (let ((_g202488_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202487_)
                                                       (##vector-length
                                                        _g202487_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202488_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202488_)))
                                          (let ((_target197322197363_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202487_ 0)))
                                                (_tl197324197366_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202487_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl197324197366_))
                                                (letrec ((_loop197325197369_
                                                          (lambda (_hd197323197373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause197329197376_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd197323197373_))
                        (let ((_e197326197379_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd197323197373_))))
                          (let ((_lp-hd197327197383_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e197326197379_)))
                                (_lp-tl197328197386_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e197326197379_))))
                            (_loop197325197369_
                             _lp-tl197328197386_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd197327197383_
                                     _clause197329197376_)))))
                        (let ((_clause197330197389_
                               (reverse _clause197329197376_)))
                          ((lambda (_L197393_ _L197395_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L197395_))
                                 (let* ((_g197414197431_
                                         (lambda (_g197415197427_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g197415197427_))))
                                        (_g197413197492_
                                         (lambda (_g197415197435_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g197415197435_))
                                               (let ((_g202489_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g197415197435_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202490_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202489_)
                        (##vector-length _g202489_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202490_ 2)))
                 (error "Context expects 2 values" _g202490_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target197417197438_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202489_
                                                             0)))
                                                         (_tl197419197441_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202489_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl197419197441_))
                                                         (letrec ((_loop197420197444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd197418197448_ _clause197424197451_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd197418197448_))
                                 (let ((_e197421197454_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd197418197448_))))
                                   (let ((_lp-hd197422197458_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e197421197454_)))
                                         (_lp-tl197423197461_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e197421197454_))))
                                     (_loop197420197444_
                                      _lp-tl197423197461_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd197422197458_
                                              _clause197424197451_)))))
                                 (let ((_clause197425197464_
                                        (reverse _clause197424197451_)))
                                   ((lambda (_L197468_)
                                      (let ()
                                        (let ((__tmp202502
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp202491
                                               (let ((__tmp202500
                                                      (let ((__tmp202501
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp202501 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp202492
                                                      (let ((__tmp202493
                                                             (let ((__tmp202499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp202494
                            (let ((__tmp202498
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp202495
                                   (let ((__tmp202496
                                          (let ((__tmp202497
                                                 (lambda (_g197483197486_
                                                          _g197484197489_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g197483197486_
                                                           _g197484197489_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp202497
                                                    '()
                                                    _L197468_))))
                                     (declare (not safe))
                                     (cons _L197395_ __tmp202496))))
                              (declare (not safe))
                              (cons __tmp202498 __tmp202495))))
                       (declare (not safe))
                       (cons __tmp202499 __tmp202494))))
                (declare (not safe))
                (cons __tmp202493 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp202500
                                                       __tmp202492))))
                                          (declare (not safe))
                                          (cons __tmp202502 __tmp202491))))
                                    _clause197425197464_))))))
                   (_loop197420197444_ _target197417197438_ '()))
                 (_g197414197431_ _g197415197435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g197414197431_
                                                _g197415197435_)))))
                                   (_g197413197492_
                                    (let ((__tmp202505
                                           (lambda (_clause197496_)
                                             (let* ((___stx202433202434_
                                                     _clause197496_)
                                                    (_g197500197527_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx202433202434_)))))
                                               (let ((___kont202436202437_
                                                      (lambda (_L197612_
                                                               _L197614_)
                                                        (let ((__tmp202506
                                                               (let ((__tmp202507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp202509
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp202508
                                     (let ()
                                       (declare (not safe))
                                       (cons _L197612_ '()))))
                                (declare (not safe))
                                (cons __tmp202509 __tmp202508))))
                         (declare (not safe))
                         (cons __tmp202507 '()))))
                  (declare (not safe))
                  (cons _L197614_ __tmp202506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont202438202439_
                                                      (lambda (_L197564_
                                                               _L197566_
                                                               _L197567_)
                                                        (let ((__tmp202510
                                                               (let ((__tmp202511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp202512
                                     (let ((__tmp202514
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp202513
                                            (let ()
                                              (declare (not safe))
                                              (cons _L197564_ '()))))
                                       (declare (not safe))
                                       (cons __tmp202514 __tmp202513))))
                                (declare (not safe))
                                (cons __tmp202512 '()))))
                         (declare (not safe))
                         (cons _L197566_ __tmp202511))))
                  (declare (not safe))
                  (cons _L197567_ __tmp202510)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx202433202434_))
                                                     (let ((_e197506197592_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx202433202434_))))
                                                       (let ((_tl197504197599_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e197506197592_)))
                     (_hd197505197596_
                      (let () (declare (not safe)) (##car _e197506197592_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl197504197599_))
                     (let ((_e197509197602_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl197504197599_))))
                       (let ((_tl197507197609_
                              (let ()
                                (declare (not safe))
                                (##cdr _e197509197602_)))
                             (_hd197508197606_
                              (let ()
                                (declare (not safe))
                                (##car _e197509197602_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl197507197609_))
                             (___kont202436202437_
                              _hd197508197606_
                              _hd197505197596_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl197507197609_))
                                 (let ((_e197521197554_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl197507197609_))))
                                   (let ((_tl197519197561_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e197521197554_)))
                                         (_hd197520197558_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e197521197554_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl197519197561_))
                                         (___kont202438202439_
                                          _hd197520197558_
                                          _hd197508197606_
                                          _hd197505197596_)
                                         (let ()
                                           (declare (not safe))
                                           (_g197500197527_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g197500197527_))))))
                     (let () (declare (not safe)) (_g197500197527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g197500197527_)))))))
                                          (__tmp202503
                                           (let ((__tmp202504
                                                  (lambda (_g197630197633_
                                                           _g197631197636_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g197630197633_
                                                            _g197631197636_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp202504
                                                     '()
                                                     _L197393_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp202505 __tmp202503))))
                                 (_g197312197336_ _g197313197340_)))
                           _clause197330197389_
                           _hd197320197357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop197325197369_
                                                   _target197322197363_
                                                   '()))
                                                (_g197312197336_
                                                 _g197313197340_)))))
                                      (_g197312197336_ _g197313197340_))))
                              (_g197312197336_ _g197313197340_))))
                      (_g197312197336_ _g197313197340_)))))
          (_g197311197639_ _stx197309_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj202476
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
           __obj202476
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202515 |gxc[1]#_g202516_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           __tmp202515
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202517 |gxc[1]#_g202518_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           __tmp202517
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202519 |gxc[1]#_g202520_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           __tmp202519
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202521
               (let ((__tmp202526
                      (let ((__tmp202527 |gxc[1]#_g202528_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202527)))
                     (__tmp202522
                      (let ((__tmp202523
                             (let ((__tmp202524 |gxc[1]#_g202525_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202524))))
                        (declare (not safe))
                        (cons __tmp202523 '()))))
                 (declare (not safe))
                 (cons __tmp202526 __tmp202522))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           __tmp202521
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202529
               (let ((__tmp202534
                      (let ((__tmp202535 |gxc[1]#_g202536_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202535)))
                     (__tmp202530
                      (let ((__tmp202531
                             (let ((__tmp202532 |gxc[1]#_g202533_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202532))))
                        (declare (not safe))
                        (cons __tmp202531 '()))))
                 (declare (not safe))
                 (cons __tmp202534 __tmp202530))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           __tmp202529
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202537
               (let ((__tmp202542
                      (let ((__tmp202543 |gxc[1]#_g202544_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202543)))
                     (__tmp202538
                      (let ((__tmp202539
                             (let ((__tmp202540 |gxc[1]#_g202541_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202540))))
                        (declare (not safe))
                        (cons __tmp202539 '()))))
                 (declare (not safe))
                 (cons __tmp202542 __tmp202538))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           __tmp202537
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp202545
               (let ((__tmp202550
                      (let ((__tmp202551 |gxc[1]#_g202552_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp202551)))
                     (__tmp202546
                      (let ((__tmp202547
                             (let ((__tmp202548 |gxc[1]#_g202549_|))
                               (declare (not safe))
                               (cons 'bindings __tmp202548))))
                        (declare (not safe))
                        (cons __tmp202547 '()))))
                 (declare (not safe))
                 (cons __tmp202550 __tmp202546))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj202476
           __tmp202545
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj202476))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx197645_)
        (let* ((_g197649197663_
                (lambda (_g197650197659_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g197650197659_))))
               (_g197648197704_
                (lambda (_g197650197667_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g197650197667_))
                      (let ((_e197654197670_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g197650197667_))))
                        (let ((_hd197653197674_
                               (let ()
                                 (declare (not safe))
                                 (##car _e197654197670_)))
                              (_tl197652197677_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e197654197670_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl197652197677_))
                              (let ((_e197657197680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl197652197677_))))
                                (let ((_hd197656197684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e197657197680_)))
                                      (_tl197655197687_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e197657197680_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl197655197687_))
                                      ((lambda (_L197690_)
                                         (let ((__tmp202560
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp202553
                                                (let ((__tmp202559
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp202554
                                                       (let ((__tmp202555
                                                              (let ((__tmp202558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp202556
                             (let ((__tmp202557
                                    (let ()
                                      (declare (not safe))
                                      (cons _L197690_ '()))))
                               (declare (not safe))
                               (cons '() __tmp202557))))
                        (declare (not safe))
                        (cons __tmp202558 __tmp202556))))
                 (declare (not safe))
                 (cons __tmp202555 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp202559
                                                        __tmp202554))))
                                           (declare (not safe))
                                           (cons __tmp202560 __tmp202553)))
                                       _hd197656197684_)
                                      (_g197649197663_ _g197650197667_))))
                              (_g197649197663_ _g197650197667_))))
                      (_g197649197663_ _g197650197667_)))))
          (_g197648197704_ _$stx197645_))))))
