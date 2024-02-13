(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g196261_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196263_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196265_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196270_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196273_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196278_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196281_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196286_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196289_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196294_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196297_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx191051_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx191051_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx191054_)
        (let* ((_g191057191081_
                (lambda (_g191058191077_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g191058191077_))))
               (_g191056191384_
                (lambda (_g191058191085_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g191058191085_))
                      (let ((_e191063191088_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g191058191085_))))
                        (let ((_hd191062191092_
                               (let ()
                                 (declare (not safe))
                                 (##car _e191063191088_)))
                              (_tl191061191095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e191063191088_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl191061191095_))
                              (let ((_e191066191098_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl191061191095_))))
                                (let ((_hd191065191102_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e191066191098_)))
                                      (_tl191064191105_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e191066191098_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl191064191105_))
                                      (let ((_g196232_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl191064191105_
                                                '0))))
                                        (begin
                                          (let ((_g196233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196232_)
                                                       (##vector-length
                                                        _g196232_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196233_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196233_)))
                                          (let ((_target191067191108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g196232_ 0)))
                                                (_tl191069191111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g196232_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl191069191111_))
                                                (letrec ((_loop191070191114_
                                                          (lambda (_hd191068191118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause191074191121_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd191068191118_))
                        (let ((_e191071191124_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd191068191118_))))
                          (let ((_lp-hd191072191128_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e191071191124_)))
                                (_lp-tl191073191131_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e191071191124_))))
                            (_loop191070191114_
                             _lp-tl191073191131_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd191072191128_
                                     _clause191074191121_)))))
                        (let ((_clause191075191134_
                               (reverse _clause191074191121_)))
                          ((lambda (_L191138_ _L191140_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L191140_))
                                 (let* ((_g191159191176_
                                         (lambda (_g191160191172_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g191160191172_))))
                                        (_g191158191237_
                                         (lambda (_g191160191180_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g191160191180_))
                                               (let ((_g196234_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g191160191180_
                                                         '0))))
                                                 (begin
                                                   (let ((_g196235_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g196234_)
                        (##vector-length _g196234_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g196235_ 2)))
                 (error "Context expects 2 values" _g196235_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target191162191183_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g196234_
                                                             0)))
                                                         (_tl191164191186_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g196234_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl191164191186_))
                                                         (letrec ((_loop191165191189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd191163191193_ _clause191169191196_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd191163191193_))
                                 (let ((_e191166191199_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd191163191193_))))
                                   (let ((_lp-hd191167191203_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191166191199_)))
                                         (_lp-tl191168191206_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191166191199_))))
                                     (_loop191165191189_
                                      _lp-tl191168191206_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd191167191203_
                                              _clause191169191196_)))))
                                 (let ((_clause191170191209_
                                        (reverse _clause191169191196_)))
                                   ((lambda (_L191213_)
                                      (let ()
                                        (let ((__tmp196247
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp196236
                                               (let ((__tmp196245
                                                      (let ((__tmp196246
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp196246 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp196237
                                                      (let ((__tmp196238
                                                             (let ((__tmp196244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp196239
                            (let ((__tmp196243
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp196240
                                   (let ((__tmp196241
                                          (let ((__tmp196242
                                                 (lambda (_g191228191231_
                                                          _g191229191234_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g191228191231_
                                                           _g191229191234_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp196242
                                                    '()
                                                    _L191213_))))
                                     (declare (not safe))
                                     (cons _L191140_ __tmp196241))))
                              (declare (not safe))
                              (cons __tmp196243 __tmp196240))))
                       (declare (not safe))
                       (cons __tmp196244 __tmp196239))))
                (declare (not safe))
                (cons __tmp196238 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp196245
                                                       __tmp196237))))
                                          (declare (not safe))
                                          (cons __tmp196247 __tmp196236))))
                                    _clause191170191209_))))))
                   (_loop191165191189_ _target191162191183_ '()))
                 (_g191159191176_ _g191160191180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g191159191176_
                                                _g191160191180_)))))
                                   (_g191158191237_
                                    (let ((__tmp196250
                                           (lambda (_clause191241_)
                                             (let* ((___stx196178196179_
                                                     _clause191241_)
                                                    (_g191245191272_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx196178196179_)))))
                                               (let ((___kont196181196182_
                                                      (lambda (_L191357_
                                                               _L191359_)
                                                        (let ((__tmp196251
                                                               (let ((__tmp196252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp196254
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp196253
                                     (let ()
                                       (declare (not safe))
                                       (cons _L191357_ '()))))
                                (declare (not safe))
                                (cons __tmp196254 __tmp196253))))
                         (declare (not safe))
                         (cons __tmp196252 '()))))
                  (declare (not safe))
                  (cons _L191359_ __tmp196251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont196183196184_
                                                      (lambda (_L191309_
                                                               _L191311_
                                                               _L191312_)
                                                        (let ((__tmp196255
                                                               (let ((__tmp196256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp196257
                                     (let ((__tmp196259
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp196258
                                            (let ()
                                              (declare (not safe))
                                              (cons _L191309_ '()))))
                                       (declare (not safe))
                                       (cons __tmp196259 __tmp196258))))
                                (declare (not safe))
                                (cons __tmp196257 '()))))
                         (declare (not safe))
                         (cons _L191311_ __tmp196256))))
                  (declare (not safe))
                  (cons _L191312_ __tmp196255)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx196178196179_))
                                                     (let ((_e191251191337_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx196178196179_))))
                                                       (let ((_tl191249191344_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e191251191337_)))
                     (_hd191250191341_
                      (let () (declare (not safe)) (##car _e191251191337_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl191249191344_))
                     (let ((_e191254191347_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl191249191344_))))
                       (let ((_tl191252191354_
                              (let ()
                                (declare (not safe))
                                (##cdr _e191254191347_)))
                             (_hd191253191351_
                              (let ()
                                (declare (not safe))
                                (##car _e191254191347_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl191252191354_))
                             (___kont196181196182_
                              _hd191253191351_
                              _hd191250191341_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl191252191354_))
                                 (let ((_e191266191299_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl191252191354_))))
                                   (let ((_tl191264191306_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191266191299_)))
                                         (_hd191265191303_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191266191299_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl191264191306_))
                                         (___kont196183196184_
                                          _hd191265191303_
                                          _hd191253191351_
                                          _hd191250191341_)
                                         (let ()
                                           (declare (not safe))
                                           (_g191245191272_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g191245191272_))))))
                     (let () (declare (not safe)) (_g191245191272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g191245191272_)))))))
                                          (__tmp196248
                                           (let ((__tmp196249
                                                  (lambda (_g191375191378_
                                                           _g191376191381_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g191375191378_
                                                            _g191376191381_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp196249
                                                     '()
                                                     _L191138_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp196250 __tmp196248))))
                                 (_g191057191081_ _g191058191085_)))
                           _clause191075191134_
                           _hd191065191102_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop191070191114_
                                                   _target191067191108_
                                                   '()))
                                                (_g191057191081_
                                                 _g191058191085_)))))
                                      (_g191057191081_ _g191058191085_))))
                              (_g191057191081_ _g191058191085_))))
                      (_g191057191081_ _g191058191085_)))))
          (_g191056191384_ _stx191054_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj196221
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
           __obj196221
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196260 |gxc[1]#_g196261_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           __tmp196260
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196262 |gxc[1]#_g196263_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           __tmp196262
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196264 |gxc[1]#_g196265_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           __tmp196264
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196266
               (let ((__tmp196271
                      (let ((__tmp196272 |gxc[1]#_g196273_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196272)))
                     (__tmp196267
                      (let ((__tmp196268
                             (let ((__tmp196269 |gxc[1]#_g196270_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196269))))
                        (declare (not safe))
                        (cons __tmp196268 '()))))
                 (declare (not safe))
                 (cons __tmp196271 __tmp196267))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           __tmp196266
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196274
               (let ((__tmp196279
                      (let ((__tmp196280 |gxc[1]#_g196281_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196280)))
                     (__tmp196275
                      (let ((__tmp196276
                             (let ((__tmp196277 |gxc[1]#_g196278_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196277))))
                        (declare (not safe))
                        (cons __tmp196276 '()))))
                 (declare (not safe))
                 (cons __tmp196279 __tmp196275))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           __tmp196274
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196282
               (let ((__tmp196287
                      (let ((__tmp196288 |gxc[1]#_g196289_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196288)))
                     (__tmp196283
                      (let ((__tmp196284
                             (let ((__tmp196285 |gxc[1]#_g196286_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196285))))
                        (declare (not safe))
                        (cons __tmp196284 '()))))
                 (declare (not safe))
                 (cons __tmp196287 __tmp196283))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           __tmp196282
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196290
               (let ((__tmp196295
                      (let ((__tmp196296 |gxc[1]#_g196297_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196296)))
                     (__tmp196291
                      (let ((__tmp196292
                             (let ((__tmp196293 |gxc[1]#_g196294_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196293))))
                        (declare (not safe))
                        (cons __tmp196292 '()))))
                 (declare (not safe))
                 (cons __tmp196295 __tmp196291))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196221
           __tmp196290
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj196221))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx191390_)
        (let* ((_g191394191408_
                (lambda (_g191395191404_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g191395191404_))))
               (_g191393191449_
                (lambda (_g191395191412_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g191395191412_))
                      (let ((_e191399191415_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g191395191412_))))
                        (let ((_hd191398191419_
                               (let ()
                                 (declare (not safe))
                                 (##car _e191399191415_)))
                              (_tl191397191422_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e191399191415_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl191397191422_))
                              (let ((_e191402191425_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl191397191422_))))
                                (let ((_hd191401191429_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e191402191425_)))
                                      (_tl191400191432_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e191402191425_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl191400191432_))
                                      ((lambda (_L191435_)
                                         (let ((__tmp196305
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp196298
                                                (let ((__tmp196304
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp196299
                                                       (let ((__tmp196300
                                                              (let ((__tmp196303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp196301
                             (let ((__tmp196302
                                    (let ()
                                      (declare (not safe))
                                      (cons _L191435_ '()))))
                               (declare (not safe))
                               (cons '() __tmp196302))))
                        (declare (not safe))
                        (cons __tmp196303 __tmp196301))))
                 (declare (not safe))
                 (cons __tmp196300 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp196304
                                                        __tmp196299))))
                                           (declare (not safe))
                                           (cons __tmp196305 __tmp196298)))
                                       _hd191401191429_)
                                      (_g191394191408_ _g191395191412_))))
                              (_g191394191408_ _g191395191412_))))
                      (_g191394191408_ _g191395191412_)))))
          (_g191393191449_ _$stx191390_))))))
