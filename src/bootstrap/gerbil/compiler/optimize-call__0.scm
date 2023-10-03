(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1696371941)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl64407_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp64792 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl64407_ __tmp64792))
           (let ()
             (declare (not safe))
             (table-set! _tbl64407_ '%#call gxc#optimize-call%))
           _tbl64407_))))
    (define gxc#apply-optimize-call
      (lambda (_stx64400_ . _args64402_)
        (let ((__tmp64794
               (lambda () (apply gxc#compile-e _stx64400_ _args64402_)))
              (__tmp64793 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp64794
           gxc#current-compile-methods
           __tmp64793))))
    (define gxc#optimize-call%
      (lambda (_stx64255_)
        (let* ((___stx6442864429_ _stx64255_)
               (_g6425864278_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6442864429_)))))
          (let ((___kont6443064431_
                 (lambda (_L64322_ _L64323_)
                   (let* ((_rator-id64341_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L64323_)))
                          (_rator-type64343_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id64341_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type64343_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp64795
                                  (##structure-ref
                                   _rator-type64343_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id64341_
                              '" => "
                              _rator-type64343_
                              '" "
                              __tmp64795))
                           (let ((_optimized64346_
                                  (let ((__method64790
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type64343_
                                            'optimize-call))))
                                    (if __method64790
                                        (__method64790
                                         _rator-type64343_
                                         _stx64255_
                                         _L64322_)
                                        (error '"Missing method"
                                               _rator-type64343_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type64343_))
                                 _optimized64346_
                                 (let* ((___stx6441064411_ _optimized64346_)
                                        (_g6434964359_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6441064411_)))))
                                   (let ((___kont6441264413_
                                          (lambda (_L64379_)
                                            (let ((__tmp64796
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L64379_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp64796
                                               _stx64255_))))
                                         (___kont6441464415_
                                          (lambda () _optimized64346_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6441064411_))
                                         (let ((_e6435464371_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6441064411_))))
                                           (let ((_tl6435264376_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6435464371_)))
                                                 (_hd6435364374_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6435464371_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd6435364374_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd6435364374_))
                                                     (___kont6441264413_
                                                      _tl6435264376_)
                                                     (___kont6441464415_))
                                                 (___kont6441464415_))))
                                         (___kont6441464415_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type64343_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx64255_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal application; not a procedure"
                                _stx64255_
                                _rator-type64343_)))))))
                (___kont6443264433_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx64255_)))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx6442864429_))
                (let ((_e6426464290_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx6442864429_))))
                  (let ((_tl6426264295_
                         (let () (declare (not safe)) (##cdr _e6426464290_)))
                        (_hd6426364293_
                         (let () (declare (not safe)) (##car _e6426464290_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl6426264295_))
                        (let ((_e6426764298_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl6426264295_))))
                          (let ((_tl6426564303_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6426764298_)))
                                (_hd6426664301_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6426764298_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd6426664301_))
                                (let ((_e6427064306_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd6426664301_))))
                                  (let ((_tl6426864311_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6427064306_)))
                                        (_hd6426964309_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6427064306_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd6426964309_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd6426964309_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6426864311_))
                                                (let ((_e6427364314_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6426864311_))))
                                                  (let ((_tl6427164319_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6427364314_)))
                                                        (_hd6427264317_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6427364314_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6427164319_))
                                                        (___kont6443064431_
                                                         _tl6426564303_
                                                         _hd6427264317_)
                                                        (___kont6443264433_))))
                                                (___kont6443264433_))
                                            (___kont6443264433_))
                                        (___kont6443264433_))))
                                (___kont6443264433_))))
                        (___kont6443264433_))))
                (___kont6443264433_))))))
    (define gxc#!struct-pred::optimize-call
      (lambda (_self64109_ _stx64110_ _args64111_)
        (let* ((_self6411264118_ _self64109_)
               (_E6411464122_
                (lambda () (error '"No clause matching" _self6411264118_)))
               (_K6411564247_
                (lambda (_struct-t64125_)
                  (let* ((_struct-type64127_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t64125_)))
                         (_struct-type6412864142_ _struct-type64127_)
                         (_else6413164150_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx64110_
                               _struct-t64125_
                               _struct-type64127_)))))
                    (let ((_K6413464222_
                           (lambda (_plist64161_ _struct-type-id64162_)
                             (let* ((___stx6446664467_ _args64111_)
                                    (_g6416564175_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6446664467_)))))
                               (let ((___kont6446864469_
                                      (lambda (_L64195_)
                                        (let ((_expr64216_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e _L64195_)))
                                              (_op64217_
                                               (if (and _plist64161_
                                                        (let ()
                                                          (declare (not safe))
                                                          (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _plist64161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '%#struct-direct-instance?
                                                   '%#struct-instance?)))
                                          (let ((__tmp64797
                                                 (let ((__tmp64798
                                                        (let ((__tmp64800
                                                               (let ((__tmp64801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _struct-type-id64162_ '()))))
                         (declare (not safe))
                         (cons '%#quote __tmp64801)))
                      (__tmp64799
                       (let () (declare (not safe)) (cons _expr64216_ '()))))
                  (declare (not safe))
                  (cons __tmp64800 __tmp64799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _op64217_
                                                         __tmp64798))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp64797
                                             _stx64110_)))))
                                     (___kont6447064471_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal struct predicate application"
                                           _stx64110_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6446664467_))
                                     (let ((_e6417064187_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6446664467_))))
                                       (let ((_tl6416864192_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6417064187_)))
                                             (_hd6416964190_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6417064187_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6416864192_))
                                             (___kont6446864469_
                                              _hd6416964190_)
                                             (___kont6447064471_))))
                                     (___kont6447064471_))))))
                          (_K6413364155_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx64110_)))))
                      (let ((_try-match6413064158_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6412864142_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6413364155_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6413164150_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6412864142_
                               'gxc#!struct-type::t))
                            (let* ((_e6413564225_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6412864142_
                                       '1)))
                                   (_e6413664230_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6412864142_
                                       '2)))
                                   (_e6413764233_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6412864142_
                                       '3)))
                                   (_e6413864236_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6412864142_
                                       '4)))
                                   (_e6413964239_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6412864142_
                                       '5)))
                                   (_e6414064242_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6412864142_
                                       '6))))
                              (let ((_struct-type-id64228_ _e6413564225_)
                                    (_plist64245_ _e6414064242_))
                                (let ()
                                  (declare (not safe))
                                  (_K6413464222_
                                   _plist64245_
                                   _struct-type-id64228_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6413064158_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6411264118_
                 'gxc#!struct-pred::t))
              (let* ((_e6411664250_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6411264118_ '1)))
                     (_struct-t64253_ _e6411664250_))
                (declare (not safe))
                (_K6411564247_ _struct-t64253_))
              (let () (declare (not safe)) (_E6411464122_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'optimize-call
       gxc#!struct-pred::optimize-call
       '#f))
    (define gxc#!struct-cons::optimize-call
      (lambda (_self63883_ _stx63884_ _args63885_)
        (let* ((_self6388663892_ _self63883_)
               (_E6388863896_
                (lambda () (error '"No clause matching" _self6388663892_)))
               (_K6388963979_
                (lambda (_struct-t63899_)
                  (let* ((_struct-type63901_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63899_)))
                         (_struct-type6390263915_ _struct-type63901_)
                         (_else6390563923_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct constructor application; not a struct type"
                               _stx63884_
                               _struct-t63899_
                               _struct-type63901_)))))
                    (let ((_K6390863953_
                           (lambda (_ctor63934_
                                    _xfields63935_
                                    _fields63936_
                                    _type-id63937_)
                             (let* ((_args63939_
                                     (map gxc#compile-e _args63885_))
                                    (_$e63941_
                                     (if _ctor63934_
                                         (if _xfields63935_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!struct-type-lookup-method
                                                _struct-type63901_
                                                _ctor63934_))
                                             '#f)
                                         '#f)))
                               (if _$e63941_
                                   ((lambda (_kons63944_)
                                      (let* ((_$obj63946_
                                              (make-symbol (gensym '__obj)))
                                             (__tmp64816
                                              (let ((__tmp64817
                                                     (let ((__tmp64833
                                                            (let ((__tmp64834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64847
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj63946_ '())))
                                 (__tmp64835
                                  (let ((__tmp64836
                                         (let ((__tmp64837
                                                (let ((__tmp64845
                                                       (let ((__tmp64846
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp64846)))
              (__tmp64838
               (let ((__tmp64843
                      (let ((__tmp64844
                             (let ()
                               (declare (not safe))
                               (cons _struct-t63899_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp64844)))
                     (__tmp64839
                      (let ((__tmp64840
                             (let ((__tmp64841
                                    (let ((__tmp64842
                                           (fx+ _fields63936_ _xfields63935_)))
                                      (declare (not safe))
                                      (cons __tmp64842 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp64841))))
                        (declare (not safe))
                        (cons __tmp64840 '()))))
                 (declare (not safe))
                 (cons __tmp64843 __tmp64839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64845
                                                        __tmp64838))))
                                           (declare (not safe))
                                           (cons '%#call __tmp64837))))
                                    (declare (not safe))
                                    (cons __tmp64836 '()))))
                             (declare (not safe))
                             (cons __tmp64847 __tmp64835))))
                      (declare (not safe))
                      (cons __tmp64834 '())))
                   (__tmp64818
                    (let ((__tmp64819
                           (let ((__tmp64820
                                  (let ((__tmp64824
                                         (let ((__tmp64825
                                                (let ((__tmp64826
                                                       (let ((__tmp64827
                                                              (let ((__tmp64831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64832
                                    (let ()
                                      (declare (not safe))
                                      (cons _kons63944_ '()))))
                               (declare (not safe))
                               (cons '%#ref __tmp64832)))
                            (__tmp64828
                             (let ((__tmp64829
                                    (let ((__tmp64830
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj63946_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp64830))))
                               (declare (not safe))
                               (cons __tmp64829 _args63939_))))
                        (declare (not safe))
                        (cons __tmp64831 __tmp64828))))
                 (declare (not safe))
                 (cons '%#call __tmp64827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp64826
                                                   _stx63884_))))
                                           (declare (not safe))
                                           (gxc#compile-e __tmp64825)))
                                        (__tmp64821
                                         (let ((__tmp64822
                                                (let ((__tmp64823
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj63946_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp64823))))
                                           (declare (not safe))
                                           (cons __tmp64822 '()))))
                                    (declare (not safe))
                                    (cons __tmp64824 __tmp64821))))
                             (declare (not safe))
                             (cons '%#begin __tmp64820))))
                      (declare (not safe))
                      (cons __tmp64819 '()))))
               (declare (not safe))
               (cons __tmp64833 __tmp64818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp64817))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp64816
                                         _stx63884_)))
                                    _$e63941_)
                                   (if (or _ctor63934_
                                           (let ()
                                             (declare (not safe))
                                             (not _xfields63935_)))
                                       (let ((__tmp64809
                                              (let ((__tmp64810
                                                     (let ((__tmp64814
                                                            (let ((__tmp64815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons 'make-struct-instance '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp64815)))
                   (__tmp64811
                    (let ((__tmp64812
                           (let ((__tmp64813
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63899_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64813))))
                      (declare (not safe))
                      (cons __tmp64812 _args63939_))))
               (declare (not safe))
               (cons __tmp64814 __tmp64811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp64810))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp64809
                                          _stx63884_))
                                       (let ((_arity63951_
                                              (fx+ _fields63936_
                                                   _xfields63935_)))
                                         (if (fx= _arity63951_
                                                  (length _args63939_))
                                             (let ((__tmp64802
                                                    (let ((__tmp64803
                                                           (let ((__tmp64807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp64808
                                 (let ()
                                   (declare (not safe))
                                   (cons '##structure '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp64808)))
                         (__tmp64804
                          (let ((__tmp64805
                                 (let ((__tmp64806
                                        (let ()
                                          (declare (not safe))
                                          (cons _struct-t63899_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp64806))))
                            (declare (not safe))
                            (cons __tmp64805 _args63939_))))
                     (declare (not safe))
                     (cons __tmp64807 __tmp64804))))
              (declare (not safe))
              (cons '%#call __tmp64803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp64802
                                                _stx63884_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"Illegal struct constructor application; arity mismatch"
                                                _stx63884_
                                                _struct-t63899_
                                                _arity63951_)))))))))
                          (_K6390763928_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline struct constructor; unknown struct type "
                                _struct-t63899_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63884_)))))
                      (let ((_try-match6390463931_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6390263915_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6390763928_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6390563923_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6390263915_
                               'gxc#!struct-type::t))
                            (let* ((_e6390963956_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6390263915_
                                       '1)))
                                   (_e6391063961_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6390263915_
                                       '2)))
                                   (_e6391163964_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6390263915_
                                       '3)))
                                   (_e6391263969_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6390263915_
                                       '4)))
                                   (_e6391363974_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6390263915_
                                       '5))))
                              (let ((_type-id63959_ _e6390963956_)
                                    (_fields63967_ _e6391163964_)
                                    (_xfields63972_ _e6391263969_)
                                    (_ctor63977_ _e6391363974_))
                                (let ()
                                  (declare (not safe))
                                  (_K6390863953_
                                   _ctor63977_
                                   _xfields63972_
                                   _fields63967_
                                   _type-id63959_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6390463931_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6388663892_
                 'gxc#!struct-cons::t))
              (let* ((_e6389063982_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6388663892_ '1)))
                     (_struct-t63985_ _e6389063982_))
                (declare (not safe))
                (_K6388963979_ _struct-t63985_))
              (let () (declare (not safe)) (_E6388863896_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'optimize-call
       gxc#!struct-cons::optimize-call
       '#f))
    (define gxc#!struct-getf::optimize-call
      (lambda (_self63594_ _stx63595_ _args63596_)
        (let* ((_self6359763605_ _self63594_)
               (_E6359963609_
                (lambda () (error '"No clause matching" _self6359763605_)))
               (_K6360063743_
                (lambda (_unchecked?63612_ _off63613_ _struct-t63614_)
                  (let* ((_struct-type63616_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63614_)))
                         (_struct-type6361763631_ _struct-type63616_)
                         (_else6362063639_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx63595_
                               _struct-t63614_
                               _struct-type63616_)))))
                    (let ((_K6362363714_
                           (lambda (_plist63650_
                                    _xfields63651_
                                    _fields63652_
                                    _struct-type-id63653_)
                             (if _xfields63651_
                                 (let* ((___stx6451464515_ _args63596_)
                                        (_g6365663666_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6451464515_)))))
                                   (let ((___kont6451664517_
                                          (lambda (_L63686_)
                                            (let ((_expr63707_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63686_)))
                                                  (_off63708_
                                                   (fx+ _off63613_
                                                        _xfields63651_
                                                        '1))
                                                  (_op63709_
                                                   (if _unchecked?63612_
                                                       '%#struct-unchecked-ref
                                                       (if (and _plist63650_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist63650_)))
                   '%#struct-direct-ref
                   '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp64848
                                                     (let ((__tmp64849
                                                            (let ((__tmp64854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64855
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63614_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64855)))
                          (__tmp64850
                           (let ((__tmp64852
                                  (let ((__tmp64853
                                         (let ()
                                           (declare (not safe))
                                           (cons _off63708_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp64853)))
                                 (__tmp64851
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr63707_ '()))))
                             (declare (not safe))
                             (cons __tmp64852 __tmp64851))))
                      (declare (not safe))
                      (cons __tmp64854 __tmp64850))))
               (declare (not safe))
               (cons _op63709_ __tmp64849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64848
                                                 _stx63595_)))))
                                         (___kont6451864519_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct accessor application"
                                               _stx63595_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6451464515_))
                                         (let ((_e6366163678_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6451464515_))))
                                           (let ((_tl6365963683_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6366163678_)))
                                                 (_hd6366063681_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6366163678_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _tl6365963683_))
                                                 (___kont6451664517_
                                                  _hd6366063681_)
                                                 (___kont6451864519_))))
                                         (___kont6451864519_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-getf: incomplete struct "
                                      _struct-type-id63653_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx63595_))))))
                          (_K6362263644_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63595_)))))
                      (let ((_try-match6361963647_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6361763631_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6362263644_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6362063639_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6361763631_
                               'gxc#!struct-type::t))
                            (let* ((_e6362463717_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6361763631_
                                       '1)))
                                   (_e6362563722_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6361763631_
                                       '2)))
                                   (_e6362663725_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6361763631_
                                       '3)))
                                   (_e6362763730_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6361763631_
                                       '4)))
                                   (_e6362863735_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6361763631_
                                       '5)))
                                   (_e6362963738_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6361763631_
                                       '6))))
                              (let ((_struct-type-id63720_ _e6362463717_)
                                    (_fields63728_ _e6362663725_)
                                    (_xfields63733_ _e6362763730_)
                                    (_plist63741_ _e6362963738_))
                                (let ()
                                  (declare (not safe))
                                  (_K6362363714_
                                   _plist63741_
                                   _xfields63733_
                                   _fields63728_
                                   _struct-type-id63720_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6361963647_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6359763605_
                 'gxc#!struct-getf::t))
              (let* ((_e6360163746_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6359763605_ '1)))
                     (_struct-t63749_ _e6360163746_)
                     (_e6360263751_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6359763605_ '2)))
                     (_off63754_ _e6360263751_)
                     (_e6360363756_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6359763605_ '3)))
                     (_unchecked?63759_ _e6360363756_))
                (declare (not safe))
                (_K6360063743_ _unchecked?63759_ _off63754_ _struct-t63749_))
              (let () (declare (not safe)) (_E6359963609_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'optimize-call
       gxc#!struct-getf::optimize-call
       '#f))
    (define gxc#!struct-setf::optimize-call
      (lambda (_self63288_ _stx63289_ _args63290_)
        (let* ((_self6329163299_ _self63288_)
               (_E6329363303_
                (lambda () (error '"No clause matching" _self6329163299_)))
               (_K6329463454_
                (lambda (_unchecked?63306_ _off63307_ _struct-t63308_)
                  (let* ((_struct-type63310_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63308_)))
                         (_struct-type6331163325_ _struct-type63310_)
                         (_else6331463333_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx63289_
                               _struct-t63308_
                               _struct-type63310_)))))
                    (let ((_K6331763425_
                           (lambda (_plist63344_
                                    _xfields63345_
                                    _fields63346_
                                    _struct-type-id63347_)
                             (if _xfields63345_
                                 (let* ((___stx6454764548_ _args63290_)
                                        (_g6335063364_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6454764548_)))))
                                   (let ((___kont6454964550_
                                          (lambda (_L63392_ _L63393_)
                                            (let ((_expr63417_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63393_)))
                                                  (_val63418_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63392_)))
                                                  (_off63419_
                                                   (fx+ _off63307_
                                                        _xfields63345_
                                                        '1))
                                                  (_op63420_
                                                   (if _unchecked?63306_
                                                       '%#struct-unchecked-set!
                                                       (if (and _plist63344_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist63344_)))
                   '%#struct-direct-set!
                   '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp64856
                                                     (let ((__tmp64857
                                                            (let ((__tmp64863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64864
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63308_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64864)))
                          (__tmp64858
                           (let ((__tmp64861
                                  (let ((__tmp64862
                                         (let ()
                                           (declare (not safe))
                                           (cons _off63419_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp64862)))
                                 (__tmp64859
                                  (let ((__tmp64860
                                         (let ()
                                           (declare (not safe))
                                           (cons _val63418_ '()))))
                                    (declare (not safe))
                                    (cons _expr63417_ __tmp64860))))
                             (declare (not safe))
                             (cons __tmp64861 __tmp64859))))
                      (declare (not safe))
                      (cons __tmp64863 __tmp64858))))
               (declare (not safe))
               (cons _op63420_ __tmp64857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64856
                                                 _stx63289_)))))
                                         (___kont6455164552_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct mutator application"
                                               _stx63289_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6454764548_))
                                         (let ((_e6335663376_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6454764548_))))
                                           (let ((_tl6335463381_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6335663376_)))
                                                 (_hd6335563379_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6335663376_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl6335463381_))
                                                 (let ((_e6335963384_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl6335463381_))))
                                                   (let ((_tl6335763389_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e6335963384_)))
                                                         (_hd6335863387_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e6335963384_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl6335763389_))
                                                         (___kont6454964550_
                                                          _hd6335863387_
                                                          _hd6335563379_)
                                                         (___kont6455164552_))))
                                                 (___kont6455164552_))))
                                         (___kont6455164552_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-setf: incomplete struct "
                                      _struct-type-id63347_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx63289_))))))
                          (_K6331663338_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63289_)))))
                      (let ((_try-match6331363341_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6331163325_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6331663338_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6331463333_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6331163325_
                               'gxc#!struct-type::t))
                            (let* ((_e6331863428_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6331163325_
                                       '1)))
                                   (_e6331963433_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6331163325_
                                       '2)))
                                   (_e6332063436_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6331163325_
                                       '3)))
                                   (_e6332163441_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6331163325_
                                       '4)))
                                   (_e6332263446_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6331163325_
                                       '5)))
                                   (_e6332363449_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6331163325_
                                       '6))))
                              (let ((_struct-type-id63431_ _e6331863428_)
                                    (_fields63439_ _e6332063436_)
                                    (_xfields63444_ _e6332163441_)
                                    (_plist63452_ _e6332363449_))
                                (let ()
                                  (declare (not safe))
                                  (_K6331763425_
                                   _plist63452_
                                   _xfields63444_
                                   _fields63439_
                                   _struct-type-id63431_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6331363341_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6329163299_
                 'gxc#!struct-setf::t))
              (let* ((_e6329563457_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6329163299_ '1)))
                     (_struct-t63460_ _e6329563457_)
                     (_e6329663462_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6329163299_ '2)))
                     (_off63465_ _e6329663462_)
                     (_e6329763467_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6329163299_ '3)))
                     (_unchecked?63470_ _e6329763467_))
                (declare (not safe))
                (_K6329463454_ _unchecked?63470_ _off63465_ _struct-t63460_))
              (let () (declare (not safe)) (_E6329363303_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'optimize-call
       gxc#!struct-setf::optimize-call
       '#f))
    (define gxc#!class-pred::optimize-call
      (lambda (_self63016_ _stx63017_ _args63018_)
        (let* ((_self6301963025_ _self63016_)
               (_E6302163029_
                (lambda () (error '"No clause matching" _self6301963025_)))
               (_K6302263158_
                (lambda (_class-t63032_)
                  (let* ((_class-type63034_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t63032_)))
                         (_class-type6303563050_ _class-type63034_)
                         (_else6303863058_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal class predicate application; not a class type"
                               _stx63017_
                               _class-t63032_
                               _class-type63034_)))))
                    (let ((_K6304163130_
                           (lambda (_plist63069_ _class-type-id63070_)
                             (let* ((___stx6458664587_ _args63018_)
                                    (_g6307363083_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6458664587_)))))
                               (let ((___kont6458864589_
                                      (lambda (_L63103_)
                                        (let ((_expr63124_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e _L63103_)))
                                              (_final?63125_
                                               (if _plist63069_
                                                   (let ()
                                                     (declare (not safe))
                                                     (assgetq 'final:
                                                              _plist63069_))
                                                   '#f)))
                                          (if _final?63125_
                                              (let ((__tmp64873
                                                     (let ((__tmp64874
                                                            (let ((__tmp64876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64877
                                  (let ()
                                    (declare (not safe))
                                    (cons _class-type-id63070_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp64877)))
                          (__tmp64875
                           (let ()
                             (declare (not safe))
                             (cons _expr63124_ '()))))
                      (declare (not safe))
                      (cons __tmp64876 __tmp64875))))
               (declare (not safe))
               (cons '%#struct-direct-instance? __tmp64874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64873
                                                 _stx63017_))
                                              (let ((__tmp64865
                                                     (let ((__tmp64866
                                                            (let ((__tmp64871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64872
                                  (let ()
                                    (declare (not safe))
                                    (cons 'class-instance? '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64872)))
                          (__tmp64867
                           (let ((__tmp64869
                                  (let ((__tmp64870
                                         (let ()
                                           (declare (not safe))
                                           (cons _class-t63032_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp64870)))
                                 (__tmp64868
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr63124_ '()))))
                             (declare (not safe))
                             (cons __tmp64869 __tmp64868))))
                      (declare (not safe))
                      (cons __tmp64871 __tmp64867))))
               (declare (not safe))
               (cons '%#call __tmp64866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64865
                                                 _stx63017_))))))
                                     (___kont6459064591_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal class predicate application"
                                           _stx63017_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6458664587_))
                                     (let ((_e6307863095_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6458664587_))))
                                       (let ((_tl6307663100_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6307863095_)))
                                             (_hd6307763098_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6307863095_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6307663100_))
                                             (___kont6458864589_
                                              _hd6307763098_)
                                             (___kont6459064591_))))
                                     (___kont6459064591_))))))
                          (_K6304063063_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63017_)))))
                      (let ((_try-match6303763066_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6303563050_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6304063063_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6303863058_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6303563050_
                               'gxc#!class-type::t))
                            (let* ((_e6304263133_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6303563050_
                                       '1)))
                                   (_e6304363138_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6303563050_
                                       '2)))
                                   (_e6304463141_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6303563050_
                                       '3)))
                                   (_e6304563144_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6303563050_
                                       '4)))
                                   (_e6304663147_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6303563050_
                                       '5)))
                                   (_e6304763150_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6303563050_
                                       '6)))
                                   (_e6304863153_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6303563050_
                                       '7))))
                              (let ((_class-type-id63136_ _e6304263133_)
                                    (_plist63156_ _e6304863153_))
                                (let ()
                                  (declare (not safe))
                                  (_K6304163130_
                                   _plist63156_
                                   _class-type-id63136_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6303763066_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6301963025_
                 'gxc#!class-pred::t))
              (let* ((_e6302363161_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6301963025_ '1)))
                     (_class-t63164_ _e6302363161_))
                (declare (not safe))
                (_K6302263158_ _class-t63164_))
              (let () (declare (not safe)) (_E6302163029_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'optimize-call
       gxc#!class-pred::optimize-call
       '#f))
    (define gxc#!class-cons::optimize-call
      (lambda (_self62834_ _stx62835_ _args62836_)
        (let* ((_self6283762843_ _self62834_)
               (_E6283962847_
                (lambda () (error '"No clause matching" _self6283762843_)))
               (_K6284062886_
                (lambda (_class-t62850_)
                  (let* ((_class-type62852_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t62850_)))
                         (_class-type6285362861_ _class-type62852_)
                         (_else6285662869_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal class constructor application; not a struct type"
                               _stx62835_
                               _class-t62850_
                               _class-type62852_)))))
                    (let ((_K6285962883_
                           (lambda ()
                             (let* ((_args62881_
                                     (map gxc#compile-e _args62836_))
                                    (__tmp64878
                                     (let ((__tmp64879
                                            (let ((__tmp64883
                                                   (let ((__tmp64884
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-class-instance
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp64884)))
                                                  (__tmp64880
                                                   (let ((__tmp64881
                                                          (let ((__tmp64882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _class-t62850_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp64882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64881
                                                           _args62881_))))
                                              (declare (not safe))
                                              (cons __tmp64883 __tmp64880))))
                                       (declare (not safe))
                                       (cons '%#call __tmp64879))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp64878 _stx62835_))))
                          (_K6285862874_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline class constructor; class struct type "
                                _class-t62850_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx62835_)))))
                      (let ((_try-match6285562877_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6285362861_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6285862874_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6285662869_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6285362861_
                               'gxc#!class-type::t))
                            (let () (declare (not safe)) (_K6285962883_))
                            (let ()
                              (declare (not safe))
                              (_try-match6285562877_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6283762843_
                 'gxc#!class-cons::t))
              (let* ((_e6284162889_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6283762843_ '1)))
                     (_class-t62892_ _e6284162889_))
                (declare (not safe))
                (_K6284062886_ _class-t62892_))
              (let () (declare (not safe)) (_E6283962847_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'optimize-call
       gxc#!class-cons::optimize-call
       '#f))
    (define gxc#!class-getf::optimize-call
      (lambda (_self62621_ _stx62622_ _args62623_)
        (let* ((_self6262462632_ _self62621_)
               (_E6262662636_
                (lambda () (error '"No clause matching" _self6262462632_)))
               (_K6262762694_
                (lambda (_unchecked?62639_ _slot62640_ _class-t62641_)
                  (let* ((___stx6462664627_ _args62623_)
                         (_g6264462654_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6462664627_)))))
                    (let ((___kont6462864629_
                           (lambda (_L62674_)
                             (let* ((_expr62689_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e _L62674_)))
                                    (__tmp64885
                                     (let ((__tmp64886
                                            (let ((__tmp64891
                                                   (let ((__tmp64892
                                                          (let ((__tmp64893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _unchecked?62639_ 'slot-ref 'unchecked-slot-ref)))
                    (declare (not safe))
                    (cons __tmp64893 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp64892)))
                                                  (__tmp64887
                                                   (let ((__tmp64888
                                                          (let ((__tmp64889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64890
                                (let ()
                                  (declare (not safe))
                                  (cons _slot62640_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp64890))))
                    (declare (not safe))
                    (cons __tmp64889 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr62689_
                                                           __tmp64888))))
                                              (declare (not safe))
                                              (cons __tmp64891 __tmp64887))))
                                       (declare (not safe))
                                       (cons '%#call __tmp64886))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp64885 _stx62622_))))
                          (___kont6463064631_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class accessor application"
                                _stx62622_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6462664627_))
                          (let ((_e6264962666_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6462664627_))))
                            (let ((_tl6264762671_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6264962666_)))
                                  (_hd6264862669_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6264962666_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl6264762671_))
                                  (___kont6462864629_ _hd6264862669_)
                                  (___kont6463064631_))))
                          (___kont6463064631_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6262462632_
                 'gxc#!class-getf::t))
              (let* ((_e6262862697_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6262462632_ '1)))
                     (_class-t62700_ _e6262862697_)
                     (_e6262962702_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6262462632_ '2)))
                     (_slot62705_ _e6262962702_)
                     (_e6263062707_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6262462632_ '3)))
                     (_unchecked?62710_ _e6263062707_))
                (declare (not safe))
                (_K6262762694_ _unchecked?62710_ _slot62705_ _class-t62700_))
              (let () (declare (not safe)) (_E6262662636_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'optimize-call
       gxc#!class-getf::optimize-call
       '#f))
    (define gxc#!class-setf::optimize-call
      (lambda (_self62391_ _stx62392_ _args62393_)
        (let* ((_self6239462402_ _self62391_)
               (_E6239662406_
                (lambda () (error '"No clause matching" _self6239462402_)))
               (_K6239762481_
                (lambda (_unchecked?62409_ _slot62410_ _class-t62411_)
                  (let* ((___stx6464264643_ _args62393_)
                         (_g6241462428_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6464264643_)))))
                    (let ((___kont6464464645_
                           (lambda (_L62456_ _L62457_)
                             (let ((_expr62475_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e _L62457_)))
                                   (_val62476_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e _L62456_))))
                               (let ((__tmp64894
                                      (let ((__tmp64895
                                             (let ((__tmp64901
                                                    (let ((__tmp64902
                                                           (let ((__tmp64903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if _unchecked?62409_
                              'unchecked-slot-set!
                              'slot-set!)))
                     (declare (not safe))
                     (cons __tmp64903 '()))))
              (declare (not safe))
              (cons '%#ref __tmp64902)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64896
                                                    (let ((__tmp64897
                                                           (let ((__tmp64899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp64900
                                 (let ()
                                   (declare (not safe))
                                   (cons _slot62410_ '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp64900)))
                         (__tmp64898
                          (let () (declare (not safe)) (cons _val62476_ '()))))
                     (declare (not safe))
                     (cons __tmp64899 __tmp64898))))
              (declare (not safe))
              (cons _expr62475_ __tmp64897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp64901 __tmp64896))))
                                        (declare (not safe))
                                        (cons '%#call __tmp64895))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp64894
                                  _stx62392_)))))
                          (___kont6464664647_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class mutator application"
                                _stx62392_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6464264643_))
                          (let ((_e6242062440_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6464264643_))))
                            (let ((_tl6241862445_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6242062440_)))
                                  (_hd6241962443_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6242062440_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6241862445_))
                                  (let ((_e6242362448_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6241862445_))))
                                    (let ((_tl6242162453_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6242362448_)))
                                          (_hd6242262451_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6242362448_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6242162453_))
                                          (___kont6464464645_
                                           _hd6242262451_
                                           _hd6241962443_)
                                          (___kont6464664647_))))
                                  (___kont6464664647_))))
                          (___kont6464664647_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6239462402_
                 'gxc#!class-setf::t))
              (let* ((_e6239862484_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6239462402_ '1)))
                     (_class-t62487_ _e6239862484_)
                     (_e6239962489_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6239462402_ '2)))
                     (_slot62492_ _e6239962489_)
                     (_e6240062494_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6239462402_ '3)))
                     (_unchecked?62497_ _e6240062494_))
                (declare (not safe))
                (_K6239762481_ _unchecked?62497_ _slot62492_ _class-t62487_))
              (let () (declare (not safe)) (_E6239662406_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'optimize-call
       gxc#!class-setf::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self62225_ _stx62226_ _args62227_)
        (let* ((_self6222862237_ _self62225_)
               (_E6223062241_
                (lambda () (error '"No clause matching" _self6222862237_)))
               (_K6223162248_
                (lambda (_inline62244_ _dispatch62245_ _arity62246_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self62225_ _args62227_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx62226_
                         _arity62246_)))
                  (if _inline62244_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp64909
                               (let ((__tmp64910 (_inline62244_ _stx62226_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp64910
                                  _stx62226_))))
                          (declare (not safe))
                          (gxc#compile-e __tmp64909)))
                      (if _dispatch62245_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch62245_))
                            (let ((__tmp64904
                                   (let ((__tmp64905
                                          (let ((__tmp64906
                                                 (let ((__tmp64907
                                                        (let ((__tmp64908
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch62245_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp64908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64907
                                                         _args62227_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp64906))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp64905
                                      _stx62226_))))
                              (declare (not safe))
                              (gxc#compile-e __tmp64904)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx62226_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6222862237_ 'gxc#!lambda::t))
              (let* ((_e6223262251_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6222862237_ '1)))
                     (_e6223362254_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6222862237_ '2)))
                     (_arity62257_ _e6223362254_)
                     (_e6223462259_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6222862237_ '3)))
                     (_dispatch62262_ _e6223462259_)
                     (_e6223562264_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6222862237_ '4)))
                     (_inline62267_ _e6223562264_))
                (declare (not safe))
                (_K6223162248_ _inline62267_ _dispatch62262_ _arity62257_))
              (let () (declare (not safe)) (_E6223062241_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self62064_ _stx62065_ _args62066_)
        (let* ((_self6206762074_ _self62064_)
               (_E6206962078_
                (lambda () (error '"No clause matching" _self6206762074_)))
               (_K6207062092_
                (lambda (_clauses62081_)
                  (let ((_$e62087_
                         (let ((__tmp64911
                                (lambda (_g6208262084_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g6208262084_
                                     _args62066_)))))
                           (declare (not safe))
                           (find __tmp64911 _clauses62081_))))
                    (if _$e62087_
                        ((lambda (_clause62090_)
                           (let ((__method64791
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause62090_
                                     'optimize-call))))
                             (if __method64791
                                 (__method64791
                                  _clause62090_
                                  _stx62065_
                                  _args62066_)
                                 (error '"Missing method"
                                        _clause62090_
                                        'optimize-call))))
                         _$e62087_)
                        (let ((__tmp64912
                               (map gxc#!lambda-arity _clauses62081_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx62065_
                           __tmp64912)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6206762074_
                 'gxc#!case-lambda::t))
              (let* ((_e6207162095_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6206762074_ '1)))
                     (_e6207262098_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6206762074_ '2)))
                     (_clauses62101_ _e6207262098_))
                (declare (not safe))
                (_K6207062092_ _clauses62101_))
              (let () (declare (not safe)) (_E6206962078_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self61878_ _args61879_)
        (let* ((_self6188061887_ _self61878_)
               (_E6188261891_
                (lambda () (error '"No clause matching" _self6188061887_)))
               (_K6188361931_
                (lambda (_arity61894_)
                  (let* ((_arity6189561904_ _arity61894_)
                         (_E6189861908_
                          (lambda ()
                            (error '"No clause matching" _arity6189561904_))))
                    (let ((_K6190261928_
                           (lambda () (fx= (length _args61879_) _arity61894_)))
                          (_K6189961914_
                           (lambda (_arity61912_)
                             (fx>= (length _args61879_) _arity61912_))))
                      (let ((_try-match6189761924_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity6189561904_))
                                   (let ((_tl6190161919_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity6189561904_)))
                                         (_hd6190061917_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity6189561904_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl6190161919_))
                                         (let ((_arity61922_ _hd6190061917_))
                                           (declare (not safe))
                                           (_K6189961914_ _arity61922_))
                                         (let ()
                                           (declare (not safe))
                                           (_E6189861908_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E6189861908_))))))
                        (if (fixnum? _arity6189561904_)
                            (let () (declare (not safe)) (_K6190261928_))
                            (let ()
                              (declare (not safe))
                              (_try-match6189761924_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6188061887_ 'gxc#!lambda::t))
              (let* ((_e6188461934_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6188061887_ '1)))
                     (_e6188561937_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6188061887_ '2)))
                     (_arity61940_ _e6188561937_))
                (declare (not safe))
                (_K6188361931_ _arity61940_))
              (let () (declare (not safe)) (_E6188261891_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self61763_ _stx61764_ _args61765_)
        (let* ((_self6176661774_ _self61763_)
               (_E6176861778_
                (lambda () (error '"No clause matching" _self6176661774_)))
               (_K6176961862_
                (lambda (_dispatch61781_ _table61782_)
                  (let* ((_g6178361792_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch61781_)))
                         (_else6178561800_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch61781_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx61764_))))
                         (_K6178761846_
                          (lambda (_main61803_ _keys61804_)
                            (let ((_g64913_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx61764_
                                      _args61765_))))
                              (begin
                                (let ((_g64914_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64913_)
                                             (##vector-length _g64913_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64914_ 2)))
                                      (error "Context expects 2 values"
                                             _g64914_)))
                                (let ((_pargs61806_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64913_ 0)))
                                      (_kwargs61807_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64913_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main61803_))
                                    (if _table61782_
                                        (let ((_xargs61814_
                                               (map (lambda (_key61809_)
                                                      (let ((_$e61811_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key61809_ _kwargs61807_))))
                (if _$e61811_ (values _$e61811_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys61804_)))
                                          (for-each
                                           (lambda (_kw61816_)
                                             (if (memq (car _kw61816_)
                                                       _keys61804_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx61764_
                                                    _keys61804_
                                                    _kw61816_))))
                                           _kwargs61807_)
                                          (let ((__tmp64964
                                                 (let ((__tmp64965
                                                        (let ((__tmp64966
                                                               (let ((__tmp64971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64972
                                     (let ()
                                       (declare (not safe))
                                       (cons _main61803_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp64972)))
                             (__tmp64967
                              (let ((__tmp64969
                                     (let ((__tmp64970
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp64970)))
                                    (__tmp64968
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs61806_
                                               _xargs61814_))))
                                (declare (not safe))
                                (cons __tmp64969 __tmp64968))))
                         (declare (not safe))
                         (cons __tmp64971 __tmp64967))))
                  (declare (not safe))
                  (cons '%#call __tmp64966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp64965
                                                    _stx61764_))))
                                            (declare (not safe))
                                            (gxc#compile-e __tmp64964)))
                                        (let* ((_kwt61818_
                                                (make-symbol (gensym '__kwt)))
                                               (_kwvars61821_
                                                (map (lambda (_g64915_)
                                                       (make-symbol
                                                        (gensym '__kw)))
                                                     _kwargs61807_))
                                               (_kwbind61826_
                                                (map (lambda (_kw61823_
                                                              _kwvar61824_)
                                                       (let ((__tmp64918
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar61824_ '())))
                     (__tmp64916
                      (let ((__tmp64917 (cdr _kw61823_)))
                        (declare (not safe))
                        (cons __tmp64917 '()))))
                 (declare (not safe))
                 (cons __tmp64918 __tmp64916)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs61807_
                                                     _kwvars61821_))
                                               (_kwset61831_
                                                (map (lambda (_kw61828_
                                                              _kwvar61829_)
                                                       (let ((__tmp64919
                                                              (let ((__tmp64920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64928
                                    (let ((__tmp64929
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt61818_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp64929)))
                                   (__tmp64921
                                    (let ((__tmp64925
                                           (let ((__tmp64926
                                                  (let ((__tmp64927
                                                         (car _kw61828_)))
                                                    (declare (not safe))
                                                    (cons __tmp64927 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp64926)))
                                          (__tmp64922
                                           (let ((__tmp64923
                                                  (let ((__tmp64924
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar61829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp64924))))
                                             (declare (not safe))
                                             (cons __tmp64923 '()))))
                                      (declare (not safe))
                                      (cons __tmp64925 __tmp64922))))
                               (declare (not safe))
                               (cons __tmp64928 __tmp64921))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp64920))))
                 (declare (not safe))
                 (cons '%#call __tmp64919)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs61807_
                                                     _kwvars61821_))
                                               (_xkwargs61836_
                                                (map (lambda (_kw61833_
                                                              _kwvar61834_)
                                                       (let ((__tmp64932
                                                              (car _kw61833_))
                                                             (__tmp64930
                                                              (let ((__tmp64931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar61834_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp64931))))
                 (declare (not safe))
                 (cons __tmp64932 __tmp64930)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs61807_
                                                     _kwvars61821_))
                                               (_xargs61843_
                                                (map (lambda (_key61838_)
                                                       (let ((_$e61840_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key61838_ _xkwargs61836_))))
                 (if _$e61840_ (values _$e61840_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys61804_)))
                                          (let ((__tmp64933
                                                 (let ((__tmp64934
                                                        (let ((__tmp64935
                                                               (let ((__tmp64936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64937
                                     (let ((__tmp64938
                                            (let ((__tmp64952
                                                   (let ((__tmp64953
                                                          (let ((__tmp64963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt61818_ '())))
                        (__tmp64954
                         (let ((__tmp64955
                                (let ((__tmp64956
                                       (let ((__tmp64957
                                              (let ((__tmp64958
                                                     (let ((__tmp64959
                                                            (let ((__tmp64960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64961
                                  (let ((__tmp64962 (length _kwargs61807_)))
                                    (declare (not safe))
                                    (cons __tmp64962 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp64961))))
                      (declare (not safe))
                      (cons __tmp64960 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp64959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp64958))))
                                         (declare (not safe))
                                         (cons '%#call __tmp64957))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp64956
                                   _stx61764_))))
                           (declare (not safe))
                           (cons __tmp64955 '()))))
                    (declare (not safe))
                    (cons __tmp64963 __tmp64954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64953 '())))
                                                  (__tmp64939
                                                   (let ((__tmp64940
                                                          (let ((__tmp64941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64942
                                (let ((__tmp64943
                                       (let ((__tmp64944
                                              (let ((__tmp64945
                                                     (let ((__tmp64950
                                                            (let ((__tmp64951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main61803_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp64951)))
                   (__tmp64946
                    (let ((__tmp64948
                           (let ((__tmp64949
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt61818_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64949)))
                          (__tmp64947
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs61806_ _xargs61843_))))
                      (declare (not safe))
                      (cons __tmp64948 __tmp64947))))
               (declare (not safe))
               (cons __tmp64950 __tmp64946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp64945))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp64944
                                          _stx61764_))))
                                  (declare (not safe))
                                  (cons __tmp64943 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp64942 _kwset61831_))))
                    (declare (not safe))
                    (cons '%#begin __tmp64941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64940 '()))))
                                              (declare (not safe))
                                              (cons __tmp64952 __tmp64939))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp64938))))
                                (declare (not safe))
                                (cons __tmp64937 '()))))
                         (declare (not safe))
                         (cons _kwbind61826_ __tmp64936))))
                  (declare (not safe))
                  (cons '%#let-values __tmp64935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp64934
                                                    _stx61764_))))
                                            (declare (not safe))
                                            (gxc#compile-e
                                             __tmp64933)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g6178361792_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e6178861849_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6178361792_ '1)))
                               (_e6178961852_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6178361792_ '2)))
                               (_keys61855_ _e6178961852_)
                               (_e6179061857_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6178361792_ '3)))
                               (_main61860_ _e6179061857_))
                          (declare (not safe))
                          (_K6178761846_ _main61860_ _keys61855_))
                        (let () (declare (not safe)) (_else6178561800_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6176661774_ 'gxc#!kw-lambda::t))
              (let* ((_e6177061865_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6176661774_ '1)))
                     (_e6177161868_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6176661774_ '2)))
                     (_table61871_ _e6177161868_)
                     (_e6177261873_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6176661774_ '3)))
                     (_dispatch61876_ _e6177261873_))
                (declare (not safe))
                (_K6176961862_ _dispatch61876_ _table61871_))
              (let () (declare (not safe)) (_E6176861778_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx61376_ _args61377_)
        (let _lp61379_ ((_rest61381_ _args61377_)
                        (_pargs61382_ '())
                        (_kwargs61383_ '()))
          (let* ((___stx6467364674_ _rest61381_)
                 (_g6138961441_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx6467364674_)))))
            (let ((___kont6467564676_
                   (lambda (_L61620_ _L61621_)
                     (let ((__tmp64973
                            (let ()
                              (declare (not safe))
                              (cons _L61621_ _pargs61382_))))
                       (declare (not safe))
                       (_lp61379_ _L61620_ __tmp64973 _kwargs61383_))))
                  (___kont6467764678_
                   (lambda (_L61566_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L61566_ _pargs61382_))
                             (reverse _kwargs61383_))))
                  (___kont6467964680_
                   (lambda (_L61513_ _L61514_ _L61515_)
                     (let ((_kw61532_
                            (let () (declare (not safe)) (gx#stx-e _L61515_))))
                       (if (assq _kw61532_ _kwargs61383_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx61376_
                              _kw61532_))
                           (let ((__tmp64974
                                  (let ((__tmp64975
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw61532_ _L61514_))))
                                    (declare (not safe))
                                    (cons __tmp64975 _kwargs61383_))))
                             (declare (not safe))
                             (_lp61379_ _L61513_ _pargs61382_ __tmp64974))))))
                  (___kont6468164682_
                   (lambda (_L61461_ _L61462_)
                     (let ((__tmp64976
                            (let ()
                              (declare (not safe))
                              (cons _L61462_ _pargs61382_))))
                       (declare (not safe))
                       (_lp61379_ _L61461_ __tmp64976 _kwargs61383_))))
                  (___kont6468364684_
                   (lambda ()
                     (values (reverse _pargs61382_) (reverse _kwargs61383_)))))
              (let* ((_g6138861448_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx6467364674_))
                            (___kont6468364684_)
                            (let () (declare (not safe)) (_g6138961441_)))))
                     (___match6478064781_
                      (lambda (_e6142261481_
                               _hd6142161484_
                               _tl6142061486_
                               _e6142561489_
                               _hd6142461492_
                               _tl6142361494_
                               _e6142861497_
                               _hd6142761500_
                               _tl6142661502_
                               _e6143161505_
                               _hd6143061508_
                               _tl6142961510_)
                        (let ((_L61513_ _tl6142961510_)
                              (_L61514_ _hd6143061508_)
                              (_L61515_ _hd6142761500_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L61515_))
                              (___kont6467964680_ _L61513_ _L61514_ _L61515_)
                              (___kont6468164682_
                               _tl6142061486_
                               _hd6142161484_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6467364674_))
                    (let ((_e6139561585_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6467364674_))))
                      (let ((_tl6139361590_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6139561585_)))
                            (_hd6139461588_
                             (let ()
                               (declare (not safe))
                               (##car _e6139561585_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd6139461588_))
                            (let ((_e6139861593_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd6139461588_))))
                              (let ((_tl6139661598_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6139861593_)))
                                    (_hd6139761596_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6139861593_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd6139761596_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd6139761596_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl6139661598_))
                                            (let ((_e6140161601_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl6139661598_))))
                                              (let ((_tl6139961606_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6140161601_)))
                                                    (_hd6140061604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6140161601_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd6140061604_))
                                                    (let ((_e6140261609_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd6140061604_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e6140261609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl6139961606_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6139361590_))
                          (let ((_e6140561612_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6139361590_))))
                            (let ((_tl6140361617_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6140561612_)))
                                  (_hd6140461615_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6140561612_))))
                              (___kont6467564676_
                               _tl6140361617_
                               _hd6140461615_)))
                          (___kont6468164682_ _tl6139361590_ _hd6139461588_))
                      (___kont6468164682_ _tl6139361590_ _hd6139461588_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e6140261609_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6139961606_))
                          (___kont6467764678_ _tl6139361590_)
                          (___kont6468164682_ _tl6139361590_ _hd6139461588_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6139961606_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6139361590_))
                              (let ((_e6143161505_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6139361590_))))
                                (let ((_tl6142961510_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6143161505_)))
                                      (_hd6143061508_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6143161505_))))
                                  (___match6478064781_
                                   _e6139561585_
                                   _hd6139461588_
                                   _tl6139361590_
                                   _e6139861593_
                                   _hd6139761596_
                                   _tl6139661598_
                                   _e6140161601_
                                   _hd6140061604_
                                   _tl6139961606_
                                   _e6143161505_
                                   _hd6143061508_
                                   _tl6142961510_)))
                              (___kont6468164682_
                               _tl6139361590_
                               _hd6139461588_))
                          (___kont6468164682_
                           _tl6139361590_
                           _hd6139461588_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6139961606_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl6139361590_))
                                                            (let ((_e6143161505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl6139361590_))))
                      (let ((_tl6142961510_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6143161505_)))
                            (_hd6143061508_
                             (let ()
                               (declare (not safe))
                               (##car _e6143161505_))))
                        (___match6478064781_
                         _e6139561585_
                         _hd6139461588_
                         _tl6139361590_
                         _e6139861593_
                         _hd6139761596_
                         _tl6139661598_
                         _e6140161601_
                         _hd6140061604_
                         _tl6139961606_
                         _e6143161505_
                         _hd6143061508_
                         _tl6142961510_)))
                    (___kont6468164682_ _tl6139361590_ _hd6139461588_))
                (___kont6468164682_ _tl6139361590_ _hd6139461588_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont6468164682_
                                             _tl6139361590_
                                             _hd6139461588_))
                                        (___kont6468164682_
                                         _tl6139361590_
                                         _hd6139461588_))
                                    (___kont6468164682_
                                     _tl6139361590_
                                     _hd6139461588_))))
                            (___kont6468164682_
                             _tl6139361590_
                             _hd6139461588_))))
                    (let () (declare (not safe)) (_g6138861448_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self61372_ _stx61373_ _args61374_)
        (let () (declare (not safe)) (gxc#xform-call% _stx61373_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
