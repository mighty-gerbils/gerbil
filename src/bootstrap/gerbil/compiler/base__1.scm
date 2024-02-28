(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g97859_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97861_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97863_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97868_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97871_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97876_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97879_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97884_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97887_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97892_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97895_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx97216_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx97216_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx97219_)
        (let* ((_g9722297246_
                (lambda (_g9722397242_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9722397242_))))
               (_g9722197549_
                (lambda (_g9722397250_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9722397250_))
                      (let ((_e9722897253_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9722397250_))))
                        (let ((_hd9722797257_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9722897253_)))
                              (_tl9722697260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9722897253_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9722697260_))
                              (let ((_e9723197263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9722697260_))))
                                (let ((_hd9723097267_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9723197263_)))
                                      (_tl9722997270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9723197263_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9722997270_))
                                      (let ((_g97830_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9722997270_
                                                '0))))
                                        (begin
                                          (let ((_g97831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97830_)
                                                       (##vector-length
                                                        _g97830_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97831_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97831_)))
                                          (let ((_target9723297273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97830_ 0)))
                                                (_tl9723497276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97830_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9723497276_))
                                                (letrec ((_loop9723597279_
                                                          (lambda (_hd9723397283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9723997286_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9723397283_))
                        (let ((_e9723697289_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9723397283_))))
                          (let ((_lp-hd9723797293_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9723697289_)))
                                (_lp-tl9723897296_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9723697289_))))
                            (_loop9723597279_
                             _lp-tl9723897296_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9723797293_ _clause9723997286_)))))
                        (let ((_clause9724097299_
                               (reverse _clause9723997286_)))
                          ((lambda (_L97303_ _L97305_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97305_))
                                 (let* ((_g9732497341_
                                         (lambda (_g9732597337_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9732597337_))))
                                        (_g9732397402_
                                         (lambda (_g9732597345_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9732597345_))
                                               (let ((_g97832_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9732597345_
                                                         '0))))
                                                 (begin
                                                   (let ((_g97833_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97832_)
                        (##vector-length _g97832_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g97833_ 2)))
                 (error "Context expects 2 values" _g97833_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9732797348_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97832_
                                                             0)))
                                                         (_tl9732997351_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97832_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9732997351_))
                                                         (letrec ((_loop9733097354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9732897358_ _clause9733497361_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9732897358_))
                                 (let ((_e9733197364_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9732897358_))))
                                   (let ((_lp-hd9733297368_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9733197364_)))
                                         (_lp-tl9733397371_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9733197364_))))
                                     (_loop9733097354_
                                      _lp-tl9733397371_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9733297368_
                                              _clause9733497361_)))))
                                 (let ((_clause9733597374_
                                        (reverse _clause9733497361_)))
                                   ((lambda (_L97378_)
                                      (let ()
                                        (let ((__tmp97845
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp97834
                                               (let ((__tmp97843
                                                      (let ((__tmp97844
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp97844 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp97835
                                                      (let ((__tmp97836
                                                             (let ((__tmp97842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp97837
                            (let ((__tmp97841
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp97838
                                   (let ((__tmp97839
                                          (let ((__tmp97840
                                                 (lambda (_g9739397396_
                                                          _g9739497399_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9739397396_
                                                           _g9739497399_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp97840 '() _L97378_))))
                                     (declare (not safe))
                                     (cons _L97305_ __tmp97839))))
                              (declare (not safe))
                              (cons __tmp97841 __tmp97838))))
                       (declare (not safe))
                       (cons __tmp97842 __tmp97837))))
                (declare (not safe))
                (cons __tmp97836 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp97843
                                                       __tmp97835))))
                                          (declare (not safe))
                                          (cons __tmp97845 __tmp97834))))
                                    _clause9733597374_))))))
                   (_loop9733097354_ _target9732797348_ '()))
                 (_g9732497341_ _g9732597345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9732497341_
                                                _g9732597345_)))))
                                   (_g9732397402_
                                    (let ((__tmp97848
                                           (lambda (_clause97406_)
                                             (let* ((___stx9777597776_
                                                     _clause97406_)
                                                    (_g9741097437_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9777597776_)))))
                                               (let ((___kont9777897779_
                                                      (lambda (_L97522_
                                                               _L97524_)
                                                        (let ((__tmp97849
                                                               (let ((__tmp97850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97852
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp97851
                                     (let ()
                                       (declare (not safe))
                                       (cons _L97522_ '()))))
                                (declare (not safe))
                                (cons __tmp97852 __tmp97851))))
                         (declare (not safe))
                         (cons __tmp97850 '()))))
                  (declare (not safe))
                  (cons _L97524_ __tmp97849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9778097781_
                                                      (lambda (_L97474_
                                                               _L97476_
                                                               _L97477_)
                                                        (let ((__tmp97853
                                                               (let ((__tmp97854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97855
                                     (let ((__tmp97857
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp97856
                                            (let ()
                                              (declare (not safe))
                                              (cons _L97474_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97857 __tmp97856))))
                                (declare (not safe))
                                (cons __tmp97855 '()))))
                         (declare (not safe))
                         (cons _L97476_ __tmp97854))))
                  (declare (not safe))
                  (cons _L97477_ __tmp97853)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9777597776_))
                                                     (let ((_e9741697502_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9777597776_))))
                                                       (let ((_tl9741497509_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9741697502_)))
                     (_hd9741597506_
                      (let () (declare (not safe)) (##car _e9741697502_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9741497509_))
                     (let ((_e9741997512_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9741497509_))))
                       (let ((_tl9741797519_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9741997512_)))
                             (_hd9741897516_
                              (let ()
                                (declare (not safe))
                                (##car _e9741997512_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9741797519_))
                             (___kont9777897779_ _hd9741897516_ _hd9741597506_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9741797519_))
                                 (let ((_e9743197464_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9741797519_))))
                                   (let ((_tl9742997471_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9743197464_)))
                                         (_hd9743097468_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9743197464_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9742997471_))
                                         (___kont9778097781_
                                          _hd9743097468_
                                          _hd9741897516_
                                          _hd9741597506_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9741097437_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9741097437_))))))
                     (let () (declare (not safe)) (_g9741097437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9741097437_)))))))
                                          (__tmp97846
                                           (let ((__tmp97847
                                                  (lambda (_g9754097543_
                                                           _g9754197546_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9754097543_
                                                            _g9754197546_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp97847
                                                     '()
                                                     _L97303_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp97848 __tmp97846))))
                                 (_g9722297246_ _g9722397250_)))
                           _clause9724097299_
                           _hd9723097267_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9723597279_
                                                   _target9723297273_
                                                   '()))
                                                (_g9722297246_
                                                 _g9722397250_)))))
                                      (_g9722297246_ _g9722397250_))))
                              (_g9722297246_ _g9722397250_))))
                      (_g9722297246_ _g9722397250_)))))
          (_g9722197549_ _stx97219_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj97818
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
           __obj97818
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97858 |gxc[1]#_g97859_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           __tmp97858
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97860 |gxc[1]#_g97861_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           __tmp97860
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97862 |gxc[1]#_g97863_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           __tmp97862
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97864
               (let ((__tmp97869
                      (let ((__tmp97870 |gxc[1]#_g97871_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97870)))
                     (__tmp97865
                      (let ((__tmp97866
                             (let ((__tmp97867 |gxc[1]#_g97868_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97867))))
                        (declare (not safe))
                        (cons __tmp97866 '()))))
                 (declare (not safe))
                 (cons __tmp97869 __tmp97865))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           __tmp97864
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97872
               (let ((__tmp97877
                      (let ((__tmp97878 |gxc[1]#_g97879_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97878)))
                     (__tmp97873
                      (let ((__tmp97874
                             (let ((__tmp97875 |gxc[1]#_g97876_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97875))))
                        (declare (not safe))
                        (cons __tmp97874 '()))))
                 (declare (not safe))
                 (cons __tmp97877 __tmp97873))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           __tmp97872
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97880
               (let ((__tmp97885
                      (let ((__tmp97886 |gxc[1]#_g97887_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97886)))
                     (__tmp97881
                      (let ((__tmp97882
                             (let ((__tmp97883 |gxc[1]#_g97884_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97883))))
                        (declare (not safe))
                        (cons __tmp97882 '()))))
                 (declare (not safe))
                 (cons __tmp97885 __tmp97881))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           __tmp97880
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97888
               (let ((__tmp97893
                      (let ((__tmp97894 |gxc[1]#_g97895_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97894)))
                     (__tmp97889
                      (let ((__tmp97890
                             (let ((__tmp97891 |gxc[1]#_g97892_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97891))))
                        (declare (not safe))
                        (cons __tmp97890 '()))))
                 (declare (not safe))
                 (cons __tmp97893 __tmp97889))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97818
           __tmp97888
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj97818))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx97555_)
        (let* ((_g9755997573_
                (lambda (_g9756097569_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9756097569_))))
               (_g9755897614_
                (lambda (_g9756097577_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9756097577_))
                      (let ((_e9756497580_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9756097577_))))
                        (let ((_hd9756397584_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9756497580_)))
                              (_tl9756297587_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9756497580_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9756297587_))
                              (let ((_e9756797590_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9756297587_))))
                                (let ((_hd9756697594_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9756797590_)))
                                      (_tl9756597597_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9756797590_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9756597597_))
                                      ((lambda (_L97600_)
                                         (let ((__tmp97903
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp97896
                                                (let ((__tmp97902
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp97897
                                                       (let ((__tmp97898
                                                              (let ((__tmp97901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp97899
                             (let ((__tmp97900
                                    (let ()
                                      (declare (not safe))
                                      (cons _L97600_ '()))))
                               (declare (not safe))
                               (cons '() __tmp97900))))
                        (declare (not safe))
                        (cons __tmp97901 __tmp97899))))
                 (declare (not safe))
                 (cons __tmp97898 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97902
                                                        __tmp97897))))
                                           (declare (not safe))
                                           (cons __tmp97903 __tmp97896)))
                                       _hd9756697594_)
                                      (_g9755997573_ _g9756097577_))))
                              (_g9755997573_ _g9756097577_))))
                      (_g9755997573_ _g9756097577_)))))
          (_g9755897614_ _$stx97555_))))))
