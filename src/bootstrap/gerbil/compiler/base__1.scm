(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g194881_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194883_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194885_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194890_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194893_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194898_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194901_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194906_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194909_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194914_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194917_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx189671_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189671_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx189674_)
        (let* ((_g189677189701_
                (lambda (_g189678189697_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g189678189697_))))
               (_g189676190004_
                (lambda (_g189678189705_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g189678189705_))
                      (let ((_e189683189708_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g189678189705_))))
                        (let ((_hd189682189712_
                               (let ()
                                 (declare (not safe))
                                 (##car _e189683189708_)))
                              (_tl189681189715_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e189683189708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl189681189715_))
                              (let ((_e189686189718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl189681189715_))))
                                (let ((_hd189685189722_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e189686189718_)))
                                      (_tl189684189725_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e189686189718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl189684189725_))
                                      (let ((_g194852_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl189684189725_
                                                '0))))
                                        (begin
                                          (let ((_g194853_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194852_)
                                                       (##vector-length
                                                        _g194852_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194853_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194853_)))
                                          (let ((_target189687189728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g194852_ 0)))
                                                (_tl189689189731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g194852_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl189689189731_))
                                                (letrec ((_loop189690189734_
                                                          (lambda (_hd189688189738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause189694189741_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd189688189738_))
                        (let ((_e189691189744_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd189688189738_))))
                          (let ((_lp-hd189692189748_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e189691189744_)))
                                (_lp-tl189693189751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e189691189744_))))
                            (_loop189690189734_
                             _lp-tl189693189751_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd189692189748_
                                     _clause189694189741_)))))
                        (let ((_clause189695189754_
                               (reverse _clause189694189741_)))
                          ((lambda (_L189758_ _L189760_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L189760_))
                                 (let* ((_g189779189796_
                                         (lambda (_g189780189792_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g189780189792_))))
                                        (_g189778189857_
                                         (lambda (_g189780189800_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g189780189800_))
                                               (let ((_g194854_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g189780189800_
                                                         '0))))
                                                 (begin
                                                   (let ((_g194855_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g194854_)
                        (##vector-length _g194854_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g194855_ 2)))
                 (error "Context expects 2 values" _g194855_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target189782189803_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g194854_
                                                             0)))
                                                         (_tl189784189806_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g194854_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl189784189806_))
                                                         (letrec ((_loop189785189809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd189783189813_ _clause189789189816_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd189783189813_))
                                 (let ((_e189786189819_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd189783189813_))))
                                   (let ((_lp-hd189787189823_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e189786189819_)))
                                         (_lp-tl189788189826_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e189786189819_))))
                                     (_loop189785189809_
                                      _lp-tl189788189826_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd189787189823_
                                              _clause189789189816_)))))
                                 (let ((_clause189790189829_
                                        (reverse _clause189789189816_)))
                                   ((lambda (_L189833_)
                                      (let ()
                                        (let ((__tmp194867
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp194856
                                               (let ((__tmp194865
                                                      (let ((__tmp194866
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp194866 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp194857
                                                      (let ((__tmp194858
                                                             (let ((__tmp194864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp194859
                            (let ((__tmp194863
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp194860
                                   (let ((__tmp194861
                                          (let ((__tmp194862
                                                 (lambda (_g189848189851_
                                                          _g189849189854_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g189848189851_
                                                           _g189849189854_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp194862
                                                    '()
                                                    _L189833_))))
                                     (declare (not safe))
                                     (cons _L189760_ __tmp194861))))
                              (declare (not safe))
                              (cons __tmp194863 __tmp194860))))
                       (declare (not safe))
                       (cons __tmp194864 __tmp194859))))
                (declare (not safe))
                (cons __tmp194858 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp194865
                                                       __tmp194857))))
                                          (declare (not safe))
                                          (cons __tmp194867 __tmp194856))))
                                    _clause189790189829_))))))
                   (_loop189785189809_ _target189782189803_ '()))
                 (_g189779189796_ _g189780189800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g189779189796_
                                                _g189780189800_)))))
                                   (_g189778189857_
                                    (let ((__tmp194870
                                           (lambda (_clause189861_)
                                             (let* ((___stx194798194799_
                                                     _clause189861_)
                                                    (_g189865189892_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx194798194799_)))))
                                               (let ((___kont194801194802_
                                                      (lambda (_L189977_
                                                               _L189979_)
                                                        (let ((__tmp194871
                                                               (let ((__tmp194872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp194874
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp194873
                                     (let ()
                                       (declare (not safe))
                                       (cons _L189977_ '()))))
                                (declare (not safe))
                                (cons __tmp194874 __tmp194873))))
                         (declare (not safe))
                         (cons __tmp194872 '()))))
                  (declare (not safe))
                  (cons _L189979_ __tmp194871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont194803194804_
                                                      (lambda (_L189929_
                                                               _L189931_
                                                               _L189932_)
                                                        (let ((__tmp194875
                                                               (let ((__tmp194876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp194877
                                     (let ((__tmp194879
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp194878
                                            (let ()
                                              (declare (not safe))
                                              (cons _L189929_ '()))))
                                       (declare (not safe))
                                       (cons __tmp194879 __tmp194878))))
                                (declare (not safe))
                                (cons __tmp194877 '()))))
                         (declare (not safe))
                         (cons _L189931_ __tmp194876))))
                  (declare (not safe))
                  (cons _L189932_ __tmp194875)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx194798194799_))
                                                     (let ((_e189871189957_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx194798194799_))))
                                                       (let ((_tl189869189964_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e189871189957_)))
                     (_hd189870189961_
                      (let () (declare (not safe)) (##car _e189871189957_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl189869189964_))
                     (let ((_e189874189967_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl189869189964_))))
                       (let ((_tl189872189974_
                              (let ()
                                (declare (not safe))
                                (##cdr _e189874189967_)))
                             (_hd189873189971_
                              (let ()
                                (declare (not safe))
                                (##car _e189874189967_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl189872189974_))
                             (___kont194801194802_
                              _hd189873189971_
                              _hd189870189961_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl189872189974_))
                                 (let ((_e189886189919_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl189872189974_))))
                                   (let ((_tl189884189926_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e189886189919_)))
                                         (_hd189885189923_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e189886189919_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl189884189926_))
                                         (___kont194803194804_
                                          _hd189885189923_
                                          _hd189873189971_
                                          _hd189870189961_)
                                         (let ()
                                           (declare (not safe))
                                           (_g189865189892_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g189865189892_))))))
                     (let () (declare (not safe)) (_g189865189892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g189865189892_)))))))
                                          (__tmp194868
                                           (let ((__tmp194869
                                                  (lambda (_g189995189998_
                                                           _g189996190001_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g189995189998_
                                                            _g189996190001_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp194869
                                                     '()
                                                     _L189758_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp194870 __tmp194868))))
                                 (_g189677189701_ _g189678189705_)))
                           _clause189695189754_
                           _hd189685189722_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop189690189734_
                                                   _target189687189728_
                                                   '()))
                                                (_g189677189701_
                                                 _g189678189705_)))))
                                      (_g189677189701_ _g189678189705_))))
                              (_g189677189701_ _g189678189705_))))
                      (_g189677189701_ _g189678189705_)))))
          (_g189676190004_ _stx189674_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj194841
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194880 |gxc[1]#_g194881_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           __tmp194880
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194882 |gxc[1]#_g194883_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           __tmp194882
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194884 |gxc[1]#_g194885_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           __tmp194884
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194886
               (let ((__tmp194891
                      (let ((__tmp194892 |gxc[1]#_g194893_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194892)))
                     (__tmp194887
                      (let ((__tmp194888
                             (let ((__tmp194889 |gxc[1]#_g194890_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194889))))
                        (declare (not safe))
                        (cons __tmp194888 '()))))
                 (declare (not safe))
                 (cons __tmp194891 __tmp194887))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           __tmp194886
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194894
               (let ((__tmp194899
                      (let ((__tmp194900 |gxc[1]#_g194901_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194900)))
                     (__tmp194895
                      (let ((__tmp194896
                             (let ((__tmp194897 |gxc[1]#_g194898_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194897))))
                        (declare (not safe))
                        (cons __tmp194896 '()))))
                 (declare (not safe))
                 (cons __tmp194899 __tmp194895))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           __tmp194894
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194902
               (let ((__tmp194907
                      (let ((__tmp194908 |gxc[1]#_g194909_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194908)))
                     (__tmp194903
                      (let ((__tmp194904
                             (let ((__tmp194905 |gxc[1]#_g194906_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194905))))
                        (declare (not safe))
                        (cons __tmp194904 '()))))
                 (declare (not safe))
                 (cons __tmp194907 __tmp194903))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           __tmp194902
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194910
               (let ((__tmp194915
                      (let ((__tmp194916 |gxc[1]#_g194917_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194916)))
                     (__tmp194911
                      (let ((__tmp194912
                             (let ((__tmp194913 |gxc[1]#_g194914_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194913))))
                        (declare (not safe))
                        (cons __tmp194912 '()))))
                 (declare (not safe))
                 (cons __tmp194915 __tmp194911))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194841
           __tmp194910
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj194841))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx190010_)
        (let* ((_g190014190028_
                (lambda (_g190015190024_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g190015190024_))))
               (_g190013190069_
                (lambda (_g190015190032_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g190015190032_))
                      (let ((_e190019190035_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g190015190032_))))
                        (let ((_hd190018190039_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190019190035_)))
                              (_tl190017190042_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190019190035_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl190017190042_))
                              (let ((_e190022190045_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl190017190042_))))
                                (let ((_hd190021190049_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e190022190045_)))
                                      (_tl190020190052_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e190022190045_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl190020190052_))
                                      ((lambda (_L190055_)
                                         (let ((__tmp194925
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp194918
                                                (let ((__tmp194924
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp194919
                                                       (let ((__tmp194920
                                                              (let ((__tmp194923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp194921
                             (let ((__tmp194922
                                    (let ()
                                      (declare (not safe))
                                      (cons _L190055_ '()))))
                               (declare (not safe))
                               (cons '() __tmp194922))))
                        (declare (not safe))
                        (cons __tmp194923 __tmp194921))))
                 (declare (not safe))
                 (cons __tmp194920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp194924
                                                        __tmp194919))))
                                           (declare (not safe))
                                           (cons __tmp194925 __tmp194918)))
                                       _hd190021190049_)
                                      (_g190014190028_ _g190015190032_))))
                              (_g190014190028_ _g190015190032_))))
                      (_g190014190028_ _g190015190032_)))))
          (_g190013190069_ _$stx190010_))))))
