(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708418159)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152184_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152475 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152184_ __tmp152475))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152184_ '%#call gxc#optimize-call%))
           _tbl152184_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152167_ . _args152169_)
        (let ((__tmp152477
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152169_)
                     (gxc#compile-e__0 _stx152167_)
                     (let ((_arg1152174_ (car _args152169_))
                           (_rest152176_ (cdr _args152169_)))
                       (if (null? _rest152176_)
                           (gxc#compile-e__1 _stx152167_ _arg1152174_)
                           (let ((_arg2152179_ (car _rest152176_))
                                 (_rest152181_ (cdr _rest152176_)))
                             (if (null? _rest152181_)
                                 (gxc#compile-e__2
                                  _stx152167_
                                  _arg1152174_
                                  _arg2152179_)
                                 (apply gxc#compile-e
                                        _stx152167_
                                        _arg1152174_
                                        _arg2152179_
                                        _rest152181_))))))))
              (__tmp152476 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152477
           gxc#current-compile-methods
           __tmp152476))))
    (define gxc#optimize-call%
      (lambda (_stx152022_)
        (let* ((___stx152225152226_ _stx152022_)
               (_g152025152045_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152225152226_)))))
          (let ((___kont152227152228_
                 (lambda (_L152089_ _L152090_)
                   (let* ((_rator-id152108_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152090_)))
                          (_rator-type152110_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152108_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152110_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152478
                                  (##structure-ref
                                   _rator-type152110_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152108_
                              '" => "
                              _rator-type152110_
                              '" "
                              __tmp152478))
                           (let ((_optimized152113_
                                  (let ((__method152473
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152110_
                                            'optimize-call))))
                                    (if __method152473
                                        (__method152473
                                         _rator-type152110_
                                         _stx152022_
                                         _L152089_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152110_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152110_))
                                 _optimized152113_
                                 (let* ((___stx152207152208_ _optimized152113_)
                                        (_g152116152126_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152207152208_)))))
                                   (let ((___kont152209152210_
                                          (lambda (_L152146_)
                                            (let ((__tmp152479
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152146_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152479
                                               _stx152022_))))
                                         (___kont152211152212_
                                          (lambda () _optimized152113_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152207152208_))
                                         (let ((_e152121152138_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152207152208_))))
                                           (let ((_tl152119152143_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152121152138_)))
                                                 (_hd152120152141_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152121152138_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152120152141_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152120152141_))
                                                     (___kont152209152210_
                                                      _tl152119152143_)
                                                     (___kont152211152212_))
                                                 (___kont152211152212_))))
                                         (___kont152211152212_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152110_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx152022_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152022_
                                _rator-type152110_)))))))
                (___kont152229152230_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx152022_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152225152226_))
                (let ((_e152031152057_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152225152226_))))
                  (let ((_tl152029152062_
                         (let () (declare (not safe)) (##cdr _e152031152057_)))
                        (_hd152030152060_
                         (let ()
                           (declare (not safe))
                           (##car _e152031152057_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152029152062_))
                        (let ((_e152034152065_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152029152062_))))
                          (let ((_tl152032152070_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152034152065_)))
                                (_hd152033152068_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152034152065_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152033152068_))
                                (let ((_e152037152073_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152033152068_))))
                                  (let ((_tl152035152078_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152037152073_)))
                                        (_hd152036152076_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152037152073_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152036152076_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152036152076_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152035152078_))
                                                (let ((_e152040152081_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152035152078_))))
                                                  (let ((_tl152038152086_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152040152081_)))
                                                        (_hd152039152084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152040152081_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152038152086_))
                                                        (___kont152227152228_
                                                         _tl152032152070_
                                                         _hd152039152084_)
                                                        (___kont152229152230_))))
                                                (___kont152229152230_))
                                            (___kont152229152230_))
                                        (___kont152229152230_))))
                                (___kont152229152230_))))
                        (___kont152229152230_))))
                (___kont152229152230_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151976_ _stx151977_ _args151978_)
        (let* ((_g151980151990_
                (lambda (_g151981151987_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151981151987_))))
               (_g151979152019_
                (lambda (_g151981151993_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151981151993_))
                      (let ((_e151985151995_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151981151993_))))
                        (let ((_hd151984151998_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151985151995_)))
                              (_tl151983152000_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151985151995_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151983152000_))
                              ((lambda (_L152003_)
                                 (let* ((_klass152014_
                                         (let ((__tmp152480
                                                (##structure-ref
                                                 _self151976_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151977_
                                            __tmp152480)))
                                        (_object152016_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L152003_))))
                                   (if (##structure-ref
                                        _klass152014_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152496
                                              (let ((__tmp152497
                                                     (let ((__tmp152499
                                                            (let ((__tmp152500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152501
                                  (##structure-ref
                                   _klass152014_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152501 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152500)))
                   (__tmp152498
                    (let () (declare (not safe)) (cons _object152016_ '()))))
               (declare (not safe))
               (cons __tmp152499 __tmp152498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152497))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152496
                                          _stx151977_))
                                       (if (##structure-ref
                                            _klass152014_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152490
                                                  (let ((__tmp152491
                                                         (let ((__tmp152493
                                                                (let ((__tmp152494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152495
                                      (##structure-ref
                                       _klass152014_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152495 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152494)))
                       (__tmp152492
                        (let ()
                          (declare (not safe))
                          (cons _object152016_ '()))))
                   (declare (not safe))
                   (cons __tmp152493 __tmp152492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152491))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152490
                                              _stx151977_))
                                           (let ((__tmp152481
                                                  (let ((__tmp152482
                                                         (let ((__tmp152488
                                                                (let ((__tmp152489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152489)))
                       (__tmp152483
                        (let ((__tmp152485
                               (let ((__tmp152486
                                      (let ((__tmp152487
                                             (##structure-ref
                                              _self151976_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152487 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152486)))
                              (__tmp152484
                               (let ()
                                 (declare (not safe))
                                 (cons _object152016_ '()))))
                          (declare (not safe))
                          (cons __tmp152485 __tmp152484))))
                   (declare (not safe))
                   (cons __tmp152488 __tmp152483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152482))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152481
                                              _stx151977_))))))
                               _hd151984151998_)
                              (let ()
                                (declare (not safe))
                                (_g151980151990_ _g151981151993_)))))
                      (let ()
                        (declare (not safe))
                        (_g151980151990_ _g151981151993_))))))
          (declare (not safe))
          (_g151979152019_ _args151978_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t152186)
        (let ((__id152187
               (let ((__tmp152188
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152186 'id))))
                 (if __tmp152188
                     __tmp152188
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151976_ _stx151977_ _args151978_)
            (let* ((_g151980151990_
                    (lambda (_g151981151987_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151981151987_))))
                   (_g151979152019_
                    (lambda (_g151981151993_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151981151993_))
                          (let ((_e151985151995_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151981151993_))))
                            (let ((_hd151984151998_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151985151995_)))
                                  (_tl151983152000_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151985151995_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151983152000_))
                                  ((lambda (_L152003_)
                                     (let* ((_klass152014_
                                             (let ((__tmp152502
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151976_
                                                       __id152187
                                                       __t152186
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151977_
                                                __tmp152502)))
                                            (_object152016_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L152003_))))
                                       (if (##structure-ref
                                            _klass152014_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152518
                                                  (let ((__tmp152519
                                                         (let ((__tmp152521
                                                                (let ((__tmp152522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152523
                                      (##structure-ref
                                       _klass152014_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152523 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152522)))
                       (__tmp152520
                        (let ()
                          (declare (not safe))
                          (cons _object152016_ '()))))
                   (declare (not safe))
                   (cons __tmp152521 __tmp152520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152519))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152518
                                              _stx151977_))
                                           (if (##structure-ref
                                                _klass152014_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152512
                                                      (let ((__tmp152513
                                                             (let ((__tmp152515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152516
                                   (let ((__tmp152517
                                          (##structure-ref
                                           _klass152014_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152517 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152516)))
                           (__tmp152514
                            (let ()
                              (declare (not safe))
                              (cons _object152016_ '()))))
                       (declare (not safe))
                       (cons __tmp152515 __tmp152514))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152512
                                                  _stx151977_))
                                               (let ((__tmp152503
                                                      (let ((__tmp152504
                                                             (let ((__tmp152510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152511
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152511)))
                           (__tmp152505
                            (let ((__tmp152507
                                   (let ((__tmp152508
                                          (let ((__tmp152509
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151976_
                                                    __id152187
                                                    __t152186
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152509 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152508)))
                                  (__tmp152506
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152016_ '()))))
                              (declare (not safe))
                              (cons __tmp152507 __tmp152506))))
                       (declare (not safe))
                       (cons __tmp152510 __tmp152505))))
                (declare (not safe))
                (cons '%#call __tmp152504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152503
                                                  _stx151977_))))))
                                   _hd151984151998_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151980151990_ _g151981151993_)))))
                          (let ()
                            (declare (not safe))
                            (_g151980151990_ _g151981151993_))))))
              (declare (not safe))
              (_g151979152019_ _args151978_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate::optimize-call
       gxc#!predicate::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#!constructor::optimize-call
      (lambda (_self151696_ _stx151697_ _args151698_)
        (let* ((_klass151700_
                (let ((__tmp152524
                       (##structure-ref _self151696_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151697_ __tmp152524)))
               (_fields151702_
                (length (##structure-ref _klass151700_ '5 gxc#!class::t '#f)))
               (_args151704_ (map gxc#compile-e _args151698_))
               (_inline-make-object151706_
                (let ((__tmp152525
                       (let ((__tmp152531
                              (let ((__tmp152532
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152532)))
                             (__tmp152526
                              (let ((__tmp152528
                                     (let ((__tmp152529
                                            (let ((__tmp152530
                                                   (##structure-ref
                                                    _self151696_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152530 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152529)))
                                    (__tmp152527
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields151702_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152528 __tmp152527))))
                         (declare (not safe))
                         (cons __tmp152531 __tmp152526))))
                  (declare (not safe))
                  (cons '%#call __tmp152525))))
          (let ((_$e151709_
                 (##structure-ref _klass151700_ '6 gxc#!class::t '#f)))
            (if _$e151709_
                ((lambda (_ctor151712_)
                   (let ((_$obj151714_
                          (let ((__tmp152632 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152632)))
                         (_ctor-impl151715_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151700_
                             _ctor151712_))))
                     (let ((__tmp152633
                            (let ((__tmp152634
                                   (let ((__tmp152702
                                          (let ((__tmp152703
                                                 (let ((__tmp152705
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151714_
                                                                '())))
                                                       (__tmp152704
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151706_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152705
                                                         __tmp152704))))
                                            (declare (not safe))
                                            (cons __tmp152703 '())))
                                         (__tmp152635
                                          (let ((__tmp152636
                                                 (let ((__tmp152637
                                                        (let ((__tmp152641
                                                               (if _ctor-impl151715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152696
                                  (let ((__tmp152700
                                         (let ((__tmp152701
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151715_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152701)))
                                        (__tmp152697
                                         (let ((__tmp152698
                                                (let ((__tmp152699
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151714_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152699))))
                                           (declare (not safe))
                                           (cons __tmp152698 _args151704_))))
                                    (declare (not safe))
                                    (cons __tmp152700 __tmp152697))))
                             (declare (not safe))
                             (cons '%#call __tmp152696))
                           (let* ((_$ctor151717_
                                   (let ((__tmp152642 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152642)))
                                  (__tmp152643
                                   (let ((__tmp152678
                                          (let ((__tmp152679
                                                 (let ((__tmp152695
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151717_
                                                                '())))
                                                       (__tmp152680
                                                        (let ((__tmp152681
                                                               (let ((__tmp152682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152693
                                     (let ((__tmp152694
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152694)))
                                    (__tmp152683
                                     (let ((__tmp152690
                                            (let ((__tmp152691
                                                   (let ((__tmp152692
                                                          (##structure-ref
                                                           _self151696_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152692 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152691)))
                                           (__tmp152684
                                            (let ((__tmp152688
                                                   (let ((__tmp152689
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152689)))
                                                  (__tmp152685
                                                   (let ((__tmp152686
                                                          (let ((__tmp152687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151712_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152686 '()))))
                                              (declare (not safe))
                                              (cons __tmp152688 __tmp152685))))
                                       (declare (not safe))
                                       (cons __tmp152690 __tmp152684))))
                                (declare (not safe))
                                (cons __tmp152693 __tmp152683))))
                         (declare (not safe))
                         (cons '%#call __tmp152682))))
                  (declare (not safe))
                  (cons __tmp152681 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152695
                                                         __tmp152680))))
                                            (declare (not safe))
                                            (cons __tmp152679 '())))
                                         (__tmp152644
                                          (let ((__tmp152645
                                                 (let ((__tmp152646
                                                        (let ((__tmp152676
                                                               (let ((__tmp152677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151717_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152677)))
                      (__tmp152647
                       (let ((__tmp152669
                              (let ((__tmp152670
                                     (let ((__tmp152674
                                            (let ((__tmp152675
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151717_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152675)))
                                           (__tmp152671
                                            (let ((__tmp152672
                                                   (let ((__tmp152673
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152673))))
                                              (declare (not safe))
                                              (cons __tmp152672
                                                    _args151704_))))
                                       (declare (not safe))
                                       (cons __tmp152674 __tmp152671))))
                                (declare (not safe))
                                (cons '%#call __tmp152670)))
                             (__tmp152648
                              (let ((__tmp152649
                                     (let ((__tmp152650
                                            (let ((__tmp152667
                                                   (let ((__tmp152668
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152668)))
                                                  (__tmp152651
                                                   (let ((__tmp152665
                                                          (let ((__tmp152666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152666)))
                 (__tmp152652
                  (let ((__tmp152663
                         (let ((__tmp152664
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152664)))
                        (__tmp152653
                         (let ((__tmp152660
                                (let ((__tmp152661
                                       (let ((__tmp152662
                                              (##structure-ref
                                               _self151696_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152662 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152661)))
                               (__tmp152654
                                (let ((__tmp152658
                                       (let ((__tmp152659
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152659)))
                                      (__tmp152655
                                       (let ((__tmp152656
                                              (let ((__tmp152657
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151712_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152657))))
                                         (declare (not safe))
                                         (cons __tmp152656 '()))))
                                  (declare (not safe))
                                  (cons __tmp152658 __tmp152655))))
                           (declare (not safe))
                           (cons __tmp152660 __tmp152654))))
                    (declare (not safe))
                    (cons __tmp152663 __tmp152653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152665
                                                           __tmp152652))))
                                              (declare (not safe))
                                              (cons __tmp152667 __tmp152651))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152650))))
                                (declare (not safe))
                                (cons __tmp152649 '()))))
                         (declare (not safe))
                         (cons __tmp152669 __tmp152648))))
                  (declare (not safe))
                  (cons __tmp152676 __tmp152647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152646))))
                                            (declare (not safe))
                                            (cons __tmp152645 '()))))
                                     (declare (not safe))
                                     (cons __tmp152678 __tmp152644))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152643))))
                      (__tmp152638
                       (let ((__tmp152639
                              (let ((__tmp152640
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151714_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152640))))
                         (declare (not safe))
                         (cons __tmp152639 '()))))
                  (declare (not safe))
                  (cons __tmp152641 __tmp152638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152637))))
                                            (declare (not safe))
                                            (cons __tmp152636 '()))))
                                     (declare (not safe))
                                     (cons __tmp152702 __tmp152635))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152634))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152633 _stx151697_))))
                 _$e151709_)
                (let ((_$e151719_
                       (##structure-ref _klass151700_ '9 gxc#!class::t '#f)))
                  (if _$e151719_
                      ((lambda (_metaclass151722_)
                         (let* ((_$obj151724_
                                 (let ((__tmp152594 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152594)))
                                (_metakons151726_
                                 (let ((__tmp152595
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151697_
                                           _metaclass151722_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152595
                                    'instance-init!))))
                           (let ((__tmp152596
                                  (let ((__tmp152597
                                         (let ((__tmp152628
                                                (let ((__tmp152629
                                                       (let ((__tmp152631
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151724_ '())))
                     (__tmp152630
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151706_ '()))))
                 (declare (not safe))
                 (cons __tmp152631 __tmp152630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152629 '())))
                                               (__tmp152598
                                                (let ((__tmp152599
                                                       (let ((__tmp152600
                                                              (let ((__tmp152604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151726_
                                 (let ((__tmp152618
                                        (let ((__tmp152626
                                               (let ((__tmp152627
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151726_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152627)))
                                              (__tmp152619
                                               (let ((__tmp152623
                                                      (let ((__tmp152624
                                                             (let ((__tmp152625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151696_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152625 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152624)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152620
                                                      (let ((__tmp152621
                                                             (let ((__tmp152622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151724_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152622))))
                (declare (not safe))
                (cons __tmp152621 _args151704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152623
                                                       __tmp152620))))
                                          (declare (not safe))
                                          (cons __tmp152626 __tmp152619))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152618))
                                 (let ((__tmp152605
                                        (let ((__tmp152616
                                               (let ((__tmp152617
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152617)))
                                              (__tmp152606
                                               (let ((__tmp152613
                                                      (let ((__tmp152614
                                                             (let ((__tmp152615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151696_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152615 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152614)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152607
                                                      (let ((__tmp152611
                                                             (let ((__tmp152612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152612)))
                    (__tmp152608
                     (let ((__tmp152609
                            (let ((__tmp152610
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151724_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152610))))
                       (declare (not safe))
                       (cons __tmp152609 _args151704_))))
                (declare (not safe))
                (cons __tmp152611 __tmp152608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152613
                                                       __tmp152607))))
                                          (declare (not safe))
                                          (cons __tmp152616 __tmp152606))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152605))))
                            (__tmp152601
                             (let ((__tmp152602
                                    (let ((__tmp152603
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151724_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152603))))
                               (declare (not safe))
                               (cons __tmp152602 '()))))
                        (declare (not safe))
                        (cons __tmp152604 __tmp152601))))
                 (declare (not safe))
                 (cons '%#begin __tmp152600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152599 '()))))
                                           (declare (not safe))
                                           (cons __tmp152628 __tmp152598))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152597))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152596 _stx151697_))))
                       _$e151719_)
                      (if (##structure-ref _klass151700_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151704_) _fields151702_)
                              (let ((__tmp152586
                                     (let ((__tmp152587
                                            (let ((__tmp152592
                                                   (let ((__tmp152593
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152593)))
                                                  (__tmp152588
                                                   (let ((__tmp152589
                                                          (let ((__tmp152590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152591
                                (##structure-ref
                                 _self151696_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152591 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152589
                                                           _args151704_))))
                                              (declare (not safe))
                                              (cons __tmp152592 __tmp152588))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152587))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152586
                                 _stx151697_))
                              (let ((__tmp152585
                                     (##structure-ref
                                      _self151696_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152584
                                     (length (##structure-ref
                                              _klass151700_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151697_
                                 __tmp152585
                                 __tmp152584)))
                          (let ((_$obj151729_
                                 (let ((__tmp152533 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152533))))
                            (let _lp151731_ ((_rest151733_ _args151704_)
                                             (_initializers151734_ '()))
                              (let* ((___stx152263152264_ _rest151733_)
                                     (_g151738151759_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152263152264_)))))
                                (let ((___kont152265152266_
                                       (lambda (_L151813_ _L151814_ _L151815_)
                                         (let* ((_slot151846_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L151815_))))
                                                (_off151848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151700_
                                                    _slot151846_))))
                                           (if _off151848_
                                               (let ((__tmp152535
                                                      (let ((__tmp152536
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151848_ _L151814_))))
                (declare (not safe))
                (cons __tmp152536 _initializers151734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151731_
                                                  _L151813_
                                                  __tmp152535))
                                               (let ((__tmp152534
                                                      (##structure-ref
                                                       _self151696_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151697_
                                                  __tmp152534
                                                  _slot151846_))))))
                                      (___kont152267152268_
                                       (lambda ()
                                         (let ((__tmp152537
                                                (let ((__tmp152538
                                                       (let ((__tmp152561
                                                              (let ((__tmp152562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152564
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151729_ '())))
                                   (__tmp152563
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151706_ '()))))
                               (declare (not safe))
                               (cons __tmp152564 __tmp152563))))
                        (declare (not safe))
                        (cons __tmp152562 '())))
                     (__tmp152539
                      (let ((__tmp152540
                             (let ((__tmp152541
                                    (let ((__tmp152558
                                           (let ((__tmp152559
                                                  (let ((__tmp152560
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152560))))
                                             (declare (not safe))
                                             (cons __tmp152559 '())))
                                          (__tmp152542
                                           (let ((__tmp152543
                                                  (lambda (_i151773_ _r151774_)
                                                    (let ((__tmp152544
                                                           (let ((__tmp152545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152555
                                 (let ((__tmp152556
                                        (let ((__tmp152557
                                               (##structure-ref
                                                _self151696_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152557 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152556)))
                                (__tmp152546
                                 (let ((__tmp152552
                                        (let ((__tmp152553
                                               (let ((__tmp152554
                                                      (car _i151773_)))
                                                 (declare (not safe))
                                                 (cons __tmp152554 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152553)))
                                       (__tmp152547
                                        (let ((__tmp152550
                                               (let ((__tmp152551
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151729_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152551)))
                                              (__tmp152548
                                               (let ((__tmp152549
                                                      (cdr _i151773_)))
                                                 (declare (not safe))
                                                 (cons __tmp152549 '()))))
                                          (declare (not safe))
                                          (cons __tmp152550 __tmp152548))))
                                   (declare (not safe))
                                   (cons __tmp152552 __tmp152547))))
                            (declare (not safe))
                            (cons __tmp152555 __tmp152546))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152545))))
              (declare (not safe))
              (cons __tmp152544 _r151774_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152543
                                                     '()
                                                     _initializers151734_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152558 __tmp152542))))
                               (declare (not safe))
                               (cons '%#begin __tmp152541))))
                        (declare (not safe))
                        (cons __tmp152540 '()))))
                 (declare (not safe))
                 (cons __tmp152561 __tmp152539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152538))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152537
                                            _stx151697_))))
                                      (___kont152269152270_
                                       (lambda ()
                                         (let ((__tmp152565
                                                (let ((__tmp152566
                                                       (let ((__tmp152580
                                                              (let ((__tmp152581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152583
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151729_ '())))
                                   (__tmp152582
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151706_ '()))))
                               (declare (not safe))
                               (cons __tmp152583 __tmp152582))))
                        (declare (not safe))
                        (cons __tmp152581 '())))
                     (__tmp152567
                      (let ((__tmp152568
                             (let ((__tmp152569
                                    (let ((__tmp152573
                                           (let ((__tmp152574
                                                  (let ((__tmp152578
                                                         (let ((__tmp152579
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152579)))
                (__tmp152575
                 (let ((__tmp152576
                        (let ((__tmp152577
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151729_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152577))))
                   (declare (not safe))
                   (cons __tmp152576 _args151704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152578
                                                          __tmp152575))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152574)))
                                          (__tmp152570
                                           (let ((__tmp152571
                                                  (let ((__tmp152572
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152572))))
                                             (declare (not safe))
                                             (cons __tmp152571 '()))))
                                      (declare (not safe))
                                      (cons __tmp152573 __tmp152570))))
                               (declare (not safe))
                               (cons '%#begin __tmp152569))))
                        (declare (not safe))
                        (cons __tmp152568 '()))))
                 (declare (not safe))
                 (cons __tmp152580 __tmp152567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152566))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152565
                                            _stx151697_)))))
                                  (let* ((_g151736151776_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152263152264_))
                                                (___kont152267152268_)
                                                (___kont152269152270_))))
                                         (___match152300152301_
                                          (lambda (_e151745151781_
                                                   _hd151744151784_
                                                   _tl151743151786_
                                                   _e151748151789_
                                                   _hd151747151792_
                                                   _tl151746151794_
                                                   _e151751151797_
                                                   _hd151750151800_
                                                   _tl151749151802_
                                                   _e151754151805_
                                                   _hd151753151808_
                                                   _tl151752151810_)
                                            (let ((_L151813_ _tl151752151810_)
                                                  (_L151814_ _hd151753151808_)
                                                  (_L151815_ _hd151750151800_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151815_))
                                                  (___kont152265152266_
                                                   _L151813_
                                                   _L151814_
                                                   _L151815_)
                                                  (___kont152269152270_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152263152264_))
                                        (let ((_e151745151781_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152263152264_))))
                                          (let ((_tl151743151786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151745151781_)))
                                                (_hd151744151784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151745151781_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151744151784_))
                                                (let ((_e151748151789_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151744151784_))))
                                                  (let ((_tl151746151794_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151748151789_)))
                                                        (_hd151747151792_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151748151789_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151747151792_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151747151792_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151746151794_))
                        (let ((_e151751151797_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151746151794_))))
                          (let ((_tl151749151802_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151751151797_)))
                                (_hd151750151800_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151751151797_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151749151802_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151743151786_))
                                    (let ((_e151754151805_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151743151786_))))
                                      (let ((_tl151752151810_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151754151805_)))
                                            (_hd151753151808_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151754151805_))))
                                        (___match152300152301_
                                         _e151745151781_
                                         _hd151744151784_
                                         _tl151743151786_
                                         _e151748151789_
                                         _hd151747151792_
                                         _tl151746151794_
                                         _e151751151797_
                                         _hd151750151800_
                                         _tl151749151802_
                                         _e151754151805_
                                         _hd151753151808_
                                         _tl151752151810_)))
                                    (___kont152269152270_))
                                (___kont152269152270_))))
                        (___kont152269152270_))
                    (___kont152269152270_))
                (___kont152269152270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152269152270_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151736151776_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t152189)
        (let ((__id152190
               (let ((__tmp152191
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152189 'id))))
                 (if __tmp152191
                     __tmp152191
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151696_ _stx151697_ _args151698_)
            (let* ((_klass151700_
                    (let ((__tmp152706
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151696_
                              __id152190
                              __t152189
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151697_ __tmp152706)))
                   (_fields151702_
                    (length (##structure-ref
                             _klass151700_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151704_ (map gxc#compile-e _args151698_))
                   (_inline-make-object151706_
                    (let ((__tmp152707
                           (let ((__tmp152713
                                  (let ((__tmp152714
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152714)))
                                 (__tmp152708
                                  (let ((__tmp152710
                                         (let ((__tmp152711
                                                (let ((__tmp152712
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151696_
                                                          __id152190
                                                          __t152189
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152712 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152711)))
                                        (__tmp152709
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields151702_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp152710 __tmp152709))))
                             (declare (not safe))
                             (cons __tmp152713 __tmp152708))))
                      (declare (not safe))
                      (cons '%#call __tmp152707))))
              (let ((_$e151709_
                     (##structure-ref _klass151700_ '6 gxc#!class::t '#f)))
                (if _$e151709_
                    ((lambda (_ctor151712_)
                       (let ((_$obj151714_
                              (let ((__tmp152814 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152814)))
                             (_ctor-impl151715_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151700_
                                 _ctor151712_))))
                         (let ((__tmp152815
                                (let ((__tmp152816
                                       (let ((__tmp152884
                                              (let ((__tmp152885
                                                     (let ((__tmp152887
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152886
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151706_ '()))))
               (declare (not safe))
               (cons __tmp152887 __tmp152886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152885 '())))
                                             (__tmp152817
                                              (let ((__tmp152818
                                                     (let ((__tmp152819
                                                            (let ((__tmp152823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151715_
                               (let ((__tmp152878
                                      (let ((__tmp152882
                                             (let ((__tmp152883
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151715_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152883)))
                                            (__tmp152879
                                             (let ((__tmp152880
                                                    (let ((__tmp152881
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152880
                                                     _args151704_))))
                                        (declare (not safe))
                                        (cons __tmp152882 __tmp152879))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152878))
                               (let* ((_$ctor151717_
                                       (let ((__tmp152824
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152824)))
                                      (__tmp152825
                                       (let ((__tmp152860
                                              (let ((__tmp152861
                                                     (let ((__tmp152877
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152862
                    (let ((__tmp152863
                           (let ((__tmp152864
                                  (let ((__tmp152875
                                         (let ((__tmp152876
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152876)))
                                        (__tmp152865
                                         (let ((__tmp152872
                                                (let ((__tmp152873
                                                       (let ((__tmp152874
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151696_
                         __id152190
                         __t152189
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152874 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152873)))
                                               (__tmp152866
                                                (let ((__tmp152870
                                                       (let ((__tmp152871
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151714_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152871)))
              (__tmp152867
               (let ((__tmp152868
                      (let ((__tmp152869
                             (let ()
                               (declare (not safe))
                               (cons _ctor151712_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152869))))
                 (declare (not safe))
                 (cons __tmp152868 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152870
                                                        __tmp152867))))
                                           (declare (not safe))
                                           (cons __tmp152872 __tmp152866))))
                                    (declare (not safe))
                                    (cons __tmp152875 __tmp152865))))
                             (declare (not safe))
                             (cons '%#call __tmp152864))))
                      (declare (not safe))
                      (cons __tmp152863 '()))))
               (declare (not safe))
               (cons __tmp152877 __tmp152862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152861 '())))
                                             (__tmp152826
                                              (let ((__tmp152827
                                                     (let ((__tmp152828
                                                            (let ((__tmp152858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152859
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151717_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152859)))
                          (__tmp152829
                           (let ((__tmp152851
                                  (let ((__tmp152852
                                         (let ((__tmp152856
                                                (let ((__tmp152857
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151717_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152857)))
                                               (__tmp152853
                                                (let ((__tmp152854
                                                       (let ((__tmp152855
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151714_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152854
                                                        _args151704_))))
                                           (declare (not safe))
                                           (cons __tmp152856 __tmp152853))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152852)))
                                 (__tmp152830
                                  (let ((__tmp152831
                                         (let ((__tmp152832
                                                (let ((__tmp152849
                                                       (let ((__tmp152850
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152850)))
              (__tmp152833
               (let ((__tmp152847
                      (let ((__tmp152848
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152848)))
                     (__tmp152834
                      (let ((__tmp152845
                             (let ((__tmp152846
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152846)))
                            (__tmp152835
                             (let ((__tmp152842
                                    (let ((__tmp152843
                                           (let ((__tmp152844
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151696_
                                                     __id152190
                                                     __t152189
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152844 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152843)))
                                   (__tmp152836
                                    (let ((__tmp152840
                                           (let ((__tmp152841
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152841)))
                                          (__tmp152837
                                           (let ((__tmp152838
                                                  (let ((__tmp152839
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152839))))
                                             (declare (not safe))
                                             (cons __tmp152838 '()))))
                                      (declare (not safe))
                                      (cons __tmp152840 __tmp152837))))
                               (declare (not safe))
                               (cons __tmp152842 __tmp152836))))
                        (declare (not safe))
                        (cons __tmp152845 __tmp152835))))
                 (declare (not safe))
                 (cons __tmp152847 __tmp152834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152849
                                                        __tmp152833))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152832))))
                                    (declare (not safe))
                                    (cons __tmp152831 '()))))
                             (declare (not safe))
                             (cons __tmp152851 __tmp152830))))
                      (declare (not safe))
                      (cons __tmp152858 __tmp152829))))
               (declare (not safe))
               (cons '%#if __tmp152828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152827 '()))))
                                         (declare (not safe))
                                         (cons __tmp152860 __tmp152826))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152825))))
                          (__tmp152820
                           (let ((__tmp152821
                                  (let ((__tmp152822
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151714_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152822))))
                             (declare (not safe))
                             (cons __tmp152821 '()))))
                      (declare (not safe))
                      (cons __tmp152823 __tmp152820))))
               (declare (not safe))
               (cons '%#begin __tmp152819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152818 '()))))
                                         (declare (not safe))
                                         (cons __tmp152884 __tmp152817))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152816))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152815 _stx151697_))))
                     _$e151709_)
                    (let ((_$e151719_
                           (##structure-ref
                            _klass151700_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e151719_
                          ((lambda (_metaclass151722_)
                             (let* ((_$obj151724_
                                     (let ((__tmp152776 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152776)))
                                    (_metakons151726_
                                     (let ((__tmp152777
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151697_
                                               _metaclass151722_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152777
                                        'instance-init!))))
                               (let ((__tmp152778
                                      (let ((__tmp152779
                                             (let ((__tmp152810
                                                    (let ((__tmp152811
                                                           (let ((__tmp152813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151724_ '())))
                         (__tmp152812
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151706_ '()))))
                     (declare (not safe))
                     (cons __tmp152813 __tmp152812))))
              (declare (not safe))
              (cons __tmp152811 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152780
                                                    (let ((__tmp152781
                                                           (let ((__tmp152782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152786
                                 (if _metakons151726_
                                     (let ((__tmp152800
                                            (let ((__tmp152808
                                                   (let ((__tmp152809
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152809)))
                                                  (__tmp152801
                                                   (let ((__tmp152805
                                                          (let ((__tmp152806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152807
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151696_
                                   __id152190
                                   __t152189
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152807 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152806)))
                 (__tmp152802
                  (let ((__tmp152803
                         (let ((__tmp152804
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151724_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152804))))
                    (declare (not safe))
                    (cons __tmp152803 _args151704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152805
                                                           __tmp152802))))
                                              (declare (not safe))
                                              (cons __tmp152808 __tmp152801))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152800))
                                     (let ((__tmp152787
                                            (let ((__tmp152798
                                                   (let ((__tmp152799
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152799)))
                                                  (__tmp152788
                                                   (let ((__tmp152795
                                                          (let ((__tmp152796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152797
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151696_
                                   __id152190
                                   __t152189
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152797 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152796)))
                 (__tmp152789
                  (let ((__tmp152793
                         (let ((__tmp152794
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152794)))
                        (__tmp152790
                         (let ((__tmp152791
                                (let ((__tmp152792
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151724_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152792))))
                           (declare (not safe))
                           (cons __tmp152791 _args151704_))))
                    (declare (not safe))
                    (cons __tmp152793 __tmp152790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152795
                                                           __tmp152789))))
                                              (declare (not safe))
                                              (cons __tmp152798 __tmp152788))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152787))))
                                (__tmp152783
                                 (let ((__tmp152784
                                        (let ((__tmp152785
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151724_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152785))))
                                   (declare (not safe))
                                   (cons __tmp152784 '()))))
                            (declare (not safe))
                            (cons __tmp152786 __tmp152783))))
                     (declare (not safe))
                     (cons '%#begin __tmp152782))))
              (declare (not safe))
              (cons __tmp152781 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152810
                                                     __tmp152780))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152779))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152778
                                  _stx151697_))))
                           _$e151719_)
                          (if (##structure-ref
                               _klass151700_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151704_) _fields151702_)
                                  (let ((__tmp152768
                                         (let ((__tmp152769
                                                (let ((__tmp152774
                                                       (let ((__tmp152775
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152775)))
              (__tmp152770
               (let ((__tmp152771
                      (let ((__tmp152772
                             (let ((__tmp152773
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151696_
                                       __id152190
                                       __t152189
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152773 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152772))))
                 (declare (not safe))
                 (cons __tmp152771 _args151704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152774
                                                        __tmp152770))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152769))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152768
                                     _stx151697_))
                                  (let ((__tmp152767
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151696_
                                            __id152190
                                            __t152189
                                            '#f)))
                                        (__tmp152766
                                         (length (##structure-ref
                                                  _klass151700_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151697_
                                     __tmp152767
                                     __tmp152766)))
                              (let ((_$obj151729_
                                     (let ((__tmp152715 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152715))))
                                (let _lp151731_ ((_rest151733_ _args151704_)
                                                 (_initializers151734_ '()))
                                  (let* ((___stx152305152306_ _rest151733_)
                                         (_g151738151759_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152305152306_)))))
                                    (let ((___kont152307152308_
                                           (lambda (_L151813_
                                                    _L151814_
                                                    _L151815_)
                                             (let* ((_slot151846_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L151815_))))
                                                    (_off151848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151700_
                                                        _slot151846_))))
                                               (if _off151848_
                                                   (let ((__tmp152717
                                                          (let ((__tmp152718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151848_ _L151814_))))
                    (declare (not safe))
                    (cons __tmp152718 _initializers151734_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151731_
                                                      _L151813_
                                                      __tmp152717))
                                                   (let ((__tmp152716
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151696_
                                                             __id152190
                                                             __t152189
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151697_
                                                      __tmp152716
                                                      _slot151846_))))))
                                          (___kont152309152310_
                                           (lambda ()
                                             (let ((__tmp152719
                                                    (let ((__tmp152720
                                                           (let ((__tmp152743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152744
                                 (let ((__tmp152746
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151729_ '())))
                                       (__tmp152745
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151706_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152746 __tmp152745))))
                            (declare (not safe))
                            (cons __tmp152744 '())))
                         (__tmp152721
                          (let ((__tmp152722
                                 (let ((__tmp152723
                                        (let ((__tmp152740
                                               (let ((__tmp152741
                                                      (let ((__tmp152742
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151729_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152741 '())))
                                              (__tmp152724
                                               (let ((__tmp152725
                                                      (lambda (_i151773_
                                                               _r151774_)
                                                        (let ((__tmp152726
                                                               (let ((__tmp152727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152737
                                     (let ((__tmp152738
                                            (let ((__tmp152739
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151696_
                                                      __id152190
                                                      __t152189
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152739 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152738)))
                                    (__tmp152728
                                     (let ((__tmp152734
                                            (let ((__tmp152735
                                                   (let ((__tmp152736
                                                          (car _i151773_)))
                                                     (declare (not safe))
                                                     (cons __tmp152736 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152735)))
                                           (__tmp152729
                                            (let ((__tmp152732
                                                   (let ((__tmp152733
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152733)))
                                                  (__tmp152730
                                                   (let ((__tmp152731
                                                          (cdr _i151773_)))
                                                     (declare (not safe))
                                                     (cons __tmp152731 '()))))
                                              (declare (not safe))
                                              (cons __tmp152732 __tmp152730))))
                                       (declare (not safe))
                                       (cons __tmp152734 __tmp152729))))
                                (declare (not safe))
                                (cons __tmp152737 __tmp152728))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152727))))
                  (declare (not safe))
                  (cons __tmp152726 _r151774_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152725
                                                         '()
                                                         _initializers151734_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152740
                                                  __tmp152724))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152723))))
                            (declare (not safe))
                            (cons __tmp152722 '()))))
                     (declare (not safe))
                     (cons __tmp152743 __tmp152721))))
              (declare (not safe))
              (cons '%#let-values __tmp152720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152719
                                                _stx151697_))))
                                          (___kont152311152312_
                                           (lambda ()
                                             (let ((__tmp152747
                                                    (let ((__tmp152748
                                                           (let ((__tmp152762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152763
                                 (let ((__tmp152765
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151729_ '())))
                                       (__tmp152764
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151706_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152765 __tmp152764))))
                            (declare (not safe))
                            (cons __tmp152763 '())))
                         (__tmp152749
                          (let ((__tmp152750
                                 (let ((__tmp152751
                                        (let ((__tmp152755
                                               (let ((__tmp152756
                                                      (let ((__tmp152760
                                                             (let ((__tmp152761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152761)))
                    (__tmp152757
                     (let ((__tmp152758
                            (let ((__tmp152759
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151729_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152759))))
                       (declare (not safe))
                       (cons __tmp152758 _args151704_))))
                (declare (not safe))
                (cons __tmp152760 __tmp152757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152756)))
                                              (__tmp152752
                                               (let ((__tmp152753
                                                      (let ((__tmp152754
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151729_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152753 '()))))
                                          (declare (not safe))
                                          (cons __tmp152755 __tmp152752))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152751))))
                            (declare (not safe))
                            (cons __tmp152750 '()))))
                     (declare (not safe))
                     (cons __tmp152762 __tmp152749))))
              (declare (not safe))
              (cons '%#let-values __tmp152748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152747
                                                _stx151697_)))))
                                      (let* ((_g151736151776_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152305152306_))
                                                    (___kont152309152310_)
                                                    (___kont152311152312_))))
                                             (___match152342152343_
                                              (lambda (_e151745151781_
                                                       _hd151744151784_
                                                       _tl151743151786_
                                                       _e151748151789_
                                                       _hd151747151792_
                                                       _tl151746151794_
                                                       _e151751151797_
                                                       _hd151750151800_
                                                       _tl151749151802_
                                                       _e151754151805_
                                                       _hd151753151808_
                                                       _tl151752151810_)
                                                (let ((_L151813_
                                                       _tl151752151810_)
                                                      (_L151814_
                                                       _hd151753151808_)
                                                      (_L151815_
                                                       _hd151750151800_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151815_))
                                                      (___kont152307152308_
                                                       _L151813_
                                                       _L151814_
                                                       _L151815_)
                                                      (___kont152311152312_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152305152306_))
                                            (let ((_e151745151781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152305152306_))))
                                              (let ((_tl151743151786_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151745151781_)))
                                                    (_hd151744151784_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151745151781_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151744151784_))
                                                    (let ((_e151748151789_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151744151784_))))
                                                      (let ((_tl151746151794_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151748151789_)))
                    (_hd151747151792_
                     (let () (declare (not safe)) (##car _e151748151789_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151747151792_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151747151792_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151746151794_))
                            (let ((_e151751151797_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151746151794_))))
                              (let ((_tl151749151802_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151751151797_)))
                                    (_hd151750151800_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151751151797_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151749151802_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151743151786_))
                                        (let ((_e151754151805_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151743151786_))))
                                          (let ((_tl151752151810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151754151805_)))
                                                (_hd151753151808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151754151805_))))
                                            (___match152342152343_
                                             _e151745151781_
                                             _hd151744151784_
                                             _tl151743151786_
                                             _e151748151789_
                                             _hd151747151792_
                                             _tl151746151794_
                                             _e151751151797_
                                             _hd151750151800_
                                             _tl151749151802_
                                             _e151754151805_
                                             _hd151753151808_
                                             _tl151752151810_)))
                                        (___kont152311152312_))
                                    (___kont152311152312_))))
                            (___kont152311152312_))
                        (___kont152311152312_))
                    (___kont152311152312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152311152312_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151736151776_))))))))))))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor::optimize-call
       gxc#!constructor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_self151519_ _stx151520_ _args151521_)
        (let* ((_g151523151533_
                (lambda (_g151524151530_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151524151530_))))
               (_g151522151571_
                (lambda (_g151524151536_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151524151536_))
                      (let ((_e151528151538_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151524151536_))))
                        (let ((_hd151527151541_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151528151538_)))
                              (_tl151526151543_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151528151538_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151526151543_))
                              ((lambda (_L151546_)
                                 (let* ((_klass151557_
                                         (let ((__tmp152888
                                                (##structure-ref
                                                 _self151519_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151520_
                                            __tmp152888)))
                                        (_field151559_
                                         (let ((__tmp152889
                                                (##structure-ref
                                                 _self151519_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151557_
                                            __tmp152889)))
                                        (_object151561_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151546_))))
                                   (if (##structure-ref
                                        _klass151557_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152966
                                              (let ((__tmp152975
                                                     (if (##structure-ref
                                                          _self151519_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152967
                                                     (let ((__tmp152972
                                                            (let ((__tmp152973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152974
                                  (##structure-ref
                                   _self151519_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152974 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152973)))
                   (__tmp152968
                    (let ((__tmp152970
                           (let ((__tmp152971
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151559_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152971)))
                          (__tmp152969
                           (let ()
                             (declare (not safe))
                             (cons _object151561_ '()))))
                      (declare (not safe))
                      (cons __tmp152970 __tmp152969))))
               (declare (not safe))
               (cons __tmp152972 __tmp152968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152975
                                                      __tmp152967))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152966
                                          _stx151520_))
                                       (if (##structure-ref
                                            _klass151557_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152956
                                                  (let ((__tmp152965
                                                         (if (##structure-ref
                                                              _self151519_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152957
                                                         (let ((__tmp152962
                                                                (let ((__tmp152963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152964
                                      (##structure-ref
                                       _self151519_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152964 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152963)))
                       (__tmp152958
                        (let ((__tmp152960
                               (let ((__tmp152961
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151559_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152961)))
                              (__tmp152959
                               (let ()
                                 (declare (not safe))
                                 (cons _object151561_ '()))))
                          (declare (not safe))
                          (cons __tmp152960 __tmp152959))))
                   (declare (not safe))
                   (cons __tmp152962 __tmp152958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152965
                                                          __tmp152957))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152956
                                              _stx151520_))
                                           (let ((_$e151564_
                                                  (let ((__tmp152890
                                                         (##structure-ref
                                                          _self151519_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151557_
                                                     __tmp152890))))
                                             (if _$e151564_
                                                 ((lambda (_klass151567_)
                                                    (let ((__tmp152946
                                                           (let ((__tmp152955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151519_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152947
                          (let ((__tmp152952
                                 (let ((__tmp152953
                                        (let ((__tmp152954
                                               (##structure-ref
                                                _self151519_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152954 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152953)))
                                (__tmp152948
                                 (let ((__tmp152950
                                        (let ((__tmp152951
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151559_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152951)))
                                       (__tmp152949
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151561_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152950 __tmp152949))))
                            (declare (not safe))
                            (cons __tmp152952 __tmp152948))))
                     (declare (not safe))
                     (cons __tmp152955 __tmp152947))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152946 _stx151520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151564_)
                                                 (if (##structure-ref
                                                      _self151519_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152900
                                                            (let* ((_$obj151569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152901 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152901)))
                           (__tmp152902
                            (let ((__tmp152942
                                   (let ((__tmp152943
                                          (let ((__tmp152945
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151569_ '())))
                                                (__tmp152944
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151561_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152945 __tmp152944))))
                                     (declare (not safe))
                                     (cons __tmp152943 '())))
                                  (__tmp152903
                                   (let ((__tmp152904
                                          (let ((__tmp152905
                                                 (let ((__tmp152934
                                                        (let ((__tmp152935
                                                               (let ((__tmp152939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152940
                                     (let ((__tmp152941
                                            (##structure-ref
                                             _klass151557_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152941 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152940)))
                             (__tmp152936
                              (let ((__tmp152937
                                     (let ((__tmp152938
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151569_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152938))))
                                (declare (not safe))
                                (cons __tmp152937 '()))))
                         (declare (not safe))
                         (cons __tmp152939 __tmp152936))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152935)))
               (__tmp152906
                (let ((__tmp152923
                       (let ((__tmp152924
                              (let ((__tmp152931
                                     (let ((__tmp152932
                                            (let ((__tmp152933
                                                   (##structure-ref
                                                    _self151519_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152933 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152932)))
                                    (__tmp152925
                                     (let ((__tmp152929
                                            (let ((__tmp152930
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151559_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152930)))
                                           (__tmp152926
                                            (let ((__tmp152927
                                                   (let ((__tmp152928
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152928))))
                                              (declare (not safe))
                                              (cons __tmp152927 '()))))
                                       (declare (not safe))
                                       (cons __tmp152929 __tmp152926))))
                                (declare (not safe))
                                (cons __tmp152931 __tmp152925))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152924)))
                      (__tmp152907
                       (let ((__tmp152908
                              (let ((__tmp152909
                                     (let ((__tmp152921
                                            (let ((__tmp152922
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152922)))
                                           (__tmp152910
                                            (let ((__tmp152918
                                                   (let ((__tmp152919
                                                          (let ((__tmp152920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151519_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152919)))
                                                  (__tmp152911
                                                   (let ((__tmp152916
                                                          (let ((__tmp152917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151569_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152917)))
                 (__tmp152912
                  (let ((__tmp152913
                         (let ((__tmp152914
                                (let ((__tmp152915
                                       (##structure-ref
                                        _self151519_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152915 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152914))))
                    (declare (not safe))
                    (cons __tmp152913 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152916
                                                           __tmp152912))))
                                              (declare (not safe))
                                              (cons __tmp152918 __tmp152911))))
                                       (declare (not safe))
                                       (cons __tmp152921 __tmp152910))))
                                (declare (not safe))
                                (cons '%#call __tmp152909))))
                         (declare (not safe))
                         (cons __tmp152908 '()))))
                  (declare (not safe))
                  (cons __tmp152923 __tmp152907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152934
                                                         __tmp152906))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152905))))
                                     (declare (not safe))
                                     (cons __tmp152904 '()))))
                              (declare (not safe))
                              (cons __tmp152942 __tmp152903))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152902))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152900 _stx151520_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152891
                                                            (let ((__tmp152892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152898
                                  (let ((__tmp152899
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152899)))
                                 (__tmp152893
                                  (let ((__tmp152894
                                         (let ((__tmp152895
                                                (let ((__tmp152896
                                                       (let ((__tmp152897
                                                              (##structure-ref
                                                               _self151519_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152897
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152896))))
                                           (declare (not safe))
                                           (cons __tmp152895 '()))))
                                    (declare (not safe))
                                    (cons _object151561_ __tmp152894))))
                             (declare (not safe))
                             (cons __tmp152898 __tmp152893))))
                      (declare (not safe))
                      (cons '%#call __tmp152892))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152891 _stx151520_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151527151541_)
                              (let ()
                                (declare (not safe))
                                (_g151523151533_ _g151524151536_)))))
                      (let ()
                        (declare (not safe))
                        (_g151523151533_ _g151524151536_))))))
          (declare (not safe))
          (_g151522151571_ _args151521_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t152192)
        (let ((__checked?152193
               (let ((__tmp152196
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152192 'checked?))))
                 (if __tmp152196
                     __tmp152196
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id152194
               (let ((__tmp152197
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152192 'id))))
                 (if __tmp152197
                     __tmp152197
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152195
               (let ((__tmp152198
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152192 'slot))))
                 (if __tmp152198
                     __tmp152198
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151519_ _stx151520_ _args151521_)
            (let* ((_g151523151533_
                    (lambda (_g151524151530_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151524151530_))))
                   (_g151522151571_
                    (lambda (_g151524151536_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151524151536_))
                          (let ((_e151528151538_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151524151536_))))
                            (let ((_hd151527151541_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151528151538_)))
                                  (_tl151526151543_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151528151538_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151526151543_))
                                  ((lambda (_L151546_)
                                     (let* ((_klass151557_
                                             (let ((__tmp152976
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151519_
                                                       __id152194
                                                       __t152192
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151520_
                                                __tmp152976)))
                                            (_field151559_
                                             (let ((__tmp152977
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151519_
                                                       __slot152195
                                                       __t152192
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151557_
                                                __tmp152977)))
                                            (_object151561_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151546_))))
                                       (if (##structure-ref
                                            _klass151557_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153054
                                                  (let ((__tmp153063
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151519_
                        __checked?152193
                        __t152192
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153055
                 (let ((__tmp153060
                        (let ((__tmp153061
                               (let ((__tmp153062
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151519_
                                         __id152194
                                         __t152192
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153062 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153061)))
                       (__tmp153056
                        (let ((__tmp153058
                               (let ((__tmp153059
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151559_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153059)))
                              (__tmp153057
                               (let ()
                                 (declare (not safe))
                                 (cons _object151561_ '()))))
                          (declare (not safe))
                          (cons __tmp153058 __tmp153057))))
                   (declare (not safe))
                   (cons __tmp153060 __tmp153056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153063
                                                          __tmp153055))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153054
                                              _stx151520_))
                                           (if (##structure-ref
                                                _klass151557_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153044
                                                      (let ((__tmp153053
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151519_
                            __checked?152193
                            __t152192
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153045
                     (let ((__tmp153050
                            (let ((__tmp153051
                                   (let ((__tmp153052
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151519_
                                             __id152194
                                             __t152192
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153052 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153051)))
                           (__tmp153046
                            (let ((__tmp153048
                                   (let ((__tmp153049
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151559_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153049)))
                                  (__tmp153047
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151561_ '()))))
                              (declare (not safe))
                              (cons __tmp153048 __tmp153047))))
                       (declare (not safe))
                       (cons __tmp153050 __tmp153046))))
                (declare (not safe))
                (cons __tmp153053 __tmp153045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153044
                                                  _stx151520_))
                                               (let ((_$e151564_
                                                      (let ((__tmp152978
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151519_
                        __slot152195
                        __t152192
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151557_ __tmp152978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151564_
                                                     ((lambda (_klass151567_)
                                                        (let ((__tmp153034
                                                               (let ((__tmp153043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151519_
                                     __checked?152193
                                     __t152192
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153035
                              (let ((__tmp153040
                                     (let ((__tmp153041
                                            (let ((__tmp153042
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151519_
                                                      __id152194
                                                      __t152192
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153042 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153041)))
                                    (__tmp153036
                                     (let ((__tmp153038
                                            (let ((__tmp153039
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151559_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153039)))
                                           (__tmp153037
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151561_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153038 __tmp153037))))
                                (declare (not safe))
                                (cons __tmp153040 __tmp153036))))
                         (declare (not safe))
                         (cons __tmp153043 __tmp153035))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153034 _stx151520_)))
              _$e151564_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151519_
                                                            __checked?152193
                                                            __t152192
                                                            '#f))
                                                         (let ((__tmp152988
                                                                (let* ((_$obj151569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152989 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152989)))
                               (__tmp152990
                                (let ((__tmp153030
                                       (let ((__tmp153031
                                              (let ((__tmp153033
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151569_
                                                             '())))
                                                    (__tmp153032
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151561_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153033
                                                      __tmp153032))))
                                         (declare (not safe))
                                         (cons __tmp153031 '())))
                                      (__tmp152991
                                       (let ((__tmp152992
                                              (let ((__tmp152993
                                                     (let ((__tmp153022
                                                            (let ((__tmp153023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153027
                                  (let ((__tmp153028
                                         (let ((__tmp153029
                                                (##structure-ref
                                                 _klass151557_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153029 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153028)))
                                 (__tmp153024
                                  (let ((__tmp153025
                                         (let ((__tmp153026
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151569_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153026))))
                                    (declare (not safe))
                                    (cons __tmp153025 '()))))
                             (declare (not safe))
                             (cons __tmp153027 __tmp153024))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153023)))
                   (__tmp152994
                    (let ((__tmp153011
                           (let ((__tmp153012
                                  (let ((__tmp153019
                                         (let ((__tmp153020
                                                (let ((__tmp153021
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151519_
                                                          __id152194
                                                          __t152192
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153021 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153020)))
                                        (__tmp153013
                                         (let ((__tmp153017
                                                (let ((__tmp153018
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151559_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153018)))
                                               (__tmp153014
                                                (let ((__tmp153015
                                                       (let ((__tmp153016
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151569_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153015 '()))))
                                           (declare (not safe))
                                           (cons __tmp153017 __tmp153014))))
                                    (declare (not safe))
                                    (cons __tmp153019 __tmp153013))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153012)))
                          (__tmp152995
                           (let ((__tmp152996
                                  (let ((__tmp152997
                                         (let ((__tmp153009
                                                (let ((__tmp153010
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153010)))
                                               (__tmp152998
                                                (let ((__tmp153006
                                                       (let ((__tmp153007
                                                              (let ((__tmp153008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151519_
                                __id152194
                                __t152192
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153008 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153007)))
              (__tmp152999
               (let ((__tmp153004
                      (let ((__tmp153005
                             (let ()
                               (declare (not safe))
                               (cons _$obj151569_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153005)))
                     (__tmp153000
                      (let ((__tmp153001
                             (let ((__tmp153002
                                    (let ((__tmp153003
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151519_
                                              __slot152195
                                              __t152192
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153003 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153002))))
                        (declare (not safe))
                        (cons __tmp153001 '()))))
                 (declare (not safe))
                 (cons __tmp153004 __tmp153000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153006
                                                        __tmp152999))))
                                           (declare (not safe))
                                           (cons __tmp153009 __tmp152998))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152997))))
                             (declare (not safe))
                             (cons __tmp152996 '()))))
                      (declare (not safe))
                      (cons __tmp153011 __tmp152995))))
               (declare (not safe))
               (cons __tmp153022 __tmp152994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152993))))
                                         (declare (not safe))
                                         (cons __tmp152992 '()))))
                                  (declare (not safe))
                                  (cons __tmp153030 __tmp152991))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152990))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152988 _stx151520_))
                 (let ((__tmp152979
                        (let ((__tmp152980
                               (let ((__tmp152986
                                      (let ((__tmp152987
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152987)))
                                     (__tmp152981
                                      (let ((__tmp152982
                                             (let ((__tmp152983
                                                    (let ((__tmp152984
                                                           (let ((__tmp152985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151519_
                             __slot152195
                             __t152192
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152985 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152983 '()))))
                                        (declare (not safe))
                                        (cons _object151561_ __tmp152982))))
                                 (declare (not safe))
                                 (cons __tmp152986 __tmp152981))))
                          (declare (not safe))
                          (cons '%#call __tmp152980))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152979 _stx151520_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151527151541_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151523151533_ _g151524151536_)))))
                          (let ()
                            (declare (not safe))
                            (_g151523151533_ _g151524151536_))))))
              (declare (not safe))
              (_g151522151571_ _args151521_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_self151324_ _stx151325_ _args151326_)
        (let* ((_g151328151342_
                (lambda (_g151329151339_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151329151339_))))
               (_g151327151394_
                (lambda (_g151329151345_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151329151345_))
                      (let ((_e151334151347_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151329151345_))))
                        (let ((_hd151333151350_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151334151347_)))
                              (_tl151332151352_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151334151347_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151332151352_))
                              (let ((_e151337151355_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151332151352_))))
                                (let ((_hd151336151358_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151337151355_)))
                                      (_tl151335151360_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151337151355_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151335151360_))
                                      ((lambda (_L151363_ _L151364_)
                                         (let* ((_klass151378_
                                                 (let ((__tmp153064
                                                        (##structure-ref
                                                         _self151324_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151325_
                                                    __tmp153064)))
                                                (_field151380_
                                                 (let ((__tmp153065
                                                        (##structure-ref
                                                         _self151324_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151378_
                                                    __tmp153065)))
                                                (_object151382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151364_)))
                                                (_value151384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151363_))))
                                           (if (##structure-ref
                                                _klass151378_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153147
                                                      (let ((__tmp153157
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151324_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153148
                     (let ((__tmp153154
                            (let ((__tmp153155
                                   (let ((__tmp153156
                                          (##structure-ref
                                           _self151324_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153156 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153155)))
                           (__tmp153149
                            (let ((__tmp153152
                                   (let ((__tmp153153
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151380_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153153)))
                                  (__tmp153150
                                   (let ((__tmp153151
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151384_ '()))))
                                     (declare (not safe))
                                     (cons _object151382_ __tmp153151))))
                              (declare (not safe))
                              (cons __tmp153152 __tmp153150))))
                       (declare (not safe))
                       (cons __tmp153154 __tmp153149))))
                (declare (not safe))
                (cons __tmp153157 __tmp153148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153147
                                                  _stx151325_))
                                               (if (##structure-ref
                                                    _klass151378_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153136
                                                          (let ((__tmp153146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151324_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153137
                         (let ((__tmp153143
                                (let ((__tmp153144
                                       (let ((__tmp153145
                                              (##structure-ref
                                               _self151324_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153145 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153144)))
                               (__tmp153138
                                (let ((__tmp153141
                                       (let ((__tmp153142
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151380_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153142)))
                                      (__tmp153139
                                       (let ((__tmp153140
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151384_ '()))))
                                         (declare (not safe))
                                         (cons _object151382_ __tmp153140))))
                                  (declare (not safe))
                                  (cons __tmp153141 __tmp153139))))
                           (declare (not safe))
                           (cons __tmp153143 __tmp153138))))
                    (declare (not safe))
                    (cons __tmp153146 __tmp153137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153136
                                                      _stx151325_))
                                                   (let ((_$e151387_
                                                          (let ((__tmp153066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151324_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151378_ __tmp153066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151387_
                                                         ((lambda (_klass151390_)
                                                            (let ((__tmp153125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153135
                                  (if (##structure-ref
                                       _self151324_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153126
                                  (let ((__tmp153132
                                         (let ((__tmp153133
                                                (let ((__tmp153134
                                                       (##structure-ref
                                                        _self151324_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153134 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153133)))
                                        (__tmp153127
                                         (let ((__tmp153130
                                                (let ((__tmp153131
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151380_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153131)))
                                               (__tmp153128
                                                (let ((__tmp153129
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151384_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151382_
                                                        __tmp153129))))
                                           (declare (not safe))
                                           (cons __tmp153130 __tmp153128))))
                                    (declare (not safe))
                                    (cons __tmp153132 __tmp153127))))
                             (declare (not safe))
                             (cons __tmp153135 __tmp153126))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153125 _stx151325_)))
                  _$e151387_)
                 (if (##structure-ref _self151324_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153077
                            (let* ((_$obj151392_
                                    (let ((__tmp153078 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153078)))
                                   (__tmp153079
                                    (let ((__tmp153121
                                           (let ((__tmp153122
                                                  (let ((__tmp153124
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153123
                 (let () (declare (not safe)) (cons _object151382_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153124
                                                          __tmp153123))))
                                             (declare (not safe))
                                             (cons __tmp153122 '())))
                                          (__tmp153080
                                           (let ((__tmp153081
                                                  (let ((__tmp153082
                                                         (let ((__tmp153113
                                                                (let ((__tmp153114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153118
                                      (let ((__tmp153119
                                             (let ((__tmp153120
                                                    (##structure-ref
                                                     _klass151378_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153120 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153119)))
                                     (__tmp153115
                                      (let ((__tmp153116
                                             (let ((__tmp153117
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151392_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153117))))
                                        (declare (not safe))
                                        (cons __tmp153116 '()))))
                                 (declare (not safe))
                                 (cons __tmp153118 __tmp153115))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153114)))
                       (__tmp153083
                        (let ((__tmp153101
                               (let ((__tmp153102
                                      (let ((__tmp153110
                                             (let ((__tmp153111
                                                    (let ((__tmp153112
                                                           (##structure-ref
                                                            _self151324_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153112 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153111)))
                                            (__tmp153103
                                             (let ((__tmp153108
                                                    (let ((__tmp153109
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153109)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153104
                                                    (let ((__tmp153106
                                                           (let ((__tmp153107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151392_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153107)))
                  (__tmp153105
                   (let () (declare (not safe)) (cons _value151384_ '()))))
              (declare (not safe))
              (cons __tmp153106 __tmp153105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153108
                                                     __tmp153104))))
                                        (declare (not safe))
                                        (cons __tmp153110 __tmp153103))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153102)))
                              (__tmp153084
                               (let ((__tmp153085
                                      (let ((__tmp153086
                                             (let ((__tmp153099
                                                    (let ((__tmp153100
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153100)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153087
                                                    (let ((__tmp153096
                                                           (let ((__tmp153097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153098
                                 (##structure-ref
                                  _self151324_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153098 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153097)))
                  (__tmp153088
                   (let ((__tmp153094
                          (let ((__tmp153095
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151392_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153095)))
                         (__tmp153089
                          (let ((__tmp153091
                                 (let ((__tmp153092
                                        (let ((__tmp153093
                                               (##structure-ref
                                                _self151324_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153093 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153092)))
                                (__tmp153090
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151384_ '()))))
                            (declare (not safe))
                            (cons __tmp153091 __tmp153090))))
                     (declare (not safe))
                     (cons __tmp153094 __tmp153089))))
              (declare (not safe))
              (cons __tmp153096 __tmp153088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153099
                                                     __tmp153087))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153086))))
                                 (declare (not safe))
                                 (cons __tmp153085 '()))))
                          (declare (not safe))
                          (cons __tmp153101 __tmp153084))))
                   (declare (not safe))
                   (cons __tmp153113 __tmp153083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153082))))
                                             (declare (not safe))
                                             (cons __tmp153081 '()))))
                                      (declare (not safe))
                                      (cons __tmp153121 __tmp153080))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153079))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153077 _stx151325_))
                     (let ((__tmp153067
                            (let ((__tmp153068
                                   (let ((__tmp153075
                                          (let ((__tmp153076
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153076)))
                                         (__tmp153069
                                          (let ((__tmp153070
                                                 (let ((__tmp153072
                                                        (let ((__tmp153073
                                                               (let ((__tmp153074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151324_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153074 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153073)))
               (__tmp153071
                (let () (declare (not safe)) (cons _value151384_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153072
                                                         __tmp153071))))
                                            (declare (not safe))
                                            (cons _object151382_
                                                  __tmp153070))))
                                     (declare (not safe))
                                     (cons __tmp153075 __tmp153069))))
                              (declare (not safe))
                              (cons '%#call __tmp153068))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153067 _stx151325_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151336151358_
                                       _hd151333151350_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151328151342_ _g151329151345_)))))
                              (let ()
                                (declare (not safe))
                                (_g151328151342_ _g151329151345_)))))
                      (let ()
                        (declare (not safe))
                        (_g151328151342_ _g151329151345_))))))
          (declare (not safe))
          (_g151327151394_ _args151326_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t152199)
        (let ((__checked?152200
               (let ((__tmp152203
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152199 'checked?))))
                 (if __tmp152203
                     __tmp152203
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id152201
               (let ((__tmp152204
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152199 'id))))
                 (if __tmp152204
                     __tmp152204
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152202
               (let ((__tmp152205
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t152199 'slot))))
                 (if __tmp152205
                     __tmp152205
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self151324_ _stx151325_ _args151326_)
            (let* ((_g151328151342_
                    (lambda (_g151329151339_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151329151339_))))
                   (_g151327151394_
                    (lambda (_g151329151345_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151329151345_))
                          (let ((_e151334151347_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151329151345_))))
                            (let ((_hd151333151350_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151334151347_)))
                                  (_tl151332151352_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151334151347_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151332151352_))
                                  (let ((_e151337151355_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151332151352_))))
                                    (let ((_hd151336151358_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151337151355_)))
                                          (_tl151335151360_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151337151355_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151335151360_))
                                          ((lambda (_L151363_ _L151364_)
                                             (let* ((_klass151378_
                                                     (let ((__tmp153158
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151324_
                                                               __id152201
                                                               __t152199
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151325_
                                                        __tmp153158)))
                                                    (_field151380_
                                                     (let ((__tmp153159
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151324_
                                                               __slot152202
                                                               __t152199
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151378_
                                                        __tmp153159)))
                                                    (_object151382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151364_)))
                                                    (_value151384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151363_))))
                                               (if (##structure-ref
                                                    _klass151378_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153241
                                                          (let ((__tmp153251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151324_
                                __checked?152200
                                __t152199
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153242
                         (let ((__tmp153248
                                (let ((__tmp153249
                                       (let ((__tmp153250
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151324_
                                                 __id152201
                                                 __t152199
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153250 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153249)))
                               (__tmp153243
                                (let ((__tmp153246
                                       (let ((__tmp153247
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151380_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153247)))
                                      (__tmp153244
                                       (let ((__tmp153245
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151384_ '()))))
                                         (declare (not safe))
                                         (cons _object151382_ __tmp153245))))
                                  (declare (not safe))
                                  (cons __tmp153246 __tmp153244))))
                           (declare (not safe))
                           (cons __tmp153248 __tmp153243))))
                    (declare (not safe))
                    (cons __tmp153251 __tmp153242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153241
                                                      _stx151325_))
                                                   (if (##structure-ref
                                                        _klass151378_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153230
                                                              (let ((__tmp153240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151324_
                                    __checked?152200
                                    __t152199
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153231
                             (let ((__tmp153237
                                    (let ((__tmp153238
                                           (let ((__tmp153239
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151324_
                                                     __id152201
                                                     __t152199
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153239 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153238)))
                                   (__tmp153232
                                    (let ((__tmp153235
                                           (let ((__tmp153236
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151380_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153236)))
                                          (__tmp153233
                                           (let ((__tmp153234
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151384_ '()))))
                                             (declare (not safe))
                                             (cons _object151382_
                                                   __tmp153234))))
                                      (declare (not safe))
                                      (cons __tmp153235 __tmp153233))))
                               (declare (not safe))
                               (cons __tmp153237 __tmp153232))))
                        (declare (not safe))
                        (cons __tmp153240 __tmp153231))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153230 _stx151325_))
               (let ((_$e151387_
                      (let ((__tmp153160
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151324_
                                __slot152202
                                __t152199
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151378_
                         __tmp153160))))
                 (if _$e151387_
                     ((lambda (_klass151390_)
                        (let ((__tmp153219
                               (let ((__tmp153229
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151324_
                                             __checked?152200
                                             __t152199
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153220
                                      (let ((__tmp153226
                                             (let ((__tmp153227
                                                    (let ((__tmp153228
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151324_
                                                              __id152201
                                                              __t152199
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153228 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153227)))
                                            (__tmp153221
                                             (let ((__tmp153224
                                                    (let ((__tmp153225
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153225)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153222
                                                    (let ((__tmp153223
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151382_ __tmp153223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153224
                                                     __tmp153222))))
                                        (declare (not safe))
                                        (cons __tmp153226 __tmp153221))))
                                 (declare (not safe))
                                 (cons __tmp153229 __tmp153220))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153219 _stx151325_)))
                      _$e151387_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151324_
                            __checked?152200
                            __t152199
                            '#f))
                         (let ((__tmp153171
                                (let* ((_$obj151392_
                                        (let ((__tmp153172 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153172)))
                                       (__tmp153173
                                        (let ((__tmp153215
                                               (let ((__tmp153216
                                                      (let ((__tmp153218
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151392_ '())))
                    (__tmp153217
                     (let () (declare (not safe)) (cons _object151382_ '()))))
                (declare (not safe))
                (cons __tmp153218 __tmp153217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153216 '())))
                                              (__tmp153174
                                               (let ((__tmp153175
                                                      (let ((__tmp153176
                                                             (let ((__tmp153207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153208
                                   (let ((__tmp153212
                                          (let ((__tmp153213
                                                 (let ((__tmp153214
                                                        (##structure-ref
                                                         _klass151378_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153214 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153213)))
                                         (__tmp153209
                                          (let ((__tmp153210
                                                 (let ((__tmp153211
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151392_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153211))))
                                            (declare (not safe))
                                            (cons __tmp153210 '()))))
                                     (declare (not safe))
                                     (cons __tmp153212 __tmp153209))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153208)))
                           (__tmp153177
                            (let ((__tmp153195
                                   (let ((__tmp153196
                                          (let ((__tmp153204
                                                 (let ((__tmp153205
                                                        (let ((__tmp153206
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151324_
                          __id152201
                          __t152199
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153206 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153205)))
                                                (__tmp153197
                                                 (let ((__tmp153202
                                                        (let ((__tmp153203
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151380_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153203)))
               (__tmp153198
                (let ((__tmp153200
                       (let ((__tmp153201
                              (let ()
                                (declare (not safe))
                                (cons _$obj151392_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153201)))
                      (__tmp153199
                       (let () (declare (not safe)) (cons _value151384_ '()))))
                  (declare (not safe))
                  (cons __tmp153200 __tmp153199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153202
                                                         __tmp153198))))
                                            (declare (not safe))
                                            (cons __tmp153204 __tmp153197))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153196)))
                                  (__tmp153178
                                   (let ((__tmp153179
                                          (let ((__tmp153180
                                                 (let ((__tmp153193
                                                        (let ((__tmp153194
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153194)))
               (__tmp153181
                (let ((__tmp153190
                       (let ((__tmp153191
                              (let ((__tmp153192
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151324_
                                        __id152201
                                        __t152199
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153192 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153191)))
                      (__tmp153182
                       (let ((__tmp153188
                              (let ((__tmp153189
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151392_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153189)))
                             (__tmp153183
                              (let ((__tmp153185
                                     (let ((__tmp153186
                                            (let ((__tmp153187
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151324_
                                                      __slot152202
                                                      __t152199
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153187 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153186)))
                                    (__tmp153184
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151384_ '()))))
                                (declare (not safe))
                                (cons __tmp153185 __tmp153184))))
                         (declare (not safe))
                         (cons __tmp153188 __tmp153183))))
                  (declare (not safe))
                  (cons __tmp153190 __tmp153182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153193
                                                         __tmp153181))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153180))))
                                     (declare (not safe))
                                     (cons __tmp153179 '()))))
                              (declare (not safe))
                              (cons __tmp153195 __tmp153178))))
                       (declare (not safe))
                       (cons __tmp153207 __tmp153177))))
                (declare (not safe))
                (cons '%#if __tmp153176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153175 '()))))
                                          (declare (not safe))
                                          (cons __tmp153215 __tmp153174))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153173))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153171 _stx151325_))
                         (let ((__tmp153161
                                (let ((__tmp153162
                                       (let ((__tmp153169
                                              (let ((__tmp153170
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153170)))
                                             (__tmp153163
                                              (let ((__tmp153164
                                                     (let ((__tmp153166
                                                            (let ((__tmp153167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153168
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151324_
                                     __slot152202
                                     __t152199
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153168 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153167)))
                   (__tmp153165
                    (let () (declare (not safe)) (cons _value151384_ '()))))
               (declare (not safe))
               (cons __tmp153166 __tmp153165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151382_
                                                      __tmp153164))))
                                         (declare (not safe))
                                         (cons __tmp153169 __tmp153163))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153162))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153161
                            _stx151325_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151336151358_
                                           _hd151333151350_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151328151342_
                                             _g151329151345_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151328151342_ _g151329151345_)))))
                          (let ()
                            (declare (not safe))
                            (_g151328151342_ _g151329151345_))))))
              (declare (not safe))
              (_g151327151394_ _args151326_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self151158_ _stx151159_ _args151160_)
        (let* ((_self151161151170_ _self151158_)
               (_E151163151174_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151161151170_))))
               (_K151164151181_
                (lambda (_inline151177_ _dispatch151178_ _arity151179_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151158_ _args151160_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151159_
                         _arity151179_)))
                  (if _inline151177_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153257
                               (let ((__tmp153258
                                      (_inline151177_ _stx151159_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153258
                                  _stx151159_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153257)))
                      (if _dispatch151178_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151178_))
                            (let ((__tmp153252
                                   (let ((__tmp153253
                                          (let ((__tmp153254
                                                 (let ((__tmp153255
                                                        (let ((__tmp153256
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151178_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153255
                                                         _args151160_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153254))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153253
                                      _stx151159_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153252)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151159_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151161151170_ 'gxc#!lambda::t))
              (let* ((_e151165151184_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151161151170_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151166151187_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151161151170_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151190_ _e151166151187_)
                     (_e151167151192_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151161151170_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151195_ _e151167151192_)
                     (_e151168151197_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151161151170_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151200_ _e151168151197_))
                (declare (not safe))
                (_K151164151181_
                 _inline151200_
                 _dispatch151195_
                 _arity151190_))
              (let () (declare (not safe)) (_E151163151174_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150997_ _stx150998_ _args150999_)
        (let* ((_self151000151007_ _self150997_)
               (_E151002151011_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151000151007_))))
               (_K151003151025_
                (lambda (_clauses151014_)
                  (let ((_$e151020_
                         (let ((__tmp153259
                                (lambda (_g151015151017_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151015151017_
                                     _args150999_)))))
                           (declare (not safe))
                           (find __tmp153259 _clauses151014_))))
                    (if _$e151020_
                        ((lambda (_clause151023_)
                           (let ((__method152474
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151023_
                                     'optimize-call))))
                             (if __method152474
                                 (__method152474
                                  _clause151023_
                                  _stx150998_
                                  _args150999_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151023_
                                          'optimize-call)))))
                         _$e151020_)
                        (let ((__tmp153260
                               (map gxc#!lambda-arity _clauses151014_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150998_
                           __tmp153260)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151000151007_
                 'gxc#!case-lambda::t))
              (let* ((_e151004151028_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151000151007_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151005151031_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151000151007_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151034_ _e151005151031_))
                (declare (not safe))
                (_K151003151025_ _clauses151034_))
              (let () (declare (not safe)) (_E151002151011_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150811_ _args150812_)
        (let* ((_self150813150820_ _self150811_)
               (_E150815150824_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150813150820_))))
               (_K150816150864_
                (lambda (_arity150827_)
                  (let* ((_arity150828150837_ _arity150827_)
                         (_E150831150841_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150828150837_)))))
                    (let ((_K150835150861_
                           (lambda ()
                             (fx= (length _args150812_) _arity150827_)))
                          (_K150832150847_
                           (lambda (_arity150845_)
                             (fx>= (length _args150812_) _arity150845_))))
                      (let ((_try-match150830150857_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150828150837_))
                                   (let ((_tl150834150852_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150828150837_)))
                                         (_hd150833150850_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150828150837_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150834150852_))
                                         (let ((_arity150855_
                                                _hd150833150850_))
                                           (declare (not safe))
                                           (_K150832150847_ _arity150855_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150831150841_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150831150841_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150828150837_))
                            (let () (declare (not safe)) (_K150835150861_))
                            (let ()
                              (declare (not safe))
                              (_try-match150830150857_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150813150820_ 'gxc#!lambda::t))
              (let* ((_e150817150867_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150813150820_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150818150870_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150813150820_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150873_ _e150818150870_))
                (declare (not safe))
                (_K150816150864_ _arity150873_))
              (let () (declare (not safe)) (_E150815150824_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150696_ _stx150697_ _args150698_)
        (let* ((_self150699150707_ _self150696_)
               (_E150701150711_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150699150707_))))
               (_K150702150795_
                (lambda (_dispatch150714_ _table150715_)
                  (let* ((_g150716150725_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150714_)))
                         (_else150718150733_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150714_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx150697_))))
                         (_K150720150779_
                          (lambda (_main150736_ _keys150737_)
                            (let ((_g153261_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150697_
                                      _args150698_))))
                              (begin
                                (let ((_g153262_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153261_)
                                             (##vector-length _g153261_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153262_ 2)))
                                      (error "Context expects 2 values"
                                             _g153262_)))
                                (let ((_pargs150739_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153261_ 0)))
                                      (_kwargs150740_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153261_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150736_))
                                    (if _table150715_
                                        (let ((_xargs150747_
                                               (map (lambda (_key150742_)
                                                      (let ((_$e150744_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150742_ _kwargs150740_))))
                (if _$e150744_ (values _$e150744_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150737_)))
                                          (for-each
                                           (lambda (_kw150749_)
                                             (if (memq (car _kw150749_)
                                                       _keys150737_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150697_
                                                    _keys150737_
                                                    _kw150749_))))
                                           _kwargs150740_)
                                          (let ((__tmp153314
                                                 (let ((__tmp153315
                                                        (let ((__tmp153316
                                                               (let ((__tmp153321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153322
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150736_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153322)))
                             (__tmp153317
                              (let ((__tmp153319
                                     (let ((__tmp153320
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153320)))
                                    (__tmp153318
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150739_
                                               _xargs150747_))))
                                (declare (not safe))
                                (cons __tmp153319 __tmp153318))))
                         (declare (not safe))
                         (cons __tmp153321 __tmp153317))))
                  (declare (not safe))
                  (cons '%#call __tmp153316))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153315
                                                    _stx150697_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153314)))
                                        (let* ((_kwt150751_
                                                (let ((__tmp153263
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153263)))
                                               (_kwvars150754_
                                                (map (lambda (_g153264_)
                                                       (let ((__tmp153265
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153265)))
                                                     _kwargs150740_))
                                               (_kwbind150759_
                                                (map (lambda (_kw150756_
                                                              _kwvar150757_)
                                                       (let ((__tmp153268
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150757_ '())))
                     (__tmp153266
                      (let ((__tmp153267 (cdr _kw150756_)))
                        (declare (not safe))
                        (cons __tmp153267 '()))))
                 (declare (not safe))
                 (cons __tmp153268 __tmp153266)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150740_
                                                     _kwvars150754_))
                                               (_kwset150764_
                                                (map (lambda (_kw150761_
                                                              _kwvar150762_)
                                                       (let ((__tmp153269
                                                              (let ((__tmp153270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153278
                                    (let ((__tmp153279
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150751_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153279)))
                                   (__tmp153271
                                    (let ((__tmp153275
                                           (let ((__tmp153276
                                                  (let ((__tmp153277
                                                         (car _kw150761_)))
                                                    (declare (not safe))
                                                    (cons __tmp153277 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153276)))
                                          (__tmp153272
                                           (let ((__tmp153273
                                                  (let ((__tmp153274
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153274))))
                                             (declare (not safe))
                                             (cons __tmp153273 '()))))
                                      (declare (not safe))
                                      (cons __tmp153275 __tmp153272))))
                               (declare (not safe))
                               (cons __tmp153278 __tmp153271))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153270))))
                 (declare (not safe))
                 (cons '%#call __tmp153269)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150740_
                                                     _kwvars150754_))
                                               (_xkwargs150769_
                                                (map (lambda (_kw150766_
                                                              _kwvar150767_)
                                                       (let ((__tmp153282
                                                              (car _kw150766_))
                                                             (__tmp153280
                                                              (let ((__tmp153281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150767_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153281))))
                 (declare (not safe))
                 (cons __tmp153282 __tmp153280)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150740_
                                                     _kwvars150754_))
                                               (_xargs150776_
                                                (map (lambda (_key150771_)
                                                       (let ((_$e150773_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150771_ _xkwargs150769_))))
                 (if _$e150773_ (values _$e150773_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150737_)))
                                          (let ((__tmp153283
                                                 (let ((__tmp153284
                                                        (let ((__tmp153285
                                                               (let ((__tmp153286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153287
                                     (let ((__tmp153288
                                            (let ((__tmp153302
                                                   (let ((__tmp153303
                                                          (let ((__tmp153313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150751_ '())))
                        (__tmp153304
                         (let ((__tmp153305
                                (let ((__tmp153306
                                       (let ((__tmp153307
                                              (let ((__tmp153308
                                                     (let ((__tmp153310
                                                            (let ((__tmp153311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153312 (length _kwargs150740_)))
                             (declare (not safe))
                             (cons __tmp153312 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153311)))
                   (__tmp153309
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153310 __tmp153309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153308))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153307))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153306
                                   _stx150697_))))
                           (declare (not safe))
                           (cons __tmp153305 '()))))
                    (declare (not safe))
                    (cons __tmp153313 __tmp153304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153303 '())))
                                                  (__tmp153289
                                                   (let ((__tmp153290
                                                          (let ((__tmp153291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153292
                                (let ((__tmp153293
                                       (let ((__tmp153294
                                              (let ((__tmp153295
                                                     (let ((__tmp153300
                                                            (let ((__tmp153301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150736_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153301)))
                   (__tmp153296
                    (let ((__tmp153298
                           (let ((__tmp153299
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150751_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153299)))
                          (__tmp153297
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150739_ _xargs150776_))))
                      (declare (not safe))
                      (cons __tmp153298 __tmp153297))))
               (declare (not safe))
               (cons __tmp153300 __tmp153296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153295))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153294
                                          _stx150697_))))
                                  (declare (not safe))
                                  (cons __tmp153293 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153292 _kwset150764_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153291))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153290 '()))))
                                              (declare (not safe))
                                              (cons __tmp153302 __tmp153289))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153288))))
                                (declare (not safe))
                                (cons __tmp153287 '()))))
                         (declare (not safe))
                         (cons _kwbind150759_ __tmp153286))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153284
                                                    _stx150697_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153283)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150716150725_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150721150782_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150716150725_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150722150785_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150716150725_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150788_ _e150722150785_)
                               (_e150723150790_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150716150725_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150793_ _e150723150790_))
                          (declare (not safe))
                          (_K150720150779_ _main150793_ _keys150788_))
                        (let () (declare (not safe)) (_else150718150733_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150699150707_
                 'gxc#!kw-lambda::t))
              (let* ((_e150703150798_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150699150707_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150704150801_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150699150707_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150804_ _e150704150801_)
                     (_e150705150806_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150699150707_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150809_ _e150705150806_))
                (declare (not safe))
                (_K150702150795_ _dispatch150809_ _table150804_))
              (let () (declare (not safe)) (_E150701150711_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150309_ _args150310_)
        (let _lp150312_ ((_rest150314_ _args150310_)
                         (_pargs150315_ '())
                         (_kwargs150316_ '()))
          (let* ((___stx152356152357_ _rest150314_)
                 (_g150322150374_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152356152357_)))))
            (let ((___kont152358152359_
                   (lambda (_L150553_ _L150554_)
                     (let ((__tmp153323
                            (let ()
                              (declare (not safe))
                              (cons _L150554_ _pargs150315_))))
                       (declare (not safe))
                       (_lp150312_ _L150553_ __tmp153323 _kwargs150316_))))
                  (___kont152360152361_
                   (lambda (_L150499_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150499_ _pargs150315_))
                             (reverse _kwargs150316_))))
                  (___kont152362152363_
                   (lambda (_L150446_ _L150447_ _L150448_)
                     (let ((_kw150465_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150448_))))
                       (if (assq _kw150465_ _kwargs150316_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150309_
                              _kw150465_))
                           (let ((__tmp153324
                                  (let ((__tmp153325
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150465_ _L150447_))))
                                    (declare (not safe))
                                    (cons __tmp153325 _kwargs150316_))))
                             (declare (not safe))
                             (_lp150312_
                              _L150446_
                              _pargs150315_
                              __tmp153324))))))
                  (___kont152364152365_
                   (lambda (_L150394_ _L150395_)
                     (let ((__tmp153326
                            (let ()
                              (declare (not safe))
                              (cons _L150395_ _pargs150315_))))
                       (declare (not safe))
                       (_lp150312_ _L150394_ __tmp153326 _kwargs150316_))))
                  (___kont152366152367_
                   (lambda ()
                     (values (reverse _pargs150315_)
                             (reverse _kwargs150316_)))))
              (let* ((_g150321150381_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152356152357_))
                            (___kont152366152367_)
                            (let () (declare (not safe)) (_g150322150374_)))))
                     (___match152463152464_
                      (lambda (_e150355150414_
                               _hd150354150417_
                               _tl150353150419_
                               _e150358150422_
                               _hd150357150425_
                               _tl150356150427_
                               _e150361150430_
                               _hd150360150433_
                               _tl150359150435_
                               _e150364150438_
                               _hd150363150441_
                               _tl150362150443_)
                        (let ((_L150446_ _tl150362150443_)
                              (_L150447_ _hd150363150441_)
                              (_L150448_ _hd150360150433_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150448_))
                              (___kont152362152363_
                               _L150446_
                               _L150447_
                               _L150448_)
                              (___kont152364152365_
                               _tl150353150419_
                               _hd150354150417_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152356152357_))
                    (let ((_e150328150518_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152356152357_))))
                      (let ((_tl150326150523_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150328150518_)))
                            (_hd150327150521_
                             (let ()
                               (declare (not safe))
                               (##car _e150328150518_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150327150521_))
                            (let ((_e150331150526_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150327150521_))))
                              (let ((_tl150329150531_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150331150526_)))
                                    (_hd150330150529_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150331150526_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150330150529_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150330150529_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150329150531_))
                                            (let ((_e150334150534_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150329150531_))))
                                              (let ((_tl150332150539_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150334150534_)))
                                                    (_hd150333150537_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150334150534_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150333150537_))
                                                    (let ((_e150335150542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150333150537_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150335150542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150332150539_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150326150523_))
                          (let ((_e150338150545_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150326150523_))))
                            (let ((_tl150336150550_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150338150545_)))
                                  (_hd150337150548_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150338150545_))))
                              (___kont152358152359_
                               _tl150336150550_
                               _hd150337150548_)))
                          (___kont152364152365_
                           _tl150326150523_
                           _hd150327150521_))
                      (___kont152364152365_ _tl150326150523_ _hd150327150521_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150335150542_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150332150539_))
                          (___kont152360152361_ _tl150326150523_)
                          (___kont152364152365_
                           _tl150326150523_
                           _hd150327150521_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150332150539_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150326150523_))
                              (let ((_e150364150438_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150326150523_))))
                                (let ((_tl150362150443_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150364150438_)))
                                      (_hd150363150441_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150364150438_))))
                                  (___match152463152464_
                                   _e150328150518_
                                   _hd150327150521_
                                   _tl150326150523_
                                   _e150331150526_
                                   _hd150330150529_
                                   _tl150329150531_
                                   _e150334150534_
                                   _hd150333150537_
                                   _tl150332150539_
                                   _e150364150438_
                                   _hd150363150441_
                                   _tl150362150443_)))
                              (___kont152364152365_
                               _tl150326150523_
                               _hd150327150521_))
                          (___kont152364152365_
                           _tl150326150523_
                           _hd150327150521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150332150539_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150326150523_))
                                                            (let ((_e150364150438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150326150523_))))
                      (let ((_tl150362150443_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150364150438_)))
                            (_hd150363150441_
                             (let ()
                               (declare (not safe))
                               (##car _e150364150438_))))
                        (___match152463152464_
                         _e150328150518_
                         _hd150327150521_
                         _tl150326150523_
                         _e150331150526_
                         _hd150330150529_
                         _tl150329150531_
                         _e150334150534_
                         _hd150333150537_
                         _tl150332150539_
                         _e150364150438_
                         _hd150363150441_
                         _tl150362150443_)))
                    (___kont152364152365_ _tl150326150523_ _hd150327150521_))
                (___kont152364152365_ _tl150326150523_ _hd150327150521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152364152365_
                                             _tl150326150523_
                                             _hd150327150521_))
                                        (___kont152364152365_
                                         _tl150326150523_
                                         _hd150327150521_))
                                    (___kont152364152365_
                                     _tl150326150523_
                                     _hd150327150521_))))
                            (___kont152364152365_
                             _tl150326150523_
                             _hd150327150521_))))
                    (let () (declare (not safe)) (_g150321150381_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150305_ _stx150306_ _args150307_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150306_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
