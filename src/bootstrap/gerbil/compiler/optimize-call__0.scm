(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1695392697)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl64125_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp64510 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl64125_ __tmp64510))
           (let ()
             (declare (not safe))
             (table-set! _tbl64125_ '%#call gxc#optimize-call%))
           _tbl64125_))))
    (define gxc#apply-optimize-call
      (lambda (_stx64118_ . _args64120_)
        (let ((__tmp64512
               (lambda () (apply gxc#compile-e _stx64118_ _args64120_)))
              (__tmp64511 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp64512
           gxc#current-compile-methods
           __tmp64511))))
    (define gxc#optimize-call%
      (lambda (_stx63973_)
        (let* ((___stx6414664147_ _stx63973_)
               (_g6397663996_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6414664147_)))))
          (let ((___kont6414864149_
                 (lambda (_L64040_ _L64041_)
                   (let* ((_rator-id64059_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L64041_)))
                          (_rator-type64061_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id64059_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type64061_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp64513
                                  (##structure-ref
                                   _rator-type64061_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id64059_
                              '" => "
                              _rator-type64061_
                              '" "
                              __tmp64513))
                           (let ((_optimized64064_
                                  (let ((__method64508
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type64061_
                                            'optimize-call))))
                                    (if __method64508
                                        (__method64508
                                         _rator-type64061_
                                         _stx63973_
                                         _L64040_)
                                        (error '"Missing method"
                                               _rator-type64061_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type64061_))
                                 _optimized64064_
                                 (let* ((___stx6412864129_ _optimized64064_)
                                        (_g6406764077_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6412864129_)))))
                                   (let ((___kont6413064131_
                                          (lambda (_L64097_)
                                            (let ((__tmp64514
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L64097_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp64514
                                               _stx63973_))))
                                         (___kont6413264133_
                                          (lambda () _optimized64064_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6412864129_))
                                         (let ((_e6407264089_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6412864129_))))
                                           (let ((_tl6407064094_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6407264089_)))
                                                 (_hd6407164092_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6407264089_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd6407164092_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd6407164092_))
                                                     (___kont6413064131_
                                                      _tl6407064094_)
                                                     (___kont6413264133_))
                                                 (___kont6413264133_))))
                                         (___kont6413264133_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type64061_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63973_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal application; not a procedure"
                                _stx63973_
                                _rator-type64061_)))))))
                (___kont6415064151_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx63973_)))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx6414664147_))
                (let ((_e6398264008_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx6414664147_))))
                  (let ((_tl6398064013_
                         (let () (declare (not safe)) (##cdr _e6398264008_)))
                        (_hd6398164011_
                         (let () (declare (not safe)) (##car _e6398264008_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl6398064013_))
                        (let ((_e6398564016_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl6398064013_))))
                          (let ((_tl6398364021_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6398564016_)))
                                (_hd6398464019_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6398564016_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd6398464019_))
                                (let ((_e6398864024_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd6398464019_))))
                                  (let ((_tl6398664029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6398864024_)))
                                        (_hd6398764027_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6398864024_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd6398764027_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd6398764027_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6398664029_))
                                                (let ((_e6399164032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6398664029_))))
                                                  (let ((_tl6398964037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6399164032_)))
                                                        (_hd6399064035_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6399164032_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6398964037_))
                                                        (___kont6414864149_
                                                         _tl6398364021_
                                                         _hd6399064035_)
                                                        (___kont6415064151_))))
                                                (___kont6415064151_))
                                            (___kont6415064151_))
                                        (___kont6415064151_))))
                                (___kont6415064151_))))
                        (___kont6415064151_))))
                (___kont6415064151_))))))
    (define gxc#!struct-pred::optimize-call
      (lambda (_self63827_ _stx63828_ _args63829_)
        (let* ((_self6383063836_ _self63827_)
               (_E6383263840_
                (lambda () (error '"No clause matching" _self6383063836_)))
               (_K6383363965_
                (lambda (_struct-t63843_)
                  (let* ((_struct-type63845_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63843_)))
                         (_struct-type6384663860_ _struct-type63845_)
                         (_else6384963868_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx63828_
                               _struct-t63843_
                               _struct-type63845_)))))
                    (let ((_K6385263940_
                           (lambda (_plist63879_ _struct-type-id63880_)
                             (let* ((___stx6418464185_ _args63829_)
                                    (_g6388363893_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6418464185_)))))
                               (let ((___kont6418664187_
                                      (lambda (_L63913_)
                                        (let ((_expr63934_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e _L63913_)))
                                              (_op63935_
                                               (if (and _plist63879_
                                                        (let ()
                                                          (declare (not safe))
                                                          (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _plist63879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '%#struct-direct-instance?
                                                   '%#struct-instance?)))
                                          (let ((__tmp64515
                                                 (let ((__tmp64516
                                                        (let ((__tmp64518
                                                               (let ((__tmp64519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _struct-type-id63880_ '()))))
                         (declare (not safe))
                         (cons '%#quote __tmp64519)))
                      (__tmp64517
                       (let () (declare (not safe)) (cons _expr63934_ '()))))
                  (declare (not safe))
                  (cons __tmp64518 __tmp64517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _op63935_
                                                         __tmp64516))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp64515
                                             _stx63828_)))))
                                     (___kont6418864189_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal struct predicate application"
                                           _stx63828_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6418464185_))
                                     (let ((_e6388863905_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6418464185_))))
                                       (let ((_tl6388663910_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6388863905_)))
                                             (_hd6388763908_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6388863905_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6388663910_))
                                             (___kont6418664187_
                                              _hd6388763908_)
                                             (___kont6418864189_))))
                                     (___kont6418864189_))))))
                          (_K6385163873_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63828_)))))
                      (let ((_try-match6384863876_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6384663860_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6385163873_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6384963868_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6384663860_
                               'gxc#!struct-type::t))
                            (let* ((_e6385363943_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384663860_
                                       '1)))
                                   (_e6385463948_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384663860_
                                       '2)))
                                   (_e6385563951_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384663860_
                                       '3)))
                                   (_e6385663954_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384663860_
                                       '4)))
                                   (_e6385763957_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384663860_
                                       '5)))
                                   (_e6385863960_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384663860_
                                       '6))))
                              (let ((_struct-type-id63946_ _e6385363943_)
                                    (_plist63963_ _e6385863960_))
                                (let ()
                                  (declare (not safe))
                                  (_K6385263940_
                                   _plist63963_
                                   _struct-type-id63946_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6384863876_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6383063836_
                 'gxc#!struct-pred::t))
              (let* ((_e6383463968_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6383063836_ '1)))
                     (_struct-t63971_ _e6383463968_))
                (declare (not safe))
                (_K6383363965_ _struct-t63971_))
              (let () (declare (not safe)) (_E6383263840_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'optimize-call
       gxc#!struct-pred::optimize-call
       '#f))
    (define gxc#!struct-cons::optimize-call
      (lambda (_self63601_ _stx63602_ _args63603_)
        (let* ((_self6360463610_ _self63601_)
               (_E6360663614_
                (lambda () (error '"No clause matching" _self6360463610_)))
               (_K6360763697_
                (lambda (_struct-t63617_)
                  (let* ((_struct-type63619_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63617_)))
                         (_struct-type6362063633_ _struct-type63619_)
                         (_else6362363641_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct constructor application; not a struct type"
                               _stx63602_
                               _struct-t63617_
                               _struct-type63619_)))))
                    (let ((_K6362663671_
                           (lambda (_ctor63652_
                                    _xfields63653_
                                    _fields63654_
                                    _type-id63655_)
                             (let* ((_args63657_
                                     (map gxc#compile-e _args63603_))
                                    (_$e63659_
                                     (if _ctor63652_
                                         (if _xfields63653_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!struct-type-lookup-method
                                                _struct-type63619_
                                                _ctor63652_))
                                             '#f)
                                         '#f)))
                               (if _$e63659_
                                   ((lambda (_kons63662_)
                                      (let* ((_$obj63664_
                                              (make-symbol (gensym '__obj)))
                                             (__tmp64534
                                              (let ((__tmp64535
                                                     (let ((__tmp64551
                                                            (let ((__tmp64552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64565
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj63664_ '())))
                                 (__tmp64553
                                  (let ((__tmp64554
                                         (let ((__tmp64555
                                                (let ((__tmp64563
                                                       (let ((__tmp64564
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp64564)))
              (__tmp64556
               (let ((__tmp64561
                      (let ((__tmp64562
                             (let ()
                               (declare (not safe))
                               (cons _struct-t63617_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp64562)))
                     (__tmp64557
                      (let ((__tmp64558
                             (let ((__tmp64559
                                    (let ((__tmp64560
                                           (fx+ _fields63654_ _xfields63653_)))
                                      (declare (not safe))
                                      (cons __tmp64560 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp64559))))
                        (declare (not safe))
                        (cons __tmp64558 '()))))
                 (declare (not safe))
                 (cons __tmp64561 __tmp64557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64563
                                                        __tmp64556))))
                                           (declare (not safe))
                                           (cons '%#call __tmp64555))))
                                    (declare (not safe))
                                    (cons __tmp64554 '()))))
                             (declare (not safe))
                             (cons __tmp64565 __tmp64553))))
                      (declare (not safe))
                      (cons __tmp64552 '())))
                   (__tmp64536
                    (let ((__tmp64537
                           (let ((__tmp64538
                                  (let ((__tmp64542
                                         (let ((__tmp64543
                                                (let ((__tmp64544
                                                       (let ((__tmp64545
                                                              (let ((__tmp64549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64550
                                    (let ()
                                      (declare (not safe))
                                      (cons _kons63662_ '()))))
                               (declare (not safe))
                               (cons '%#ref __tmp64550)))
                            (__tmp64546
                             (let ((__tmp64547
                                    (let ((__tmp64548
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj63664_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp64548))))
                               (declare (not safe))
                               (cons __tmp64547 _args63657_))))
                        (declare (not safe))
                        (cons __tmp64549 __tmp64546))))
                 (declare (not safe))
                 (cons '%#call __tmp64545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp64544
                                                   _stx63602_))))
                                           (declare (not safe))
                                           (gxc#compile-e __tmp64543)))
                                        (__tmp64539
                                         (let ((__tmp64540
                                                (let ((__tmp64541
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj63664_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp64541))))
                                           (declare (not safe))
                                           (cons __tmp64540 '()))))
                                    (declare (not safe))
                                    (cons __tmp64542 __tmp64539))))
                             (declare (not safe))
                             (cons '%#begin __tmp64538))))
                      (declare (not safe))
                      (cons __tmp64537 '()))))
               (declare (not safe))
               (cons __tmp64551 __tmp64536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp64535))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp64534
                                         _stx63602_)))
                                    _$e63659_)
                                   (if (or _ctor63652_
                                           (let ()
                                             (declare (not safe))
                                             (not _xfields63653_)))
                                       (let ((__tmp64527
                                              (let ((__tmp64528
                                                     (let ((__tmp64532
                                                            (let ((__tmp64533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons 'make-struct-instance '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp64533)))
                   (__tmp64529
                    (let ((__tmp64530
                           (let ((__tmp64531
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63617_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64531))))
                      (declare (not safe))
                      (cons __tmp64530 _args63657_))))
               (declare (not safe))
               (cons __tmp64532 __tmp64529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp64528))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp64527
                                          _stx63602_))
                                       (let ((_arity63669_
                                              (fx+ _fields63654_
                                                   _xfields63653_)))
                                         (if (fx= _arity63669_
                                                  (length _args63657_))
                                             (let ((__tmp64520
                                                    (let ((__tmp64521
                                                           (let ((__tmp64525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp64526
                                 (let ()
                                   (declare (not safe))
                                   (cons '##structure '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp64526)))
                         (__tmp64522
                          (let ((__tmp64523
                                 (let ((__tmp64524
                                        (let ()
                                          (declare (not safe))
                                          (cons _struct-t63617_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp64524))))
                            (declare (not safe))
                            (cons __tmp64523 _args63657_))))
                     (declare (not safe))
                     (cons __tmp64525 __tmp64522))))
              (declare (not safe))
              (cons '%#call __tmp64521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp64520
                                                _stx63602_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"Illegal struct constructor application; arity mismatch"
                                                _stx63602_
                                                _struct-t63617_
                                                _arity63669_)))))))))
                          (_K6362563646_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline struct constructor; unknown struct type "
                                _struct-t63617_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63602_)))))
                      (let ((_try-match6362263649_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6362063633_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6362563646_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6362363641_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6362063633_
                               'gxc#!struct-type::t))
                            (let* ((_e6362763674_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362063633_
                                       '1)))
                                   (_e6362863679_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362063633_
                                       '2)))
                                   (_e6362963682_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362063633_
                                       '3)))
                                   (_e6363063687_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362063633_
                                       '4)))
                                   (_e6363163692_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362063633_
                                       '5))))
                              (let ((_type-id63677_ _e6362763674_)
                                    (_fields63685_ _e6362963682_)
                                    (_xfields63690_ _e6363063687_)
                                    (_ctor63695_ _e6363163692_))
                                (let ()
                                  (declare (not safe))
                                  (_K6362663671_
                                   _ctor63695_
                                   _xfields63690_
                                   _fields63685_
                                   _type-id63677_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6362263649_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6360463610_
                 'gxc#!struct-cons::t))
              (let* ((_e6360863700_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6360463610_ '1)))
                     (_struct-t63703_ _e6360863700_))
                (declare (not safe))
                (_K6360763697_ _struct-t63703_))
              (let () (declare (not safe)) (_E6360663614_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'optimize-call
       gxc#!struct-cons::optimize-call
       '#f))
    (define gxc#!struct-getf::optimize-call
      (lambda (_self63312_ _stx63313_ _args63314_)
        (let* ((_self6331563323_ _self63312_)
               (_E6331763327_
                (lambda () (error '"No clause matching" _self6331563323_)))
               (_K6331863461_
                (lambda (_unchecked?63330_ _off63331_ _struct-t63332_)
                  (let* ((_struct-type63334_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63332_)))
                         (_struct-type6333563349_ _struct-type63334_)
                         (_else6333863357_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx63313_
                               _struct-t63332_
                               _struct-type63334_)))))
                    (let ((_K6334163432_
                           (lambda (_plist63368_
                                    _xfields63369_
                                    _fields63370_
                                    _struct-type-id63371_)
                             (if _xfields63369_
                                 (let* ((___stx6423264233_ _args63314_)
                                        (_g6337463384_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6423264233_)))))
                                   (let ((___kont6423464235_
                                          (lambda (_L63404_)
                                            (let ((_expr63425_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63404_)))
                                                  (_off63426_
                                                   (fx+ _off63331_
                                                        _xfields63369_
                                                        '1))
                                                  (_op63427_
                                                   (if _unchecked?63330_
                                                       '%#struct-unchecked-ref
                                                       (if (and _plist63368_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist63368_)))
                   '%#struct-direct-ref
                   '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp64566
                                                     (let ((__tmp64567
                                                            (let ((__tmp64572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64573
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63332_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64573)))
                          (__tmp64568
                           (let ((__tmp64570
                                  (let ((__tmp64571
                                         (let ()
                                           (declare (not safe))
                                           (cons _off63426_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp64571)))
                                 (__tmp64569
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr63425_ '()))))
                             (declare (not safe))
                             (cons __tmp64570 __tmp64569))))
                      (declare (not safe))
                      (cons __tmp64572 __tmp64568))))
               (declare (not safe))
               (cons _op63427_ __tmp64567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64566
                                                 _stx63313_)))))
                                         (___kont6423664237_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct accessor application"
                                               _stx63313_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6423264233_))
                                         (let ((_e6337963396_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6423264233_))))
                                           (let ((_tl6337763401_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6337963396_)))
                                                 (_hd6337863399_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6337963396_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _tl6337763401_))
                                                 (___kont6423464235_
                                                  _hd6337863399_)
                                                 (___kont6423664237_))))
                                         (___kont6423664237_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-getf: incomplete struct "
                                      _struct-type-id63371_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx63313_))))))
                          (_K6334063362_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63313_)))))
                      (let ((_try-match6333763365_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6333563349_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6334063362_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6333863357_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6333563349_
                               'gxc#!struct-type::t))
                            (let* ((_e6334263435_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333563349_
                                       '1)))
                                   (_e6334363440_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333563349_
                                       '2)))
                                   (_e6334463443_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333563349_
                                       '3)))
                                   (_e6334563448_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333563349_
                                       '4)))
                                   (_e6334663453_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333563349_
                                       '5)))
                                   (_e6334763456_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333563349_
                                       '6))))
                              (let ((_struct-type-id63438_ _e6334263435_)
                                    (_fields63446_ _e6334463443_)
                                    (_xfields63451_ _e6334563448_)
                                    (_plist63459_ _e6334763456_))
                                (let ()
                                  (declare (not safe))
                                  (_K6334163432_
                                   _plist63459_
                                   _xfields63451_
                                   _fields63446_
                                   _struct-type-id63438_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6333763365_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6331563323_
                 'gxc#!struct-getf::t))
              (let* ((_e6331963464_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6331563323_ '1)))
                     (_struct-t63467_ _e6331963464_)
                     (_e6332063469_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6331563323_ '2)))
                     (_off63472_ _e6332063469_)
                     (_e6332163474_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6331563323_ '3)))
                     (_unchecked?63477_ _e6332163474_))
                (declare (not safe))
                (_K6331863461_ _unchecked?63477_ _off63472_ _struct-t63467_))
              (let () (declare (not safe)) (_E6331763327_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'optimize-call
       gxc#!struct-getf::optimize-call
       '#f))
    (define gxc#!struct-setf::optimize-call
      (lambda (_self63006_ _stx63007_ _args63008_)
        (let* ((_self6300963017_ _self63006_)
               (_E6301163021_
                (lambda () (error '"No clause matching" _self6300963017_)))
               (_K6301263172_
                (lambda (_unchecked?63024_ _off63025_ _struct-t63026_)
                  (let* ((_struct-type63028_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63026_)))
                         (_struct-type6302963043_ _struct-type63028_)
                         (_else6303263051_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx63007_
                               _struct-t63026_
                               _struct-type63028_)))))
                    (let ((_K6303563143_
                           (lambda (_plist63062_
                                    _xfields63063_
                                    _fields63064_
                                    _struct-type-id63065_)
                             (if _xfields63063_
                                 (let* ((___stx6426564266_ _args63008_)
                                        (_g6306863082_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6426564266_)))))
                                   (let ((___kont6426764268_
                                          (lambda (_L63110_ _L63111_)
                                            (let ((_expr63135_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63111_)))
                                                  (_val63136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63110_)))
                                                  (_off63137_
                                                   (fx+ _off63025_
                                                        _xfields63063_
                                                        '1))
                                                  (_op63138_
                                                   (if _unchecked?63024_
                                                       '%#struct-unchecked-set!
                                                       (if (and _plist63062_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist63062_)))
                   '%#struct-direct-set!
                   '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp64574
                                                     (let ((__tmp64575
                                                            (let ((__tmp64581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64582
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63026_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64582)))
                          (__tmp64576
                           (let ((__tmp64579
                                  (let ((__tmp64580
                                         (let ()
                                           (declare (not safe))
                                           (cons _off63137_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp64580)))
                                 (__tmp64577
                                  (let ((__tmp64578
                                         (let ()
                                           (declare (not safe))
                                           (cons _val63136_ '()))))
                                    (declare (not safe))
                                    (cons _expr63135_ __tmp64578))))
                             (declare (not safe))
                             (cons __tmp64579 __tmp64577))))
                      (declare (not safe))
                      (cons __tmp64581 __tmp64576))))
               (declare (not safe))
               (cons _op63138_ __tmp64575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64574
                                                 _stx63007_)))))
                                         (___kont6426964270_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct mutator application"
                                               _stx63007_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6426564266_))
                                         (let ((_e6307463094_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6426564266_))))
                                           (let ((_tl6307263099_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6307463094_)))
                                                 (_hd6307363097_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6307463094_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl6307263099_))
                                                 (let ((_e6307763102_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl6307263099_))))
                                                   (let ((_tl6307563107_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e6307763102_)))
                                                         (_hd6307663105_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e6307763102_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl6307563107_))
                                                         (___kont6426764268_
                                                          _hd6307663105_
                                                          _hd6307363097_)
                                                         (___kont6426964270_))))
                                                 (___kont6426964270_))))
                                         (___kont6426964270_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-setf: incomplete struct "
                                      _struct-type-id63065_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx63007_))))))
                          (_K6303463056_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63007_)))))
                      (let ((_try-match6303163059_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6302963043_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6303463056_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6303263051_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6302963043_
                               'gxc#!struct-type::t))
                            (let* ((_e6303663146_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6302963043_
                                       '1)))
                                   (_e6303763151_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6302963043_
                                       '2)))
                                   (_e6303863154_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6302963043_
                                       '3)))
                                   (_e6303963159_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6302963043_
                                       '4)))
                                   (_e6304063164_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6302963043_
                                       '5)))
                                   (_e6304163167_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6302963043_
                                       '6))))
                              (let ((_struct-type-id63149_ _e6303663146_)
                                    (_fields63157_ _e6303863154_)
                                    (_xfields63162_ _e6303963159_)
                                    (_plist63170_ _e6304163167_))
                                (let ()
                                  (declare (not safe))
                                  (_K6303563143_
                                   _plist63170_
                                   _xfields63162_
                                   _fields63157_
                                   _struct-type-id63149_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6303163059_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6300963017_
                 'gxc#!struct-setf::t))
              (let* ((_e6301363175_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6300963017_ '1)))
                     (_struct-t63178_ _e6301363175_)
                     (_e6301463180_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6300963017_ '2)))
                     (_off63183_ _e6301463180_)
                     (_e6301563185_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6300963017_ '3)))
                     (_unchecked?63188_ _e6301563185_))
                (declare (not safe))
                (_K6301263172_ _unchecked?63188_ _off63183_ _struct-t63178_))
              (let () (declare (not safe)) (_E6301163021_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'optimize-call
       gxc#!struct-setf::optimize-call
       '#f))
    (define gxc#!class-pred::optimize-call
      (lambda (_self62734_ _stx62735_ _args62736_)
        (let* ((_self6273762743_ _self62734_)
               (_E6273962747_
                (lambda () (error '"No clause matching" _self6273762743_)))
               (_K6274062876_
                (lambda (_class-t62750_)
                  (let* ((_class-type62752_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t62750_)))
                         (_class-type6275362768_ _class-type62752_)
                         (_else6275662776_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal class predicate application; not a class type"
                               _stx62735_
                               _class-t62750_
                               _class-type62752_)))))
                    (let ((_K6275962848_
                           (lambda (_plist62787_ _class-type-id62788_)
                             (let* ((___stx6430464305_ _args62736_)
                                    (_g6279162801_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6430464305_)))))
                               (let ((___kont6430664307_
                                      (lambda (_L62821_)
                                        (let ((_expr62842_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e _L62821_)))
                                              (_final?62843_
                                               (if _plist62787_
                                                   (let ()
                                                     (declare (not safe))
                                                     (assgetq 'final:
                                                              _plist62787_))
                                                   '#f)))
                                          (if _final?62843_
                                              (let ((__tmp64591
                                                     (let ((__tmp64592
                                                            (let ((__tmp64594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64595
                                  (let ()
                                    (declare (not safe))
                                    (cons _class-type-id62788_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp64595)))
                          (__tmp64593
                           (let ()
                             (declare (not safe))
                             (cons _expr62842_ '()))))
                      (declare (not safe))
                      (cons __tmp64594 __tmp64593))))
               (declare (not safe))
               (cons '%#struct-direct-instance? __tmp64592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64591
                                                 _stx62735_))
                                              (let ((__tmp64583
                                                     (let ((__tmp64584
                                                            (let ((__tmp64589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64590
                                  (let ()
                                    (declare (not safe))
                                    (cons 'class-instance? '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64590)))
                          (__tmp64585
                           (let ((__tmp64587
                                  (let ((__tmp64588
                                         (let ()
                                           (declare (not safe))
                                           (cons _class-t62750_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp64588)))
                                 (__tmp64586
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr62842_ '()))))
                             (declare (not safe))
                             (cons __tmp64587 __tmp64586))))
                      (declare (not safe))
                      (cons __tmp64589 __tmp64585))))
               (declare (not safe))
               (cons '%#call __tmp64584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64583
                                                 _stx62735_))))))
                                     (___kont6430864309_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal class predicate application"
                                           _stx62735_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6430464305_))
                                     (let ((_e6279662813_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6430464305_))))
                                       (let ((_tl6279462818_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6279662813_)))
                                             (_hd6279562816_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6279662813_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6279462818_))
                                             (___kont6430664307_
                                              _hd6279562816_)
                                             (___kont6430864309_))))
                                     (___kont6430864309_))))))
                          (_K6275862781_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx62735_)))))
                      (let ((_try-match6275562784_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6275362768_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6275862781_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6275662776_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6275362768_
                               'gxc#!class-type::t))
                            (let* ((_e6276062851_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275362768_
                                       '1)))
                                   (_e6276162856_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275362768_
                                       '2)))
                                   (_e6276262859_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275362768_
                                       '3)))
                                   (_e6276362862_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275362768_
                                       '4)))
                                   (_e6276462865_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275362768_
                                       '5)))
                                   (_e6276562868_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275362768_
                                       '6)))
                                   (_e6276662871_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275362768_
                                       '7))))
                              (let ((_class-type-id62854_ _e6276062851_)
                                    (_plist62874_ _e6276662871_))
                                (let ()
                                  (declare (not safe))
                                  (_K6275962848_
                                   _plist62874_
                                   _class-type-id62854_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6275562784_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6273762743_
                 'gxc#!class-pred::t))
              (let* ((_e6274162879_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6273762743_ '1)))
                     (_class-t62882_ _e6274162879_))
                (declare (not safe))
                (_K6274062876_ _class-t62882_))
              (let () (declare (not safe)) (_E6273962747_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'optimize-call
       gxc#!class-pred::optimize-call
       '#f))
    (define gxc#!class-cons::optimize-call
      (lambda (_self62552_ _stx62553_ _args62554_)
        (let* ((_self6255562561_ _self62552_)
               (_E6255762565_
                (lambda () (error '"No clause matching" _self6255562561_)))
               (_K6255862604_
                (lambda (_class-t62568_)
                  (let* ((_class-type62570_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t62568_)))
                         (_class-type6257162579_ _class-type62570_)
                         (_else6257462587_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal class constructor application; not a struct type"
                               _stx62553_
                               _class-t62568_
                               _class-type62570_)))))
                    (let ((_K6257762601_
                           (lambda ()
                             (let* ((_args62599_
                                     (map gxc#compile-e _args62554_))
                                    (__tmp64596
                                     (let ((__tmp64597
                                            (let ((__tmp64601
                                                   (let ((__tmp64602
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-class-instance
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp64602)))
                                                  (__tmp64598
                                                   (let ((__tmp64599
                                                          (let ((__tmp64600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _class-t62568_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp64600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64599
                                                           _args62599_))))
                                              (declare (not safe))
                                              (cons __tmp64601 __tmp64598))))
                                       (declare (not safe))
                                       (cons '%#call __tmp64597))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp64596 _stx62553_))))
                          (_K6257662592_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline class constructor; class struct type "
                                _class-t62568_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx62553_)))))
                      (let ((_try-match6257362595_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6257162579_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6257662592_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6257462587_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6257162579_
                               'gxc#!class-type::t))
                            (let () (declare (not safe)) (_K6257762601_))
                            (let ()
                              (declare (not safe))
                              (_try-match6257362595_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6255562561_
                 'gxc#!class-cons::t))
              (let* ((_e6255962607_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6255562561_ '1)))
                     (_class-t62610_ _e6255962607_))
                (declare (not safe))
                (_K6255862604_ _class-t62610_))
              (let () (declare (not safe)) (_E6255762565_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'optimize-call
       gxc#!class-cons::optimize-call
       '#f))
    (define gxc#!class-getf::optimize-call
      (lambda (_self62339_ _stx62340_ _args62341_)
        (let* ((_self6234262350_ _self62339_)
               (_E6234462354_
                (lambda () (error '"No clause matching" _self6234262350_)))
               (_K6234562412_
                (lambda (_unchecked?62357_ _slot62358_ _class-t62359_)
                  (let* ((___stx6434464345_ _args62341_)
                         (_g6236262372_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6434464345_)))))
                    (let ((___kont6434664347_
                           (lambda (_L62392_)
                             (let* ((_expr62407_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e _L62392_)))
                                    (__tmp64603
                                     (let ((__tmp64604
                                            (let ((__tmp64609
                                                   (let ((__tmp64610
                                                          (let ((__tmp64611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _unchecked?62357_ 'slot-ref 'unchecked-slot-ref)))
                    (declare (not safe))
                    (cons __tmp64611 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp64610)))
                                                  (__tmp64605
                                                   (let ((__tmp64606
                                                          (let ((__tmp64607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64608
                                (let ()
                                  (declare (not safe))
                                  (cons _slot62358_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp64608))))
                    (declare (not safe))
                    (cons __tmp64607 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr62407_
                                                           __tmp64606))))
                                              (declare (not safe))
                                              (cons __tmp64609 __tmp64605))))
                                       (declare (not safe))
                                       (cons '%#call __tmp64604))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp64603 _stx62340_))))
                          (___kont6434864349_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class accessor application"
                                _stx62340_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6434464345_))
                          (let ((_e6236762384_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6434464345_))))
                            (let ((_tl6236562389_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6236762384_)))
                                  (_hd6236662387_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6236762384_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl6236562389_))
                                  (___kont6434664347_ _hd6236662387_)
                                  (___kont6434864349_))))
                          (___kont6434864349_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6234262350_
                 'gxc#!class-getf::t))
              (let* ((_e6234662415_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6234262350_ '1)))
                     (_class-t62418_ _e6234662415_)
                     (_e6234762420_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6234262350_ '2)))
                     (_slot62423_ _e6234762420_)
                     (_e6234862425_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6234262350_ '3)))
                     (_unchecked?62428_ _e6234862425_))
                (declare (not safe))
                (_K6234562412_ _unchecked?62428_ _slot62423_ _class-t62418_))
              (let () (declare (not safe)) (_E6234462354_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'optimize-call
       gxc#!class-getf::optimize-call
       '#f))
    (define gxc#!class-setf::optimize-call
      (lambda (_self62109_ _stx62110_ _args62111_)
        (let* ((_self6211262120_ _self62109_)
               (_E6211462124_
                (lambda () (error '"No clause matching" _self6211262120_)))
               (_K6211562199_
                (lambda (_unchecked?62127_ _slot62128_ _class-t62129_)
                  (let* ((___stx6436064361_ _args62111_)
                         (_g6213262146_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6436064361_)))))
                    (let ((___kont6436264363_
                           (lambda (_L62174_ _L62175_)
                             (let ((_expr62193_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e _L62175_)))
                                   (_val62194_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e _L62174_))))
                               (let ((__tmp64612
                                      (let ((__tmp64613
                                             (let ((__tmp64619
                                                    (let ((__tmp64620
                                                           (let ((__tmp64621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if _unchecked?62127_
                              'unchecked-slot-set!
                              'slot-set!)))
                     (declare (not safe))
                     (cons __tmp64621 '()))))
              (declare (not safe))
              (cons '%#ref __tmp64620)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64614
                                                    (let ((__tmp64615
                                                           (let ((__tmp64617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp64618
                                 (let ()
                                   (declare (not safe))
                                   (cons _slot62128_ '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp64618)))
                         (__tmp64616
                          (let () (declare (not safe)) (cons _val62194_ '()))))
                     (declare (not safe))
                     (cons __tmp64617 __tmp64616))))
              (declare (not safe))
              (cons _expr62193_ __tmp64615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp64619 __tmp64614))))
                                        (declare (not safe))
                                        (cons '%#call __tmp64613))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp64612
                                  _stx62110_)))))
                          (___kont6436464365_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class mutator application"
                                _stx62110_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6436064361_))
                          (let ((_e6213862158_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6436064361_))))
                            (let ((_tl6213662163_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6213862158_)))
                                  (_hd6213762161_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6213862158_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6213662163_))
                                  (let ((_e6214162166_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6213662163_))))
                                    (let ((_tl6213962171_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6214162166_)))
                                          (_hd6214062169_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6214162166_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6213962171_))
                                          (___kont6436264363_
                                           _hd6214062169_
                                           _hd6213762161_)
                                          (___kont6436464365_))))
                                  (___kont6436464365_))))
                          (___kont6436464365_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6211262120_
                 'gxc#!class-setf::t))
              (let* ((_e6211662202_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6211262120_ '1)))
                     (_class-t62205_ _e6211662202_)
                     (_e6211762207_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6211262120_ '2)))
                     (_slot62210_ _e6211762207_)
                     (_e6211862212_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6211262120_ '3)))
                     (_unchecked?62215_ _e6211862212_))
                (declare (not safe))
                (_K6211562199_ _unchecked?62215_ _slot62210_ _class-t62205_))
              (let () (declare (not safe)) (_E6211462124_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'optimize-call
       gxc#!class-setf::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self61943_ _stx61944_ _args61945_)
        (let* ((_self6194661955_ _self61943_)
               (_E6194861959_
                (lambda () (error '"No clause matching" _self6194661955_)))
               (_K6194961966_
                (lambda (_inline61962_ _dispatch61963_ _arity61964_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self61943_ _args61945_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx61944_
                         _arity61964_)))
                  (if _inline61962_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp64627
                               (let ((__tmp64628 (_inline61962_ _stx61944_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp64628
                                  _stx61944_))))
                          (declare (not safe))
                          (gxc#compile-e __tmp64627)))
                      (if _dispatch61963_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch61963_))
                            (let ((__tmp64622
                                   (let ((__tmp64623
                                          (let ((__tmp64624
                                                 (let ((__tmp64625
                                                        (let ((__tmp64626
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch61963_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp64626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64625
                                                         _args61945_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp64624))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp64623
                                      _stx61944_))))
                              (declare (not safe))
                              (gxc#compile-e __tmp64622)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx61944_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6194661955_ 'gxc#!lambda::t))
              (let* ((_e6195061969_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194661955_ '1)))
                     (_e6195161972_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194661955_ '2)))
                     (_arity61975_ _e6195161972_)
                     (_e6195261977_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194661955_ '3)))
                     (_dispatch61980_ _e6195261977_)
                     (_e6195361982_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194661955_ '4)))
                     (_inline61985_ _e6195361982_))
                (declare (not safe))
                (_K6194961966_ _inline61985_ _dispatch61980_ _arity61975_))
              (let () (declare (not safe)) (_E6194861959_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self61782_ _stx61783_ _args61784_)
        (let* ((_self6178561792_ _self61782_)
               (_E6178761796_
                (lambda () (error '"No clause matching" _self6178561792_)))
               (_K6178861810_
                (lambda (_clauses61799_)
                  (let ((_$e61805_
                         (let ((__tmp64629
                                (lambda (_g6180061802_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g6180061802_
                                     _args61784_)))))
                           (declare (not safe))
                           (find __tmp64629 _clauses61799_))))
                    (if _$e61805_
                        ((lambda (_clause61808_)
                           (let ((__method64509
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause61808_
                                     'optimize-call))))
                             (if __method64509
                                 (__method64509
                                  _clause61808_
                                  _stx61783_
                                  _args61784_)
                                 (error '"Missing method"
                                        _clause61808_
                                        'optimize-call))))
                         _$e61805_)
                        (let ((__tmp64630
                               (map gxc#!lambda-arity _clauses61799_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx61783_
                           __tmp64630)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6178561792_
                 'gxc#!case-lambda::t))
              (let* ((_e6178961813_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6178561792_ '1)))
                     (_e6179061816_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6178561792_ '2)))
                     (_clauses61819_ _e6179061816_))
                (declare (not safe))
                (_K6178861810_ _clauses61819_))
              (let () (declare (not safe)) (_E6178761796_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self61596_ _args61597_)
        (let* ((_self6159861605_ _self61596_)
               (_E6160061609_
                (lambda () (error '"No clause matching" _self6159861605_)))
               (_K6160161649_
                (lambda (_arity61612_)
                  (let* ((_arity6161361622_ _arity61612_)
                         (_E6161661626_
                          (lambda ()
                            (error '"No clause matching" _arity6161361622_))))
                    (let ((_K6162061646_
                           (lambda () (fx= (length _args61597_) _arity61612_)))
                          (_K6161761632_
                           (lambda (_arity61630_)
                             (fx>= (length _args61597_) _arity61630_))))
                      (let ((_try-match6161561642_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity6161361622_))
                                   (let ((_tl6161961637_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity6161361622_)))
                                         (_hd6161861635_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity6161361622_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl6161961637_))
                                         (let ((_arity61640_ _hd6161861635_))
                                           (declare (not safe))
                                           (_K6161761632_ _arity61640_))
                                         (let ()
                                           (declare (not safe))
                                           (_E6161661626_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E6161661626_))))))
                        (if (fixnum? _arity6161361622_)
                            (let () (declare (not safe)) (_K6162061646_))
                            (let ()
                              (declare (not safe))
                              (_try-match6161561642_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6159861605_ 'gxc#!lambda::t))
              (let* ((_e6160261652_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6159861605_ '1)))
                     (_e6160361655_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6159861605_ '2)))
                     (_arity61658_ _e6160361655_))
                (declare (not safe))
                (_K6160161649_ _arity61658_))
              (let () (declare (not safe)) (_E6160061609_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self61481_ _stx61482_ _args61483_)
        (let* ((_self6148461492_ _self61481_)
               (_E6148661496_
                (lambda () (error '"No clause matching" _self6148461492_)))
               (_K6148761580_
                (lambda (_dispatch61499_ _table61500_)
                  (let* ((_g6150161510_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch61499_)))
                         (_else6150361518_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch61499_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx61482_))))
                         (_K6150561564_
                          (lambda (_main61521_ _keys61522_)
                            (let ((_g64631_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx61482_
                                      _args61483_))))
                              (begin
                                (let ((_g64632_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64631_)
                                             (##vector-length _g64631_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64632_ 2)))
                                      (error "Context expects 2 values"
                                             _g64632_)))
                                (let ((_pargs61524_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64631_ 0)))
                                      (_kwargs61525_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64631_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main61521_))
                                    (if _table61500_
                                        (let ((_xargs61532_
                                               (map (lambda (_key61527_)
                                                      (let ((_$e61529_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key61527_ _kwargs61525_))))
                (if _$e61529_ (values _$e61529_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys61522_)))
                                          (for-each
                                           (lambda (_kw61534_)
                                             (if (memq (car _kw61534_)
                                                       _keys61522_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx61482_
                                                    _keys61522_
                                                    _kw61534_))))
                                           _kwargs61525_)
                                          (let ((__tmp64682
                                                 (let ((__tmp64683
                                                        (let ((__tmp64684
                                                               (let ((__tmp64689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64690
                                     (let ()
                                       (declare (not safe))
                                       (cons _main61521_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp64690)))
                             (__tmp64685
                              (let ((__tmp64687
                                     (let ((__tmp64688
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp64688)))
                                    (__tmp64686
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs61524_
                                               _xargs61532_))))
                                (declare (not safe))
                                (cons __tmp64687 __tmp64686))))
                         (declare (not safe))
                         (cons __tmp64689 __tmp64685))))
                  (declare (not safe))
                  (cons '%#call __tmp64684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp64683
                                                    _stx61482_))))
                                            (declare (not safe))
                                            (gxc#compile-e __tmp64682)))
                                        (let* ((_kwt61536_
                                                (make-symbol (gensym '__kwt)))
                                               (_kwvars61539_
                                                (map (lambda (_g64633_)
                                                       (make-symbol
                                                        (gensym '__kw)))
                                                     _kwargs61525_))
                                               (_kwbind61544_
                                                (map (lambda (_kw61541_
                                                              _kwvar61542_)
                                                       (let ((__tmp64636
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar61542_ '())))
                     (__tmp64634
                      (let ((__tmp64635 (cdr _kw61541_)))
                        (declare (not safe))
                        (cons __tmp64635 '()))))
                 (declare (not safe))
                 (cons __tmp64636 __tmp64634)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs61525_
                                                     _kwvars61539_))
                                               (_kwset61549_
                                                (map (lambda (_kw61546_
                                                              _kwvar61547_)
                                                       (let ((__tmp64637
                                                              (let ((__tmp64638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64646
                                    (let ((__tmp64647
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt61536_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp64647)))
                                   (__tmp64639
                                    (let ((__tmp64643
                                           (let ((__tmp64644
                                                  (let ((__tmp64645
                                                         (car _kw61546_)))
                                                    (declare (not safe))
                                                    (cons __tmp64645 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp64644)))
                                          (__tmp64640
                                           (let ((__tmp64641
                                                  (let ((__tmp64642
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar61547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp64642))))
                                             (declare (not safe))
                                             (cons __tmp64641 '()))))
                                      (declare (not safe))
                                      (cons __tmp64643 __tmp64640))))
                               (declare (not safe))
                               (cons __tmp64646 __tmp64639))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp64638))))
                 (declare (not safe))
                 (cons '%#call __tmp64637)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs61525_
                                                     _kwvars61539_))
                                               (_xkwargs61554_
                                                (map (lambda (_kw61551_
                                                              _kwvar61552_)
                                                       (let ((__tmp64650
                                                              (car _kw61551_))
                                                             (__tmp64648
                                                              (let ((__tmp64649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar61552_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp64649))))
                 (declare (not safe))
                 (cons __tmp64650 __tmp64648)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs61525_
                                                     _kwvars61539_))
                                               (_xargs61561_
                                                (map (lambda (_key61556_)
                                                       (let ((_$e61558_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key61556_ _xkwargs61554_))))
                 (if _$e61558_ (values _$e61558_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys61522_)))
                                          (let ((__tmp64651
                                                 (let ((__tmp64652
                                                        (let ((__tmp64653
                                                               (let ((__tmp64654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64655
                                     (let ((__tmp64656
                                            (let ((__tmp64670
                                                   (let ((__tmp64671
                                                          (let ((__tmp64681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt61536_ '())))
                        (__tmp64672
                         (let ((__tmp64673
                                (let ((__tmp64674
                                       (let ((__tmp64675
                                              (let ((__tmp64676
                                                     (let ((__tmp64677
                                                            (let ((__tmp64678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64679
                                  (let ((__tmp64680 (length _kwargs61525_)))
                                    (declare (not safe))
                                    (cons __tmp64680 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp64679))))
                      (declare (not safe))
                      (cons __tmp64678 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp64677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp64676))))
                                         (declare (not safe))
                                         (cons '%#call __tmp64675))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp64674
                                   _stx61482_))))
                           (declare (not safe))
                           (cons __tmp64673 '()))))
                    (declare (not safe))
                    (cons __tmp64681 __tmp64672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64671 '())))
                                                  (__tmp64657
                                                   (let ((__tmp64658
                                                          (let ((__tmp64659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64660
                                (let ((__tmp64661
                                       (let ((__tmp64662
                                              (let ((__tmp64663
                                                     (let ((__tmp64668
                                                            (let ((__tmp64669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main61521_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp64669)))
                   (__tmp64664
                    (let ((__tmp64666
                           (let ((__tmp64667
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt61536_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64667)))
                          (__tmp64665
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs61524_ _xargs61561_))))
                      (declare (not safe))
                      (cons __tmp64666 __tmp64665))))
               (declare (not safe))
               (cons __tmp64668 __tmp64664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp64663))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp64662
                                          _stx61482_))))
                                  (declare (not safe))
                                  (cons __tmp64661 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp64660 _kwset61549_))))
                    (declare (not safe))
                    (cons '%#begin __tmp64659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64658 '()))))
                                              (declare (not safe))
                                              (cons __tmp64670 __tmp64657))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp64656))))
                                (declare (not safe))
                                (cons __tmp64655 '()))))
                         (declare (not safe))
                         (cons _kwbind61544_ __tmp64654))))
                  (declare (not safe))
                  (cons '%#let-values __tmp64653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp64652
                                                    _stx61482_))))
                                            (declare (not safe))
                                            (gxc#compile-e
                                             __tmp64651)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g6150161510_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e6150661567_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6150161510_ '1)))
                               (_e6150761570_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6150161510_ '2)))
                               (_keys61573_ _e6150761570_)
                               (_e6150861575_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6150161510_ '3)))
                               (_main61578_ _e6150861575_))
                          (declare (not safe))
                          (_K6150561564_ _main61578_ _keys61573_))
                        (let () (declare (not safe)) (_else6150361518_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6148461492_ 'gxc#!kw-lambda::t))
              (let* ((_e6148861583_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6148461492_ '1)))
                     (_e6148961586_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6148461492_ '2)))
                     (_table61589_ _e6148961586_)
                     (_e6149061591_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6148461492_ '3)))
                     (_dispatch61594_ _e6149061591_))
                (declare (not safe))
                (_K6148761580_ _dispatch61594_ _table61589_))
              (let () (declare (not safe)) (_E6148661496_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx61094_ _args61095_)
        (let _lp61097_ ((_rest61099_ _args61095_)
                        (_pargs61100_ '())
                        (_kwargs61101_ '()))
          (let* ((___stx6439164392_ _rest61099_)
                 (_g6110761159_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx6439164392_)))))
            (let ((___kont6439364394_
                   (lambda (_L61338_ _L61339_)
                     (let ((__tmp64691
                            (let ()
                              (declare (not safe))
                              (cons _L61339_ _pargs61100_))))
                       (declare (not safe))
                       (_lp61097_ _L61338_ __tmp64691 _kwargs61101_))))
                  (___kont6439564396_
                   (lambda (_L61284_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L61284_ _pargs61100_))
                             (reverse _kwargs61101_))))
                  (___kont6439764398_
                   (lambda (_L61231_ _L61232_ _L61233_)
                     (let ((_kw61250_
                            (let () (declare (not safe)) (gx#stx-e _L61233_))))
                       (if (assq _kw61250_ _kwargs61101_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx61094_
                              _kw61250_))
                           (let ((__tmp64692
                                  (let ((__tmp64693
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw61250_ _L61232_))))
                                    (declare (not safe))
                                    (cons __tmp64693 _kwargs61101_))))
                             (declare (not safe))
                             (_lp61097_ _L61231_ _pargs61100_ __tmp64692))))))
                  (___kont6439964400_
                   (lambda (_L61179_ _L61180_)
                     (let ((__tmp64694
                            (let ()
                              (declare (not safe))
                              (cons _L61180_ _pargs61100_))))
                       (declare (not safe))
                       (_lp61097_ _L61179_ __tmp64694 _kwargs61101_))))
                  (___kont6440164402_
                   (lambda ()
                     (values (reverse _pargs61100_) (reverse _kwargs61101_)))))
              (let* ((_g6110661166_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx6439164392_))
                            (___kont6440164402_)
                            (let () (declare (not safe)) (_g6110761159_)))))
                     (___match6449864499_
                      (lambda (_e6114061199_
                               _hd6113961202_
                               _tl6113861204_
                               _e6114361207_
                               _hd6114261210_
                               _tl6114161212_
                               _e6114661215_
                               _hd6114561218_
                               _tl6114461220_
                               _e6114961223_
                               _hd6114861226_
                               _tl6114761228_)
                        (let ((_L61231_ _tl6114761228_)
                              (_L61232_ _hd6114861226_)
                              (_L61233_ _hd6114561218_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L61233_))
                              (___kont6439764398_ _L61231_ _L61232_ _L61233_)
                              (___kont6439964400_
                               _tl6113861204_
                               _hd6113961202_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6439164392_))
                    (let ((_e6111361303_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6439164392_))))
                      (let ((_tl6111161308_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6111361303_)))
                            (_hd6111261306_
                             (let ()
                               (declare (not safe))
                               (##car _e6111361303_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd6111261306_))
                            (let ((_e6111661311_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd6111261306_))))
                              (let ((_tl6111461316_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6111661311_)))
                                    (_hd6111561314_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6111661311_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd6111561314_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd6111561314_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl6111461316_))
                                            (let ((_e6111961319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl6111461316_))))
                                              (let ((_tl6111761324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6111961319_)))
                                                    (_hd6111861322_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6111961319_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd6111861322_))
                                                    (let ((_e6112061327_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd6111861322_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e6112061327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl6111761324_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6111161308_))
                          (let ((_e6112361330_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6111161308_))))
                            (let ((_tl6112161335_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6112361330_)))
                                  (_hd6112261333_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6112361330_))))
                              (___kont6439364394_
                               _tl6112161335_
                               _hd6112261333_)))
                          (___kont6439964400_ _tl6111161308_ _hd6111261306_))
                      (___kont6439964400_ _tl6111161308_ _hd6111261306_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e6112061327_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6111761324_))
                          (___kont6439564396_ _tl6111161308_)
                          (___kont6439964400_ _tl6111161308_ _hd6111261306_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6111761324_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6111161308_))
                              (let ((_e6114961223_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6111161308_))))
                                (let ((_tl6114761228_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6114961223_)))
                                      (_hd6114861226_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6114961223_))))
                                  (___match6449864499_
                                   _e6111361303_
                                   _hd6111261306_
                                   _tl6111161308_
                                   _e6111661311_
                                   _hd6111561314_
                                   _tl6111461316_
                                   _e6111961319_
                                   _hd6111861322_
                                   _tl6111761324_
                                   _e6114961223_
                                   _hd6114861226_
                                   _tl6114761228_)))
                              (___kont6439964400_
                               _tl6111161308_
                               _hd6111261306_))
                          (___kont6439964400_
                           _tl6111161308_
                           _hd6111261306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6111761324_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl6111161308_))
                                                            (let ((_e6114961223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl6111161308_))))
                      (let ((_tl6114761228_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6114961223_)))
                            (_hd6114861226_
                             (let ()
                               (declare (not safe))
                               (##car _e6114961223_))))
                        (___match6449864499_
                         _e6111361303_
                         _hd6111261306_
                         _tl6111161308_
                         _e6111661311_
                         _hd6111561314_
                         _tl6111461316_
                         _e6111961319_
                         _hd6111861322_
                         _tl6111761324_
                         _e6114961223_
                         _hd6114861226_
                         _tl6114761228_)))
                    (___kont6439964400_ _tl6111161308_ _hd6111261306_))
                (___kont6439964400_ _tl6111161308_ _hd6111261306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont6439964400_
                                             _tl6111161308_
                                             _hd6111261306_))
                                        (___kont6439964400_
                                         _tl6111161308_
                                         _hd6111261306_))
                                    (___kont6439964400_
                                     _tl6111161308_
                                     _hd6111261306_))))
                            (___kont6439964400_
                             _tl6111161308_
                             _hd6111261306_))))
                    (let () (declare (not safe)) (_g6110661166_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self61090_ _stx61091_ _args61092_)
        (let () (declare (not safe)) (gxc#xform-call% _stx61091_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
