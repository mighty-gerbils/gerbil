(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g4758_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4759_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4760_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4761_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4762_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4763_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4764_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx46_)
        (gx#macro-expand-syntax-case__% _stx46_ 'stx-eq? 'stx-e 'quote)))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx49_)
        (let* ((_g5276_ (lambda (_g5372_)
                          (gx#raise-syntax-error '#f '"Bad syntax" _g5372_)))
               (_g51380_
                (lambda (_g5380_)
                  (if (gx#stx-pair? _g5380_)
                      (let ((_e5683_ (gx#syntax-e _g5380_)))
                        (let ((_hd5787_
                               (let () (declare (not safe)) (##car _e5683_)))
                              (_tl5890_
                               (let () (declare (not safe)) (##cdr _e5683_))))
                          (if (gx#stx-pair? _tl5890_)
                              (let ((_e5993_ (gx#syntax-e _tl5890_)))
                                (let ((_hd6097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e5993_)))
                                      (_tl61100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e5993_))))
                                  (if (gx#stx-pair/null? _tl61100_)
                                      (let ((_g4754_ (gx#syntax-split-splice
                                                      _tl61100_
                                                      '0)))
                                        (begin
                                          (let ((_g4755_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g4754_)
                                                               (##vector-length
                                                                _g4754_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g4755_ 2)))
                                                (error "Context expects 2 values"
                                                       _g4755_)))
                                          (let ((_target62103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g4754_ 0)))
                                                (_tl64106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g4754_ 1))))
                                            (if (gx#stx-null? _tl64106_)
                                                (letrec ((_loop65109_
                                                          (lambda (_hd63113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause69116_)
                    (if (gx#stx-pair? _hd63113_)
                        (let ((_e66119_ (gx#syntax-e _hd63113_)))
                          (let ((_lp-hd67123_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e66119_)))
                                (_lp-tl68126_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e66119_))))
                            (_loop65109_
                             _lp-tl68126_
                             (cons _lp-hd67123_ _clause69116_))))
                        (let ((_clause70129_ (reverse _clause69116_)))
                          ((lambda (_L133_ _L135_)
                             (if (gx#identifier-list? _L135_)
                                 (let* ((_g155172_
                                         (lambda (_g156168_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g156168_)))
                                        (_g154233_
                                         (lambda (_g156176_)
                                           (if (gx#stx-pair/null? _g156176_)
                                               (let ((_g4756_ (gx#syntax-split-splice
                                                               _g156176_
                                                               '0)))
                                                 (begin
                                                   (let ((_g4757_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g4756_)
                                (##vector-length _g4756_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g4757_ 2)))
                 (error "Context expects 2 values" _g4757_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target158179_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g4756_
                                                             0)))
                                                         (_tl160182_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g4756_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl160182_)
                                                         (letrec ((_loop161185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd159189_ _clause165192_)
                             (if (gx#stx-pair? _hd159189_)
                                 (let ((_e162195_ (gx#syntax-e _hd159189_)))
                                   (let ((_lp-hd163199_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e162195_)))
                                         (_lp-tl164202_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e162195_))))
                                     (_loop161185_
                                      _lp-tl164202_
                                      (cons _lp-hd163199_ _clause165192_))))
                                 (let ((_clause166205_
                                        (reverse _clause165192_)))
                                   ((lambda (_L209_)
                                      (let ()
                                        (cons (gx#datum->syntax__0 '#f 'lambda)
                                              (cons (cons (gx#datum->syntax__0
                                                           '#f
                                                           '$stx)
                                                          '())
                                                    (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'ast-case)
                        (cons (gx#datum->syntax__0 '#f '$stx)
                              (cons _L135_
                                    (foldr1 (lambda (_g224227_ _g225230_)
                                              (cons _g224227_ _g225230_))
                                            '()
                                            _L209_))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _clause166205_))))))
                   (_loop161185_ _target158179_ '()))
                 (_g155172_ _g156176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g155172_ _g156176_)))))
                                   (_g154233_
                                    (gx#stx-map1
                                     (lambda (_clause237_)
                                       (let* ((___stx47084709_ _clause237_)
                                              (_g241268_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx47084709_))))
                                         (let ((___kont47114712_
                                                (lambda (_L353_ _L355_)
                                                  (cons _L355_
                                                        (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L353_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont47134714_
                                                (lambda (_L305_ _L307_ _L308_)
                                                  (cons _L308_
                                                        (cons _L307_
                                                              (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L305_ '()))
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair? ___stx47084709_)
                                               (let ((_e245333_
                                                      (gx#syntax-e
                                                       ___stx47084709_)))
                                                 (let ((_tl247340_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245333_)))
                                                       (_hd246337_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245333_))))
                                                   (if (gx#stx-pair?
                                                        _tl247340_)
                                                       (let ((_e248343_
                                                              (gx#syntax-e
                                                               _tl247340_)))
                                                         (let ((_tl250350_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e248343_)))
                       (_hd249347_
                        (let () (declare (not safe)) (##car _e248343_))))
                   (if (gx#stx-null? _tl250350_)
                       (___kont47114712_ _hd249347_ _hd246337_)
                       (if (gx#stx-pair? _tl250350_)
                           (let ((_e260295_ (gx#syntax-e _tl250350_)))
                             (let ((_tl262302_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e260295_)))
                                   (_hd261299_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e260295_))))
                               (if (gx#stx-null? _tl262302_)
                                   (___kont47134714_
                                    _hd261299_
                                    _hd249347_
                                    _hd246337_)
                                   (_g241268_))))
                           (_g241268_)))))
               (_g241268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g241268_)))))
                                     (foldr1 (lambda (_g371374_ _g372377_)
                                               (cons _g371374_ _g372377_))
                                             '()
                                             _L133_))))
                                 (_g5276_ _g5380_)))
                           _clause70129_
                           _hd6097_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop65109_
                                                   _target62103_
                                                   '()))
                                                (_g5276_ _g5380_)))))
                                      (_g5276_ _g5380_))))
                              (_g5276_ _g5380_))))
                      (_g5276_ _g5380_)))))
          (_g51380_ _stx49_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g4758_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g4758_|
                   (cons |gxc[1]#_g4759_|
                         (cons |gxc[1]#_g4760_|
                               (cons (cons |gxc[1]#_g4761_|
                                           (cons |gxc[1]#_g4762_| '()))
                                     (cons (cons |gxc[1]#_g4763_|
                                                 (cons |gxc[1]#_g4764_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
