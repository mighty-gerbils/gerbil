(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g5744_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5745_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5746_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5747_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5748_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5749_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5750_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5751_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5752_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5753_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5754_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5755_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5756_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5757_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5758_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5759_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5760_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5761_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5762_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5763_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5764_|
    (##structure
     gx#syntax-quote::t
     'make-RuntimeException
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5765_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5766_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g5767_|
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
       |[1]#_g5744_|
       'expander-identifiers:
       (cons '()
             (cons |[1]#_g5744_|
                   (cons |[1]#_g5745_|
                         (cons |[1]#_g5746_| (cons '() (cons '() '()))))))
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
       |[1]#_g5747_|
       'expander-identifiers:
       (cons '()
             (cons |[1]#_g5747_|
                   (cons |[1]#_g5748_|
                         (cons |[1]#_g5749_|
                               (cons (cons |[1]#_g5750_| '())
                                     (cons (cons |[1]#_g5751_| '()) '()))))))
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
       |[1]#_g5752_|
       'expander-identifiers:
       (cons (cons |[1]#_g5747_| (cons |[1]#_g5744_| '()))
             (cons |[1]#_g5752_|
                   (cons |[1]#_g5753_|
                         (cons |[1]#_g5754_|
                               (cons (cons |[1]#_g5755_|
                                           (cons |[1]#_g5756_|
                                                 (cons |[1]#_g5757_| '())))
                                     (cons (cons |[1]#_g5758_|
                                                 (cons |[1]#_g5759_|
                                                       (cons |[1]#_g5760_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g5761_| |[1]#_g5762_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g5763_|
       'expander-identifiers:
       (cons (cons |[1]#_g5747_| (cons |[1]#_g5744_| '()))
             (cons |[1]#_g5763_|
                   (cons |[1]#_g5764_|
                         (cons |[1]#_g5765_|
                               (cons (cons |[1]#_g5766_| '())
                                     (cons (cons |[1]#_g5767_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g5761_| |[1]#_g5762_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx4120_)
        (let* ((_g41244142_
                (lambda (_g41254138_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g41254138_)))
               (_g41234198_
                (lambda (_g41254146_)
                  (if (gx#stx-pair? _g41254146_)
                      (let ((_e41284149_ (gx#syntax-e _g41254146_)))
                        (let ((_hd41294153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e41284149_)))
                              (_tl41304156_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e41284149_))))
                          (if (gx#stx-pair? _tl41304156_)
                              (let ((_e41314159_ (gx#syntax-e _tl41304156_)))
                                (let ((_hd41324163_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e41314159_)))
                                      (_tl41334166_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e41314159_))))
                                  (if (gx#stx-pair? _tl41334166_)
                                      (let ((_e41344169_
                                             (gx#syntax-e _tl41334166_)))
                                        (let ((_hd41354173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e41344169_)))
                                              (_tl41364176_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e41344169_))))
                                          (if (gx#stx-null? _tl41364176_)
                                              ((lambda (_L4179_ _L4181_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'unless)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'procedure?)
                           (cons _L4181_ '()))
                     (cons (cons (gx#datum->syntax '#f 'raise)
                                 (cons (cons (gx#datum->syntax '#f 'Error)
                                             (cons '"expected procedure"
                                                   (cons 'where:
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L4179_ '()))
                       (cons 'irritants:
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (cons _L4181_ '()))
                                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd41354173_
                                               _hd41324163_)
                                              (_g41244142_ _g41254146_))))
                                      (_g41244142_ _g41254146_))))
                              (_g41244142_ _g41254146_))))
                      (_g41244142_ _g41254146_)))))
          (_g41234198_ _$stx4120_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx4202_)
        (let* ((_g42054232_
                (lambda (_g42064228_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g42064228_)))
               (_g42044467_
                (lambda (_g42064236_)
                  (if (gx#stx-pair? _g42064236_)
                      (let ((_e42094239_ (gx#syntax-e _g42064236_)))
                        (let ((_hd42104243_
                               (let ()
                                 (declare (not safe))
                                 (##car _e42094239_)))
                              (_tl42114246_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e42094239_))))
                          (if (gx#stx-pair? _tl42114246_)
                              (let ((_e42124249_ (gx#syntax-e _tl42114246_)))
                                (let ((_hd42134253_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e42124249_)))
                                      (_tl42144256_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e42124249_))))
                                  (if (gx#stx-pair? _hd42134253_)
                                      (let ((_e42154259_
                                             (gx#syntax-e _hd42134253_)))
                                        (let ((_hd42164263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e42154259_)))
                                              (_tl42174266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e42154259_))))
                                          (if (gx#stx-pair/null? _tl42174266_)
                                              (let ((_g5768_ (gx#syntax-split-splice
                                                              _tl42174266_
                                                              '0)))
                                                (begin
                                                  (let ((_g5769_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (if (##values? _g5768_)
                               (##vector-length _g5768_)
                               1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g5769_ 2)))
                (error "Context expects 2 values" _g5769_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target42184269_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g5768_
                                                            0)))
                                                        (_tl42204272_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g5768_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl42204272_)
                                                        (letrec ((_loop42214275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd42194279_ _getf42254282_)
                            (if (gx#stx-pair? _hd42194279_)
                                (let ((_e42224285_ (gx#syntax-e _hd42194279_)))
                                  (let ((_lp-hd42234289_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e42224285_)))
                                        (_lp-tl42244292_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e42224285_))))
                                    (_loop42214275_
                                     _lp-tl42244292_
                                     (cons _lp-hd42234289_ _getf42254282_))))
                                (let ((_getf42264295_
                                       (reverse _getf42254282_)))
                                  (if (gx#stx-null? _tl42144256_)
                                      ((lambda (_L4299_ _L4301_)
                                         (let* ((_g43214345_
                                                 (lambda (_g43224341_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g43224341_)))
                                                (_g43204452_
                                                 (lambda (_g43224349_)
                                                   (if (gx#stx-pair?
                                                        _g43224349_)
                                                       (let ((_e43254352_
                                                              (gx#syntax-e
                                                               _g43224349_)))
                                                         (let ((_hd43264356_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e43254352_)))
                       (_tl43274359_
                        (let () (declare (not safe)) (##cdr _e43254352_))))
                   (if (gx#stx-pair? _tl43274359_)
                       (let ((_e43284362_ (gx#syntax-e _tl43274359_)))
                         (let ((_hd43294366_
                                (let ()
                                  (declare (not safe))
                                  (##car _e43284362_)))
                               (_tl43304369_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e43284362_))))
                           (if (gx#stx-pair/null? _hd43294366_)
                               (let ((_g5770_ (gx#syntax-split-splice
                                               _hd43294366_
                                               '0)))
                                 (begin
                                   (let ((_g5771_ (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g5770_)
                                                        (##vector-length
                                                         _g5770_)
                                                        1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g5771_ 2)))
                                         (error "Context expects 2 values"
                                                _g5771_)))
                                   (let ((_target43314372_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g5770_ 0)))
                                         (_tl43334375_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g5770_ 1))))
                                     (if (gx#stx-null? _tl43334375_)
                                         (letrec ((_loop43344378_
                                                   (lambda (_hd43324382_
                                                            _macro-getf43384385_)
                                                     (if (gx#stx-pair?
                                                          _hd43324382_)
                                                         (let ((_e43354388_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd43324382_)))
                   (let ((_lp-hd43364392_
                          (let () (declare (not safe)) (##car _e43354388_)))
                         (_lp-tl43374395_
                          (let () (declare (not safe)) (##cdr _e43354388_))))
                     (_loop43344378_
                      _lp-tl43374395_
                      (cons _lp-hd43364392_ _macro-getf43384385_))))
                 (let ((_macro-getf43394398_ (reverse _macro-getf43384385_)))
                   (if (gx#stx-null? _tl43304369_)
                       ((lambda (_L4402_ _L4404_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'begin)
                                  (cons (cons (gx#datum->syntax '#f 'extern)
                                              (cons _L4404_
                                                    (foldr (lambda (_g44234432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g44244435_)
                     (cons _g44234432_ _g44244435_))
                   '()
                   _L4402_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'def)
                                                    (cons (cons _L4301_
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
              (cons (cons _L4404_ (cons (gx#datum->syntax '#f 'e) '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L4404_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'exn)
                                                            '()))
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L4299_
                                                 _L4402_
                                                 _L4299_
                                                 _L4402_
                                                 _L4299_)
                                                (foldr (lambda (_g44254438_
                                                                _g44264441_
                                                                _g44274443_
                                                                _g44284445_
                                                                _g44294447_
                                                                _g44304449_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons (cons _g44254438_
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
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
                                           (cons (cons _L4404_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'e)
                                                             '()))
                                                 (cons (cons _g44264441_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'e)
                           '()))
               (cons (cons (gx#datum->syntax '#f 'error)
                           (cons '"not an instance"
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L4301_ '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _g44254438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (gx#datum->syntax '#f 'e) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _L4404_
                                           (cons (gx#datum->syntax '#f 'exn)
                                                 '()))
                                     (cons (cons _g44264441_
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
                                 (cons _L4301_ '()))
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _g44254438_ '()))
                                             (cons (gx#datum->syntax '#f 'exn)
                                                   '())))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       _g44304449_))
               '()
               _L4299_
               _L4402_
               _L4299_
               _L4402_
               _L4299_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _macro-getf43394398_
                        _hd43264356_)
                       (_g43214345_ _g43224349_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop43344378_
                                            _target43314372_
                                            '()))
                                         (_g43214345_ _g43224349_)))))
                               (_g43214345_ _g43224349_))))
                       (_g43214345_ _g43224349_))))
               (_g43214345_ _g43224349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g43204452_
                                            (list (gx#stx-identifier
                                                   _L4301_
                                                   '"macro-"
                                                   _L4301_)
                                                  (map (lambda (_f4456_)
                                                         (gx#stx-identifier
                                                          _f4456_
                                                          '"macro-"
                                                          _f4456_))
                                                       (foldr (lambda (_g44584461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g44594464_)
                        (cons _g44584461_ _g44594464_))
                      '()
                      _L4299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _getf42264295_
                                       _hd42164263_)
                                      (_g42054232_ _g42064236_)))))))
                  (_loop42214275_ _target42184269_ '()))
                (_g42054232_ _g42064236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g42054232_ _g42064236_))))
                                      (_g42054232_ _g42064236_))))
                              (_g42054232_ _g42064236_))))
                      (_g42054232_ _g42064236_)))))
          (_g42044467_ _stx4202_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx4473_)
        (let* ((_g44774497_
                (lambda (_g44784493_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g44784493_)))
               (_g44764568_
                (lambda (_g44784501_)
                  (if (gx#stx-pair? _g44784501_)
                      (let ((_e44804504_ (gx#syntax-e _g44784501_)))
                        (let ((_hd44814508_
                               (let ()
                                 (declare (not safe))
                                 (##car _e44804504_)))
                              (_tl44824511_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e44804504_))))
                          (if (gx#stx-pair/null? _tl44824511_)
                              (let ((_g5772_ (gx#syntax-split-splice
                                              _tl44824511_
                                              '0)))
                                (begin
                                  (let ((_g5773_ (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g5772_)
                                                       (##vector-length
                                                        _g5772_)
                                                       1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g5773_ 2)))
                                        (error "Context expects 2 values"
                                               _g5773_)))
                                  (let ((_target44834514_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g5772_ 0)))
                                        (_tl44854517_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g5772_ 1))))
                                    (if (gx#stx-null? _tl44854517_)
                                        (letrec ((_loop44864520_
                                                  (lambda (_hd44844524_
                                                           _defexn44904527_)
                                                    (if (gx#stx-pair?
                                                         _hd44844524_)
                                                        (let ((_e44874530_
                                                               (gx#syntax-e
                                                                _hd44844524_)))
                                                          (let ((_lp-hd44884534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e44874530_)))
                        (_lp-tl44894537_
                         (let () (declare (not safe)) (##cdr _e44874530_))))
                    (_loop44864520_
                     _lp-tl44894537_
                     (cons _lp-hd44884534_ _defexn44904527_))))
                (let ((_defexn44914540_ (reverse _defexn44904527_)))
                  ((lambda (_L4544_)
                     (cons (gx#datum->syntax '#f 'begin)
                           (foldr (lambda (_g45594562_ _g45604565_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defruntime-exception)
                                                (cons _g45594562_ '()))
                                          _g45604565_))
                                  '()
                                  _L4544_)))
                   _defexn44914540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop44864520_
                                           _target44834514_
                                           '()))
                                        (_g44774497_ _g44784501_)))))
                              (_g44774497_ _g44784501_))))
                      (_g44774497_ _g44784501_)))))
          (_g44764568_ _$stx4473_))))))
