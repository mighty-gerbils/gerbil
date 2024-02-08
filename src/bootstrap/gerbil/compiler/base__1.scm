(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g185813_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185815_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185817_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185822_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185825_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185830_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185833_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185838_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185841_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185846_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185849_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx180983_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx180983_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx180986_)
        (let* ((_g180989181013_
                (lambda (_g180990181009_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g180990181009_))))
               (_g180988181316_
                (lambda (_g180990181017_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g180990181017_))
                      (let ((_e180995181020_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g180990181017_))))
                        (let ((_hd180994181024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e180995181020_)))
                              (_tl180993181027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e180995181020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl180993181027_))
                              (let ((_e180998181030_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl180993181027_))))
                                (let ((_hd180997181034_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e180998181030_)))
                                      (_tl180996181037_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e180998181030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl180996181037_))
                                      (let ((_g185784_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl180996181037_
                                                '0))))
                                        (begin
                                          (let ((_g185785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g185784_)
                                                       (##vector-length
                                                        _g185784_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g185785_ 2)))
                                                (error "Context expects 2 values"
                                                       _g185785_)))
                                          (let ((_target180999181040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g185784_ 0)))
                                                (_tl181001181043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g185784_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl181001181043_))
                                                (letrec ((_loop181002181046_
                                                          (lambda (_hd181000181050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause181006181053_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd181000181050_))
                        (let ((_e181003181056_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd181000181050_))))
                          (let ((_lp-hd181004181060_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e181003181056_)))
                                (_lp-tl181005181063_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e181003181056_))))
                            (_loop181002181046_
                             _lp-tl181005181063_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd181004181060_
                                     _clause181006181053_)))))
                        (let ((_clause181007181066_
                               (reverse _clause181006181053_)))
                          ((lambda (_L181070_ _L181072_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L181072_))
                                 (let* ((_g181091181108_
                                         (lambda (_g181092181104_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g181092181104_))))
                                        (_g181090181169_
                                         (lambda (_g181092181112_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g181092181112_))
                                               (let ((_g185786_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g181092181112_
                                                         '0))))
                                                 (begin
                                                   (let ((_g185787_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g185786_)
                        (##vector-length _g185786_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g185787_ 2)))
                 (error "Context expects 2 values" _g185787_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target181094181115_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g185786_
                                                             0)))
                                                         (_tl181096181118_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g185786_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl181096181118_))
                                                         (letrec ((_loop181097181121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd181095181125_ _clause181101181128_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd181095181125_))
                                 (let ((_e181098181131_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd181095181125_))))
                                   (let ((_lp-hd181099181135_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e181098181131_)))
                                         (_lp-tl181100181138_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e181098181131_))))
                                     (_loop181097181121_
                                      _lp-tl181100181138_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd181099181135_
                                              _clause181101181128_)))))
                                 (let ((_clause181102181141_
                                        (reverse _clause181101181128_)))
                                   ((lambda (_L181145_)
                                      (let ()
                                        (let ((__tmp185799
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp185788
                                               (let ((__tmp185797
                                                      (let ((__tmp185798
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp185798 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp185789
                                                      (let ((__tmp185790
                                                             (let ((__tmp185796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp185791
                            (let ((__tmp185795
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp185792
                                   (let ((__tmp185793
                                          (let ((__tmp185794
                                                 (lambda (_g181160181163_
                                                          _g181161181166_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g181160181163_
                                                           _g181161181166_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp185794
                                                    '()
                                                    _L181145_))))
                                     (declare (not safe))
                                     (cons _L181072_ __tmp185793))))
                              (declare (not safe))
                              (cons __tmp185795 __tmp185792))))
                       (declare (not safe))
                       (cons __tmp185796 __tmp185791))))
                (declare (not safe))
                (cons __tmp185790 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp185797
                                                       __tmp185789))))
                                          (declare (not safe))
                                          (cons __tmp185799 __tmp185788))))
                                    _clause181102181141_))))))
                   (_loop181097181121_ _target181094181115_ '()))
                 (_g181091181108_ _g181092181112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g181091181108_
                                                _g181092181112_)))))
                                   (_g181090181169_
                                    (let ((__tmp185802
                                           (lambda (_clause181173_)
                                             (let* ((___stx185731185732_
                                                     _clause181173_)
                                                    (_g181177181204_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx185731185732_)))))
                                               (let ((___kont185734185735_
                                                      (lambda (_L181289_
                                                               _L181291_)
                                                        (let ((__tmp185803
                                                               (let ((__tmp185804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp185806
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp185805
                                     (let ()
                                       (declare (not safe))
                                       (cons _L181289_ '()))))
                                (declare (not safe))
                                (cons __tmp185806 __tmp185805))))
                         (declare (not safe))
                         (cons __tmp185804 '()))))
                  (declare (not safe))
                  (cons _L181291_ __tmp185803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont185736185737_
                                                      (lambda (_L181241_
                                                               _L181243_
                                                               _L181244_)
                                                        (let ((__tmp185807
                                                               (let ((__tmp185808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp185809
                                     (let ((__tmp185811
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp185810
                                            (let ()
                                              (declare (not safe))
                                              (cons _L181241_ '()))))
                                       (declare (not safe))
                                       (cons __tmp185811 __tmp185810))))
                                (declare (not safe))
                                (cons __tmp185809 '()))))
                         (declare (not safe))
                         (cons _L181243_ __tmp185808))))
                  (declare (not safe))
                  (cons _L181244_ __tmp185807)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx185731185732_))
                                                     (let ((_e181183181269_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx185731185732_))))
                                                       (let ((_tl181181181276_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e181183181269_)))
                     (_hd181182181273_
                      (let () (declare (not safe)) (##car _e181183181269_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl181181181276_))
                     (let ((_e181186181279_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl181181181276_))))
                       (let ((_tl181184181286_
                              (let ()
                                (declare (not safe))
                                (##cdr _e181186181279_)))
                             (_hd181185181283_
                              (let ()
                                (declare (not safe))
                                (##car _e181186181279_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl181184181286_))
                             (___kont185734185735_
                              _hd181185181283_
                              _hd181182181273_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl181184181286_))
                                 (let ((_e181198181231_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl181184181286_))))
                                   (let ((_tl181196181238_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e181198181231_)))
                                         (_hd181197181235_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e181198181231_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl181196181238_))
                                         (___kont185736185737_
                                          _hd181197181235_
                                          _hd181185181283_
                                          _hd181182181273_)
                                         (let ()
                                           (declare (not safe))
                                           (_g181177181204_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g181177181204_))))))
                     (let () (declare (not safe)) (_g181177181204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g181177181204_)))))))
                                          (__tmp185800
                                           (let ((__tmp185801
                                                  (lambda (_g181307181310_
                                                           _g181308181313_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g181307181310_
                                                            _g181308181313_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp185801
                                                     '()
                                                     _L181070_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp185802 __tmp185800))))
                                 (_g180989181013_ _g180990181017_)))
                           _clause181007181066_
                           _hd180997181034_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop181002181046_
                                                   _target180999181040_
                                                   '()))
                                                (_g180989181013_
                                                 _g180990181017_)))))
                                      (_g180989181013_ _g180990181017_))))
                              (_g180989181013_ _g180990181017_))))
                      (_g180989181013_ _g180990181017_)))))
          (_g180988181316_ _stx180986_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj185774
             (make-object* gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185812 |gxc[1]#_g185813_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           __tmp185812
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185814 |gxc[1]#_g185815_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           __tmp185814
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185816 |gxc[1]#_g185817_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           __tmp185816
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185818
               (let ((__tmp185823
                      (let ((__tmp185824 |gxc[1]#_g185825_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185824)))
                     (__tmp185819
                      (let ((__tmp185820
                             (let ((__tmp185821 |gxc[1]#_g185822_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185821))))
                        (declare (not safe))
                        (cons __tmp185820 '()))))
                 (declare (not safe))
                 (cons __tmp185823 __tmp185819))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           __tmp185818
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185826
               (let ((__tmp185831
                      (let ((__tmp185832 |gxc[1]#_g185833_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185832)))
                     (__tmp185827
                      (let ((__tmp185828
                             (let ((__tmp185829 |gxc[1]#_g185830_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185829))))
                        (declare (not safe))
                        (cons __tmp185828 '()))))
                 (declare (not safe))
                 (cons __tmp185831 __tmp185827))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           __tmp185826
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185834
               (let ((__tmp185839
                      (let ((__tmp185840 |gxc[1]#_g185841_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185840)))
                     (__tmp185835
                      (let ((__tmp185836
                             (let ((__tmp185837 |gxc[1]#_g185838_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185837))))
                        (declare (not safe))
                        (cons __tmp185836 '()))))
                 (declare (not safe))
                 (cons __tmp185839 __tmp185835))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           __tmp185834
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185842
               (let ((__tmp185847
                      (let ((__tmp185848 |gxc[1]#_g185849_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185848)))
                     (__tmp185843
                      (let ((__tmp185844
                             (let ((__tmp185845 |gxc[1]#_g185846_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185845))))
                        (declare (not safe))
                        (cons __tmp185844 '()))))
                 (declare (not safe))
                 (cons __tmp185847 __tmp185843))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185774
           __tmp185842
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj185774))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx181322_)
        (let* ((_g181326181340_
                (lambda (_g181327181336_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g181327181336_))))
               (_g181325181381_
                (lambda (_g181327181344_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g181327181344_))
                      (let ((_e181331181347_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g181327181344_))))
                        (let ((_hd181330181351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e181331181347_)))
                              (_tl181329181354_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e181331181347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl181329181354_))
                              (let ((_e181334181357_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl181329181354_))))
                                (let ((_hd181333181361_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e181334181357_)))
                                      (_tl181332181364_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e181334181357_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl181332181364_))
                                      ((lambda (_L181367_)
                                         (let ((__tmp185857
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp185850
                                                (let ((__tmp185856
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp185851
                                                       (let ((__tmp185852
                                                              (let ((__tmp185855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp185853
                             (let ((__tmp185854
                                    (let ()
                                      (declare (not safe))
                                      (cons _L181367_ '()))))
                               (declare (not safe))
                               (cons '() __tmp185854))))
                        (declare (not safe))
                        (cons __tmp185855 __tmp185853))))
                 (declare (not safe))
                 (cons __tmp185852 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp185856
                                                        __tmp185851))))
                                           (declare (not safe))
                                           (cons __tmp185857 __tmp185850)))
                                       _hd181333181361_)
                                      (_g181326181340_ _g181327181344_))))
                              (_g181326181340_ _g181327181344_))))
                      (_g181326181340_ _g181327181344_)))))
          (_g181325181381_ _$stx181322_))))))
