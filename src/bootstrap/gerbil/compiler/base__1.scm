(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g94855_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94857_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94859_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94864_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94867_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94872_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94875_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94880_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94883_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94888_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g94891_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx94212_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx94212_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx94215_)
        (let* ((_g9421894242_
                (lambda (_g9421994238_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9421994238_))))
               (_g9421794545_
                (lambda (_g9421994246_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9421994246_))
                      (let ((_e9422294249_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9421994246_))))
                        (let ((_hd9422394253_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9422294249_)))
                              (_tl9422494256_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9422294249_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9422494256_))
                              (let ((_e9422594259_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9422494256_))))
                                (let ((_hd9422694263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9422594259_)))
                                      (_tl9422794266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9422594259_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9422794266_))
                                      (let ((_g94826_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9422794266_
                                                '0))))
                                        (begin
                                          (let ((_g94827_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g94826_)
                                                       (##vector-length
                                                        _g94826_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g94827_ 2)))
                                                (error "Context expects 2 values"
                                                       _g94827_)))
                                          (let ((_target9422894269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g94826_ 0)))
                                                (_tl9423094272_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g94826_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9423094272_))
                                                (letrec ((_loop9423194275_
                                                          (lambda (_hd9422994279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9423594282_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9422994279_))
                        (let ((_e9423294285_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9422994279_))))
                          (let ((_lp-hd9423394289_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9423294285_)))
                                (_lp-tl9423494292_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9423294285_))))
                            (_loop9423194275_
                             _lp-tl9423494292_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9423394289_ _clause9423594282_)))))
                        (let ((_clause9423694295_
                               (reverse _clause9423594282_)))
                          ((lambda (_L94299_ _L94301_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L94301_))
                                 (let* ((_g9432094337_
                                         (lambda (_g9432194333_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9432194333_))))
                                        (_g9431994398_
                                         (lambda (_g9432194341_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9432194341_))
                                               (let ((_g94828_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9432194341_
                                                         '0))))
                                                 (begin
                                                   (let ((_g94829_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g94828_)
                        (##vector-length _g94828_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g94829_ 2)))
                 (error "Context expects 2 values" _g94829_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9432394344_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g94828_
                                                             0)))
                                                         (_tl9432594347_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g94828_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9432594347_))
                                                         (letrec ((_loop9432694350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9432494354_ _clause9433094357_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9432494354_))
                                 (let ((_e9432794360_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9432494354_))))
                                   (let ((_lp-hd9432894364_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9432794360_)))
                                         (_lp-tl9432994367_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9432794360_))))
                                     (_loop9432694350_
                                      _lp-tl9432994367_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9432894364_
                                              _clause9433094357_)))))
                                 (let ((_clause9433194370_
                                        (reverse _clause9433094357_)))
                                   ((lambda (_L94374_)
                                      (let ()
                                        (let ((__tmp94841
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp94830
                                               (let ((__tmp94839
                                                      (let ((__tmp94840
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp94840 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp94831
                                                      (let ((__tmp94832
                                                             (let ((__tmp94838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp94833
                            (let ((__tmp94837
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp94834
                                   (let ((__tmp94835
                                          (let ((__tmp94836
                                                 (lambda (_g9438994392_
                                                          _g9439094395_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9438994392_
                                                           _g9439094395_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp94836 '() _L94374_))))
                                     (declare (not safe))
                                     (cons _L94301_ __tmp94835))))
                              (declare (not safe))
                              (cons __tmp94837 __tmp94834))))
                       (declare (not safe))
                       (cons __tmp94838 __tmp94833))))
                (declare (not safe))
                (cons __tmp94832 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp94839
                                                       __tmp94831))))
                                          (declare (not safe))
                                          (cons __tmp94841 __tmp94830))))
                                    _clause9433194370_))))))
                   (_loop9432694350_ _target9432394344_ '()))
                 (_g9432094337_ _g9432194341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9432094337_
                                                _g9432194341_)))))
                                   (_g9431994398_
                                    (let ((__tmp94844
                                           (lambda (_clause94402_)
                                             (let* ((___stx9477194772_
                                                     _clause94402_)
                                                    (_g9440694433_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9477194772_)))))
                                               (let ((___kont9477494775_
                                                      (lambda (_L94518_
                                                               _L94520_)
                                                        (let ((__tmp94845
                                                               (let ((__tmp94846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp94848
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp94847
                                     (let ()
                                       (declare (not safe))
                                       (cons _L94518_ '()))))
                                (declare (not safe))
                                (cons __tmp94848 __tmp94847))))
                         (declare (not safe))
                         (cons __tmp94846 '()))))
                  (declare (not safe))
                  (cons _L94520_ __tmp94845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9477694777_
                                                      (lambda (_L94470_
                                                               _L94472_
                                                               _L94473_)
                                                        (let ((__tmp94849
                                                               (let ((__tmp94850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp94851
                                     (let ((__tmp94853
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp94852
                                            (let ()
                                              (declare (not safe))
                                              (cons _L94470_ '()))))
                                       (declare (not safe))
                                       (cons __tmp94853 __tmp94852))))
                                (declare (not safe))
                                (cons __tmp94851 '()))))
                         (declare (not safe))
                         (cons _L94472_ __tmp94850))))
                  (declare (not safe))
                  (cons _L94473_ __tmp94849)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9477194772_))
                                                     (let ((_e9441094498_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9477194772_))))
                                                       (let ((_tl9441294505_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9441094498_)))
                     (_hd9441194502_
                      (let () (declare (not safe)) (##car _e9441094498_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9441294505_))
                     (let ((_e9441394508_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9441294505_))))
                       (let ((_tl9441594515_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9441394508_)))
                             (_hd9441494512_
                              (let ()
                                (declare (not safe))
                                (##car _e9441394508_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9441594515_))
                             (___kont9477494775_ _hd9441494512_ _hd9441194502_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9441594515_))
                                 (let ((_e9442594460_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9441594515_))))
                                   (let ((_tl9442794467_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9442594460_)))
                                         (_hd9442694464_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9442594460_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9442794467_))
                                         (___kont9477694777_
                                          _hd9442694464_
                                          _hd9441494512_
                                          _hd9441194502_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9440694433_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9440694433_))))))
                     (let () (declare (not safe)) (_g9440694433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9440694433_)))))))
                                          (__tmp94842
                                           (let ((__tmp94843
                                                  (lambda (_g9453694539_
                                                           _g9453794542_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9453694539_
                                                            _g9453794542_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp94843
                                                     '()
                                                     _L94299_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp94844 __tmp94842))))
                                 (_g9421894242_ _g9421994246_)))
                           _clause9423694295_
                           _hd9422694263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9423194275_
                                                   _target9422894269_
                                                   '()))
                                                (_g9421894242_
                                                 _g9421994246_)))))
                                      (_g9421894242_ _g9421994246_))))
                              (_g9421894242_ _g9421994246_))))
                      (_g9421894242_ _g9421994246_)))))
          (_g9421794545_ _stx94215_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj94814
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
           __obj94814
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp94854 |gxc[1]#_g94855_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           __tmp94854
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp94856 |gxc[1]#_g94857_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           __tmp94856
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp94858 |gxc[1]#_g94859_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           __tmp94858
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp94860
               (let ((__tmp94865
                      (let ((__tmp94866 |gxc[1]#_g94867_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp94866)))
                     (__tmp94861
                      (let ((__tmp94862
                             (let ((__tmp94863 |gxc[1]#_g94864_|))
                               (declare (not safe))
                               (cons 'bindings __tmp94863))))
                        (declare (not safe))
                        (cons __tmp94862 '()))))
                 (declare (not safe))
                 (cons __tmp94865 __tmp94861))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           __tmp94860
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp94868
               (let ((__tmp94873
                      (let ((__tmp94874 |gxc[1]#_g94875_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp94874)))
                     (__tmp94869
                      (let ((__tmp94870
                             (let ((__tmp94871 |gxc[1]#_g94872_|))
                               (declare (not safe))
                               (cons 'bindings __tmp94871))))
                        (declare (not safe))
                        (cons __tmp94870 '()))))
                 (declare (not safe))
                 (cons __tmp94873 __tmp94869))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           __tmp94868
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp94876
               (let ((__tmp94881
                      (let ((__tmp94882 |gxc[1]#_g94883_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp94882)))
                     (__tmp94877
                      (let ((__tmp94878
                             (let ((__tmp94879 |gxc[1]#_g94880_|))
                               (declare (not safe))
                               (cons 'bindings __tmp94879))))
                        (declare (not safe))
                        (cons __tmp94878 '()))))
                 (declare (not safe))
                 (cons __tmp94881 __tmp94877))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           __tmp94876
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp94884
               (let ((__tmp94889
                      (let ((__tmp94890 |gxc[1]#_g94891_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp94890)))
                     (__tmp94885
                      (let ((__tmp94886
                             (let ((__tmp94887 |gxc[1]#_g94888_|))
                               (declare (not safe))
                               (cons 'bindings __tmp94887))))
                        (declare (not safe))
                        (cons __tmp94886 '()))))
                 (declare (not safe))
                 (cons __tmp94889 __tmp94885))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj94814
           __tmp94884
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj94814))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx94551_)
        (let* ((_g9455594569_
                (lambda (_g9455694565_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9455694565_))))
               (_g9455494610_
                (lambda (_g9455694573_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9455694573_))
                      (let ((_e9455894576_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9455694573_))))
                        (let ((_hd9455994580_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9455894576_)))
                              (_tl9456094583_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9455894576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9456094583_))
                              (let ((_e9456194586_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9456094583_))))
                                (let ((_hd9456294590_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9456194586_)))
                                      (_tl9456394593_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9456194586_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9456394593_))
                                      ((lambda (_L94596_)
                                         (let ((__tmp94899
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp94892
                                                (let ((__tmp94898
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp94893
                                                       (let ((__tmp94894
                                                              (let ((__tmp94897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp94895
                             (let ((__tmp94896
                                    (let ()
                                      (declare (not safe))
                                      (cons _L94596_ '()))))
                               (declare (not safe))
                               (cons '() __tmp94896))))
                        (declare (not safe))
                        (cons __tmp94897 __tmp94895))))
                 (declare (not safe))
                 (cons __tmp94894 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp94898
                                                        __tmp94893))))
                                           (declare (not safe))
                                           (cons __tmp94899 __tmp94892)))
                                       _hd9456294590_)
                                      (_g9455594569_ _g9455694573_))))
                              (_g9455594569_ _g9455694573_))))
                      (_g9455594569_ _g9455694573_)))))
          (_g9455494610_ _$stx94551_))))))
