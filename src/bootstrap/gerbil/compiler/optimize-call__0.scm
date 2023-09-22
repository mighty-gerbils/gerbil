(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1695377622)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl64126_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp64511 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl64126_ __tmp64511))
           (let ()
             (declare (not safe))
             (table-set! _tbl64126_ '%#call gxc#optimize-call%))
           _tbl64126_))))
    (define gxc#apply-optimize-call
      (lambda (_stx64119_ . _args64121_)
        (let ((__tmp64513
               (lambda () (apply gxc#compile-e _stx64119_ _args64121_)))
              (__tmp64512 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp64513
           gxc#current-compile-methods
           __tmp64512))))
    (define gxc#optimize-call%
      (lambda (_stx63974_)
        (let* ((___stx6414764148_ _stx63974_)
               (_g6397763997_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6414764148_)))))
          (let ((___kont6414964150_
                 (lambda (_L64041_ _L64042_)
                   (let* ((_rator-id64060_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L64042_)))
                          (_rator-type64062_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id64060_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type64062_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp64514
                                  (##structure-ref
                                   _rator-type64062_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id64060_
                              '" => "
                              _rator-type64062_
                              '" "
                              __tmp64514))
                           (let ((_optimized64065_
                                  (let ((__method64509
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type64062_
                                            'optimize-call))))
                                    (if __method64509
                                        (__method64509
                                         _rator-type64062_
                                         _stx63974_
                                         _L64041_)
                                        (error '"Missing method"
                                               _rator-type64062_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type64062_))
                                 _optimized64065_
                                 (let* ((___stx6412964130_ _optimized64065_)
                                        (_g6406864078_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6412964130_)))))
                                   (let ((___kont6413164132_
                                          (lambda (_L64098_)
                                            (let ((__tmp64515
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L64098_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp64515
                                               _stx63974_))))
                                         (___kont6413364134_
                                          (lambda () _optimized64065_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6412964130_))
                                         (let ((_e6407364090_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6412964130_))))
                                           (let ((_tl6407164095_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6407364090_)))
                                                 (_hd6407264093_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6407364090_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd6407264093_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd6407264093_))
                                                     (___kont6413164132_
                                                      _tl6407164095_)
                                                     (___kont6413364134_))
                                                 (___kont6413364134_))))
                                         (___kont6413364134_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type64062_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63974_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal application; not a procedure"
                                _stx63974_
                                _rator-type64062_)))))))
                (___kont6415164152_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx63974_)))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx6414764148_))
                (let ((_e6398364009_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx6414764148_))))
                  (let ((_tl6398164014_
                         (let () (declare (not safe)) (##cdr _e6398364009_)))
                        (_hd6398264012_
                         (let () (declare (not safe)) (##car _e6398364009_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl6398164014_))
                        (let ((_e6398664017_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl6398164014_))))
                          (let ((_tl6398464022_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6398664017_)))
                                (_hd6398564020_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6398664017_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd6398564020_))
                                (let ((_e6398964025_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd6398564020_))))
                                  (let ((_tl6398764030_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6398964025_)))
                                        (_hd6398864028_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6398964025_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd6398864028_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd6398864028_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6398764030_))
                                                (let ((_e6399264033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6398764030_))))
                                                  (let ((_tl6399064038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6399264033_)))
                                                        (_hd6399164036_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6399264033_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6399064038_))
                                                        (___kont6414964150_
                                                         _tl6398464022_
                                                         _hd6399164036_)
                                                        (___kont6415164152_))))
                                                (___kont6415164152_))
                                            (___kont6415164152_))
                                        (___kont6415164152_))))
                                (___kont6415164152_))))
                        (___kont6415164152_))))
                (___kont6415164152_))))))
    (define gxc#!struct-pred::optimize-call
      (lambda (_self63828_ _stx63829_ _args63830_)
        (let* ((_self6383163837_ _self63828_)
               (_E6383363841_
                (lambda () (error '"No clause matching" _self6383163837_)))
               (_K6383463966_
                (lambda (_struct-t63844_)
                  (let* ((_struct-type63846_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63844_)))
                         (_struct-type6384763861_ _struct-type63846_)
                         (_else6385063869_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx63829_
                               _struct-t63844_
                               _struct-type63846_)))))
                    (let ((_K6385363941_
                           (lambda (_plist63880_ _struct-type-id63881_)
                             (let* ((___stx6418564186_ _args63830_)
                                    (_g6388463894_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6418564186_)))))
                               (let ((___kont6418764188_
                                      (lambda (_L63914_)
                                        (let ((_expr63935_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e _L63914_)))
                                              (_op63936_
                                               (if (and _plist63880_
                                                        (let ()
                                                          (declare (not safe))
                                                          (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _plist63880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '%#struct-direct-instance?
                                                   '%#struct-instance?)))
                                          (let ((__tmp64516
                                                 (let ((__tmp64517
                                                        (let ((__tmp64519
                                                               (let ((__tmp64520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _struct-type-id63881_ '()))))
                         (declare (not safe))
                         (cons '%#quote __tmp64520)))
                      (__tmp64518
                       (let () (declare (not safe)) (cons _expr63935_ '()))))
                  (declare (not safe))
                  (cons __tmp64519 __tmp64518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _op63936_
                                                         __tmp64517))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp64516
                                             _stx63829_)))))
                                     (___kont6418964190_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal struct predicate application"
                                           _stx63829_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6418564186_))
                                     (let ((_e6388963906_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6418564186_))))
                                       (let ((_tl6388763911_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6388963906_)))
                                             (_hd6388863909_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6388963906_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6388763911_))
                                             (___kont6418764188_
                                              _hd6388863909_)
                                             (___kont6418964190_))))
                                     (___kont6418964190_))))))
                          (_K6385263874_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63829_)))))
                      (let ((_try-match6384963877_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6384763861_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6385263874_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6385063869_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6384763861_
                               'gxc#!struct-type::t))
                            (let* ((_e6385463944_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384763861_
                                       '1)))
                                   (_e6385563949_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384763861_
                                       '2)))
                                   (_e6385663952_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384763861_
                                       '3)))
                                   (_e6385763955_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384763861_
                                       '4)))
                                   (_e6385863958_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384763861_
                                       '5)))
                                   (_e6385963961_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6384763861_
                                       '6))))
                              (let ((_struct-type-id63947_ _e6385463944_)
                                    (_plist63964_ _e6385963961_))
                                (let ()
                                  (declare (not safe))
                                  (_K6385363941_
                                   _plist63964_
                                   _struct-type-id63947_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6384963877_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6383163837_
                 'gxc#!struct-pred::t))
              (let* ((_e6383563969_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6383163837_ '1)))
                     (_struct-t63972_ _e6383563969_))
                (declare (not safe))
                (_K6383463966_ _struct-t63972_))
              (let () (declare (not safe)) (_E6383363841_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'optimize-call
       gxc#!struct-pred::optimize-call
       '#f))
    (define gxc#!struct-cons::optimize-call
      (lambda (_self63602_ _stx63603_ _args63604_)
        (let* ((_self6360563611_ _self63602_)
               (_E6360763615_
                (lambda () (error '"No clause matching" _self6360563611_)))
               (_K6360863698_
                (lambda (_struct-t63618_)
                  (let* ((_struct-type63620_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63618_)))
                         (_struct-type6362163634_ _struct-type63620_)
                         (_else6362463642_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct constructor application; not a struct type"
                               _stx63603_
                               _struct-t63618_
                               _struct-type63620_)))))
                    (let ((_K6362763672_
                           (lambda (_ctor63653_
                                    _xfields63654_
                                    _fields63655_
                                    _type-id63656_)
                             (let* ((_args63658_
                                     (map gxc#compile-e _args63604_))
                                    (_$e63660_
                                     (if _ctor63653_
                                         (if _xfields63654_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!struct-type-lookup-method
                                                _struct-type63620_
                                                _ctor63653_))
                                             '#f)
                                         '#f)))
                               (if _$e63660_
                                   ((lambda (_kons63663_)
                                      (let* ((_$obj63665_
                                              (make-symbol (gensym '__obj)))
                                             (__tmp64535
                                              (let ((__tmp64536
                                                     (let ((__tmp64552
                                                            (let ((__tmp64553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64566
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj63665_ '())))
                                 (__tmp64554
                                  (let ((__tmp64555
                                         (let ((__tmp64556
                                                (let ((__tmp64564
                                                       (let ((__tmp64565
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp64565)))
              (__tmp64557
               (let ((__tmp64562
                      (let ((__tmp64563
                             (let ()
                               (declare (not safe))
                               (cons _struct-t63618_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp64563)))
                     (__tmp64558
                      (let ((__tmp64559
                             (let ((__tmp64560
                                    (let ((__tmp64561
                                           (fx+ _fields63655_ _xfields63654_)))
                                      (declare (not safe))
                                      (cons __tmp64561 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp64560))))
                        (declare (not safe))
                        (cons __tmp64559 '()))))
                 (declare (not safe))
                 (cons __tmp64562 __tmp64558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp64564
                                                        __tmp64557))))
                                           (declare (not safe))
                                           (cons '%#call __tmp64556))))
                                    (declare (not safe))
                                    (cons __tmp64555 '()))))
                             (declare (not safe))
                             (cons __tmp64566 __tmp64554))))
                      (declare (not safe))
                      (cons __tmp64553 '())))
                   (__tmp64537
                    (let ((__tmp64538
                           (let ((__tmp64539
                                  (let ((__tmp64543
                                         (let ((__tmp64544
                                                (let ((__tmp64545
                                                       (let ((__tmp64546
                                                              (let ((__tmp64550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64551
                                    (let ()
                                      (declare (not safe))
                                      (cons _kons63663_ '()))))
                               (declare (not safe))
                               (cons '%#ref __tmp64551)))
                            (__tmp64547
                             (let ((__tmp64548
                                    (let ((__tmp64549
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj63665_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp64549))))
                               (declare (not safe))
                               (cons __tmp64548 _args63658_))))
                        (declare (not safe))
                        (cons __tmp64550 __tmp64547))))
                 (declare (not safe))
                 (cons '%#call __tmp64546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp64545
                                                   _stx63603_))))
                                           (declare (not safe))
                                           (gxc#compile-e __tmp64544)))
                                        (__tmp64540
                                         (let ((__tmp64541
                                                (let ((__tmp64542
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj63665_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp64542))))
                                           (declare (not safe))
                                           (cons __tmp64541 '()))))
                                    (declare (not safe))
                                    (cons __tmp64543 __tmp64540))))
                             (declare (not safe))
                             (cons '%#begin __tmp64539))))
                      (declare (not safe))
                      (cons __tmp64538 '()))))
               (declare (not safe))
               (cons __tmp64552 __tmp64537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp64536))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp64535
                                         _stx63603_)))
                                    _$e63660_)
                                   (if (or _ctor63653_
                                           (let ()
                                             (declare (not safe))
                                             (not _xfields63654_)))
                                       (let ((__tmp64528
                                              (let ((__tmp64529
                                                     (let ((__tmp64533
                                                            (let ((__tmp64534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons 'make-struct-instance '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp64534)))
                   (__tmp64530
                    (let ((__tmp64531
                           (let ((__tmp64532
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63618_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64532))))
                      (declare (not safe))
                      (cons __tmp64531 _args63658_))))
               (declare (not safe))
               (cons __tmp64533 __tmp64530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp64529))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp64528
                                          _stx63603_))
                                       (let ((_arity63670_
                                              (fx+ _fields63655_
                                                   _xfields63654_)))
                                         (if (fx= _arity63670_
                                                  (length _args63658_))
                                             (let ((__tmp64521
                                                    (let ((__tmp64522
                                                           (let ((__tmp64526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp64527
                                 (let ()
                                   (declare (not safe))
                                   (cons '##structure '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp64527)))
                         (__tmp64523
                          (let ((__tmp64524
                                 (let ((__tmp64525
                                        (let ()
                                          (declare (not safe))
                                          (cons _struct-t63618_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp64525))))
                            (declare (not safe))
                            (cons __tmp64524 _args63658_))))
                     (declare (not safe))
                     (cons __tmp64526 __tmp64523))))
              (declare (not safe))
              (cons '%#call __tmp64522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp64521
                                                _stx63603_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"Illegal struct constructor application; arity mismatch"
                                                _stx63603_
                                                _struct-t63618_
                                                _arity63670_)))))))))
                          (_K6362663647_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline struct constructor; unknown struct type "
                                _struct-t63618_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63603_)))))
                      (let ((_try-match6362363650_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6362163634_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6362663647_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6362463642_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6362163634_
                               'gxc#!struct-type::t))
                            (let* ((_e6362863675_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362163634_
                                       '1)))
                                   (_e6362963680_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362163634_
                                       '2)))
                                   (_e6363063683_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362163634_
                                       '3)))
                                   (_e6363163688_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362163634_
                                       '4)))
                                   (_e6363263693_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6362163634_
                                       '5))))
                              (let ((_type-id63678_ _e6362863675_)
                                    (_fields63686_ _e6363063683_)
                                    (_xfields63691_ _e6363163688_)
                                    (_ctor63696_ _e6363263693_))
                                (let ()
                                  (declare (not safe))
                                  (_K6362763672_
                                   _ctor63696_
                                   _xfields63691_
                                   _fields63686_
                                   _type-id63678_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6362363650_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6360563611_
                 'gxc#!struct-cons::t))
              (let* ((_e6360963701_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6360563611_ '1)))
                     (_struct-t63704_ _e6360963701_))
                (declare (not safe))
                (_K6360863698_ _struct-t63704_))
              (let () (declare (not safe)) (_E6360763615_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'optimize-call
       gxc#!struct-cons::optimize-call
       '#f))
    (define gxc#!struct-getf::optimize-call
      (lambda (_self63313_ _stx63314_ _args63315_)
        (let* ((_self6331663324_ _self63313_)
               (_E6331863328_
                (lambda () (error '"No clause matching" _self6331663324_)))
               (_K6331963462_
                (lambda (_unchecked?63331_ _off63332_ _struct-t63333_)
                  (let* ((_struct-type63335_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63333_)))
                         (_struct-type6333663350_ _struct-type63335_)
                         (_else6333963358_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx63314_
                               _struct-t63333_
                               _struct-type63335_)))))
                    (let ((_K6334263433_
                           (lambda (_plist63369_
                                    _xfields63370_
                                    _fields63371_
                                    _struct-type-id63372_)
                             (if _xfields63370_
                                 (let* ((___stx6423364234_ _args63315_)
                                        (_g6337563385_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6423364234_)))))
                                   (let ((___kont6423564236_
                                          (lambda (_L63405_)
                                            (let ((_expr63426_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63405_)))
                                                  (_off63427_
                                                   (fx+ _off63332_
                                                        _xfields63370_
                                                        '1))
                                                  (_op63428_
                                                   (if _unchecked?63331_
                                                       '%#struct-unchecked-ref
                                                       (if (and _plist63369_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist63369_)))
                   '%#struct-direct-ref
                   '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp64567
                                                     (let ((__tmp64568
                                                            (let ((__tmp64573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64574
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63333_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64574)))
                          (__tmp64569
                           (let ((__tmp64571
                                  (let ((__tmp64572
                                         (let ()
                                           (declare (not safe))
                                           (cons _off63427_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp64572)))
                                 (__tmp64570
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr63426_ '()))))
                             (declare (not safe))
                             (cons __tmp64571 __tmp64570))))
                      (declare (not safe))
                      (cons __tmp64573 __tmp64569))))
               (declare (not safe))
               (cons _op63428_ __tmp64568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64567
                                                 _stx63314_)))))
                                         (___kont6423764238_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct accessor application"
                                               _stx63314_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6423364234_))
                                         (let ((_e6338063397_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6423364234_))))
                                           (let ((_tl6337863402_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6338063397_)))
                                                 (_hd6337963400_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6338063397_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _tl6337863402_))
                                                 (___kont6423564236_
                                                  _hd6337963400_)
                                                 (___kont6423764238_))))
                                         (___kont6423764238_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-getf: incomplete struct "
                                      _struct-type-id63372_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx63314_))))))
                          (_K6334163363_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63314_)))))
                      (let ((_try-match6333863366_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6333663350_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6334163363_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6333963358_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6333663350_
                               'gxc#!struct-type::t))
                            (let* ((_e6334363436_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333663350_
                                       '1)))
                                   (_e6334463441_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333663350_
                                       '2)))
                                   (_e6334563444_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333663350_
                                       '3)))
                                   (_e6334663449_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333663350_
                                       '4)))
                                   (_e6334763454_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333663350_
                                       '5)))
                                   (_e6334863457_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6333663350_
                                       '6))))
                              (let ((_struct-type-id63439_ _e6334363436_)
                                    (_fields63447_ _e6334563444_)
                                    (_xfields63452_ _e6334663449_)
                                    (_plist63460_ _e6334863457_))
                                (let ()
                                  (declare (not safe))
                                  (_K6334263433_
                                   _plist63460_
                                   _xfields63452_
                                   _fields63447_
                                   _struct-type-id63439_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6333863366_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6331663324_
                 'gxc#!struct-getf::t))
              (let* ((_e6332063465_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6331663324_ '1)))
                     (_struct-t63468_ _e6332063465_)
                     (_e6332163470_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6331663324_ '2)))
                     (_off63473_ _e6332163470_)
                     (_e6332263475_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6331663324_ '3)))
                     (_unchecked?63478_ _e6332263475_))
                (declare (not safe))
                (_K6331963462_ _unchecked?63478_ _off63473_ _struct-t63468_))
              (let () (declare (not safe)) (_E6331863328_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'optimize-call
       gxc#!struct-getf::optimize-call
       '#f))
    (define gxc#!struct-setf::optimize-call
      (lambda (_self63007_ _stx63008_ _args63009_)
        (let* ((_self6301063018_ _self63007_)
               (_E6301263022_
                (lambda () (error '"No clause matching" _self6301063018_)))
               (_K6301363173_
                (lambda (_unchecked?63025_ _off63026_ _struct-t63027_)
                  (let* ((_struct-type63029_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t63027_)))
                         (_struct-type6303063044_ _struct-type63029_)
                         (_else6303363052_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx63008_
                               _struct-t63027_
                               _struct-type63029_)))))
                    (let ((_K6303663144_
                           (lambda (_plist63063_
                                    _xfields63064_
                                    _fields63065_
                                    _struct-type-id63066_)
                             (if _xfields63064_
                                 (let* ((___stx6426664267_ _args63009_)
                                        (_g6306963083_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6426664267_)))))
                                   (let ((___kont6426864269_
                                          (lambda (_L63111_ _L63112_)
                                            (let ((_expr63136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63112_)))
                                                  (_val63137_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e _L63111_)))
                                                  (_off63138_
                                                   (fx+ _off63026_
                                                        _xfields63064_
                                                        '1))
                                                  (_op63139_
                                                   (if _unchecked?63025_
                                                       '%#struct-unchecked-set!
                                                       (if (and _plist63063_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist63063_)))
                   '%#struct-direct-set!
                   '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp64575
                                                     (let ((__tmp64576
                                                            (let ((__tmp64582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64583
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t63027_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64583)))
                          (__tmp64577
                           (let ((__tmp64580
                                  (let ((__tmp64581
                                         (let ()
                                           (declare (not safe))
                                           (cons _off63138_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp64581)))
                                 (__tmp64578
                                  (let ((__tmp64579
                                         (let ()
                                           (declare (not safe))
                                           (cons _val63137_ '()))))
                                    (declare (not safe))
                                    (cons _expr63136_ __tmp64579))))
                             (declare (not safe))
                             (cons __tmp64580 __tmp64578))))
                      (declare (not safe))
                      (cons __tmp64582 __tmp64577))))
               (declare (not safe))
               (cons _op63139_ __tmp64576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64575
                                                 _stx63008_)))))
                                         (___kont6427064271_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct mutator application"
                                               _stx63008_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6426664267_))
                                         (let ((_e6307563095_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6426664267_))))
                                           (let ((_tl6307363100_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6307563095_)))
                                                 (_hd6307463098_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6307563095_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl6307363100_))
                                                 (let ((_e6307863103_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl6307363100_))))
                                                   (let ((_tl6307663108_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e6307863103_)))
                                                         (_hd6307763106_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e6307863103_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl6307663108_))
                                                         (___kont6426864269_
                                                          _hd6307763106_
                                                          _hd6307463098_)
                                                         (___kont6427064271_))))
                                                 (___kont6427064271_))))
                                         (___kont6427064271_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-setf: incomplete struct "
                                      _struct-type-id63066_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx63008_))))))
                          (_K6303563057_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63008_)))))
                      (let ((_try-match6303263060_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6303063044_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6303563057_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6303363052_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6303063044_
                               'gxc#!struct-type::t))
                            (let* ((_e6303763147_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6303063044_
                                       '1)))
                                   (_e6303863152_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6303063044_
                                       '2)))
                                   (_e6303963155_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6303063044_
                                       '3)))
                                   (_e6304063160_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6303063044_
                                       '4)))
                                   (_e6304163165_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6303063044_
                                       '5)))
                                   (_e6304263168_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6303063044_
                                       '6))))
                              (let ((_struct-type-id63150_ _e6303763147_)
                                    (_fields63158_ _e6303963155_)
                                    (_xfields63163_ _e6304063160_)
                                    (_plist63171_ _e6304263168_))
                                (let ()
                                  (declare (not safe))
                                  (_K6303663144_
                                   _plist63171_
                                   _xfields63163_
                                   _fields63158_
                                   _struct-type-id63150_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6303263060_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6301063018_
                 'gxc#!struct-setf::t))
              (let* ((_e6301463176_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6301063018_ '1)))
                     (_struct-t63179_ _e6301463176_)
                     (_e6301563181_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6301063018_ '2)))
                     (_off63184_ _e6301563181_)
                     (_e6301663186_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6301063018_ '3)))
                     (_unchecked?63189_ _e6301663186_))
                (declare (not safe))
                (_K6301363173_ _unchecked?63189_ _off63184_ _struct-t63179_))
              (let () (declare (not safe)) (_E6301263022_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'optimize-call
       gxc#!struct-setf::optimize-call
       '#f))
    (define gxc#!class-pred::optimize-call
      (lambda (_self62735_ _stx62736_ _args62737_)
        (let* ((_self6273862744_ _self62735_)
               (_E6274062748_
                (lambda () (error '"No clause matching" _self6273862744_)))
               (_K6274162877_
                (lambda (_class-t62751_)
                  (let* ((_class-type62753_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t62751_)))
                         (_class-type6275462769_ _class-type62753_)
                         (_else6275762777_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal class predicate application; not a class type"
                               _stx62736_
                               _class-t62751_
                               _class-type62753_)))))
                    (let ((_K6276062849_
                           (lambda (_plist62788_ _class-type-id62789_)
                             (let* ((___stx6430564306_ _args62737_)
                                    (_g6279262802_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6430564306_)))))
                               (let ((___kont6430764308_
                                      (lambda (_L62822_)
                                        (let ((_expr62843_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e _L62822_)))
                                              (_final?62844_
                                               (if _plist62788_
                                                   (let ()
                                                     (declare (not safe))
                                                     (assgetq 'final:
                                                              _plist62788_))
                                                   '#f)))
                                          (if _final?62844_
                                              (let ((__tmp64592
                                                     (let ((__tmp64593
                                                            (let ((__tmp64595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64596
                                  (let ()
                                    (declare (not safe))
                                    (cons _class-type-id62789_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp64596)))
                          (__tmp64594
                           (let ()
                             (declare (not safe))
                             (cons _expr62843_ '()))))
                      (declare (not safe))
                      (cons __tmp64595 __tmp64594))))
               (declare (not safe))
               (cons '%#struct-direct-instance? __tmp64593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64592
                                                 _stx62736_))
                                              (let ((__tmp64584
                                                     (let ((__tmp64585
                                                            (let ((__tmp64590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64591
                                  (let ()
                                    (declare (not safe))
                                    (cons 'class-instance? '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64591)))
                          (__tmp64586
                           (let ((__tmp64588
                                  (let ((__tmp64589
                                         (let ()
                                           (declare (not safe))
                                           (cons _class-t62751_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp64589)))
                                 (__tmp64587
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr62843_ '()))))
                             (declare (not safe))
                             (cons __tmp64588 __tmp64587))))
                      (declare (not safe))
                      (cons __tmp64590 __tmp64586))))
               (declare (not safe))
               (cons '%#call __tmp64585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp64584
                                                 _stx62736_))))))
                                     (___kont6430964310_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal class predicate application"
                                           _stx62736_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6430564306_))
                                     (let ((_e6279762814_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6430564306_))))
                                       (let ((_tl6279562819_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6279762814_)))
                                             (_hd6279662817_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6279762814_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6279562819_))
                                             (___kont6430764308_
                                              _hd6279662817_)
                                             (___kont6430964310_))))
                                     (___kont6430964310_))))))
                          (_K6275962782_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx62736_)))))
                      (let ((_try-match6275662785_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6275462769_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6275962782_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6275762777_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6275462769_
                               'gxc#!class-type::t))
                            (let* ((_e6276162852_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275462769_
                                       '1)))
                                   (_e6276262857_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275462769_
                                       '2)))
                                   (_e6276362860_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275462769_
                                       '3)))
                                   (_e6276462863_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275462769_
                                       '4)))
                                   (_e6276562866_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275462769_
                                       '5)))
                                   (_e6276662869_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275462769_
                                       '6)))
                                   (_e6276762872_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6275462769_
                                       '7))))
                              (let ((_class-type-id62855_ _e6276162852_)
                                    (_plist62875_ _e6276762872_))
                                (let ()
                                  (declare (not safe))
                                  (_K6276062849_
                                   _plist62875_
                                   _class-type-id62855_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6275662785_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6273862744_
                 'gxc#!class-pred::t))
              (let* ((_e6274262880_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6273862744_ '1)))
                     (_class-t62883_ _e6274262880_))
                (declare (not safe))
                (_K6274162877_ _class-t62883_))
              (let () (declare (not safe)) (_E6274062748_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'optimize-call
       gxc#!class-pred::optimize-call
       '#f))
    (define gxc#!class-cons::optimize-call
      (lambda (_self62553_ _stx62554_ _args62555_)
        (let* ((_self6255662562_ _self62553_)
               (_E6255862566_
                (lambda () (error '"No clause matching" _self6255662562_)))
               (_K6255962605_
                (lambda (_class-t62569_)
                  (let* ((_class-type62571_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t62569_)))
                         (_class-type6257262580_ _class-type62571_)
                         (_else6257562588_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal class constructor application; not a struct type"
                               _stx62554_
                               _class-t62569_
                               _class-type62571_)))))
                    (let ((_K6257862602_
                           (lambda ()
                             (let* ((_args62600_
                                     (map gxc#compile-e _args62555_))
                                    (__tmp64597
                                     (let ((__tmp64598
                                            (let ((__tmp64602
                                                   (let ((__tmp64603
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-class-instance
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp64603)))
                                                  (__tmp64599
                                                   (let ((__tmp64600
                                                          (let ((__tmp64601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _class-t62569_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp64601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64600
                                                           _args62600_))))
                                              (declare (not safe))
                                              (cons __tmp64602 __tmp64599))))
                                       (declare (not safe))
                                       (cons '%#call __tmp64598))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp64597 _stx62554_))))
                          (_K6257762593_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline class constructor; class struct type "
                                _class-t62569_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx62554_)))))
                      (let ((_try-match6257462596_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6257262580_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6257762593_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6257562588_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6257262580_
                               'gxc#!class-type::t))
                            (let () (declare (not safe)) (_K6257862602_))
                            (let ()
                              (declare (not safe))
                              (_try-match6257462596_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6255662562_
                 'gxc#!class-cons::t))
              (let* ((_e6256062608_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6255662562_ '1)))
                     (_class-t62611_ _e6256062608_))
                (declare (not safe))
                (_K6255962605_ _class-t62611_))
              (let () (declare (not safe)) (_E6255862566_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'optimize-call
       gxc#!class-cons::optimize-call
       '#f))
    (define gxc#!class-getf::optimize-call
      (lambda (_self62340_ _stx62341_ _args62342_)
        (let* ((_self6234362351_ _self62340_)
               (_E6234562355_
                (lambda () (error '"No clause matching" _self6234362351_)))
               (_K6234662413_
                (lambda (_unchecked?62358_ _slot62359_ _class-t62360_)
                  (let* ((___stx6434564346_ _args62342_)
                         (_g6236362373_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6434564346_)))))
                    (let ((___kont6434764348_
                           (lambda (_L62393_)
                             (let* ((_expr62408_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e _L62393_)))
                                    (__tmp64604
                                     (let ((__tmp64605
                                            (let ((__tmp64610
                                                   (let ((__tmp64611
                                                          (let ((__tmp64612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _unchecked?62358_ 'slot-ref 'unchecked-slot-ref)))
                    (declare (not safe))
                    (cons __tmp64612 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp64611)))
                                                  (__tmp64606
                                                   (let ((__tmp64607
                                                          (let ((__tmp64608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64609
                                (let ()
                                  (declare (not safe))
                                  (cons _slot62359_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp64609))))
                    (declare (not safe))
                    (cons __tmp64608 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr62408_
                                                           __tmp64607))))
                                              (declare (not safe))
                                              (cons __tmp64610 __tmp64606))))
                                       (declare (not safe))
                                       (cons '%#call __tmp64605))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp64604 _stx62341_))))
                          (___kont6434964350_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class accessor application"
                                _stx62341_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6434564346_))
                          (let ((_e6236862385_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6434564346_))))
                            (let ((_tl6236662390_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6236862385_)))
                                  (_hd6236762388_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6236862385_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl6236662390_))
                                  (___kont6434764348_ _hd6236762388_)
                                  (___kont6434964350_))))
                          (___kont6434964350_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6234362351_
                 'gxc#!class-getf::t))
              (let* ((_e6234762416_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6234362351_ '1)))
                     (_class-t62419_ _e6234762416_)
                     (_e6234862421_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6234362351_ '2)))
                     (_slot62424_ _e6234862421_)
                     (_e6234962426_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6234362351_ '3)))
                     (_unchecked?62429_ _e6234962426_))
                (declare (not safe))
                (_K6234662413_ _unchecked?62429_ _slot62424_ _class-t62419_))
              (let () (declare (not safe)) (_E6234562355_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'optimize-call
       gxc#!class-getf::optimize-call
       '#f))
    (define gxc#!class-setf::optimize-call
      (lambda (_self62110_ _stx62111_ _args62112_)
        (let* ((_self6211362121_ _self62110_)
               (_E6211562125_
                (lambda () (error '"No clause matching" _self6211362121_)))
               (_K6211662200_
                (lambda (_unchecked?62128_ _slot62129_ _class-t62130_)
                  (let* ((___stx6436164362_ _args62112_)
                         (_g6213362147_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6436164362_)))))
                    (let ((___kont6436364364_
                           (lambda (_L62175_ _L62176_)
                             (let ((_expr62194_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e _L62176_)))
                                   (_val62195_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e _L62175_))))
                               (let ((__tmp64613
                                      (let ((__tmp64614
                                             (let ((__tmp64620
                                                    (let ((__tmp64621
                                                           (let ((__tmp64622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if _unchecked?62128_
                              'unchecked-slot-set!
                              'slot-set!)))
                     (declare (not safe))
                     (cons __tmp64622 '()))))
              (declare (not safe))
              (cons '%#ref __tmp64621)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp64615
                                                    (let ((__tmp64616
                                                           (let ((__tmp64618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp64619
                                 (let ()
                                   (declare (not safe))
                                   (cons _slot62129_ '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp64619)))
                         (__tmp64617
                          (let () (declare (not safe)) (cons _val62195_ '()))))
                     (declare (not safe))
                     (cons __tmp64618 __tmp64617))))
              (declare (not safe))
              (cons _expr62194_ __tmp64616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp64620 __tmp64615))))
                                        (declare (not safe))
                                        (cons '%#call __tmp64614))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp64613
                                  _stx62111_)))))
                          (___kont6436564366_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class mutator application"
                                _stx62111_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6436164362_))
                          (let ((_e6213962159_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6436164362_))))
                            (let ((_tl6213762164_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6213962159_)))
                                  (_hd6213862162_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6213962159_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6213762164_))
                                  (let ((_e6214262167_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6213762164_))))
                                    (let ((_tl6214062172_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6214262167_)))
                                          (_hd6214162170_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6214262167_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6214062172_))
                                          (___kont6436364364_
                                           _hd6214162170_
                                           _hd6213862162_)
                                          (___kont6436564366_))))
                                  (___kont6436564366_))))
                          (___kont6436564366_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6211362121_
                 'gxc#!class-setf::t))
              (let* ((_e6211762203_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6211362121_ '1)))
                     (_class-t62206_ _e6211762203_)
                     (_e6211862208_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6211362121_ '2)))
                     (_slot62211_ _e6211862208_)
                     (_e6211962213_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6211362121_ '3)))
                     (_unchecked?62216_ _e6211962213_))
                (declare (not safe))
                (_K6211662200_ _unchecked?62216_ _slot62211_ _class-t62206_))
              (let () (declare (not safe)) (_E6211562125_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'optimize-call
       gxc#!class-setf::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self61944_ _stx61945_ _args61946_)
        (let* ((_self6194761956_ _self61944_)
               (_E6194961960_
                (lambda () (error '"No clause matching" _self6194761956_)))
               (_K6195061967_
                (lambda (_inline61963_ _dispatch61964_ _arity61965_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self61944_ _args61946_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx61945_
                         _arity61965_)))
                  (if _inline61963_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp64628
                               (let ((__tmp64629 (_inline61963_ _stx61945_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp64629
                                  _stx61945_))))
                          (declare (not safe))
                          (gxc#compile-e __tmp64628)))
                      (if _dispatch61964_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch61964_))
                            (let ((__tmp64623
                                   (let ((__tmp64624
                                          (let ((__tmp64625
                                                 (let ((__tmp64626
                                                        (let ((__tmp64627
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch61964_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp64627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp64626
                                                         _args61946_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp64625))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp64624
                                      _stx61945_))))
                              (declare (not safe))
                              (gxc#compile-e __tmp64623)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx61945_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6194761956_ 'gxc#!lambda::t))
              (let* ((_e6195161970_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194761956_ '1)))
                     (_e6195261973_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194761956_ '2)))
                     (_arity61976_ _e6195261973_)
                     (_e6195361978_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194761956_ '3)))
                     (_dispatch61981_ _e6195361978_)
                     (_e6195461983_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6194761956_ '4)))
                     (_inline61986_ _e6195461983_))
                (declare (not safe))
                (_K6195061967_ _inline61986_ _dispatch61981_ _arity61976_))
              (let () (declare (not safe)) (_E6194961960_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self61783_ _stx61784_ _args61785_)
        (let* ((_self6178661793_ _self61783_)
               (_E6178861797_
                (lambda () (error '"No clause matching" _self6178661793_)))
               (_K6178961811_
                (lambda (_clauses61800_)
                  (let ((_$e61806_
                         (let ((__tmp64630
                                (lambda (_g6180161803_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g6180161803_
                                     _args61785_)))))
                           (declare (not safe))
                           (find __tmp64630 _clauses61800_))))
                    (if _$e61806_
                        ((lambda (_clause61809_)
                           (let ((__method64510
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause61809_
                                     'optimize-call))))
                             (if __method64510
                                 (__method64510
                                  _clause61809_
                                  _stx61784_
                                  _args61785_)
                                 (error '"Missing method"
                                        _clause61809_
                                        'optimize-call))))
                         _$e61806_)
                        (let ((__tmp64631
                               (map gxc#!lambda-arity _clauses61800_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx61784_
                           __tmp64631)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6178661793_
                 'gxc#!case-lambda::t))
              (let* ((_e6179061814_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6178661793_ '1)))
                     (_e6179161817_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6178661793_ '2)))
                     (_clauses61820_ _e6179161817_))
                (declare (not safe))
                (_K6178961811_ _clauses61820_))
              (let () (declare (not safe)) (_E6178861797_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self61597_ _args61598_)
        (let* ((_self6159961606_ _self61597_)
               (_E6160161610_
                (lambda () (error '"No clause matching" _self6159961606_)))
               (_K6160261650_
                (lambda (_arity61613_)
                  (let* ((_arity6161461623_ _arity61613_)
                         (_E6161761627_
                          (lambda ()
                            (error '"No clause matching" _arity6161461623_))))
                    (let ((_K6162161647_
                           (lambda () (fx= (length _args61598_) _arity61613_)))
                          (_K6161861633_
                           (lambda (_arity61631_)
                             (fx>= (length _args61598_) _arity61631_))))
                      (let ((_try-match6161661643_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity6161461623_))
                                   (let ((_tl6162061638_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity6161461623_)))
                                         (_hd6161961636_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity6161461623_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl6162061638_))
                                         (let ((_arity61641_ _hd6161961636_))
                                           (declare (not safe))
                                           (_K6161861633_ _arity61641_))
                                         (let ()
                                           (declare (not safe))
                                           (_E6161761627_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E6161761627_))))))
                        (if (fixnum? _arity6161461623_)
                            (let () (declare (not safe)) (_K6162161647_))
                            (let ()
                              (declare (not safe))
                              (_try-match6161661643_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6159961606_ 'gxc#!lambda::t))
              (let* ((_e6160361653_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6159961606_ '1)))
                     (_e6160461656_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6159961606_ '2)))
                     (_arity61659_ _e6160461656_))
                (declare (not safe))
                (_K6160261650_ _arity61659_))
              (let () (declare (not safe)) (_E6160161610_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self61482_ _stx61483_ _args61484_)
        (let* ((_self6148561493_ _self61482_)
               (_E6148761497_
                (lambda () (error '"No clause matching" _self6148561493_)))
               (_K6148861581_
                (lambda (_dispatch61500_ _table61501_)
                  (let* ((_g6150261511_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch61500_)))
                         (_else6150461519_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch61500_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx61483_))))
                         (_K6150661565_
                          (lambda (_main61522_ _keys61523_)
                            (let ((_g64632_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx61483_
                                      _args61484_))))
                              (begin
                                (let ((_g64633_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g64632_)
                                             (##vector-length _g64632_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g64633_ 2)))
                                      (error "Context expects 2 values"
                                             _g64633_)))
                                (let ((_pargs61525_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64632_ 0)))
                                      (_kwargs61526_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g64632_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main61522_))
                                    (if _table61501_
                                        (let ((_xargs61533_
                                               (map (lambda (_key61528_)
                                                      (let ((_$e61530_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key61528_ _kwargs61526_))))
                (if _$e61530_ (values _$e61530_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys61523_)))
                                          (for-each
                                           (lambda (_kw61535_)
                                             (if (memq (car _kw61535_)
                                                       _keys61523_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx61483_
                                                    _keys61523_
                                                    _kw61535_))))
                                           _kwargs61526_)
                                          (let ((__tmp64683
                                                 (let ((__tmp64684
                                                        (let ((__tmp64685
                                                               (let ((__tmp64690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64691
                                     (let ()
                                       (declare (not safe))
                                       (cons _main61522_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp64691)))
                             (__tmp64686
                              (let ((__tmp64688
                                     (let ((__tmp64689
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp64689)))
                                    (__tmp64687
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs61525_
                                               _xargs61533_))))
                                (declare (not safe))
                                (cons __tmp64688 __tmp64687))))
                         (declare (not safe))
                         (cons __tmp64690 __tmp64686))))
                  (declare (not safe))
                  (cons '%#call __tmp64685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp64684
                                                    _stx61483_))))
                                            (declare (not safe))
                                            (gxc#compile-e __tmp64683)))
                                        (let* ((_kwt61537_
                                                (make-symbol (gensym '__kwt)))
                                               (_kwvars61540_
                                                (map (lambda (_g64634_)
                                                       (make-symbol
                                                        (gensym '__kw)))
                                                     _kwargs61526_))
                                               (_kwbind61545_
                                                (map (lambda (_kw61542_
                                                              _kwvar61543_)
                                                       (let ((__tmp64637
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar61543_ '())))
                     (__tmp64635
                      (let ((__tmp64636 (cdr _kw61542_)))
                        (declare (not safe))
                        (cons __tmp64636 '()))))
                 (declare (not safe))
                 (cons __tmp64637 __tmp64635)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs61526_
                                                     _kwvars61540_))
                                               (_kwset61550_
                                                (map (lambda (_kw61547_
                                                              _kwvar61548_)
                                                       (let ((__tmp64638
                                                              (let ((__tmp64639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp64647
                                    (let ((__tmp64648
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt61537_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp64648)))
                                   (__tmp64640
                                    (let ((__tmp64644
                                           (let ((__tmp64645
                                                  (let ((__tmp64646
                                                         (car _kw61547_)))
                                                    (declare (not safe))
                                                    (cons __tmp64646 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp64645)))
                                          (__tmp64641
                                           (let ((__tmp64642
                                                  (let ((__tmp64643
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar61548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp64643))))
                                             (declare (not safe))
                                             (cons __tmp64642 '()))))
                                      (declare (not safe))
                                      (cons __tmp64644 __tmp64641))))
                               (declare (not safe))
                               (cons __tmp64647 __tmp64640))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp64639))))
                 (declare (not safe))
                 (cons '%#call __tmp64638)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs61526_
                                                     _kwvars61540_))
                                               (_xkwargs61555_
                                                (map (lambda (_kw61552_
                                                              _kwvar61553_)
                                                       (let ((__tmp64651
                                                              (car _kw61552_))
                                                             (__tmp64649
                                                              (let ((__tmp64650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar61553_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp64650))))
                 (declare (not safe))
                 (cons __tmp64651 __tmp64649)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs61526_
                                                     _kwvars61540_))
                                               (_xargs61562_
                                                (map (lambda (_key61557_)
                                                       (let ((_$e61559_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key61557_ _xkwargs61555_))))
                 (if _$e61559_ (values _$e61559_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys61523_)))
                                          (let ((__tmp64652
                                                 (let ((__tmp64653
                                                        (let ((__tmp64654
                                                               (let ((__tmp64655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp64656
                                     (let ((__tmp64657
                                            (let ((__tmp64671
                                                   (let ((__tmp64672
                                                          (let ((__tmp64682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt61537_ '())))
                        (__tmp64673
                         (let ((__tmp64674
                                (let ((__tmp64675
                                       (let ((__tmp64676
                                              (let ((__tmp64677
                                                     (let ((__tmp64678
                                                            (let ((__tmp64679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp64680
                                  (let ((__tmp64681 (length _kwargs61526_)))
                                    (declare (not safe))
                                    (cons __tmp64681 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp64680))))
                      (declare (not safe))
                      (cons __tmp64679 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp64678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp64677))))
                                         (declare (not safe))
                                         (cons '%#call __tmp64676))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp64675
                                   _stx61483_))))
                           (declare (not safe))
                           (cons __tmp64674 '()))))
                    (declare (not safe))
                    (cons __tmp64682 __tmp64673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64672 '())))
                                                  (__tmp64658
                                                   (let ((__tmp64659
                                                          (let ((__tmp64660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp64661
                                (let ((__tmp64662
                                       (let ((__tmp64663
                                              (let ((__tmp64664
                                                     (let ((__tmp64669
                                                            (let ((__tmp64670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main61522_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp64670)))
                   (__tmp64665
                    (let ((__tmp64667
                           (let ((__tmp64668
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt61537_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp64668)))
                          (__tmp64666
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs61525_ _xargs61562_))))
                      (declare (not safe))
                      (cons __tmp64667 __tmp64666))))
               (declare (not safe))
               (cons __tmp64669 __tmp64665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp64664))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp64663
                                          _stx61483_))))
                                  (declare (not safe))
                                  (cons __tmp64662 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp64661 _kwset61550_))))
                    (declare (not safe))
                    (cons '%#begin __tmp64660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp64659 '()))))
                                              (declare (not safe))
                                              (cons __tmp64671 __tmp64658))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp64657))))
                                (declare (not safe))
                                (cons __tmp64656 '()))))
                         (declare (not safe))
                         (cons _kwbind61545_ __tmp64655))))
                  (declare (not safe))
                  (cons '%#let-values __tmp64654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp64653
                                                    _stx61483_))))
                                            (declare (not safe))
                                            (gxc#compile-e
                                             __tmp64652)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g6150261511_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e6150761568_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6150261511_ '1)))
                               (_e6150861571_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6150261511_ '2)))
                               (_keys61574_ _e6150861571_)
                               (_e6150961576_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6150261511_ '3)))
                               (_main61579_ _e6150961576_))
                          (declare (not safe))
                          (_K6150661565_ _main61579_ _keys61574_))
                        (let () (declare (not safe)) (_else6150461519_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6148561493_ 'gxc#!kw-lambda::t))
              (let* ((_e6148961584_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6148561493_ '1)))
                     (_e6149061587_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6148561493_ '2)))
                     (_table61590_ _e6149061587_)
                     (_e6149161592_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6148561493_ '3)))
                     (_dispatch61595_ _e6149161592_))
                (declare (not safe))
                (_K6148861581_ _dispatch61595_ _table61590_))
              (let () (declare (not safe)) (_E6148761497_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx61095_ _args61096_)
        (let _lp61098_ ((_rest61100_ _args61096_)
                        (_pargs61101_ '())
                        (_kwargs61102_ '()))
          (let* ((___stx6439264393_ _rest61100_)
                 (_g6110861160_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx6439264393_)))))
            (let ((___kont6439464395_
                   (lambda (_L61339_ _L61340_)
                     (let ((__tmp64692
                            (let ()
                              (declare (not safe))
                              (cons _L61340_ _pargs61101_))))
                       (declare (not safe))
                       (_lp61098_ _L61339_ __tmp64692 _kwargs61102_))))
                  (___kont6439664397_
                   (lambda (_L61285_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L61285_ _pargs61101_))
                             (reverse _kwargs61102_))))
                  (___kont6439864399_
                   (lambda (_L61232_ _L61233_ _L61234_)
                     (let ((_kw61251_
                            (let () (declare (not safe)) (gx#stx-e _L61234_))))
                       (if (assq _kw61251_ _kwargs61102_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx61095_
                              _kw61251_))
                           (let ((__tmp64693
                                  (let ((__tmp64694
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw61251_ _L61233_))))
                                    (declare (not safe))
                                    (cons __tmp64694 _kwargs61102_))))
                             (declare (not safe))
                             (_lp61098_ _L61232_ _pargs61101_ __tmp64693))))))
                  (___kont6440064401_
                   (lambda (_L61180_ _L61181_)
                     (let ((__tmp64695
                            (let ()
                              (declare (not safe))
                              (cons _L61181_ _pargs61101_))))
                       (declare (not safe))
                       (_lp61098_ _L61180_ __tmp64695 _kwargs61102_))))
                  (___kont6440264403_
                   (lambda ()
                     (values (reverse _pargs61101_) (reverse _kwargs61102_)))))
              (let* ((_g6110761167_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx6439264393_))
                            (___kont6440264403_)
                            (let () (declare (not safe)) (_g6110861160_)))))
                     (___match6449964500_
                      (lambda (_e6114161200_
                               _hd6114061203_
                               _tl6113961205_
                               _e6114461208_
                               _hd6114361211_
                               _tl6114261213_
                               _e6114761216_
                               _hd6114661219_
                               _tl6114561221_
                               _e6115061224_
                               _hd6114961227_
                               _tl6114861229_)
                        (let ((_L61232_ _tl6114861229_)
                              (_L61233_ _hd6114961227_)
                              (_L61234_ _hd6114661219_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L61234_))
                              (___kont6439864399_ _L61232_ _L61233_ _L61234_)
                              (___kont6440064401_
                               _tl6113961205_
                               _hd6114061203_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6439264393_))
                    (let ((_e6111461304_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6439264393_))))
                      (let ((_tl6111261309_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6111461304_)))
                            (_hd6111361307_
                             (let ()
                               (declare (not safe))
                               (##car _e6111461304_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd6111361307_))
                            (let ((_e6111761312_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd6111361307_))))
                              (let ((_tl6111561317_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6111761312_)))
                                    (_hd6111661315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6111761312_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd6111661315_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd6111661315_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl6111561317_))
                                            (let ((_e6112061320_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl6111561317_))))
                                              (let ((_tl6111861325_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6112061320_)))
                                                    (_hd6111961323_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6112061320_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd6111961323_))
                                                    (let ((_e6112161328_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd6111961323_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e6112161328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl6111861325_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6111261309_))
                          (let ((_e6112461331_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6111261309_))))
                            (let ((_tl6112261336_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6112461331_)))
                                  (_hd6112361334_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6112461331_))))
                              (___kont6439464395_
                               _tl6112261336_
                               _hd6112361334_)))
                          (___kont6440064401_ _tl6111261309_ _hd6111361307_))
                      (___kont6440064401_ _tl6111261309_ _hd6111361307_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e6112161328_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6111861325_))
                          (___kont6439664397_ _tl6111261309_)
                          (___kont6440064401_ _tl6111261309_ _hd6111361307_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6111861325_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6111261309_))
                              (let ((_e6115061224_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6111261309_))))
                                (let ((_tl6114861229_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6115061224_)))
                                      (_hd6114961227_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6115061224_))))
                                  (___match6449964500_
                                   _e6111461304_
                                   _hd6111361307_
                                   _tl6111261309_
                                   _e6111761312_
                                   _hd6111661315_
                                   _tl6111561317_
                                   _e6112061320_
                                   _hd6111961323_
                                   _tl6111861325_
                                   _e6115061224_
                                   _hd6114961227_
                                   _tl6114861229_)))
                              (___kont6440064401_
                               _tl6111261309_
                               _hd6111361307_))
                          (___kont6440064401_
                           _tl6111261309_
                           _hd6111361307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6111861325_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl6111261309_))
                                                            (let ((_e6115061224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl6111261309_))))
                      (let ((_tl6114861229_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6115061224_)))
                            (_hd6114961227_
                             (let ()
                               (declare (not safe))
                               (##car _e6115061224_))))
                        (___match6449964500_
                         _e6111461304_
                         _hd6111361307_
                         _tl6111261309_
                         _e6111761312_
                         _hd6111661315_
                         _tl6111561317_
                         _e6112061320_
                         _hd6111961323_
                         _tl6111861325_
                         _e6115061224_
                         _hd6114961227_
                         _tl6114861229_)))
                    (___kont6440064401_ _tl6111261309_ _hd6111361307_))
                (___kont6440064401_ _tl6111261309_ _hd6111361307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont6440064401_
                                             _tl6111261309_
                                             _hd6111361307_))
                                        (___kont6440064401_
                                         _tl6111261309_
                                         _hd6111361307_))
                                    (___kont6440064401_
                                     _tl6111261309_
                                     _hd6111361307_))))
                            (___kont6440064401_
                             _tl6111261309_
                             _hd6111361307_))))
                    (let () (declare (not safe)) (_g6110761167_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self61091_ _stx61092_ _args61093_)
        (let () (declare (not safe)) (gxc#xform-call% _stx61092_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
