(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g5383_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5392_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5394_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5398_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5400_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5402_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g5404_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx46_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx46_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx49_)
        (let* ((_g5276_ (lambda (_g5372_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g5372_))))
               (_g51380_
                (lambda (_g5380_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g5380_))
                      (let ((_e5883_ (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _g5380_))))
                        (let ((_hd5787_
                               (let () (declare (not safe)) (##car _e5883_)))
                              (_tl5690_
                               (let () (declare (not safe)) (##cdr _e5883_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl5690_))
                              (let ((_e6193_ (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl5690_))))
                                (let ((_hd6097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6193_)))
                                      (_tl59100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl59100_))
                                      (let ((_g5355_ (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl59100_
                                                        '0))))
                                        (begin
                                          (let ((_g5356_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g5355_)
                                                               (##vector-length
                                                                _g5355_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g5356_ 2)))
                                                (error "Context expects 2 values"
                                                       _g5356_)))
                                          (let ((_target62103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5355_ 0)))
                                                (_tl64106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g5355_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null? _tl64106_))
                                                (letrec ((_loop65109_
                                                          (lambda (_hd63113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause69116_)
                    (if (let () (declare (not safe)) (gx#stx-pair? _hd63113_))
                        (let ((_e66119_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd63113_))))
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
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd67123_ _clause69116_)))))
                        (let ((_clause70129_ (reverse _clause69116_)))
                          ((lambda (_L133_ _L135_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L135_))
                                 (let* ((_g155172_
                                         (lambda (_g156168_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g156168_))))
                                        (_g154233_
                                         (lambda (_g156176_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null? _g156176_))
                                               (let ((_g5357_ (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _g156176_ '0))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   (let ((_g5358_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g5357_)
                                (##vector-length _g5357_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g5358_ 2)))
                 (error "Context expects 2 values" _g5358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target158179_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5357_
                                                             0)))
                                                         (_tl160182_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g5357_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl160182_))
                                                         (letrec ((_loop161185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd159189_ _clause165192_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd159189_))
                                 (let ((_e162195_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd159189_))))
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
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd163199_ _clause165192_)))))
                                 (let ((_clause166205_
                                        (reverse _clause165192_)))
                                   ((lambda (_L209_)
                                      (let ()
                                        (let ((__tmp5370
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp5359
                                               (let ((__tmp5368
                                                      (let ((__tmp5369
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp5369 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp5360
                                                      (let ((__tmp5361
                                                             (let ((__tmp5367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp5362
                            (let ((__tmp5366
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp5363
                                   (let ((__tmp5364
                                          (let ((__tmp5365
                                                 (lambda (_g224227_ _g225230_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g224227_
                                                           _g225230_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp5365 '() _L209_))))
                                     (declare (not safe))
                                     (cons _L135_ __tmp5364))))
                              (declare (not safe))
                              (cons __tmp5366 __tmp5363))))
                       (declare (not safe))
                       (cons __tmp5367 __tmp5362))))
                (declare (not safe))
                (cons __tmp5361 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp5368 __tmp5360))))
                                          (declare (not safe))
                                          (cons __tmp5370 __tmp5359))))
                                    _clause166205_))))))
                   (_loop161185_ _target158179_ '()))
                 (_g155172_ _g156176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g155172_ _g156176_)))))
                                   (_g154233_
                                    (let ((__tmp5373
                                           (lambda (_clause237_)
                                             (let* ((___stx53085309_
                                                     _clause237_)
                                                    (_g241268_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx53085309_)))))
                                               (let ((___kont53115312_
                                                      (lambda (_L353_ _L355_)
                                                        (let ((__tmp5374
                                                               (let ((__tmp5375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp5377
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp5376
                                     (let ()
                                       (declare (not safe))
                                       (cons _L353_ '()))))
                                (declare (not safe))
                                (cons __tmp5377 __tmp5376))))
                         (declare (not safe))
                         (cons __tmp5375 '()))))
                  (declare (not safe))
                  (cons _L355_ __tmp5374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont53135314_
                                                      (lambda (_L305_
                                                               _L307_
                                                               _L308_)
                                                        (let ((__tmp5378
                                                               (let ((__tmp5379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp5380
                                     (let ((__tmp5382
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp5381
                                            (let ()
                                              (declare (not safe))
                                              (cons _L305_ '()))))
                                       (declare (not safe))
                                       (cons __tmp5382 __tmp5381))))
                                (declare (not safe))
                                (cons __tmp5380 '()))))
                         (declare (not safe))
                         (cons _L307_ __tmp5379))))
                  (declare (not safe))
                  (cons _L308_ __tmp5378)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx53085309_))
                                                     (let ((_e247333_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx53085309_))))
                                                       (let ((_tl245340_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e247333_)))
                     (_hd246337_
                      (let () (declare (not safe)) (##car _e247333_))))
                 (if (let () (declare (not safe)) (gx#stx-pair? _tl245340_))
                     (let ((_e250343_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl245340_))))
                       (let ((_tl248350_
                              (let () (declare (not safe)) (##cdr _e250343_)))
                             (_hd249347_
                              (let () (declare (not safe)) (##car _e250343_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl248350_))
                             (___kont53115312_ _hd249347_ _hd246337_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl248350_))
                                 (let ((_e262295_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl248350_))))
                                   (let ((_tl260302_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e262295_)))
                                         (_hd261299_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e262295_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl260302_))
                                         (___kont53135314_
                                          _hd261299_
                                          _hd249347_
                                          _hd246337_)
                                         (let ()
                                           (declare (not safe))
                                           (_g241268_)))))
                                 (let () (declare (not safe)) (_g241268_))))))
                     (let () (declare (not safe)) (_g241268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g241268_)))))))
                                          (__tmp5371
                                           (let ((__tmp5372
                                                  (lambda (_g371374_ _g372377_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g371374_
                                                            _g372377_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp5372 '() _L133_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp5373 __tmp5371))))
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
       |gxc[1]#_g5383_|
       'expander-identifiers:
       (let ((__tmp5384
              (let ((__tmp5405 |gxc[1]#_g5383_|)
                    (__tmp5385
                     (let ((__tmp5403 |gxc[1]#_g5404_|)
                           (__tmp5386
                            (let ((__tmp5401 |gxc[1]#_g5402_|)
                                  (__tmp5387
                                   (let ((__tmp5395
                                          (let ((__tmp5399 |gxc[1]#_g5400_|)
                                                (__tmp5396
                                                 (let ((__tmp5397
                                                        |gxc[1]#_g5398_|))
                                                   (declare (not safe))
                                                   (cons __tmp5397 '()))))
                                            (declare (not safe))
                                            (cons __tmp5399 __tmp5396)))
                                         (__tmp5388
                                          (let ((__tmp5389
                                                 (let ((__tmp5393
                                                        |gxc[1]#_g5394_|)
                                                       (__tmp5390
                                                        (let ((__tmp5391
                                                               |gxc[1]#_g5392_|))
                                                          (declare (not safe))
                                                          (cons __tmp5391
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp5393
                                                         __tmp5390))))
                                            (declare (not safe))
                                            (cons __tmp5389 '()))))
                                     (declare (not safe))
                                     (cons __tmp5395 __tmp5388))))
                              (declare (not safe))
                              (cons __tmp5401 __tmp5387))))
                       (declare (not safe))
                       (cons __tmp5403 __tmp5386))))
                (declare (not safe))
                (cons __tmp5405 __tmp5385))))
         (declare (not safe))
         (cons '#f __tmp5384))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
