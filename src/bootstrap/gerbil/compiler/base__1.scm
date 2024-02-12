(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g194882_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194884_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194886_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194891_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194894_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194899_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194902_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194907_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194910_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194915_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194918_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx189672_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189672_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx189675_)
        (let* ((_g189678189702_
                (lambda (_g189679189698_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g189679189698_))))
               (_g189677190005_
                (lambda (_g189679189706_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g189679189706_))
                      (let ((_e189684189709_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g189679189706_))))
                        (let ((_hd189683189713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e189684189709_)))
                              (_tl189682189716_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e189684189709_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl189682189716_))
                              (let ((_e189687189719_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl189682189716_))))
                                (let ((_hd189686189723_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e189687189719_)))
                                      (_tl189685189726_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e189687189719_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl189685189726_))
                                      (let ((_g194853_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl189685189726_
                                                '0))))
                                        (begin
                                          (let ((_g194854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194853_)
                                                       (##vector-length
                                                        _g194853_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194854_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194854_)))
                                          (let ((_target189688189729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g194853_ 0)))
                                                (_tl189690189732_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g194853_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl189690189732_))
                                                (letrec ((_loop189691189735_
                                                          (lambda (_hd189689189739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause189695189742_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd189689189739_))
                        (let ((_e189692189745_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd189689189739_))))
                          (let ((_lp-hd189693189749_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e189692189745_)))
                                (_lp-tl189694189752_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e189692189745_))))
                            (_loop189691189735_
                             _lp-tl189694189752_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd189693189749_
                                     _clause189695189742_)))))
                        (let ((_clause189696189755_
                               (reverse _clause189695189742_)))
                          ((lambda (_L189759_ _L189761_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L189761_))
                                 (let* ((_g189780189797_
                                         (lambda (_g189781189793_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g189781189793_))))
                                        (_g189779189858_
                                         (lambda (_g189781189801_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g189781189801_))
                                               (let ((_g194855_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g189781189801_
                                                         '0))))
                                                 (begin
                                                   (let ((_g194856_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g194855_)
                        (##vector-length _g194855_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g194856_ 2)))
                 (error "Context expects 2 values" _g194856_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target189783189804_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g194855_
                                                             0)))
                                                         (_tl189785189807_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g194855_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl189785189807_))
                                                         (letrec ((_loop189786189810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd189784189814_ _clause189790189817_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd189784189814_))
                                 (let ((_e189787189820_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd189784189814_))))
                                   (let ((_lp-hd189788189824_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e189787189820_)))
                                         (_lp-tl189789189827_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e189787189820_))))
                                     (_loop189786189810_
                                      _lp-tl189789189827_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd189788189824_
                                              _clause189790189817_)))))
                                 (let ((_clause189791189830_
                                        (reverse _clause189790189817_)))
                                   ((lambda (_L189834_)
                                      (let ()
                                        (let ((__tmp194868
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp194857
                                               (let ((__tmp194866
                                                      (let ((__tmp194867
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp194867 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp194858
                                                      (let ((__tmp194859
                                                             (let ((__tmp194865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp194860
                            (let ((__tmp194864
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp194861
                                   (let ((__tmp194862
                                          (let ((__tmp194863
                                                 (lambda (_g189849189852_
                                                          _g189850189855_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g189849189852_
                                                           _g189850189855_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp194863
                                                    '()
                                                    _L189834_))))
                                     (declare (not safe))
                                     (cons _L189761_ __tmp194862))))
                              (declare (not safe))
                              (cons __tmp194864 __tmp194861))))
                       (declare (not safe))
                       (cons __tmp194865 __tmp194860))))
                (declare (not safe))
                (cons __tmp194859 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp194866
                                                       __tmp194858))))
                                          (declare (not safe))
                                          (cons __tmp194868 __tmp194857))))
                                    _clause189791189830_))))))
                   (_loop189786189810_ _target189783189804_ '()))
                 (_g189780189797_ _g189781189801_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g189780189797_
                                                _g189781189801_)))))
                                   (_g189779189858_
                                    (let ((__tmp194871
                                           (lambda (_clause189862_)
                                             (let* ((___stx194799194800_
                                                     _clause189862_)
                                                    (_g189866189893_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx194799194800_)))))
                                               (let ((___kont194802194803_
                                                      (lambda (_L189978_
                                                               _L189980_)
                                                        (let ((__tmp194872
                                                               (let ((__tmp194873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp194875
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp194874
                                     (let ()
                                       (declare (not safe))
                                       (cons _L189978_ '()))))
                                (declare (not safe))
                                (cons __tmp194875 __tmp194874))))
                         (declare (not safe))
                         (cons __tmp194873 '()))))
                  (declare (not safe))
                  (cons _L189980_ __tmp194872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont194804194805_
                                                      (lambda (_L189930_
                                                               _L189932_
                                                               _L189933_)
                                                        (let ((__tmp194876
                                                               (let ((__tmp194877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp194878
                                     (let ((__tmp194880
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp194879
                                            (let ()
                                              (declare (not safe))
                                              (cons _L189930_ '()))))
                                       (declare (not safe))
                                       (cons __tmp194880 __tmp194879))))
                                (declare (not safe))
                                (cons __tmp194878 '()))))
                         (declare (not safe))
                         (cons _L189932_ __tmp194877))))
                  (declare (not safe))
                  (cons _L189933_ __tmp194876)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx194799194800_))
                                                     (let ((_e189872189958_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx194799194800_))))
                                                       (let ((_tl189870189965_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e189872189958_)))
                     (_hd189871189962_
                      (let () (declare (not safe)) (##car _e189872189958_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl189870189965_))
                     (let ((_e189875189968_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl189870189965_))))
                       (let ((_tl189873189975_
                              (let ()
                                (declare (not safe))
                                (##cdr _e189875189968_)))
                             (_hd189874189972_
                              (let ()
                                (declare (not safe))
                                (##car _e189875189968_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl189873189975_))
                             (___kont194802194803_
                              _hd189874189972_
                              _hd189871189962_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl189873189975_))
                                 (let ((_e189887189920_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl189873189975_))))
                                   (let ((_tl189885189927_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e189887189920_)))
                                         (_hd189886189924_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e189887189920_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl189885189927_))
                                         (___kont194804194805_
                                          _hd189886189924_
                                          _hd189874189972_
                                          _hd189871189962_)
                                         (let ()
                                           (declare (not safe))
                                           (_g189866189893_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g189866189893_))))))
                     (let () (declare (not safe)) (_g189866189893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g189866189893_)))))))
                                          (__tmp194869
                                           (let ((__tmp194870
                                                  (lambda (_g189996189999_
                                                           _g189997190002_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g189996189999_
                                                            _g189997190002_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp194870
                                                     '()
                                                     _L189759_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp194871 __tmp194869))))
                                 (_g189678189702_ _g189679189706_)))
                           _clause189696189755_
                           _hd189686189723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop189691189735_
                                                   _target189688189729_
                                                   '()))
                                                (_g189678189702_
                                                 _g189679189706_)))))
                                      (_g189678189702_ _g189679189706_))))
                              (_g189678189702_ _g189679189706_))))
                      (_g189678189702_ _g189679189706_)))))
          (_g189677190005_ _stx189675_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj194842
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
           __obj194842
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194881 |gxc[1]#_g194882_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           __tmp194881
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194883 |gxc[1]#_g194884_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           __tmp194883
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194885 |gxc[1]#_g194886_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           __tmp194885
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194887
               (let ((__tmp194892
                      (let ((__tmp194893 |gxc[1]#_g194894_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194893)))
                     (__tmp194888
                      (let ((__tmp194889
                             (let ((__tmp194890 |gxc[1]#_g194891_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194890))))
                        (declare (not safe))
                        (cons __tmp194889 '()))))
                 (declare (not safe))
                 (cons __tmp194892 __tmp194888))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           __tmp194887
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194895
               (let ((__tmp194900
                      (let ((__tmp194901 |gxc[1]#_g194902_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194901)))
                     (__tmp194896
                      (let ((__tmp194897
                             (let ((__tmp194898 |gxc[1]#_g194899_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194898))))
                        (declare (not safe))
                        (cons __tmp194897 '()))))
                 (declare (not safe))
                 (cons __tmp194900 __tmp194896))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           __tmp194895
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194903
               (let ((__tmp194908
                      (let ((__tmp194909 |gxc[1]#_g194910_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194909)))
                     (__tmp194904
                      (let ((__tmp194905
                             (let ((__tmp194906 |gxc[1]#_g194907_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194906))))
                        (declare (not safe))
                        (cons __tmp194905 '()))))
                 (declare (not safe))
                 (cons __tmp194908 __tmp194904))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           __tmp194903
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194911
               (let ((__tmp194916
                      (let ((__tmp194917 |gxc[1]#_g194918_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194917)))
                     (__tmp194912
                      (let ((__tmp194913
                             (let ((__tmp194914 |gxc[1]#_g194915_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194914))))
                        (declare (not safe))
                        (cons __tmp194913 '()))))
                 (declare (not safe))
                 (cons __tmp194916 __tmp194912))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194842
           __tmp194911
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj194842))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx190011_)
        (let* ((_g190015190029_
                (lambda (_g190016190025_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g190016190025_))))
               (_g190014190070_
                (lambda (_g190016190033_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g190016190033_))
                      (let ((_e190020190036_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g190016190033_))))
                        (let ((_hd190019190040_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190020190036_)))
                              (_tl190018190043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190020190036_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl190018190043_))
                              (let ((_e190023190046_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl190018190043_))))
                                (let ((_hd190022190050_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e190023190046_)))
                                      (_tl190021190053_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e190023190046_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl190021190053_))
                                      ((lambda (_L190056_)
                                         (let ((__tmp194926
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp194919
                                                (let ((__tmp194925
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp194920
                                                       (let ((__tmp194921
                                                              (let ((__tmp194924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp194922
                             (let ((__tmp194923
                                    (let ()
                                      (declare (not safe))
                                      (cons _L190056_ '()))))
                               (declare (not safe))
                               (cons '() __tmp194923))))
                        (declare (not safe))
                        (cons __tmp194924 __tmp194922))))
                 (declare (not safe))
                 (cons __tmp194921 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp194925
                                                        __tmp194920))))
                                           (declare (not safe))
                                           (cons __tmp194926 __tmp194919)))
                                       _hd190022190050_)
                                      (_g190015190029_ _g190016190033_))))
                              (_g190015190029_ _g190016190033_))))
                      (_g190015190029_ _g190016190033_)))))
          (_g190014190070_ _$stx190011_))))))
