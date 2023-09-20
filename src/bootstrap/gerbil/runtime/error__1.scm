(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g11493_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11494_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11495_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11496_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11497_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11498_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11499_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11500_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11501_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11502_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11503_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11504_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11505_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11506_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11507_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11508_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11509_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11510_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11511_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11512_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11513_|
    (##structure
     gx#syntax-quote::t
     'make-RuntimeException
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11514_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11515_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g11516_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#Exception|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g11493_|
       'expander-identifiers:
       (cons '()
             (cons |[1]#_g11493_|
                   (cons |[1]#_g11494_|
                         (cons |[1]#_g11495_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list)
        'Exception
        '#f
        '()
        '())))
    (define |[:0:]#StackTrace|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g11496_|
       'expander-identifiers:
       (cons '()
             (cons |[1]#_g11496_|
                   (cons |[1]#_g11497_|
                         (cons |[1]#_g11498_|
                               (cons (cons |[1]#_g11499_| '())
                                     (cons (cons |[1]#_g11500_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list)
        'StackTrace
        '#f
        '()
        '(continuation))))
    (define |[:0:]#Error|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g11501_|
       'expander-identifiers:
       (cons (cons |[1]#_g11496_| (cons |[1]#_g11493_| '()))
             (cons |[1]#_g11501_|
                   (cons |[1]#_g11502_|
                         (cons |[1]#_g11503_|
                               (cons (cons |[1]#_g11504_|
                                           (cons |[1]#_g11505_|
                                                 (cons |[1]#_g11506_| '())))
                                     (cons (cons |[1]#_g11507_|
                                                 (cons |[1]#_g11508_|
                                                       (cons |[1]#_g11509_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g11510_| |[1]#_g11511_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g11512_|
       'expander-identifiers:
       (cons (cons |[1]#_g11496_| (cons |[1]#_g11493_| '()))
             (cons |[1]#_g11512_|
                   (cons |[1]#_g11513_|
                         (cons |[1]#_g11514_|
                               (cons (cons |[1]#_g11515_| '())
                                     (cons (cons |[1]#_g11516_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g11510_| |[1]#_g11511_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx9847_)
        (let* ((_g98519869_
                (lambda (_g98529865_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g98529865_)))
               (_g98509925_
                (lambda (_g98529873_)
                  (if (gx#stx-pair? _g98529873_)
                      (let ((_e98559876_ (gx#syntax-e _g98529873_)))
                        (let ((_hd98569880_
                               (let ()
                                 (declare (not safe))
                                 (##car _e98559876_)))
                              (_tl98579883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e98559876_))))
                          (if (gx#stx-pair? _tl98579883_)
                              (let ((_e98589886_ (gx#syntax-e _tl98579883_)))
                                (let ((_hd98599890_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e98589886_)))
                                      (_tl98609893_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e98589886_))))
                                  (if (gx#stx-pair? _tl98609893_)
                                      (let ((_e98619896_
                                             (gx#syntax-e _tl98609893_)))
                                        (let ((_hd98629900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e98619896_)))
                                              (_tl98639903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e98619896_))))
                                          (if (gx#stx-null? _tl98639903_)
                                              ((lambda (_L9906_ _L9908_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'unless)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'procedure?)
                           (cons _L9908_ '()))
                     (cons (cons (gx#datum->syntax '#f 'raise)
                                 (cons (cons (gx#datum->syntax '#f 'Error)
                                             (cons '"expected procedure"
                                                   (cons 'where:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L9906_ '()))
                       (cons 'irritants:
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons _L9908_ '()))
                                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd98629900_
                                               _hd98599890_)
                                              (_g98519869_ _g98529873_))))
                                      (_g98519869_ _g98529873_))))
                              (_g98519869_ _g98529873_))))
                      (_g98519869_ _g98529873_)))))
          (_g98509925_ _$stx9847_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx9929_)
        (let* ((_g99329959_
                (lambda (_g99339955_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g99339955_)))
               (_g993110194_
                (lambda (_g99339963_)
                  (if (gx#stx-pair? _g99339963_)
                      (let ((_e99369966_ (gx#syntax-e _g99339963_)))
                        (let ((_hd99379970_
                               (let ()
                                 (declare (not safe))
                                 (##car _e99369966_)))
                              (_tl99389973_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e99369966_))))
                          (if (gx#stx-pair? _tl99389973_)
                              (let ((_e99399976_ (gx#syntax-e _tl99389973_)))
                                (let ((_hd99409980_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e99399976_)))
                                      (_tl99419983_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e99399976_))))
                                  (if (gx#stx-pair? _hd99409980_)
                                      (let ((_e99429986_
                                             (gx#syntax-e _hd99409980_)))
                                        (let ((_hd99439990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e99429986_)))
                                              (_tl99449993_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e99429986_))))
                                          (if (gx#stx-pair/null? _tl99449993_)
                                              (let ((_g11517_
                                                     (gx#syntax-split-splice
                                                      _tl99449993_
                                                      '0)))
                                                (begin
                                                  (let ((_g11518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g11517_)
                                                               (##vector-length
                                                                _g11517_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g11518_ 2)))
                (error "Context expects 2 values" _g11518_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target99459996_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g11517_
                                                            0)))
                                                        (_tl99479999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g11517_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl99479999_)
                                                        (letrec ((_loop994810002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd994610006_ _getf995210009_)
                            (if (gx#stx-pair? _hd994610006_)
                                (let ((_e994910012_
                                       (gx#syntax-e _hd994610006_)))
                                  (let ((_lp-hd995010016_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e994910012_)))
                                        (_lp-tl995110019_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e994910012_))))
                                    (_loop994810002_
                                     _lp-tl995110019_
                                     (cons _lp-hd995010016_ _getf995210009_))))
                                (let ((_getf995310022_
                                       (reverse _getf995210009_)))
                                  (if (gx#stx-null? _tl99419983_)
                                      ((lambda (_L10026_ _L10028_)
                                         (let* ((_g1004810072_
                                                 (lambda (_g1004910068_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1004910068_)))
                                                (_g1004710179_
                                                 (lambda (_g1004910076_)
                                                   (if (gx#stx-pair?
                                                        _g1004910076_)
                                                       (let ((_e1005210079_
                                                              (gx#syntax-e
                                                               _g1004910076_)))
                                                         (let ((_hd1005310083_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1005210079_)))
                       (_tl1005410086_
                        (let () (declare (not safe)) (##cdr _e1005210079_))))
                   (if (gx#stx-pair? _tl1005410086_)
                       (let ((_e1005510089_ (gx#syntax-e _tl1005410086_)))
                         (let ((_hd1005610093_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1005510089_)))
                               (_tl1005710096_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1005510089_))))
                           (if (gx#stx-pair/null? _hd1005610093_)
                               (let ((_g11519_
                                      (gx#syntax-split-splice
                                       _hd1005610093_
                                       '0)))
                                 (begin
                                   (let ((_g11520_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g11519_)
                                                (##vector-length _g11519_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g11520_ 2)))
                                         (error "Context expects 2 values"
                                                _g11520_)))
                                   (let ((_target1005810099_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g11519_ 0)))
                                         (_tl1006010102_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g11519_ 1))))
                                     (if (gx#stx-null? _tl1006010102_)
                                         (letrec ((_loop1006110105_
                                                   (lambda (_hd1005910109_
                                                            _macro-getf1006510112_)
                                                     (if (gx#stx-pair?
                                                          _hd1005910109_)
                                                         (let ((_e1006210115_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1005910109_)))
                   (let ((_lp-hd1006310119_
                          (let () (declare (not safe)) (##car _e1006210115_)))
                         (_lp-tl1006410122_
                          (let () (declare (not safe)) (##cdr _e1006210115_))))
                     (_loop1006110105_
                      _lp-tl1006410122_
                      (cons _lp-hd1006310119_ _macro-getf1006510112_))))
                 (let ((_macro-getf1006610125_
                        (reverse _macro-getf1006510112_)))
                   (if (gx#stx-null? _tl1005710096_)
                       ((lambda (_L10129_ _L10131_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'begin)
                                  (cons (cons (gx#datum->syntax '#f 'extern)
                                              (cons _L10131_
                                                    (foldr1 (lambda (_g1015010159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1015110162_)
                      (cons _g1015010159_ _g1015110162_))
                    '()
                    _L10129_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'def)
                                                    (cons (cons _L10028_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'exn)
                              '()))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'RuntimeException?)
                                          (cons (gx#datum->syntax '#f 'exn)
                                                '()))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'e)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '&RuntimeException-exception)
                                (cons (gx#datum->syntax '#f 'exn) '()))
                          '()))
              (cons (cons _L10131_ (cons (gx#datum->syntax '#f 'e) '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L10131_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'exn)
                                                            '()))
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L10026_
                                                 _L10129_
                                                 _L10026_
                                                 _L10129_
                                                 _L10026_)
                                                (foldr* (lambda (_g1015210165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1015310168_
                         _g1015410170_
                         _g1015510172_
                         _g1015610174_
                         _g1015710176_)
                  (cons (cons (gx#datum->syntax '#f 'def)
                              (cons (cons _g1015210165_
                                          (cons (gx#datum->syntax '#f 'exn)
                                                '()))
                                    (cons (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'RuntimeException?)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'exn)
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (gx#datum->syntax '#f 'e)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '&RuntimeException-exception)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'exn)
                                                        '()))
                                            '()))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L10131_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'e)
                                                              '()))
                                                  (cons (cons _g1015310168_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'e)
                            '()))
                (cons (cons (gx#datum->syntax '#f 'error)
                            (cons '"not an instance"
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L10028_ '()))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _g1015210165_ '()))
                  (cons (gx#datum->syntax '#f 'e) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons (cons _L10131_
                                            (cons (gx#datum->syntax '#f 'exn)
                                                  '()))
                                      (cons (cons _g1015310168_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'exn)
                                                        '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'error)
                                                        (cons '"not an instance"
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L10028_ '()))
                            (cons (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _g1015210165_ '()))
                                              (cons (gx#datum->syntax '#f 'exn)
                                                    '())))
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        _g1015710176_))
                '()
                _L10026_
                _L10129_
                _L10026_
                _L10129_
                _L10026_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _macro-getf1006610125_
                        _hd1005310083_)
                       (_g1004810072_ _g1004910076_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1006110105_
                                            _target1005810099_
                                            '()))
                                         (_g1004810072_ _g1004910076_)))))
                               (_g1004810072_ _g1004910076_))))
                       (_g1004810072_ _g1004910076_))))
               (_g1004810072_ _g1004910076_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1004710179_
                                            (list (gx#stx-identifier
                                                   _L10028_
                                                   '"macro-"
                                                   _L10028_)
                                                  (map (lambda (_f10183_)
                                                         (gx#stx-identifier
                                                          _f10183_
                                                          '"macro-"
                                                          _f10183_))
                                                       (foldr1 (lambda (_g1018510188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1018610191_)
                         (cons _g1018510188_ _g1018610191_))
                       '()
                       _L10026_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf995310022_
                                       _hd99439990_)
                                      (_g99329959_ _g99339963_)))))))
                  (_loop994810002_ _target99459996_ '()))
                (_g99329959_ _g99339963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g99329959_ _g99339963_))))
                                      (_g99329959_ _g99339963_))))
                              (_g99329959_ _g99339963_))))
                      (_g99329959_ _g99339963_)))))
          (_g993110194_ _stx9929_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx10200_)
        (let* ((_g1020410224_
                (lambda (_g1020510220_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1020510220_)))
               (_g1020310295_
                (lambda (_g1020510228_)
                  (if (gx#stx-pair? _g1020510228_)
                      (let ((_e1020710231_ (gx#syntax-e _g1020510228_)))
                        (let ((_hd1020810235_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1020710231_)))
                              (_tl1020910238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1020710231_))))
                          (if (gx#stx-pair/null? _tl1020910238_)
                              (let ((_g11521_
                                     (gx#syntax-split-splice
                                      _tl1020910238_
                                      '0)))
                                (begin
                                  (let ((_g11522_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g11521_)
                                               (##vector-length _g11521_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g11522_ 2)))
                                        (error "Context expects 2 values"
                                               _g11522_)))
                                  (let ((_target1021010241_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g11521_ 0)))
                                        (_tl1021210244_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g11521_ 1))))
                                    (if (gx#stx-null? _tl1021210244_)
                                        (letrec ((_loop1021310247_
                                                  (lambda (_hd1021110251_
                                                           _defexn1021710254_)
                                                    (if (gx#stx-pair?
                                                         _hd1021110251_)
                                                        (let ((_e1021410257_
                                                               (gx#syntax-e
                                                                _hd1021110251_)))
                                                          (let ((_lp-hd1021510261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1021410257_)))
                        (_lp-tl1021610264_
                         (let () (declare (not safe)) (##cdr _e1021410257_))))
                    (_loop1021310247_
                     _lp-tl1021610264_
                     (cons _lp-hd1021510261_ _defexn1021710254_))))
                (let ((_defexn1021810267_ (reverse _defexn1021710254_)))
                  ((lambda (_L10271_)
                     (cons (gx#datum->syntax '#f 'begin)
                           (foldr1 (lambda (_g1028610289_ _g1028710292_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'defruntime-exception)
                                                 (cons _g1028610289_ '()))
                                           _g1028710292_))
                                   '()
                                   _L10271_)))
                   _defexn1021810267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1021310247_
                                           _target1021010241_
                                           '()))
                                        (_g1020410224_ _g1020510228_)))))
                              (_g1020410224_ _g1020510228_))))
                      (_g1020410224_ _g1020510228_)))))
          (_g1020310295_ _$stx10200_))))))
