(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1709213455)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152596_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152891 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152596_ __tmp152891))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152596_ '%#call gxc#optimize-call%))
           _tbl152596_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152579_ . _args152581_)
        (let ((__tmp152893
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152581_)
                     (gxc#compile-e__0 _stx152579_)
                     (let ((_arg1152586_ (car _args152581_))
                           (_rest152588_ (cdr _args152581_)))
                       (if (null? _rest152588_)
                           (gxc#compile-e__1 _stx152579_ _arg1152586_)
                           (let ((_arg2152591_ (car _rest152588_))
                                 (_rest152593_ (cdr _rest152588_)))
                             (if (null? _rest152593_)
                                 (gxc#compile-e__2
                                  _stx152579_
                                  _arg1152586_
                                  _arg2152591_)
                                 (apply gxc#compile-e
                                        _stx152579_
                                        _arg1152586_
                                        _arg2152591_
                                        _rest152593_))))))))
              (__tmp152892 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152893
           gxc#current-compile-methods
           __tmp152892))))
    (define gxc#optimize-call%
      (lambda (_stx152434_)
        (let* ((___stx152641152642_ _stx152434_)
               (_g152437152457_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152641152642_)))))
          (let ((___kont152643152644_
                 (lambda (_L152501_ _L152502_)
                   (let* ((_rator-id152520_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152502_)))
                          (_rator-type152522_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152520_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152522_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152894
                                  (##structure-ref
                                   _rator-type152522_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152520_
                              '" => "
                              _rator-type152522_
                              '" "
                              __tmp152894))
                           (let ((_optimized152525_
                                  (let ((__method152889
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152522_
                                            'optimize-call))))
                                    (if __method152889
                                        (__method152889
                                         _rator-type152522_
                                         _stx152434_
                                         _L152501_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152522_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152522_))
                                 _optimized152525_
                                 (let* ((___stx152623152624_ _optimized152525_)
                                        (_g152528152538_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152623152624_)))))
                                   (let ((___kont152625152626_
                                          (lambda (_L152558_)
                                            (let ((__tmp152895
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152558_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152895
                                               _stx152434_))))
                                         (___kont152627152628_
                                          (lambda () _optimized152525_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152623152624_))
                                         (let ((_e152533152550_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152623152624_))))
                                           (let ((_tl152531152555_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152533152550_)))
                                                 (_hd152532152553_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152533152550_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152532152553_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152532152553_))
                                                     (___kont152625152626_
                                                      _tl152531152555_)
                                                     (___kont152627152628_))
                                                 (___kont152627152628_))))
                                         (___kont152627152628_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152522_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx152434_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152434_
                                _rator-type152522_)))))))
                (___kont152645152646_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx152434_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152641152642_))
                (let ((_e152443152469_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152641152642_))))
                  (let ((_tl152441152474_
                         (let () (declare (not safe)) (##cdr _e152443152469_)))
                        (_hd152442152472_
                         (let ()
                           (declare (not safe))
                           (##car _e152443152469_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152441152474_))
                        (let ((_e152446152477_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152441152474_))))
                          (let ((_tl152444152482_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152446152477_)))
                                (_hd152445152480_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152446152477_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152445152480_))
                                (let ((_e152449152485_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152445152480_))))
                                  (let ((_tl152447152490_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152449152485_)))
                                        (_hd152448152488_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152449152485_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152448152488_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152448152488_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152447152490_))
                                                (let ((_e152452152493_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152447152490_))))
                                                  (let ((_tl152450152498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152452152493_)))
                                                        (_hd152451152496_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152452152493_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152450152498_))
                                                        (___kont152643152644_
                                                         _tl152444152482_
                                                         _hd152451152496_)
                                                        (___kont152645152646_))))
                                                (___kont152645152646_))
                                            (___kont152645152646_))
                                        (___kont152645152646_))))
                                (___kont152645152646_))))
                        (___kont152645152646_))))
                (___kont152645152646_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self152388_ _stx152389_ _args152390_)
        (let* ((_g152392152402_
                (lambda (_g152393152399_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152393152399_))))
               (_g152391152431_
                (lambda (_g152393152405_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152393152405_))
                      (let ((_e152397152407_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152393152405_))))
                        (let ((_hd152396152410_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152397152407_)))
                              (_tl152395152412_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152397152407_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152395152412_))
                              ((lambda (_L152415_)
                                 (let* ((_klass152426_
                                         (let ((__tmp152896
                                                (##structure-ref
                                                 _self152388_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152389_
                                            __tmp152896)))
                                        (_object152428_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L152415_))))
                                   (if (##structure-ref
                                        _klass152426_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152912
                                              (let ((__tmp152913
                                                     (let ((__tmp152915
                                                            (let ((__tmp152916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152917
                                  (##structure-ref
                                   _klass152426_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152917 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152916)))
                   (__tmp152914
                    (let () (declare (not safe)) (cons _object152428_ '()))))
               (declare (not safe))
               (cons __tmp152915 __tmp152914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152913))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152912
                                          _stx152389_))
                                       (if (##structure-ref
                                            _klass152426_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152906
                                                  (let ((__tmp152907
                                                         (let ((__tmp152909
                                                                (let ((__tmp152910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152911
                                      (##structure-ref
                                       _klass152426_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152911 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152910)))
                       (__tmp152908
                        (let ()
                          (declare (not safe))
                          (cons _object152428_ '()))))
                   (declare (not safe))
                   (cons __tmp152909 __tmp152908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152907))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152906
                                              _stx152389_))
                                           (let ((__tmp152897
                                                  (let ((__tmp152898
                                                         (let ((__tmp152904
                                                                (let ((__tmp152905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152905)))
                       (__tmp152899
                        (let ((__tmp152901
                               (let ((__tmp152902
                                      (let ((__tmp152903
                                             (##structure-ref
                                              _self152388_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152903 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152902)))
                              (__tmp152900
                               (let ()
                                 (declare (not safe))
                                 (cons _object152428_ '()))))
                          (declare (not safe))
                          (cons __tmp152901 __tmp152900))))
                   (declare (not safe))
                   (cons __tmp152904 __tmp152899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152898))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152897
                                              _stx152389_))))))
                               _hd152396152410_)
                              (let ()
                                (declare (not safe))
                                (_g152392152402_ _g152393152405_)))))
                      (let ()
                        (declare (not safe))
                        (_g152392152402_ _g152393152405_))))))
          (declare (not safe))
          (_g152391152431_ _args152390_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152598 __method-table152599)
        (let ((__id152600
               (let ((__slot152601
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152598 'id))))
                 (if __slot152601
                     __slot152601
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152388_ _stx152389_ _args152390_)
            (let* ((_g152392152402_
                    (lambda (_g152393152399_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152393152399_))))
                   (_g152391152431_
                    (lambda (_g152393152405_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152393152405_))
                          (let ((_e152397152407_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152393152405_))))
                            (let ((_hd152396152410_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152397152407_)))
                                  (_tl152395152412_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152397152407_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152395152412_))
                                  ((lambda (_L152415_)
                                     (let* ((_klass152426_
                                             (let ((__tmp152918
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152388_
                                                       __id152600
                                                       __klass152598
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152389_
                                                __tmp152918)))
                                            (_object152428_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L152415_))))
                                       (if (##structure-ref
                                            _klass152426_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152934
                                                  (let ((__tmp152935
                                                         (let ((__tmp152937
                                                                (let ((__tmp152938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152939
                                      (##structure-ref
                                       _klass152426_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152939 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152938)))
                       (__tmp152936
                        (let ()
                          (declare (not safe))
                          (cons _object152428_ '()))))
                   (declare (not safe))
                   (cons __tmp152937 __tmp152936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152935))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152934
                                              _stx152389_))
                                           (if (##structure-ref
                                                _klass152426_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152928
                                                      (let ((__tmp152929
                                                             (let ((__tmp152931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152932
                                   (let ((__tmp152933
                                          (##structure-ref
                                           _klass152426_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152933 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152932)))
                           (__tmp152930
                            (let ()
                              (declare (not safe))
                              (cons _object152428_ '()))))
                       (declare (not safe))
                       (cons __tmp152931 __tmp152930))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152928
                                                  _stx152389_))
                                               (let ((__tmp152919
                                                      (let ((__tmp152920
                                                             (let ((__tmp152926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152927
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152927)))
                           (__tmp152921
                            (let ((__tmp152923
                                   (let ((__tmp152924
                                          (let ((__tmp152925
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self152388_
                                                    __id152600
                                                    __klass152598
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152925 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152924)))
                                  (__tmp152922
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152428_ '()))))
                              (declare (not safe))
                              (cons __tmp152923 __tmp152922))))
                       (declare (not safe))
                       (cons __tmp152926 __tmp152921))))
                (declare (not safe))
                (cons '%#call __tmp152920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152919
                                                  _stx152389_))))))
                                   _hd152396152410_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152392152402_ _g152393152405_)))))
                          (let ()
                            (declare (not safe))
                            (_g152392152402_ _g152393152405_))))))
              (declare (not safe))
              (_g152391152431_ _args152390_))))))
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
      (lambda (_self152108_ _stx152109_ _args152110_)
        (let* ((_klass152112_
                (let ((__tmp152940
                       (##structure-ref _self152108_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx152109_ __tmp152940)))
               (_fields152114_
                (length (##structure-ref _klass152112_ '5 gxc#!class::t '#f)))
               (_args152116_ (map gxc#compile-e _args152110_))
               (_inline-make-object152118_
                (let ((__tmp152941
                       (let ((__tmp152947
                              (let ((__tmp152948
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152948)))
                             (__tmp152942
                              (let ((__tmp152944
                                     (let ((__tmp152945
                                            (let ((__tmp152946
                                                   (##structure-ref
                                                    _self152108_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152946 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152945)))
                                    (__tmp152943
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields152114_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152944 __tmp152943))))
                         (declare (not safe))
                         (cons __tmp152947 __tmp152942))))
                  (declare (not safe))
                  (cons '%#call __tmp152941))))
          (let ((_$e152121_
                 (##structure-ref _klass152112_ '6 gxc#!class::t '#f)))
            (if _$e152121_
                ((lambda (_ctor152124_)
                   (let ((_$obj152126_
                          (let ((__tmp153048 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp153048)))
                         (_ctor-impl152127_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass152112_
                             _ctor152124_))))
                     (let ((__tmp153049
                            (let ((__tmp153050
                                   (let ((__tmp153118
                                          (let ((__tmp153119
                                                 (let ((__tmp153121
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152126_
                                                                '())))
                                                       (__tmp153120
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object152118_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp153121
                                                         __tmp153120))))
                                            (declare (not safe))
                                            (cons __tmp153119 '())))
                                         (__tmp153051
                                          (let ((__tmp153052
                                                 (let ((__tmp153053
                                                        (let ((__tmp153057
                                                               (if _ctor-impl152127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153112
                                  (let ((__tmp153116
                                         (let ((__tmp153117
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl152127_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153117)))
                                        (__tmp153113
                                         (let ((__tmp153114
                                                (let ((__tmp153115
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj152126_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153115))))
                                           (declare (not safe))
                                           (cons __tmp153114 _args152116_))))
                                    (declare (not safe))
                                    (cons __tmp153116 __tmp153113))))
                             (declare (not safe))
                             (cons '%#call __tmp153112))
                           (let* ((_$ctor152129_
                                   (let ((__tmp153058 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp153058)))
                                  (__tmp153059
                                   (let ((__tmp153094
                                          (let ((__tmp153095
                                                 (let ((__tmp153111
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor152129_
                                                                '())))
                                                       (__tmp153096
                                                        (let ((__tmp153097
                                                               (let ((__tmp153098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153109
                                     (let ((__tmp153110
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153110)))
                                    (__tmp153099
                                     (let ((__tmp153106
                                            (let ((__tmp153107
                                                   (let ((__tmp153108
                                                          (##structure-ref
                                                           _self152108_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp153108 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153107)))
                                           (__tmp153100
                                            (let ((__tmp153104
                                                   (let ((__tmp153105
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153105)))
                                                  (__tmp153101
                                                   (let ((__tmp153102
                                                          (let ((__tmp153103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor152124_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153102 '()))))
                                              (declare (not safe))
                                              (cons __tmp153104 __tmp153101))))
                                       (declare (not safe))
                                       (cons __tmp153106 __tmp153100))))
                                (declare (not safe))
                                (cons __tmp153109 __tmp153099))))
                         (declare (not safe))
                         (cons '%#call __tmp153098))))
                  (declare (not safe))
                  (cons __tmp153097 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153111
                                                         __tmp153096))))
                                            (declare (not safe))
                                            (cons __tmp153095 '())))
                                         (__tmp153060
                                          (let ((__tmp153061
                                                 (let ((__tmp153062
                                                        (let ((__tmp153092
                                                               (let ((__tmp153093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor152129_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153093)))
                      (__tmp153063
                       (let ((__tmp153085
                              (let ((__tmp153086
                                     (let ((__tmp153090
                                            (let ((__tmp153091
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor152129_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153091)))
                                           (__tmp153087
                                            (let ((__tmp153088
                                                   (let ((__tmp153089
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153089))))
                                              (declare (not safe))
                                              (cons __tmp153088
                                                    _args152116_))))
                                       (declare (not safe))
                                       (cons __tmp153090 __tmp153087))))
                                (declare (not safe))
                                (cons '%#call __tmp153086)))
                             (__tmp153064
                              (let ((__tmp153065
                                     (let ((__tmp153066
                                            (let ((__tmp153083
                                                   (let ((__tmp153084
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153084)))
                                                  (__tmp153067
                                                   (let ((__tmp153081
                                                          (let ((__tmp153082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153082)))
                 (__tmp153068
                  (let ((__tmp153079
                         (let ((__tmp153080
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153080)))
                        (__tmp153069
                         (let ((__tmp153076
                                (let ((__tmp153077
                                       (let ((__tmp153078
                                              (##structure-ref
                                               _self152108_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153078 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153077)))
                               (__tmp153070
                                (let ((__tmp153074
                                       (let ((__tmp153075
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153075)))
                                      (__tmp153071
                                       (let ((__tmp153072
                                              (let ((__tmp153073
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor152124_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp153073))))
                                         (declare (not safe))
                                         (cons __tmp153072 '()))))
                                  (declare (not safe))
                                  (cons __tmp153074 __tmp153071))))
                           (declare (not safe))
                           (cons __tmp153076 __tmp153070))))
                    (declare (not safe))
                    (cons __tmp153079 __tmp153069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153081
                                                           __tmp153068))))
                                              (declare (not safe))
                                              (cons __tmp153083 __tmp153067))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153066))))
                                (declare (not safe))
                                (cons __tmp153065 '()))))
                         (declare (not safe))
                         (cons __tmp153085 __tmp153064))))
                  (declare (not safe))
                  (cons __tmp153092 __tmp153063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp153062))))
                                            (declare (not safe))
                                            (cons __tmp153061 '()))))
                                     (declare (not safe))
                                     (cons __tmp153094 __tmp153060))))
                             (declare (not safe))
                             (cons '%#let-values __tmp153059))))
                      (__tmp153054
                       (let ((__tmp153055
                              (let ((__tmp153056
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152126_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153056))))
                         (declare (not safe))
                         (cons __tmp153055 '()))))
                  (declare (not safe))
                  (cons __tmp153057 __tmp153054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp153053))))
                                            (declare (not safe))
                                            (cons __tmp153052 '()))))
                                     (declare (not safe))
                                     (cons __tmp153118 __tmp153051))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153050))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153049 _stx152109_))))
                 _$e152121_)
                (let ((_$e152131_
                       (##structure-ref _klass152112_ '9 gxc#!class::t '#f)))
                  (if _$e152131_
                      ((lambda (_metaclass152134_)
                         (let* ((_$obj152136_
                                 (let ((__tmp153010 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153010)))
                                (_metakons152138_
                                 (let ((__tmp153011
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx152109_
                                           _metaclass152134_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153011
                                    'instance-init!))))
                           (let ((__tmp153012
                                  (let ((__tmp153013
                                         (let ((__tmp153044
                                                (let ((__tmp153045
                                                       (let ((__tmp153047
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152136_ '())))
                     (__tmp153046
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object152118_ '()))))
                 (declare (not safe))
                 (cons __tmp153047 __tmp153046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153045 '())))
                                               (__tmp153014
                                                (let ((__tmp153015
                                                       (let ((__tmp153016
                                                              (let ((__tmp153020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons152138_
                                 (let ((__tmp153034
                                        (let ((__tmp153042
                                               (let ((__tmp153043
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons152138_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153043)))
                                              (__tmp153035
                                               (let ((__tmp153039
                                                      (let ((__tmp153040
                                                             (let ((__tmp153041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152108_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153041 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153040)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153036
                                                      (let ((__tmp153037
                                                             (let ((__tmp153038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj152136_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153038))))
                (declare (not safe))
                (cons __tmp153037 _args152116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153039
                                                       __tmp153036))))
                                          (declare (not safe))
                                          (cons __tmp153042 __tmp153035))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153034))
                                 (let ((__tmp153021
                                        (let ((__tmp153032
                                               (let ((__tmp153033
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153033)))
                                              (__tmp153022
                                               (let ((__tmp153029
                                                      (let ((__tmp153030
                                                             (let ((__tmp153031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152108_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153031 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153030)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153023
                                                      (let ((__tmp153027
                                                             (let ((__tmp153028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153028)))
                    (__tmp153024
                     (let ((__tmp153025
                            (let ((__tmp153026
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152136_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153026))))
                       (declare (not safe))
                       (cons __tmp153025 _args152116_))))
                (declare (not safe))
                (cons __tmp153027 __tmp153024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153029
                                                       __tmp153023))))
                                          (declare (not safe))
                                          (cons __tmp153032 __tmp153022))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153021))))
                            (__tmp153017
                             (let ((__tmp153018
                                    (let ((__tmp153019
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj152136_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153019))))
                               (declare (not safe))
                               (cons __tmp153018 '()))))
                        (declare (not safe))
                        (cons __tmp153020 __tmp153017))))
                 (declare (not safe))
                 (cons '%#begin __tmp153016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153015 '()))))
                                           (declare (not safe))
                                           (cons __tmp153044 __tmp153014))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153013))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153012 _stx152109_))))
                       _$e152131_)
                      (if (##structure-ref _klass152112_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args152116_) _fields152114_)
                              (let ((__tmp153002
                                     (let ((__tmp153003
                                            (let ((__tmp153008
                                                   (let ((__tmp153009
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153009)))
                                                  (__tmp153004
                                                   (let ((__tmp153005
                                                          (let ((__tmp153006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153007
                                (##structure-ref
                                 _self152108_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp153007 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153005
                                                           _args152116_))))
                                              (declare (not safe))
                                              (cons __tmp153008 __tmp153004))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153003))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp153002
                                 _stx152109_))
                              (let ((__tmp153001
                                     (##structure-ref
                                      _self152108_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp153000
                                     (length (##structure-ref
                                              _klass152112_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx152109_
                                 __tmp153001
                                 __tmp153000)))
                          (let ((_$obj152141_
                                 (let ((__tmp152949 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152949))))
                            (let _lp152143_ ((_rest152145_ _args152116_)
                                             (_initializers152146_ '()))
                              (let* ((___stx152679152680_ _rest152145_)
                                     (_g152150152171_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152679152680_)))))
                                (let ((___kont152681152682_
                                       (lambda (_L152225_ _L152226_ _L152227_)
                                         (let* ((_slot152258_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L152227_))))
                                                (_off152260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152112_
                                                    _slot152258_))))
                                           (if _off152260_
                                               (let ((__tmp152951
                                                      (let ((__tmp152952
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off152260_ _L152226_))))
                (declare (not safe))
                (cons __tmp152952 _initializers152146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp152143_
                                                  _L152225_
                                                  __tmp152951))
                                               (let ((__tmp152950
                                                      (##structure-ref
                                                       _self152108_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx152109_
                                                  __tmp152950
                                                  _slot152258_))))))
                                      (___kont152683152684_
                                       (lambda ()
                                         (let ((__tmp152953
                                                (let ((__tmp152954
                                                       (let ((__tmp152977
                                                              (let ((__tmp152978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152980
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152141_ '())))
                                   (__tmp152979
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152118_ '()))))
                               (declare (not safe))
                               (cons __tmp152980 __tmp152979))))
                        (declare (not safe))
                        (cons __tmp152978 '())))
                     (__tmp152955
                      (let ((__tmp152956
                             (let ((__tmp152957
                                    (let ((__tmp152974
                                           (let ((__tmp152975
                                                  (let ((__tmp152976
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152976))))
                                             (declare (not safe))
                                             (cons __tmp152975 '())))
                                          (__tmp152958
                                           (let ((__tmp152959
                                                  (lambda (_i152185_ _r152186_)
                                                    (let ((__tmp152960
                                                           (let ((__tmp152961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152971
                                 (let ((__tmp152972
                                        (let ((__tmp152973
                                               (##structure-ref
                                                _self152108_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152973 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152972)))
                                (__tmp152962
                                 (let ((__tmp152968
                                        (let ((__tmp152969
                                               (let ((__tmp152970
                                                      (car _i152185_)))
                                                 (declare (not safe))
                                                 (cons __tmp152970 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152969)))
                                       (__tmp152963
                                        (let ((__tmp152966
                                               (let ((__tmp152967
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj152141_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152967)))
                                              (__tmp152964
                                               (let ((__tmp152965
                                                      (cdr _i152185_)))
                                                 (declare (not safe))
                                                 (cons __tmp152965 '()))))
                                          (declare (not safe))
                                          (cons __tmp152966 __tmp152964))))
                                   (declare (not safe))
                                   (cons __tmp152968 __tmp152963))))
                            (declare (not safe))
                            (cons __tmp152971 __tmp152962))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152961))))
              (declare (not safe))
              (cons __tmp152960 _r152186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152959
                                                     '()
                                                     _initializers152146_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152974 __tmp152958))))
                               (declare (not safe))
                               (cons '%#begin __tmp152957))))
                        (declare (not safe))
                        (cons __tmp152956 '()))))
                 (declare (not safe))
                 (cons __tmp152977 __tmp152955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152954))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152953
                                            _stx152109_))))
                                      (___kont152685152686_
                                       (lambda ()
                                         (let ((__tmp152981
                                                (let ((__tmp152982
                                                       (let ((__tmp152996
                                                              (let ((__tmp152997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152999
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152141_ '())))
                                   (__tmp152998
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152118_ '()))))
                               (declare (not safe))
                               (cons __tmp152999 __tmp152998))))
                        (declare (not safe))
                        (cons __tmp152997 '())))
                     (__tmp152983
                      (let ((__tmp152984
                             (let ((__tmp152985
                                    (let ((__tmp152989
                                           (let ((__tmp152990
                                                  (let ((__tmp152994
                                                         (let ((__tmp152995
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152995)))
                (__tmp152991
                 (let ((__tmp152992
                        (let ((__tmp152993
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj152141_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152993))))
                   (declare (not safe))
                   (cons __tmp152992 _args152116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152994
                                                          __tmp152991))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152990)))
                                          (__tmp152986
                                           (let ((__tmp152987
                                                  (let ((__tmp152988
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152988))))
                                             (declare (not safe))
                                             (cons __tmp152987 '()))))
                                      (declare (not safe))
                                      (cons __tmp152989 __tmp152986))))
                               (declare (not safe))
                               (cons '%#begin __tmp152985))))
                        (declare (not safe))
                        (cons __tmp152984 '()))))
                 (declare (not safe))
                 (cons __tmp152996 __tmp152983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152982))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152981
                                            _stx152109_)))))
                                  (let* ((_g152148152188_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152679152680_))
                                                (___kont152683152684_)
                                                (___kont152685152686_))))
                                         (___match152716152717_
                                          (lambda (_e152157152193_
                                                   _hd152156152196_
                                                   _tl152155152198_
                                                   _e152160152201_
                                                   _hd152159152204_
                                                   _tl152158152206_
                                                   _e152163152209_
                                                   _hd152162152212_
                                                   _tl152161152214_
                                                   _e152166152217_
                                                   _hd152165152220_
                                                   _tl152164152222_)
                                            (let ((_L152225_ _tl152164152222_)
                                                  (_L152226_ _hd152165152220_)
                                                  (_L152227_ _hd152162152212_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L152227_))
                                                  (___kont152681152682_
                                                   _L152225_
                                                   _L152226_
                                                   _L152227_)
                                                  (___kont152685152686_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152679152680_))
                                        (let ((_e152157152193_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152679152680_))))
                                          (let ((_tl152155152198_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152157152193_)))
                                                (_hd152156152196_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152157152193_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd152156152196_))
                                                (let ((_e152160152201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd152156152196_))))
                                                  (let ((_tl152158152206_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152160152201_)))
                                                        (_hd152159152204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152160152201_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd152159152204_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd152159152204_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl152158152206_))
                        (let ((_e152163152209_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152158152206_))))
                          (let ((_tl152161152214_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152163152209_)))
                                (_hd152162152212_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152163152209_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl152161152214_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl152155152198_))
                                    (let ((_e152166152217_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl152155152198_))))
                                      (let ((_tl152164152222_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152166152217_)))
                                            (_hd152165152220_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152166152217_))))
                                        (___match152716152717_
                                         _e152157152193_
                                         _hd152156152196_
                                         _tl152155152198_
                                         _e152160152201_
                                         _hd152159152204_
                                         _tl152158152206_
                                         _e152163152209_
                                         _hd152162152212_
                                         _tl152161152214_
                                         _e152166152217_
                                         _hd152165152220_
                                         _tl152164152222_)))
                                    (___kont152685152686_))
                                (___kont152685152686_))))
                        (___kont152685152686_))
                    (___kont152685152686_))
                (___kont152685152686_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152685152686_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152148152188_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152602 __method-table152603)
        (let ((__id152604
               (let ((__slot152605
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152602 'id))))
                 (if __slot152605
                     __slot152605
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152108_ _stx152109_ _args152110_)
            (let* ((_klass152112_
                    (let ((__tmp153122
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self152108_
                              __id152604
                              __klass152602
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx152109_ __tmp153122)))
                   (_fields152114_
                    (length (##structure-ref
                             _klass152112_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args152116_ (map gxc#compile-e _args152110_))
                   (_inline-make-object152118_
                    (let ((__tmp153123
                           (let ((__tmp153129
                                  (let ((__tmp153130
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153130)))
                                 (__tmp153124
                                  (let ((__tmp153126
                                         (let ((__tmp153127
                                                (let ((__tmp153128
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152108_
                                                          __id152604
                                                          __klass152602
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153128 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153127)))
                                        (__tmp153125
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields152114_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp153126 __tmp153125))))
                             (declare (not safe))
                             (cons __tmp153129 __tmp153124))))
                      (declare (not safe))
                      (cons '%#call __tmp153123))))
              (let ((_$e152121_
                     (##structure-ref _klass152112_ '6 gxc#!class::t '#f)))
                (if _$e152121_
                    ((lambda (_ctor152124_)
                       (let ((_$obj152126_
                              (let ((__tmp153230 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp153230)))
                             (_ctor-impl152127_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass152112_
                                 _ctor152124_))))
                         (let ((__tmp153231
                                (let ((__tmp153232
                                       (let ((__tmp153300
                                              (let ((__tmp153301
                                                     (let ((__tmp153303
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj152126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153302
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object152118_ '()))))
               (declare (not safe))
               (cons __tmp153303 __tmp153302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153301 '())))
                                             (__tmp153233
                                              (let ((__tmp153234
                                                     (let ((__tmp153235
                                                            (let ((__tmp153239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl152127_
                               (let ((__tmp153294
                                      (let ((__tmp153298
                                             (let ((__tmp153299
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl152127_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153299)))
                                            (__tmp153295
                                             (let ((__tmp153296
                                                    (let ((__tmp153297
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj152126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153296
                                                     _args152116_))))
                                        (declare (not safe))
                                        (cons __tmp153298 __tmp153295))))
                                 (declare (not safe))
                                 (cons '%#call __tmp153294))
                               (let* ((_$ctor152129_
                                       (let ((__tmp153240
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp153240)))
                                      (__tmp153241
                                       (let ((__tmp153276
                                              (let ((__tmp153277
                                                     (let ((__tmp153293
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor152129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153278
                    (let ((__tmp153279
                           (let ((__tmp153280
                                  (let ((__tmp153291
                                         (let ((__tmp153292
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153292)))
                                        (__tmp153281
                                         (let ((__tmp153288
                                                (let ((__tmp153289
                                                       (let ((__tmp153290
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self152108_
                         __id152604
                         __klass152602
                         '#f))))
                 (declare (not safe))
                 (cons __tmp153290 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153289)))
                                               (__tmp153282
                                                (let ((__tmp153286
                                                       (let ((__tmp153287
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152126_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153287)))
              (__tmp153283
               (let ((__tmp153284
                      (let ((__tmp153285
                             (let ()
                               (declare (not safe))
                               (cons _ctor152124_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153285))))
                 (declare (not safe))
                 (cons __tmp153284 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153286
                                                        __tmp153283))))
                                           (declare (not safe))
                                           (cons __tmp153288 __tmp153282))))
                                    (declare (not safe))
                                    (cons __tmp153291 __tmp153281))))
                             (declare (not safe))
                             (cons '%#call __tmp153280))))
                      (declare (not safe))
                      (cons __tmp153279 '()))))
               (declare (not safe))
               (cons __tmp153293 __tmp153278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153277 '())))
                                             (__tmp153242
                                              (let ((__tmp153243
                                                     (let ((__tmp153244
                                                            (let ((__tmp153274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153275
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor152129_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153275)))
                          (__tmp153245
                           (let ((__tmp153267
                                  (let ((__tmp153268
                                         (let ((__tmp153272
                                                (let ((__tmp153273
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor152129_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153273)))
                                               (__tmp153269
                                                (let ((__tmp153270
                                                       (let ((__tmp153271
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152126_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153270
                                                        _args152116_))))
                                           (declare (not safe))
                                           (cons __tmp153272 __tmp153269))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153268)))
                                 (__tmp153246
                                  (let ((__tmp153247
                                         (let ((__tmp153248
                                                (let ((__tmp153265
                                                       (let ((__tmp153266
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153266)))
              (__tmp153249
               (let ((__tmp153263
                      (let ((__tmp153264
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153264)))
                     (__tmp153250
                      (let ((__tmp153261
                             (let ((__tmp153262
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153262)))
                            (__tmp153251
                             (let ((__tmp153258
                                    (let ((__tmp153259
                                           (let ((__tmp153260
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152108_
                                                     __id152604
                                                     __klass152602
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153260 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153259)))
                                   (__tmp153252
                                    (let ((__tmp153256
                                           (let ((__tmp153257
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153257)))
                                          (__tmp153253
                                           (let ((__tmp153254
                                                  (let ((__tmp153255
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor152124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp153255))))
                                             (declare (not safe))
                                             (cons __tmp153254 '()))))
                                      (declare (not safe))
                                      (cons __tmp153256 __tmp153253))))
                               (declare (not safe))
                               (cons __tmp153258 __tmp153252))))
                        (declare (not safe))
                        (cons __tmp153261 __tmp153251))))
                 (declare (not safe))
                 (cons __tmp153263 __tmp153250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153265
                                                        __tmp153249))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153248))))
                                    (declare (not safe))
                                    (cons __tmp153247 '()))))
                             (declare (not safe))
                             (cons __tmp153267 __tmp153246))))
                      (declare (not safe))
                      (cons __tmp153274 __tmp153245))))
               (declare (not safe))
               (cons '%#if __tmp153244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153243 '()))))
                                         (declare (not safe))
                                         (cons __tmp153276 __tmp153242))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp153241))))
                          (__tmp153236
                           (let ((__tmp153237
                                  (let ((__tmp153238
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj152126_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153238))))
                             (declare (not safe))
                             (cons __tmp153237 '()))))
                      (declare (not safe))
                      (cons __tmp153239 __tmp153236))))
               (declare (not safe))
               (cons '%#begin __tmp153235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153234 '()))))
                                         (declare (not safe))
                                         (cons __tmp153300 __tmp153233))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153232))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153231 _stx152109_))))
                     _$e152121_)
                    (let ((_$e152131_
                           (##structure-ref
                            _klass152112_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e152131_
                          ((lambda (_metaclass152134_)
                             (let* ((_$obj152136_
                                     (let ((__tmp153192 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153192)))
                                    (_metakons152138_
                                     (let ((__tmp153193
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx152109_
                                               _metaclass152134_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp153193
                                        'instance-init!))))
                               (let ((__tmp153194
                                      (let ((__tmp153195
                                             (let ((__tmp153226
                                                    (let ((__tmp153227
                                                           (let ((__tmp153229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152136_ '())))
                         (__tmp153228
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object152118_ '()))))
                     (declare (not safe))
                     (cons __tmp153229 __tmp153228))))
              (declare (not safe))
              (cons __tmp153227 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153196
                                                    (let ((__tmp153197
                                                           (let ((__tmp153198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153202
                                 (if _metakons152138_
                                     (let ((__tmp153216
                                            (let ((__tmp153224
                                                   (let ((__tmp153225
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons152138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153225)))
                                                  (__tmp153217
                                                   (let ((__tmp153221
                                                          (let ((__tmp153222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153223
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152108_
                                   __id152604
                                   __klass152602
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153223 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153222)))
                 (__tmp153218
                  (let ((__tmp153219
                         (let ((__tmp153220
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj152136_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp153220))))
                    (declare (not safe))
                    (cons __tmp153219 _args152116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153221
                                                           __tmp153218))))
                                              (declare (not safe))
                                              (cons __tmp153224 __tmp153217))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153216))
                                     (let ((__tmp153203
                                            (let ((__tmp153214
                                                   (let ((__tmp153215
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153215)))
                                                  (__tmp153204
                                                   (let ((__tmp153211
                                                          (let ((__tmp153212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153213
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152108_
                                   __id152604
                                   __klass152602
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153213 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153212)))
                 (__tmp153205
                  (let ((__tmp153209
                         (let ((__tmp153210
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153210)))
                        (__tmp153206
                         (let ((__tmp153207
                                (let ((__tmp153208
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj152136_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153208))))
                           (declare (not safe))
                           (cons __tmp153207 _args152116_))))
                    (declare (not safe))
                    (cons __tmp153209 __tmp153206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153211
                                                           __tmp153205))))
                                              (declare (not safe))
                                              (cons __tmp153214 __tmp153204))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153203))))
                                (__tmp153199
                                 (let ((__tmp153200
                                        (let ((__tmp153201
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj152136_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp153201))))
                                   (declare (not safe))
                                   (cons __tmp153200 '()))))
                            (declare (not safe))
                            (cons __tmp153202 __tmp153199))))
                     (declare (not safe))
                     (cons '%#begin __tmp153198))))
              (declare (not safe))
              (cons __tmp153197 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153226
                                                     __tmp153196))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp153195))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153194
                                  _stx152109_))))
                           _$e152131_)
                          (if (##structure-ref
                               _klass152112_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args152116_) _fields152114_)
                                  (let ((__tmp153184
                                         (let ((__tmp153185
                                                (let ((__tmp153190
                                                       (let ((__tmp153191
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153191)))
              (__tmp153186
               (let ((__tmp153187
                      (let ((__tmp153188
                             (let ((__tmp153189
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self152108_
                                       __id152604
                                       __klass152602
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp153189 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153188))))
                 (declare (not safe))
                 (cons __tmp153187 _args152116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153190
                                                        __tmp153186))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153185))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp153184
                                     _stx152109_))
                                  (let ((__tmp153183
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self152108_
                                            __id152604
                                            __klass152602
                                            '#f)))
                                        (__tmp153182
                                         (length (##structure-ref
                                                  _klass152112_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx152109_
                                     __tmp153183
                                     __tmp153182)))
                              (let ((_$obj152141_
                                     (let ((__tmp153131 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153131))))
                                (let _lp152143_ ((_rest152145_ _args152116_)
                                                 (_initializers152146_ '()))
                                  (let* ((___stx152721152722_ _rest152145_)
                                         (_g152150152171_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152721152722_)))))
                                    (let ((___kont152723152724_
                                           (lambda (_L152225_
                                                    _L152226_
                                                    _L152227_)
                                             (let* ((_slot152258_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L152227_))))
                                                    (_off152260_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152112_
                                                        _slot152258_))))
                                               (if _off152260_
                                                   (let ((__tmp153133
                                                          (let ((__tmp153134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off152260_ _L152226_))))
                    (declare (not safe))
                    (cons __tmp153134 _initializers152146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp152143_
                                                      _L152225_
                                                      __tmp153133))
                                                   (let ((__tmp153132
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self152108_
                                                             __id152604
                                                             __klass152602
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx152109_
                                                      __tmp153132
                                                      _slot152258_))))))
                                          (___kont152725152726_
                                           (lambda ()
                                             (let ((__tmp153135
                                                    (let ((__tmp153136
                                                           (let ((__tmp153159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153160
                                 (let ((__tmp153162
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152141_ '())))
                                       (__tmp153161
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152118_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153162 __tmp153161))))
                            (declare (not safe))
                            (cons __tmp153160 '())))
                         (__tmp153137
                          (let ((__tmp153138
                                 (let ((__tmp153139
                                        (let ((__tmp153156
                                               (let ((__tmp153157
                                                      (let ((__tmp153158
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152141_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153157 '())))
                                              (__tmp153140
                                               (let ((__tmp153141
                                                      (lambda (_i152185_
                                                               _r152186_)
                                                        (let ((__tmp153142
                                                               (let ((__tmp153143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153153
                                     (let ((__tmp153154
                                            (let ((__tmp153155
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152108_
                                                      __id152604
                                                      __klass152602
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153155 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153154)))
                                    (__tmp153144
                                     (let ((__tmp153150
                                            (let ((__tmp153151
                                                   (let ((__tmp153152
                                                          (car _i152185_)))
                                                     (declare (not safe))
                                                     (cons __tmp153152 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153151)))
                                           (__tmp153145
                                            (let ((__tmp153148
                                                   (let ((__tmp153149
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153149)))
                                                  (__tmp153146
                                                   (let ((__tmp153147
                                                          (cdr _i152185_)))
                                                     (declare (not safe))
                                                     (cons __tmp153147 '()))))
                                              (declare (not safe))
                                              (cons __tmp153148 __tmp153146))))
                                       (declare (not safe))
                                       (cons __tmp153150 __tmp153145))))
                                (declare (not safe))
                                (cons __tmp153153 __tmp153144))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp153143))))
                  (declare (not safe))
                  (cons __tmp153142 _r152186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp153141
                                                         '()
                                                         _initializers152146_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp153156
                                                  __tmp153140))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153139))))
                            (declare (not safe))
                            (cons __tmp153138 '()))))
                     (declare (not safe))
                     (cons __tmp153159 __tmp153137))))
              (declare (not safe))
              (cons '%#let-values __tmp153136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153135
                                                _stx152109_))))
                                          (___kont152727152728_
                                           (lambda ()
                                             (let ((__tmp153163
                                                    (let ((__tmp153164
                                                           (let ((__tmp153178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153179
                                 (let ((__tmp153181
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152141_ '())))
                                       (__tmp153180
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152118_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153181 __tmp153180))))
                            (declare (not safe))
                            (cons __tmp153179 '())))
                         (__tmp153165
                          (let ((__tmp153166
                                 (let ((__tmp153167
                                        (let ((__tmp153171
                                               (let ((__tmp153172
                                                      (let ((__tmp153176
                                                             (let ((__tmp153177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153177)))
                    (__tmp153173
                     (let ((__tmp153174
                            (let ((__tmp153175
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152141_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153175))))
                       (declare (not safe))
                       (cons __tmp153174 _args152116_))))
                (declare (not safe))
                (cons __tmp153176 __tmp153173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp153172)))
                                              (__tmp153168
                                               (let ((__tmp153169
                                                      (let ((__tmp153170
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152141_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153169 '()))))
                                          (declare (not safe))
                                          (cons __tmp153171 __tmp153168))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153167))))
                            (declare (not safe))
                            (cons __tmp153166 '()))))
                     (declare (not safe))
                     (cons __tmp153178 __tmp153165))))
              (declare (not safe))
              (cons '%#let-values __tmp153164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153163
                                                _stx152109_)))))
                                      (let* ((_g152148152188_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152721152722_))
                                                    (___kont152725152726_)
                                                    (___kont152727152728_))))
                                             (___match152758152759_
                                              (lambda (_e152157152193_
                                                       _hd152156152196_
                                                       _tl152155152198_
                                                       _e152160152201_
                                                       _hd152159152204_
                                                       _tl152158152206_
                                                       _e152163152209_
                                                       _hd152162152212_
                                                       _tl152161152214_
                                                       _e152166152217_
                                                       _hd152165152220_
                                                       _tl152164152222_)
                                                (let ((_L152225_
                                                       _tl152164152222_)
                                                      (_L152226_
                                                       _hd152165152220_)
                                                      (_L152227_
                                                       _hd152162152212_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L152227_))
                                                      (___kont152723152724_
                                                       _L152225_
                                                       _L152226_
                                                       _L152227_)
                                                      (___kont152727152728_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152721152722_))
                                            (let ((_e152157152193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152721152722_))))
                                              (let ((_tl152155152198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152157152193_)))
                                                    (_hd152156152196_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152157152193_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd152156152196_))
                                                    (let ((_e152160152201_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152156152196_))))
                                                      (let ((_tl152158152206_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e152160152201_)))
                    (_hd152159152204_
                     (let () (declare (not safe)) (##car _e152160152201_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd152159152204_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd152159152204_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152158152206_))
                            (let ((_e152163152209_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152158152206_))))
                              (let ((_tl152161152214_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152163152209_)))
                                    (_hd152162152212_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152163152209_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl152161152214_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl152155152198_))
                                        (let ((_e152166152217_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl152155152198_))))
                                          (let ((_tl152164152222_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152166152217_)))
                                                (_hd152165152220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152166152217_))))
                                            (___match152758152759_
                                             _e152157152193_
                                             _hd152156152196_
                                             _tl152155152198_
                                             _e152160152201_
                                             _hd152159152204_
                                             _tl152158152206_
                                             _e152163152209_
                                             _hd152162152212_
                                             _tl152161152214_
                                             _e152166152217_
                                             _hd152165152220_
                                             _tl152164152222_)))
                                        (___kont152727152728_))
                                    (___kont152727152728_))))
                            (___kont152727152728_))
                        (___kont152727152728_))
                    (___kont152727152728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152727152728_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g152148152188_))))))))))))))))))
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
      (lambda (_self151931_ _stx151932_ _args151933_)
        (let* ((_g151935151945_
                (lambda (_g151936151942_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151936151942_))))
               (_g151934151983_
                (lambda (_g151936151948_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151936151948_))
                      (let ((_e151940151950_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151936151948_))))
                        (let ((_hd151939151953_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151940151950_)))
                              (_tl151938151955_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151940151950_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151938151955_))
                              ((lambda (_L151958_)
                                 (let* ((_klass151969_
                                         (let ((__tmp153304
                                                (##structure-ref
                                                 _self151931_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151932_
                                            __tmp153304)))
                                        (_field151971_
                                         (let ((__tmp153305
                                                (##structure-ref
                                                 _self151931_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151969_
                                            __tmp153305)))
                                        (_object151973_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151958_))))
                                   (if (##structure-ref
                                        _klass151969_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153382
                                              (let ((__tmp153391
                                                     (if (##structure-ref
                                                          _self151931_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp153383
                                                     (let ((__tmp153388
                                                            (let ((__tmp153389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153390
                                  (##structure-ref
                                   _self151931_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153390 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153389)))
                   (__tmp153384
                    (let ((__tmp153386
                           (let ((__tmp153387
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151971_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp153387)))
                          (__tmp153385
                           (let ()
                             (declare (not safe))
                             (cons _object151973_ '()))))
                      (declare (not safe))
                      (cons __tmp153386 __tmp153385))))
               (declare (not safe))
               (cons __tmp153388 __tmp153384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153391
                                                      __tmp153383))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153382
                                          _stx151932_))
                                       (if (##structure-ref
                                            _klass151969_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153372
                                                  (let ((__tmp153381
                                                         (if (##structure-ref
                                                              _self151931_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp153373
                                                         (let ((__tmp153378
                                                                (let ((__tmp153379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153380
                                      (##structure-ref
                                       _self151931_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153380 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153379)))
                       (__tmp153374
                        (let ((__tmp153376
                               (let ((__tmp153377
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151971_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153377)))
                              (__tmp153375
                               (let ()
                                 (declare (not safe))
                                 (cons _object151973_ '()))))
                          (declare (not safe))
                          (cons __tmp153376 __tmp153375))))
                   (declare (not safe))
                   (cons __tmp153378 __tmp153374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153381
                                                          __tmp153373))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153372
                                              _stx151932_))
                                           (let ((_$e151976_
                                                  (let ((__tmp153306
                                                         (##structure-ref
                                                          _self151931_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151969_
                                                     __tmp153306))))
                                             (if _$e151976_
                                                 ((lambda (_klass151979_)
                                                    (let ((__tmp153362
                                                           (let ((__tmp153371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151931_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp153363
                          (let ((__tmp153368
                                 (let ((__tmp153369
                                        (let ((__tmp153370
                                               (##structure-ref
                                                _self151931_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153370 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153369)))
                                (__tmp153364
                                 (let ((__tmp153366
                                        (let ((__tmp153367
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151971_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153367)))
                                       (__tmp153365
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151973_ '()))))
                                   (declare (not safe))
                                   (cons __tmp153366 __tmp153365))))
                            (declare (not safe))
                            (cons __tmp153368 __tmp153364))))
                     (declare (not safe))
                     (cons __tmp153371 __tmp153363))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp153362 _stx151932_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151976_)
                                                 (if (##structure-ref
                                                      _self151931_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp153316
                                                            (let* ((_$obj151981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153317 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp153317)))
                           (__tmp153318
                            (let ((__tmp153358
                                   (let ((__tmp153359
                                          (let ((__tmp153361
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151981_ '())))
                                                (__tmp153360
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151973_ '()))))
                                            (declare (not safe))
                                            (cons __tmp153361 __tmp153360))))
                                     (declare (not safe))
                                     (cons __tmp153359 '())))
                                  (__tmp153319
                                   (let ((__tmp153320
                                          (let ((__tmp153321
                                                 (let ((__tmp153350
                                                        (let ((__tmp153351
                                                               (let ((__tmp153355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153356
                                     (let ((__tmp153357
                                            (##structure-ref
                                             _klass151969_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp153357 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp153356)))
                             (__tmp153352
                              (let ((__tmp153353
                                     (let ((__tmp153354
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151981_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153354))))
                                (declare (not safe))
                                (cons __tmp153353 '()))))
                         (declare (not safe))
                         (cons __tmp153355 __tmp153352))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp153351)))
               (__tmp153322
                (let ((__tmp153339
                       (let ((__tmp153340
                              (let ((__tmp153347
                                     (let ((__tmp153348
                                            (let ((__tmp153349
                                                   (##structure-ref
                                                    _self151931_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153349 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153348)))
                                    (__tmp153341
                                     (let ((__tmp153345
                                            (let ((__tmp153346
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151971_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153346)))
                                           (__tmp153342
                                            (let ((__tmp153343
                                                   (let ((__tmp153344
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153344))))
                                              (declare (not safe))
                                              (cons __tmp153343 '()))))
                                       (declare (not safe))
                                       (cons __tmp153345 __tmp153342))))
                                (declare (not safe))
                                (cons __tmp153347 __tmp153341))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp153340)))
                      (__tmp153323
                       (let ((__tmp153324
                              (let ((__tmp153325
                                     (let ((__tmp153337
                                            (let ((__tmp153338
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153338)))
                                           (__tmp153326
                                            (let ((__tmp153334
                                                   (let ((__tmp153335
                                                          (let ((__tmp153336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151931_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp153336 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153335)))
                                                  (__tmp153327
                                                   (let ((__tmp153332
                                                          (let ((__tmp153333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151981_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153333)))
                 (__tmp153328
                  (let ((__tmp153329
                         (let ((__tmp153330
                                (let ((__tmp153331
                                       (##structure-ref
                                        _self151931_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp153331 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153330))))
                    (declare (not safe))
                    (cons __tmp153329 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153332
                                                           __tmp153328))))
                                              (declare (not safe))
                                              (cons __tmp153334 __tmp153327))))
                                       (declare (not safe))
                                       (cons __tmp153337 __tmp153326))))
                                (declare (not safe))
                                (cons '%#call __tmp153325))))
                         (declare (not safe))
                         (cons __tmp153324 '()))))
                  (declare (not safe))
                  (cons __tmp153339 __tmp153323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153350
                                                         __tmp153322))))
                                            (declare (not safe))
                                            (cons '%#if __tmp153321))))
                                     (declare (not safe))
                                     (cons __tmp153320 '()))))
                              (declare (not safe))
                              (cons __tmp153358 __tmp153319))))
                      (declare (not safe))
                      (cons '%#let-values __tmp153318))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153316 _stx151932_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp153307
                                                            (let ((__tmp153308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153314
                                  (let ((__tmp153315
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153315)))
                                 (__tmp153309
                                  (let ((__tmp153310
                                         (let ((__tmp153311
                                                (let ((__tmp153312
                                                       (let ((__tmp153313
                                                              (##structure-ref
                                                               _self151931_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp153313
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp153312))))
                                           (declare (not safe))
                                           (cons __tmp153311 '()))))
                                    (declare (not safe))
                                    (cons _object151973_ __tmp153310))))
                             (declare (not safe))
                             (cons __tmp153314 __tmp153309))))
                      (declare (not safe))
                      (cons '%#call __tmp153308))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153307 _stx151932_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151939151953_)
                              (let ()
                                (declare (not safe))
                                (_g151935151945_ _g151936151948_)))))
                      (let ()
                        (declare (not safe))
                        (_g151935151945_ _g151936151948_))))))
          (declare (not safe))
          (_g151934151983_ _args151933_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152606 __method-table152607)
        (let ((__id152608
               (let ((__slot152611
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152606 'id))))
                 (if __slot152611
                     __slot152611
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152609
               (let ((__slot152612
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152606 'slot))))
                 (if __slot152612
                     __slot152612
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?152610
               (let ((__slot152613
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152606 'checked?))))
                 (if __slot152613
                     __slot152613
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151931_ _stx151932_ _args151933_)
            (let* ((_g151935151945_
                    (lambda (_g151936151942_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151936151942_))))
                   (_g151934151983_
                    (lambda (_g151936151948_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151936151948_))
                          (let ((_e151940151950_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151936151948_))))
                            (let ((_hd151939151953_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151940151950_)))
                                  (_tl151938151955_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151940151950_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151938151955_))
                                  ((lambda (_L151958_)
                                     (let* ((_klass151969_
                                             (let ((__tmp153392
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151931_
                                                       __id152608
                                                       __klass152606
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151932_
                                                __tmp153392)))
                                            (_field151971_
                                             (let ((__tmp153393
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151931_
                                                       __slot152609
                                                       __klass152606
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151969_
                                                __tmp153393)))
                                            (_object151973_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151958_))))
                                       (if (##structure-ref
                                            _klass151969_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153470
                                                  (let ((__tmp153479
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151931_
                        __checked?152610
                        __klass152606
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153471
                 (let ((__tmp153476
                        (let ((__tmp153477
                               (let ((__tmp153478
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151931_
                                         __id152608
                                         __klass152606
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153478 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153477)))
                       (__tmp153472
                        (let ((__tmp153474
                               (let ((__tmp153475
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151971_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153475)))
                              (__tmp153473
                               (let ()
                                 (declare (not safe))
                                 (cons _object151973_ '()))))
                          (declare (not safe))
                          (cons __tmp153474 __tmp153473))))
                   (declare (not safe))
                   (cons __tmp153476 __tmp153472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153479
                                                          __tmp153471))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153470
                                              _stx151932_))
                                           (if (##structure-ref
                                                _klass151969_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153460
                                                      (let ((__tmp153469
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151931_
                            __checked?152610
                            __klass152606
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153461
                     (let ((__tmp153466
                            (let ((__tmp153467
                                   (let ((__tmp153468
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151931_
                                             __id152608
                                             __klass152606
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153468 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153467)))
                           (__tmp153462
                            (let ((__tmp153464
                                   (let ((__tmp153465
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151971_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153465)))
                                  (__tmp153463
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151973_ '()))))
                              (declare (not safe))
                              (cons __tmp153464 __tmp153463))))
                       (declare (not safe))
                       (cons __tmp153466 __tmp153462))))
                (declare (not safe))
                (cons __tmp153469 __tmp153461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153460
                                                  _stx151932_))
                                               (let ((_$e151976_
                                                      (let ((__tmp153394
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151931_
                        __slot152609
                        __klass152606
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151969_ __tmp153394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151976_
                                                     ((lambda (_klass151979_)
                                                        (let ((__tmp153450
                                                               (let ((__tmp153459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151931_
                                     __checked?152610
                                     __klass152606
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153451
                              (let ((__tmp153456
                                     (let ((__tmp153457
                                            (let ((__tmp153458
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151931_
                                                      __id152608
                                                      __klass152606
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153458 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153457)))
                                    (__tmp153452
                                     (let ((__tmp153454
                                            (let ((__tmp153455
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151971_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153455)))
                                           (__tmp153453
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151973_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153454 __tmp153453))))
                                (declare (not safe))
                                (cons __tmp153456 __tmp153452))))
                         (declare (not safe))
                         (cons __tmp153459 __tmp153451))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153450 _stx151932_)))
              _$e151976_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151931_
                                                            __checked?152610
                                                            __klass152606
                                                            '#f))
                                                         (let ((__tmp153404
                                                                (let* ((_$obj151981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp153405 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp153405)))
                               (__tmp153406
                                (let ((__tmp153446
                                       (let ((__tmp153447
                                              (let ((__tmp153449
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151981_
                                                             '())))
                                                    (__tmp153448
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151973_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153449
                                                      __tmp153448))))
                                         (declare (not safe))
                                         (cons __tmp153447 '())))
                                      (__tmp153407
                                       (let ((__tmp153408
                                              (let ((__tmp153409
                                                     (let ((__tmp153438
                                                            (let ((__tmp153439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153443
                                  (let ((__tmp153444
                                         (let ((__tmp153445
                                                (##structure-ref
                                                 _klass151969_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153445 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153444)))
                                 (__tmp153440
                                  (let ((__tmp153441
                                         (let ((__tmp153442
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151981_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153442))))
                                    (declare (not safe))
                                    (cons __tmp153441 '()))))
                             (declare (not safe))
                             (cons __tmp153443 __tmp153440))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153439)))
                   (__tmp153410
                    (let ((__tmp153427
                           (let ((__tmp153428
                                  (let ((__tmp153435
                                         (let ((__tmp153436
                                                (let ((__tmp153437
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151931_
                                                          __id152608
                                                          __klass152606
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153437 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153436)))
                                        (__tmp153429
                                         (let ((__tmp153433
                                                (let ((__tmp153434
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151971_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153434)))
                                               (__tmp153430
                                                (let ((__tmp153431
                                                       (let ((__tmp153432
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151981_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153431 '()))))
                                           (declare (not safe))
                                           (cons __tmp153433 __tmp153430))))
                                    (declare (not safe))
                                    (cons __tmp153435 __tmp153429))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153428)))
                          (__tmp153411
                           (let ((__tmp153412
                                  (let ((__tmp153413
                                         (let ((__tmp153425
                                                (let ((__tmp153426
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153426)))
                                               (__tmp153414
                                                (let ((__tmp153422
                                                       (let ((__tmp153423
                                                              (let ((__tmp153424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151931_
                                __id152608
                                __klass152606
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153424 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153423)))
              (__tmp153415
               (let ((__tmp153420
                      (let ((__tmp153421
                             (let ()
                               (declare (not safe))
                               (cons _$obj151981_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153421)))
                     (__tmp153416
                      (let ((__tmp153417
                             (let ((__tmp153418
                                    (let ((__tmp153419
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151931_
                                              __slot152609
                                              __klass152606
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153419 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153418))))
                        (declare (not safe))
                        (cons __tmp153417 '()))))
                 (declare (not safe))
                 (cons __tmp153420 __tmp153416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153422
                                                        __tmp153415))))
                                           (declare (not safe))
                                           (cons __tmp153425 __tmp153414))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153413))))
                             (declare (not safe))
                             (cons __tmp153412 '()))))
                      (declare (not safe))
                      (cons __tmp153427 __tmp153411))))
               (declare (not safe))
               (cons __tmp153438 __tmp153410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp153409))))
                                         (declare (not safe))
                                         (cons __tmp153408 '()))))
                                  (declare (not safe))
                                  (cons __tmp153446 __tmp153407))))
                          (declare (not safe))
                          (cons '%#let-values __tmp153406))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153404 _stx151932_))
                 (let ((__tmp153395
                        (let ((__tmp153396
                               (let ((__tmp153402
                                      (let ((__tmp153403
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp153403)))
                                     (__tmp153397
                                      (let ((__tmp153398
                                             (let ((__tmp153399
                                                    (let ((__tmp153400
                                                           (let ((__tmp153401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151931_
                             __slot152609
                             __klass152606
                             '#f))))
                     (declare (not safe))
                     (cons __tmp153401 '()))))
              (declare (not safe))
              (cons '%#quote __tmp153400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153399 '()))))
                                        (declare (not safe))
                                        (cons _object151973_ __tmp153398))))
                                 (declare (not safe))
                                 (cons __tmp153402 __tmp153397))))
                          (declare (not safe))
                          (cons '%#call __tmp153396))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153395 _stx151932_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151939151953_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151935151945_ _g151936151948_)))))
                          (let ()
                            (declare (not safe))
                            (_g151935151945_ _g151936151948_))))))
              (declare (not safe))
              (_g151934151983_ _args151933_))))))
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
      (lambda (_self151736_ _stx151737_ _args151738_)
        (let* ((_g151740151754_
                (lambda (_g151741151751_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151741151751_))))
               (_g151739151806_
                (lambda (_g151741151757_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151741151757_))
                      (let ((_e151746151759_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151741151757_))))
                        (let ((_hd151745151762_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151746151759_)))
                              (_tl151744151764_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151746151759_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151744151764_))
                              (let ((_e151749151767_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151744151764_))))
                                (let ((_hd151748151770_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151749151767_)))
                                      (_tl151747151772_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151749151767_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151747151772_))
                                      ((lambda (_L151775_ _L151776_)
                                         (let* ((_klass151790_
                                                 (let ((__tmp153480
                                                        (##structure-ref
                                                         _self151736_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151737_
                                                    __tmp153480)))
                                                (_field151792_
                                                 (let ((__tmp153481
                                                        (##structure-ref
                                                         _self151736_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151790_
                                                    __tmp153481)))
                                                (_object151794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151776_)))
                                                (_value151796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151775_))))
                                           (if (##structure-ref
                                                _klass151790_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153563
                                                      (let ((__tmp153573
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151736_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153564
                     (let ((__tmp153570
                            (let ((__tmp153571
                                   (let ((__tmp153572
                                          (##structure-ref
                                           _self151736_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153572 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153571)))
                           (__tmp153565
                            (let ((__tmp153568
                                   (let ((__tmp153569
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151792_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153569)))
                                  (__tmp153566
                                   (let ((__tmp153567
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151796_ '()))))
                                     (declare (not safe))
                                     (cons _object151794_ __tmp153567))))
                              (declare (not safe))
                              (cons __tmp153568 __tmp153566))))
                       (declare (not safe))
                       (cons __tmp153570 __tmp153565))))
                (declare (not safe))
                (cons __tmp153573 __tmp153564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153563
                                                  _stx151737_))
                                               (if (##structure-ref
                                                    _klass151790_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153552
                                                          (let ((__tmp153562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151736_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153553
                         (let ((__tmp153559
                                (let ((__tmp153560
                                       (let ((__tmp153561
                                              (##structure-ref
                                               _self151736_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153561 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153560)))
                               (__tmp153554
                                (let ((__tmp153557
                                       (let ((__tmp153558
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151792_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153558)))
                                      (__tmp153555
                                       (let ((__tmp153556
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151796_ '()))))
                                         (declare (not safe))
                                         (cons _object151794_ __tmp153556))))
                                  (declare (not safe))
                                  (cons __tmp153557 __tmp153555))))
                           (declare (not safe))
                           (cons __tmp153559 __tmp153554))))
                    (declare (not safe))
                    (cons __tmp153562 __tmp153553))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153552
                                                      _stx151737_))
                                                   (let ((_$e151799_
                                                          (let ((__tmp153482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151736_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151790_ __tmp153482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151799_
                                                         ((lambda (_klass151802_)
                                                            (let ((__tmp153541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153551
                                  (if (##structure-ref
                                       _self151736_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153542
                                  (let ((__tmp153548
                                         (let ((__tmp153549
                                                (let ((__tmp153550
                                                       (##structure-ref
                                                        _self151736_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153550 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153549)))
                                        (__tmp153543
                                         (let ((__tmp153546
                                                (let ((__tmp153547
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151792_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153547)))
                                               (__tmp153544
                                                (let ((__tmp153545
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151796_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151794_
                                                        __tmp153545))))
                                           (declare (not safe))
                                           (cons __tmp153546 __tmp153544))))
                                    (declare (not safe))
                                    (cons __tmp153548 __tmp153543))))
                             (declare (not safe))
                             (cons __tmp153551 __tmp153542))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153541 _stx151737_)))
                  _$e151799_)
                 (if (##structure-ref _self151736_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153493
                            (let* ((_$obj151804_
                                    (let ((__tmp153494 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153494)))
                                   (__tmp153495
                                    (let ((__tmp153537
                                           (let ((__tmp153538
                                                  (let ((__tmp153540
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153539
                 (let () (declare (not safe)) (cons _object151794_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153540
                                                          __tmp153539))))
                                             (declare (not safe))
                                             (cons __tmp153538 '())))
                                          (__tmp153496
                                           (let ((__tmp153497
                                                  (let ((__tmp153498
                                                         (let ((__tmp153529
                                                                (let ((__tmp153530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153534
                                      (let ((__tmp153535
                                             (let ((__tmp153536
                                                    (##structure-ref
                                                     _klass151790_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153536 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153535)))
                                     (__tmp153531
                                      (let ((__tmp153532
                                             (let ((__tmp153533
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151804_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153533))))
                                        (declare (not safe))
                                        (cons __tmp153532 '()))))
                                 (declare (not safe))
                                 (cons __tmp153534 __tmp153531))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153530)))
                       (__tmp153499
                        (let ((__tmp153517
                               (let ((__tmp153518
                                      (let ((__tmp153526
                                             (let ((__tmp153527
                                                    (let ((__tmp153528
                                                           (##structure-ref
                                                            _self151736_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153528 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153527)))
                                            (__tmp153519
                                             (let ((__tmp153524
                                                    (let ((__tmp153525
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153525)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153520
                                                    (let ((__tmp153522
                                                           (let ((__tmp153523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151804_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153523)))
                  (__tmp153521
                   (let () (declare (not safe)) (cons _value151796_ '()))))
              (declare (not safe))
              (cons __tmp153522 __tmp153521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153524
                                                     __tmp153520))))
                                        (declare (not safe))
                                        (cons __tmp153526 __tmp153519))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153518)))
                              (__tmp153500
                               (let ((__tmp153501
                                      (let ((__tmp153502
                                             (let ((__tmp153515
                                                    (let ((__tmp153516
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153516)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153503
                                                    (let ((__tmp153512
                                                           (let ((__tmp153513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153514
                                 (##structure-ref
                                  _self151736_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153514 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153513)))
                  (__tmp153504
                   (let ((__tmp153510
                          (let ((__tmp153511
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151804_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153511)))
                         (__tmp153505
                          (let ((__tmp153507
                                 (let ((__tmp153508
                                        (let ((__tmp153509
                                               (##structure-ref
                                                _self151736_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153509 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153508)))
                                (__tmp153506
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151796_ '()))))
                            (declare (not safe))
                            (cons __tmp153507 __tmp153506))))
                     (declare (not safe))
                     (cons __tmp153510 __tmp153505))))
              (declare (not safe))
              (cons __tmp153512 __tmp153504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153515
                                                     __tmp153503))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153502))))
                                 (declare (not safe))
                                 (cons __tmp153501 '()))))
                          (declare (not safe))
                          (cons __tmp153517 __tmp153500))))
                   (declare (not safe))
                   (cons __tmp153529 __tmp153499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153498))))
                                             (declare (not safe))
                                             (cons __tmp153497 '()))))
                                      (declare (not safe))
                                      (cons __tmp153537 __tmp153496))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153495))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153493 _stx151737_))
                     (let ((__tmp153483
                            (let ((__tmp153484
                                   (let ((__tmp153491
                                          (let ((__tmp153492
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153492)))
                                         (__tmp153485
                                          (let ((__tmp153486
                                                 (let ((__tmp153488
                                                        (let ((__tmp153489
                                                               (let ((__tmp153490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151736_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153490 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153489)))
               (__tmp153487
                (let () (declare (not safe)) (cons _value151796_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153488
                                                         __tmp153487))))
                                            (declare (not safe))
                                            (cons _object151794_
                                                  __tmp153486))))
                                     (declare (not safe))
                                     (cons __tmp153491 __tmp153485))))
                              (declare (not safe))
                              (cons '%#call __tmp153484))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153483 _stx151737_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151748151770_
                                       _hd151745151762_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151740151754_ _g151741151757_)))))
                              (let ()
                                (declare (not safe))
                                (_g151740151754_ _g151741151757_)))))
                      (let ()
                        (declare (not safe))
                        (_g151740151754_ _g151741151757_))))))
          (declare (not safe))
          (_g151739151806_ _args151738_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152614 __method-table152615)
        (let ((__id152616
               (let ((__slot152619
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152614 'id))))
                 (if __slot152619
                     __slot152619
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot152617
               (let ((__slot152620
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152614 'slot))))
                 (if __slot152620
                     __slot152620
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?152618
               (let ((__slot152621
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152614 'checked?))))
                 (if __slot152621
                     __slot152621
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151736_ _stx151737_ _args151738_)
            (let* ((_g151740151754_
                    (lambda (_g151741151751_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151741151751_))))
                   (_g151739151806_
                    (lambda (_g151741151757_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151741151757_))
                          (let ((_e151746151759_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151741151757_))))
                            (let ((_hd151745151762_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151746151759_)))
                                  (_tl151744151764_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151746151759_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151744151764_))
                                  (let ((_e151749151767_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151744151764_))))
                                    (let ((_hd151748151770_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151749151767_)))
                                          (_tl151747151772_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151749151767_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151747151772_))
                                          ((lambda (_L151775_ _L151776_)
                                             (let* ((_klass151790_
                                                     (let ((__tmp153574
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151736_
                                                               __id152616
                                                               __klass152614
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151737_
                                                        __tmp153574)))
                                                    (_field151792_
                                                     (let ((__tmp153575
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151736_
                                                               __slot152617
                                                               __klass152614
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151790_
                                                        __tmp153575)))
                                                    (_object151794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151776_)))
                                                    (_value151796_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151775_))))
                                               (if (##structure-ref
                                                    _klass151790_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153657
                                                          (let ((__tmp153667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151736_
                                __checked?152618
                                __klass152614
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153658
                         (let ((__tmp153664
                                (let ((__tmp153665
                                       (let ((__tmp153666
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151736_
                                                 __id152616
                                                 __klass152614
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153666 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153665)))
                               (__tmp153659
                                (let ((__tmp153662
                                       (let ((__tmp153663
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151792_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153663)))
                                      (__tmp153660
                                       (let ((__tmp153661
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151796_ '()))))
                                         (declare (not safe))
                                         (cons _object151794_ __tmp153661))))
                                  (declare (not safe))
                                  (cons __tmp153662 __tmp153660))))
                           (declare (not safe))
                           (cons __tmp153664 __tmp153659))))
                    (declare (not safe))
                    (cons __tmp153667 __tmp153658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153657
                                                      _stx151737_))
                                                   (if (##structure-ref
                                                        _klass151790_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153646
                                                              (let ((__tmp153656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151736_
                                    __checked?152618
                                    __klass152614
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153647
                             (let ((__tmp153653
                                    (let ((__tmp153654
                                           (let ((__tmp153655
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151736_
                                                     __id152616
                                                     __klass152614
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153655 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153654)))
                                   (__tmp153648
                                    (let ((__tmp153651
                                           (let ((__tmp153652
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151792_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153652)))
                                          (__tmp153649
                                           (let ((__tmp153650
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151796_ '()))))
                                             (declare (not safe))
                                             (cons _object151794_
                                                   __tmp153650))))
                                      (declare (not safe))
                                      (cons __tmp153651 __tmp153649))))
                               (declare (not safe))
                               (cons __tmp153653 __tmp153648))))
                        (declare (not safe))
                        (cons __tmp153656 __tmp153647))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153646 _stx151737_))
               (let ((_$e151799_
                      (let ((__tmp153576
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151736_
                                __slot152617
                                __klass152614
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151790_
                         __tmp153576))))
                 (if _$e151799_
                     ((lambda (_klass151802_)
                        (let ((__tmp153635
                               (let ((__tmp153645
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151736_
                                             __checked?152618
                                             __klass152614
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153636
                                      (let ((__tmp153642
                                             (let ((__tmp153643
                                                    (let ((__tmp153644
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151736_
                                                              __id152616
                                                              __klass152614
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153644 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153643)))
                                            (__tmp153637
                                             (let ((__tmp153640
                                                    (let ((__tmp153641
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153641)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153638
                                                    (let ((__tmp153639
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151794_ __tmp153639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153640
                                                     __tmp153638))))
                                        (declare (not safe))
                                        (cons __tmp153642 __tmp153637))))
                                 (declare (not safe))
                                 (cons __tmp153645 __tmp153636))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153635 _stx151737_)))
                      _$e151799_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151736_
                            __checked?152618
                            __klass152614
                            '#f))
                         (let ((__tmp153587
                                (let* ((_$obj151804_
                                        (let ((__tmp153588 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153588)))
                                       (__tmp153589
                                        (let ((__tmp153631
                                               (let ((__tmp153632
                                                      (let ((__tmp153634
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151804_ '())))
                    (__tmp153633
                     (let () (declare (not safe)) (cons _object151794_ '()))))
                (declare (not safe))
                (cons __tmp153634 __tmp153633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153632 '())))
                                              (__tmp153590
                                               (let ((__tmp153591
                                                      (let ((__tmp153592
                                                             (let ((__tmp153623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153624
                                   (let ((__tmp153628
                                          (let ((__tmp153629
                                                 (let ((__tmp153630
                                                        (##structure-ref
                                                         _klass151790_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153630 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153629)))
                                         (__tmp153625
                                          (let ((__tmp153626
                                                 (let ((__tmp153627
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151804_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153627))))
                                            (declare (not safe))
                                            (cons __tmp153626 '()))))
                                     (declare (not safe))
                                     (cons __tmp153628 __tmp153625))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153624)))
                           (__tmp153593
                            (let ((__tmp153611
                                   (let ((__tmp153612
                                          (let ((__tmp153620
                                                 (let ((__tmp153621
                                                        (let ((__tmp153622
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151736_
                          __id152616
                          __klass152614
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153622 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153621)))
                                                (__tmp153613
                                                 (let ((__tmp153618
                                                        (let ((__tmp153619
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151792_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153619)))
               (__tmp153614
                (let ((__tmp153616
                       (let ((__tmp153617
                              (let ()
                                (declare (not safe))
                                (cons _$obj151804_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153617)))
                      (__tmp153615
                       (let () (declare (not safe)) (cons _value151796_ '()))))
                  (declare (not safe))
                  (cons __tmp153616 __tmp153615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153618
                                                         __tmp153614))))
                                            (declare (not safe))
                                            (cons __tmp153620 __tmp153613))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153612)))
                                  (__tmp153594
                                   (let ((__tmp153595
                                          (let ((__tmp153596
                                                 (let ((__tmp153609
                                                        (let ((__tmp153610
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153610)))
               (__tmp153597
                (let ((__tmp153606
                       (let ((__tmp153607
                              (let ((__tmp153608
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151736_
                                        __id152616
                                        __klass152614
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153608 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153607)))
                      (__tmp153598
                       (let ((__tmp153604
                              (let ((__tmp153605
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151804_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153605)))
                             (__tmp153599
                              (let ((__tmp153601
                                     (let ((__tmp153602
                                            (let ((__tmp153603
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151736_
                                                      __slot152617
                                                      __klass152614
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153603 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153602)))
                                    (__tmp153600
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151796_ '()))))
                                (declare (not safe))
                                (cons __tmp153601 __tmp153600))))
                         (declare (not safe))
                         (cons __tmp153604 __tmp153599))))
                  (declare (not safe))
                  (cons __tmp153606 __tmp153598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153609
                                                         __tmp153597))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153596))))
                                     (declare (not safe))
                                     (cons __tmp153595 '()))))
                              (declare (not safe))
                              (cons __tmp153611 __tmp153594))))
                       (declare (not safe))
                       (cons __tmp153623 __tmp153593))))
                (declare (not safe))
                (cons '%#if __tmp153592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153591 '()))))
                                          (declare (not safe))
                                          (cons __tmp153631 __tmp153590))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153589))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153587 _stx151737_))
                         (let ((__tmp153577
                                (let ((__tmp153578
                                       (let ((__tmp153585
                                              (let ((__tmp153586
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153586)))
                                             (__tmp153579
                                              (let ((__tmp153580
                                                     (let ((__tmp153582
                                                            (let ((__tmp153583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153584
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151736_
                                     __slot152617
                                     __klass152614
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153584 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153583)))
                   (__tmp153581
                    (let () (declare (not safe)) (cons _value151796_ '()))))
               (declare (not safe))
               (cons __tmp153582 __tmp153581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151794_
                                                      __tmp153580))))
                                         (declare (not safe))
                                         (cons __tmp153585 __tmp153579))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153578))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153577
                            _stx151737_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151748151770_
                                           _hd151745151762_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151740151754_
                                             _g151741151757_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151740151754_ _g151741151757_)))))
                          (let ()
                            (declare (not safe))
                            (_g151740151754_ _g151741151757_))))))
              (declare (not safe))
              (_g151739151806_ _args151738_))))))
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
      (lambda (_self151570_ _stx151571_ _args151572_)
        (let* ((_self151573151582_ _self151570_)
               (_E151575151586_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151573151582_))))
               (_K151576151593_
                (lambda (_inline151589_ _dispatch151590_ _arity151591_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151570_ _args151572_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151571_
                         _arity151591_)))
                  (if _inline151589_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153673
                               (let ((__tmp153674
                                      (_inline151589_ _stx151571_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153674
                                  _stx151571_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153673)))
                      (if _dispatch151590_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151590_))
                            (let ((__tmp153668
                                   (let ((__tmp153669
                                          (let ((__tmp153670
                                                 (let ((__tmp153671
                                                        (let ((__tmp153672
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151590_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153671
                                                         _args151572_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153670))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153669
                                      _stx151571_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153668)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151571_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151573151582_ 'gxc#!lambda::t))
              (let* ((_e151577151596_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151573151582_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151578151599_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151573151582_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151602_ _e151578151599_)
                     (_e151579151604_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151573151582_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151607_ _e151579151604_)
                     (_e151580151609_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151573151582_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151612_ _e151580151609_))
                (declare (not safe))
                (_K151576151593_
                 _inline151612_
                 _dispatch151607_
                 _arity151602_))
              (let () (declare (not safe)) (_E151575151586_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self151409_ _stx151410_ _args151411_)
        (let* ((_self151412151419_ _self151409_)
               (_E151414151423_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151412151419_))))
               (_K151415151437_
                (lambda (_clauses151426_)
                  (let ((_$e151432_
                         (let ((__tmp153675
                                (lambda (_g151427151429_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151427151429_
                                     _args151411_)))))
                           (declare (not safe))
                           (find __tmp153675 _clauses151426_))))
                    (if _$e151432_
                        ((lambda (_clause151435_)
                           (let ((__method152890
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151435_
                                     'optimize-call))))
                             (if __method152890
                                 (__method152890
                                  _clause151435_
                                  _stx151410_
                                  _args151411_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151435_
                                          'optimize-call)))))
                         _$e151432_)
                        (let ((__tmp153676
                               (map gxc#!lambda-arity _clauses151426_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx151410_
                           __tmp153676)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151412151419_
                 'gxc#!case-lambda::t))
              (let* ((_e151416151440_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151412151419_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151417151443_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151412151419_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151446_ _e151417151443_))
                (declare (not safe))
                (_K151415151437_ _clauses151446_))
              (let () (declare (not safe)) (_E151414151423_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self151223_ _args151224_)
        (let* ((_self151225151232_ _self151223_)
               (_E151227151236_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151225151232_))))
               (_K151228151276_
                (lambda (_arity151239_)
                  (let* ((_arity151240151249_ _arity151239_)
                         (_E151243151253_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity151240151249_)))))
                    (let ((_K151247151273_
                           (lambda ()
                             (fx= (length _args151224_) _arity151239_)))
                          (_K151244151259_
                           (lambda (_arity151257_)
                             (fx>= (length _args151224_) _arity151257_))))
                      (let ((_try-match151242151269_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity151240151249_))
                                   (let ((_tl151246151264_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity151240151249_)))
                                         (_hd151245151262_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity151240151249_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl151246151264_))
                                         (let ((_arity151267_
                                                _hd151245151262_))
                                           (declare (not safe))
                                           (_K151244151259_ _arity151267_))
                                         (let ()
                                           (declare (not safe))
                                           (_E151243151253_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E151243151253_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity151240151249_))
                            (let () (declare (not safe)) (_K151247151273_))
                            (let ()
                              (declare (not safe))
                              (_try-match151242151269_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151225151232_ 'gxc#!lambda::t))
              (let* ((_e151229151279_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151225151232_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151230151282_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151225151232_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151285_ _e151230151282_))
                (declare (not safe))
                (_K151228151276_ _arity151285_))
              (let () (declare (not safe)) (_E151227151236_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self151108_ _stx151109_ _args151110_)
        (let* ((_self151111151119_ _self151108_)
               (_E151113151123_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151111151119_))))
               (_K151114151207_
                (lambda (_dispatch151126_ _table151127_)
                  (let* ((_g151128151137_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch151126_)))
                         (_else151130151145_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch151126_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx151109_))))
                         (_K151132151191_
                          (lambda (_main151148_ _keys151149_)
                            (let ((_g153677_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx151109_
                                      _args151110_))))
                              (begin
                                (let ((_g153678_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153677_)
                                             (##vector-length _g153677_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153678_ 2)))
                                      (error "Context expects 2 values"
                                             _g153678_)))
                                (let ((_pargs151151_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153677_ 0)))
                                      (_kwargs151152_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153677_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main151148_))
                                    (if _table151127_
                                        (let ((_xargs151159_
                                               (map (lambda (_key151154_)
                                                      (let ((_$e151156_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key151154_ _kwargs151152_))))
                (if _$e151156_ (values _$e151156_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys151149_)))
                                          (for-each
                                           (lambda (_kw151161_)
                                             (if (memq (car _kw151161_)
                                                       _keys151149_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx151109_
                                                    _keys151149_
                                                    _kw151161_))))
                                           _kwargs151152_)
                                          (let ((__tmp153730
                                                 (let ((__tmp153731
                                                        (let ((__tmp153732
                                                               (let ((__tmp153737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153738
                                     (let ()
                                       (declare (not safe))
                                       (cons _main151148_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153738)))
                             (__tmp153733
                              (let ((__tmp153735
                                     (let ((__tmp153736
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153736)))
                                    (__tmp153734
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs151151_
                                               _xargs151159_))))
                                (declare (not safe))
                                (cons __tmp153735 __tmp153734))))
                         (declare (not safe))
                         (cons __tmp153737 __tmp153733))))
                  (declare (not safe))
                  (cons '%#call __tmp153732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153731
                                                    _stx151109_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153730)))
                                        (let* ((_kwt151163_
                                                (let ((__tmp153679
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153679)))
                                               (_kwvars151166_
                                                (map (lambda (_g153680_)
                                                       (let ((__tmp153681
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153681)))
                                                     _kwargs151152_))
                                               (_kwbind151171_
                                                (map (lambda (_kw151168_
                                                              _kwvar151169_)
                                                       (let ((__tmp153684
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar151169_ '())))
                     (__tmp153682
                      (let ((__tmp153683 (cdr _kw151168_)))
                        (declare (not safe))
                        (cons __tmp153683 '()))))
                 (declare (not safe))
                 (cons __tmp153684 __tmp153682)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151152_
                                                     _kwvars151166_))
                                               (_kwset151176_
                                                (map (lambda (_kw151173_
                                                              _kwvar151174_)
                                                       (let ((__tmp153685
                                                              (let ((__tmp153686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153694
                                    (let ((__tmp153695
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt151163_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153695)))
                                   (__tmp153687
                                    (let ((__tmp153691
                                           (let ((__tmp153692
                                                  (let ((__tmp153693
                                                         (car _kw151173_)))
                                                    (declare (not safe))
                                                    (cons __tmp153693 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153692)))
                                          (__tmp153688
                                           (let ((__tmp153689
                                                  (let ((__tmp153690
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar151174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153690))))
                                             (declare (not safe))
                                             (cons __tmp153689 '()))))
                                      (declare (not safe))
                                      (cons __tmp153691 __tmp153688))))
                               (declare (not safe))
                               (cons __tmp153694 __tmp153687))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153686))))
                 (declare (not safe))
                 (cons '%#call __tmp153685)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151152_
                                                     _kwvars151166_))
                                               (_xkwargs151181_
                                                (map (lambda (_kw151178_
                                                              _kwvar151179_)
                                                       (let ((__tmp153698
                                                              (car _kw151178_))
                                                             (__tmp153696
                                                              (let ((__tmp153697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar151179_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153697))))
                 (declare (not safe))
                 (cons __tmp153698 __tmp153696)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151152_
                                                     _kwvars151166_))
                                               (_xargs151188_
                                                (map (lambda (_key151183_)
                                                       (let ((_$e151185_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key151183_ _xkwargs151181_))))
                 (if _$e151185_ (values _$e151185_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys151149_)))
                                          (let ((__tmp153699
                                                 (let ((__tmp153700
                                                        (let ((__tmp153701
                                                               (let ((__tmp153702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153703
                                     (let ((__tmp153704
                                            (let ((__tmp153718
                                                   (let ((__tmp153719
                                                          (let ((__tmp153729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt151163_ '())))
                        (__tmp153720
                         (let ((__tmp153721
                                (let ((__tmp153722
                                       (let ((__tmp153723
                                              (let ((__tmp153724
                                                     (let ((__tmp153726
                                                            (let ((__tmp153727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153728 (length _kwargs151152_)))
                             (declare (not safe))
                             (cons __tmp153728 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153727)))
                   (__tmp153725
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153726 __tmp153725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153724))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153723))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153722
                                   _stx151109_))))
                           (declare (not safe))
                           (cons __tmp153721 '()))))
                    (declare (not safe))
                    (cons __tmp153729 __tmp153720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153719 '())))
                                                  (__tmp153705
                                                   (let ((__tmp153706
                                                          (let ((__tmp153707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153708
                                (let ((__tmp153709
                                       (let ((__tmp153710
                                              (let ((__tmp153711
                                                     (let ((__tmp153716
                                                            (let ((__tmp153717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main151148_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153717)))
                   (__tmp153712
                    (let ((__tmp153714
                           (let ((__tmp153715
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt151163_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153715)))
                          (__tmp153713
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs151151_ _xargs151188_))))
                      (declare (not safe))
                      (cons __tmp153714 __tmp153713))))
               (declare (not safe))
               (cons __tmp153716 __tmp153712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153711))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153710
                                          _stx151109_))))
                                  (declare (not safe))
                                  (cons __tmp153709 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153708 _kwset151176_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153706 '()))))
                                              (declare (not safe))
                                              (cons __tmp153718 __tmp153705))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153704))))
                                (declare (not safe))
                                (cons __tmp153703 '()))))
                         (declare (not safe))
                         (cons _kwbind151171_ __tmp153702))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153700
                                                    _stx151109_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153699)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g151128151137_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e151133151194_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151128151137_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e151134151197_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151128151137_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys151200_ _e151134151197_)
                               (_e151135151202_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151128151137_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main151205_ _e151135151202_))
                          (declare (not safe))
                          (_K151132151191_ _main151205_ _keys151200_))
                        (let () (declare (not safe)) (_else151130151145_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151111151119_
                 'gxc#!kw-lambda::t))
              (let* ((_e151115151210_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151111151119_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151116151213_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151111151119_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table151216_ _e151116151213_)
                     (_e151117151218_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151111151119_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch151221_ _e151117151218_))
                (declare (not safe))
                (_K151114151207_ _dispatch151221_ _table151216_))
              (let () (declare (not safe)) (_E151113151123_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150721_ _args150722_)
        (let _lp150724_ ((_rest150726_ _args150722_)
                         (_pargs150727_ '())
                         (_kwargs150728_ '()))
          (let* ((___stx152772152773_ _rest150726_)
                 (_g150734150786_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152772152773_)))))
            (let ((___kont152774152775_
                   (lambda (_L150965_ _L150966_)
                     (let ((__tmp153739
                            (let ()
                              (declare (not safe))
                              (cons _L150966_ _pargs150727_))))
                       (declare (not safe))
                       (_lp150724_ _L150965_ __tmp153739 _kwargs150728_))))
                  (___kont152776152777_
                   (lambda (_L150911_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150911_ _pargs150727_))
                             (reverse _kwargs150728_))))
                  (___kont152778152779_
                   (lambda (_L150858_ _L150859_ _L150860_)
                     (let ((_kw150877_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150860_))))
                       (if (assq _kw150877_ _kwargs150728_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150721_
                              _kw150877_))
                           (let ((__tmp153740
                                  (let ((__tmp153741
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150877_ _L150859_))))
                                    (declare (not safe))
                                    (cons __tmp153741 _kwargs150728_))))
                             (declare (not safe))
                             (_lp150724_
                              _L150858_
                              _pargs150727_
                              __tmp153740))))))
                  (___kont152780152781_
                   (lambda (_L150806_ _L150807_)
                     (let ((__tmp153742
                            (let ()
                              (declare (not safe))
                              (cons _L150807_ _pargs150727_))))
                       (declare (not safe))
                       (_lp150724_ _L150806_ __tmp153742 _kwargs150728_))))
                  (___kont152782152783_
                   (lambda ()
                     (values (reverse _pargs150727_)
                             (reverse _kwargs150728_)))))
              (let* ((_g150733150793_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152772152773_))
                            (___kont152782152783_)
                            (let () (declare (not safe)) (_g150734150786_)))))
                     (___match152879152880_
                      (lambda (_e150767150826_
                               _hd150766150829_
                               _tl150765150831_
                               _e150770150834_
                               _hd150769150837_
                               _tl150768150839_
                               _e150773150842_
                               _hd150772150845_
                               _tl150771150847_
                               _e150776150850_
                               _hd150775150853_
                               _tl150774150855_)
                        (let ((_L150858_ _tl150774150855_)
                              (_L150859_ _hd150775150853_)
                              (_L150860_ _hd150772150845_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150860_))
                              (___kont152778152779_
                               _L150858_
                               _L150859_
                               _L150860_)
                              (___kont152780152781_
                               _tl150765150831_
                               _hd150766150829_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152772152773_))
                    (let ((_e150740150930_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152772152773_))))
                      (let ((_tl150738150935_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150740150930_)))
                            (_hd150739150933_
                             (let ()
                               (declare (not safe))
                               (##car _e150740150930_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150739150933_))
                            (let ((_e150743150938_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150739150933_))))
                              (let ((_tl150741150943_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150743150938_)))
                                    (_hd150742150941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150743150938_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150742150941_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150742150941_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150741150943_))
                                            (let ((_e150746150946_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150741150943_))))
                                              (let ((_tl150744150951_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150746150946_)))
                                                    (_hd150745150949_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150746150946_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150745150949_))
                                                    (let ((_e150747150954_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150745150949_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150747150954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150744150951_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150738150935_))
                          (let ((_e150750150957_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150738150935_))))
                            (let ((_tl150748150962_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150750150957_)))
                                  (_hd150749150960_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150750150957_))))
                              (___kont152774152775_
                               _tl150748150962_
                               _hd150749150960_)))
                          (___kont152780152781_
                           _tl150738150935_
                           _hd150739150933_))
                      (___kont152780152781_ _tl150738150935_ _hd150739150933_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150747150954_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150744150951_))
                          (___kont152776152777_ _tl150738150935_)
                          (___kont152780152781_
                           _tl150738150935_
                           _hd150739150933_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150744150951_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150738150935_))
                              (let ((_e150776150850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150738150935_))))
                                (let ((_tl150774150855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150776150850_)))
                                      (_hd150775150853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150776150850_))))
                                  (___match152879152880_
                                   _e150740150930_
                                   _hd150739150933_
                                   _tl150738150935_
                                   _e150743150938_
                                   _hd150742150941_
                                   _tl150741150943_
                                   _e150746150946_
                                   _hd150745150949_
                                   _tl150744150951_
                                   _e150776150850_
                                   _hd150775150853_
                                   _tl150774150855_)))
                              (___kont152780152781_
                               _tl150738150935_
                               _hd150739150933_))
                          (___kont152780152781_
                           _tl150738150935_
                           _hd150739150933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150744150951_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150738150935_))
                                                            (let ((_e150776150850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150738150935_))))
                      (let ((_tl150774150855_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150776150850_)))
                            (_hd150775150853_
                             (let ()
                               (declare (not safe))
                               (##car _e150776150850_))))
                        (___match152879152880_
                         _e150740150930_
                         _hd150739150933_
                         _tl150738150935_
                         _e150743150938_
                         _hd150742150941_
                         _tl150741150943_
                         _e150746150946_
                         _hd150745150949_
                         _tl150744150951_
                         _e150776150850_
                         _hd150775150853_
                         _tl150774150855_)))
                    (___kont152780152781_ _tl150738150935_ _hd150739150933_))
                (___kont152780152781_ _tl150738150935_ _hd150739150933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152780152781_
                                             _tl150738150935_
                                             _hd150739150933_))
                                        (___kont152780152781_
                                         _tl150738150935_
                                         _hd150739150933_))
                                    (___kont152780152781_
                                     _tl150738150935_
                                     _hd150739150933_))))
                            (___kont152780152781_
                             _tl150738150935_
                             _hd150739150933_))))
                    (let () (declare (not safe)) (_g150733150793_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150717_ _stx150718_ _args150719_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150718_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
