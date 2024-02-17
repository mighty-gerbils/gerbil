(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g189837_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189839_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189841_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189846_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189849_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189854_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189857_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189862_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189865_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189870_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g189873_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx185128_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx185128_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx185131_)
        (let* ((_g185134185158_
                (lambda (_g185135185154_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g185135185154_))))
               (_g185133185461_
                (lambda (_g185135185162_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g185135185162_))
                      (let ((_e185138185165_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g185135185162_))))
                        (let ((_hd185139185169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e185138185165_)))
                              (_tl185140185172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e185138185165_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl185140185172_))
                              (let ((_e185141185175_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl185140185172_))))
                                (let ((_hd185142185179_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e185141185175_)))
                                      (_tl185143185182_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e185141185175_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl185143185182_))
                                      (let ((_g189808_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl185143185182_
                                                '0))))
                                        (begin
                                          (let ((_g189809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189808_)
                                                       (##vector-length
                                                        _g189808_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189809_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189809_)))
                                          (let ((_target185144185185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g189808_ 0)))
                                                (_tl185146185188_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g189808_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl185146185188_))
                                                (letrec ((_loop185147185191_
                                                          (lambda (_hd185145185195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause185151185198_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd185145185195_))
                        (let ((_e185148185201_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd185145185195_))))
                          (let ((_lp-hd185149185205_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e185148185201_)))
                                (_lp-tl185150185208_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e185148185201_))))
                            (_loop185147185191_
                             _lp-tl185150185208_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd185149185205_
                                     _clause185151185198_)))))
                        (let ((_clause185152185211_
                               (reverse _clause185151185198_)))
                          ((lambda (_L185215_ _L185217_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L185217_))
                                 (let* ((_g185236185253_
                                         (lambda (_g185237185249_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g185237185249_))))
                                        (_g185235185314_
                                         (lambda (_g185237185257_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g185237185257_))
                                               (let ((_g189810_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g185237185257_
                                                         '0))))
                                                 (begin
                                                   (let ((_g189811_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g189810_)
                        (##vector-length _g189810_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g189811_ 2)))
                 (error "Context expects 2 values" _g189811_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target185239185260_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g189810_
                                                             0)))
                                                         (_tl185241185263_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g189810_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl185241185263_))
                                                         (letrec ((_loop185242185266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd185240185270_ _clause185246185273_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd185240185270_))
                                 (let ((_e185243185276_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd185240185270_))))
                                   (let ((_lp-hd185244185280_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e185243185276_)))
                                         (_lp-tl185245185283_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e185243185276_))))
                                     (_loop185242185266_
                                      _lp-tl185245185283_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd185244185280_
                                              _clause185246185273_)))))
                                 (let ((_clause185247185286_
                                        (reverse _clause185246185273_)))
                                   ((lambda (_L185290_)
                                      (let ()
                                        (let ((__tmp189823
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp189812
                                               (let ((__tmp189821
                                                      (let ((__tmp189822
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp189822 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189813
                                                      (let ((__tmp189814
                                                             (let ((__tmp189820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp189815
                            (let ((__tmp189819
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp189816
                                   (let ((__tmp189817
                                          (let ((__tmp189818
                                                 (lambda (_g185305185308_
                                                          _g185306185311_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g185305185308_
                                                           _g185306185311_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp189818
                                                    '()
                                                    _L185290_))))
                                     (declare (not safe))
                                     (cons _L185217_ __tmp189817))))
                              (declare (not safe))
                              (cons __tmp189819 __tmp189816))))
                       (declare (not safe))
                       (cons __tmp189820 __tmp189815))))
                (declare (not safe))
                (cons __tmp189814 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp189821
                                                       __tmp189813))))
                                          (declare (not safe))
                                          (cons __tmp189823 __tmp189812))))
                                    _clause185247185286_))))))
                   (_loop185242185266_ _target185239185260_ '()))
                 (_g185236185253_ _g185237185257_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g185236185253_
                                                _g185237185257_)))))
                                   (_g185235185314_
                                    (let ((__tmp189826
                                           (lambda (_clause185318_)
                                             (let* ((___stx189754189755_
                                                     _clause185318_)
                                                    (_g185322185349_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx189754189755_)))))
                                               (let ((___kont189757189758_
                                                      (lambda (_L185434_
                                                               _L185436_)
                                                        (let ((__tmp189827
                                                               (let ((__tmp189828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp189830
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp189829
                                     (let ()
                                       (declare (not safe))
                                       (cons _L185434_ '()))))
                                (declare (not safe))
                                (cons __tmp189830 __tmp189829))))
                         (declare (not safe))
                         (cons __tmp189828 '()))))
                  (declare (not safe))
                  (cons _L185436_ __tmp189827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont189759189760_
                                                      (lambda (_L185386_
                                                               _L185388_
                                                               _L185389_)
                                                        (let ((__tmp189831
                                                               (let ((__tmp189832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp189833
                                     (let ((__tmp189835
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp189834
                                            (let ()
                                              (declare (not safe))
                                              (cons _L185386_ '()))))
                                       (declare (not safe))
                                       (cons __tmp189835 __tmp189834))))
                                (declare (not safe))
                                (cons __tmp189833 '()))))
                         (declare (not safe))
                         (cons _L185388_ __tmp189832))))
                  (declare (not safe))
                  (cons _L185389_ __tmp189831)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx189754189755_))
                                                     (let ((_e185326185414_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx189754189755_))))
                                                       (let ((_tl185328185421_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e185326185414_)))
                     (_hd185327185418_
                      (let () (declare (not safe)) (##car _e185326185414_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl185328185421_))
                     (let ((_e185329185424_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl185328185421_))))
                       (let ((_tl185331185431_
                              (let ()
                                (declare (not safe))
                                (##cdr _e185329185424_)))
                             (_hd185330185428_
                              (let ()
                                (declare (not safe))
                                (##car _e185329185424_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl185331185431_))
                             (___kont189757189758_
                              _hd185330185428_
                              _hd185327185418_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl185331185431_))
                                 (let ((_e185341185376_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl185331185431_))))
                                   (let ((_tl185343185383_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e185341185376_)))
                                         (_hd185342185380_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e185341185376_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl185343185383_))
                                         (___kont189759189760_
                                          _hd185342185380_
                                          _hd185330185428_
                                          _hd185327185418_)
                                         (let ()
                                           (declare (not safe))
                                           (_g185322185349_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g185322185349_))))))
                     (let () (declare (not safe)) (_g185322185349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g185322185349_)))))))
                                          (__tmp189824
                                           (let ((__tmp189825
                                                  (lambda (_g185452185455_
                                                           _g185453185458_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g185452185455_
                                                            _g185453185458_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp189825
                                                     '()
                                                     _L185215_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp189826 __tmp189824))))
                                 (_g185134185158_ _g185135185162_)))
                           _clause185152185211_
                           _hd185142185179_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop185147185191_
                                                   _target185144185185_
                                                   '()))
                                                (_g185134185158_
                                                 _g185135185162_)))))
                                      (_g185134185158_ _g185135185162_))))
                              (_g185134185158_ _g185135185162_))))
                      (_g185134185158_ _g185135185162_)))))
          (_g185133185461_ _stx185131_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj189797
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
           __obj189797
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp189836 |gxc[1]#_g189837_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           __tmp189836
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp189838 |gxc[1]#_g189839_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           __tmp189838
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp189840 |gxc[1]#_g189841_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           __tmp189840
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp189842
               (let ((__tmp189847
                      (let ((__tmp189848 |gxc[1]#_g189849_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp189848)))
                     (__tmp189843
                      (let ((__tmp189844
                             (let ((__tmp189845 |gxc[1]#_g189846_|))
                               (declare (not safe))
                               (cons 'bindings __tmp189845))))
                        (declare (not safe))
                        (cons __tmp189844 '()))))
                 (declare (not safe))
                 (cons __tmp189847 __tmp189843))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           __tmp189842
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp189850
               (let ((__tmp189855
                      (let ((__tmp189856 |gxc[1]#_g189857_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp189856)))
                     (__tmp189851
                      (let ((__tmp189852
                             (let ((__tmp189853 |gxc[1]#_g189854_|))
                               (declare (not safe))
                               (cons 'bindings __tmp189853))))
                        (declare (not safe))
                        (cons __tmp189852 '()))))
                 (declare (not safe))
                 (cons __tmp189855 __tmp189851))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           __tmp189850
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp189858
               (let ((__tmp189863
                      (let ((__tmp189864 |gxc[1]#_g189865_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp189864)))
                     (__tmp189859
                      (let ((__tmp189860
                             (let ((__tmp189861 |gxc[1]#_g189862_|))
                               (declare (not safe))
                               (cons 'bindings __tmp189861))))
                        (declare (not safe))
                        (cons __tmp189860 '()))))
                 (declare (not safe))
                 (cons __tmp189863 __tmp189859))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           __tmp189858
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp189866
               (let ((__tmp189871
                      (let ((__tmp189872 |gxc[1]#_g189873_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp189872)))
                     (__tmp189867
                      (let ((__tmp189868
                             (let ((__tmp189869 |gxc[1]#_g189870_|))
                               (declare (not safe))
                               (cons 'bindings __tmp189869))))
                        (declare (not safe))
                        (cons __tmp189868 '()))))
                 (declare (not safe))
                 (cons __tmp189871 __tmp189867))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj189797
           __tmp189866
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj189797))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx185467_)
        (let* ((_g185471185485_
                (lambda (_g185472185481_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g185472185481_))))
               (_g185470185526_
                (lambda (_g185472185489_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g185472185489_))
                      (let ((_e185474185492_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g185472185489_))))
                        (let ((_hd185475185496_
                               (let ()
                                 (declare (not safe))
                                 (##car _e185474185492_)))
                              (_tl185476185499_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e185474185492_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl185476185499_))
                              (let ((_e185477185502_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl185476185499_))))
                                (let ((_hd185478185506_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e185477185502_)))
                                      (_tl185479185509_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e185477185502_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl185479185509_))
                                      ((lambda (_L185512_)
                                         (let ((__tmp189881
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp189874
                                                (let ((__tmp189880
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp189875
                                                       (let ((__tmp189876
                                                              (let ((__tmp189879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp189877
                             (let ((__tmp189878
                                    (let ()
                                      (declare (not safe))
                                      (cons _L185512_ '()))))
                               (declare (not safe))
                               (cons '() __tmp189878))))
                        (declare (not safe))
                        (cons __tmp189879 __tmp189877))))
                 (declare (not safe))
                 (cons __tmp189876 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp189880
                                                        __tmp189875))))
                                           (declare (not safe))
                                           (cons __tmp189881 __tmp189874)))
                                       _hd185478185506_)
                                      (_g185471185485_ _g185472185489_))))
                              (_g185471185485_ _g185472185489_))))
                      (_g185471185485_ _g185472185489_)))))
          (_g185470185526_ _$stx185467_))))))
