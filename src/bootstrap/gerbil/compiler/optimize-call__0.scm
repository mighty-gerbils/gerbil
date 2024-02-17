(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1708165436)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl284815_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp289674 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl284815_ __tmp289674))
           (let ()
             (declare (not safe))
             (table-set! _tbl284815_ '%#call gxc#optimize-call%))
           _tbl284815_))))
    (define gxc#apply-optimize-call
      (lambda (_stx284798_ . _args284800_)
        (let ((__tmp289676
               (lambda ()
                 (declare (not safe))
                 (if (null? _args284800_)
                     (gxc#compile-e__0 _stx284798_)
                     (let ((_arg1284805_ (car _args284800_))
                           (_rest284807_ (cdr _args284800_)))
                       (if (null? _rest284807_)
                           (gxc#compile-e__1 _stx284798_ _arg1284805_)
                           (let ((_arg2284810_ (car _rest284807_))
                                 (_rest284812_ (cdr _rest284807_)))
                             (if (null? _rest284812_)
                                 (gxc#compile-e__2
                                  _stx284798_
                                  _arg1284805_
                                  _arg2284810_)
                                 (apply gxc#compile-e
                                        _stx284798_
                                        _arg1284805_
                                        _arg2284810_
                                        _rest284812_))))))))
              (__tmp289675 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp289676
           gxc#current-compile-methods
           __tmp289675))))
    (define gxc#optimize-call%
      (lambda (_stx284653_)
        (let* ((___stx289424289425_ _stx284653_)
               (_g284656284676_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx289424289425_)))))
          (let ((___kont289426289427_
                 (lambda (_L284720_ _L284721_)
                   (let* ((_rator-id284739_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L284721_)))
                          (_rator-type284741_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id284739_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type284741_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp289677
                                  (##structure-ref
                                   _rator-type284741_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id284739_
                              '" => "
                              _rator-type284741_
                              '" "
                              __tmp289677))
                           (let ((_optimized284744_
                                  (let ((__method289672
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type284741_
                                            'optimize-call))))
                                    (if __method289672
                                        (__method289672
                                         _rator-type284741_
                                         _stx284653_
                                         _L284720_)
                                        (error '"Missing method"
                                               _rator-type284741_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type284741_))
                                 _optimized284744_
                                 (let* ((___stx289406289407_ _optimized284744_)
                                        (_g284747284757_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx289406289407_)))))
                                   (let ((___kont289408289409_
                                          (lambda (_L284777_)
                                            (let ((__tmp289678
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L284777_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp289678
                                               _stx284653_))))
                                         (___kont289410289411_
                                          (lambda () _optimized284744_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx289406289407_))
                                         (let ((_e284752284769_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx289406289407_))))
                                           (let ((_tl284750284774_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e284752284769_)))
                                                 (_hd284751284772_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e284752284769_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd284751284772_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd284751284772_))
                                                     (___kont289408289409_
                                                      _tl284750284774_)
                                                     (___kont289410289411_))
                                                 (___kont289410289411_))))
                                         (___kont289410289411_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type284741_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx284653_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx284653_
                                _rator-type284741_)))))))
                (___kont289428289429_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx284653_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx289424289425_))
                (let ((_e284662284688_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx289424289425_))))
                  (let ((_tl284660284693_
                         (let () (declare (not safe)) (##cdr _e284662284688_)))
                        (_hd284661284691_
                         (let ()
                           (declare (not safe))
                           (##car _e284662284688_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl284660284693_))
                        (let ((_e284665284696_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl284660284693_))))
                          (let ((_tl284663284701_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e284665284696_)))
                                (_hd284664284699_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e284665284696_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd284664284699_))
                                (let ((_e284668284704_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd284664284699_))))
                                  (let ((_tl284666284709_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e284668284704_)))
                                        (_hd284667284707_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e284668284704_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd284667284707_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd284667284707_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl284666284709_))
                                                (let ((_e284671284712_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl284666284709_))))
                                                  (let ((_tl284669284717_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284671284712_)))
                                                        (_hd284670284715_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284671284712_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284669284717_))
                                                        (___kont289426289427_
                                                         _tl284663284701_
                                                         _hd284670284715_)
                                                        (___kont289428289429_))))
                                                (___kont289428289429_))
                                            (___kont289428289429_))
                                        (___kont289428289429_))))
                                (___kont289428289429_))))
                        (___kont289428289429_))))
                (___kont289428289429_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self284607_ _stx284608_ _args284609_)
        (let* ((_g284611284621_
                (lambda (_g284612284618_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g284612284618_))))
               (_g284610284650_
                (lambda (_g284612284624_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g284612284624_))
                      (let ((_e284616284626_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g284612284624_))))
                        (let ((_hd284615284629_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284616284626_)))
                              (_tl284614284631_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284616284626_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl284614284631_))
                              ((lambda (_L284634_)
                                 (let* ((_klass284645_
                                         (let ((__tmp289679
                                                (##structure-ref
                                                 _self284607_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx284608_
                                            __tmp289679)))
                                        (_object284647_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L284634_))))
                                   (if (##structure-ref
                                        _klass284645_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp289695
                                              (let ((__tmp289696
                                                     (let ((__tmp289698
                                                            (let ((__tmp289699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp289700
                                  (##structure-ref
                                   _klass284645_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp289700 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp289699)))
                   (__tmp289697
                    (let () (declare (not safe)) (cons _object284647_ '()))))
               (declare (not safe))
               (cons __tmp289698 __tmp289697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp289696))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp289695
                                          _stx284608_))
                                       (if (##structure-ref
                                            _klass284645_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp289689
                                                  (let ((__tmp289690
                                                         (let ((__tmp289692
                                                                (let ((__tmp289693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp289694
                                      (##structure-ref
                                       _klass284645_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp289694 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp289693)))
                       (__tmp289691
                        (let ()
                          (declare (not safe))
                          (cons _object284647_ '()))))
                   (declare (not safe))
                   (cons __tmp289692 __tmp289691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp289690))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp289689
                                              _stx284608_))
                                           (let ((__tmp289680
                                                  (let ((__tmp289681
                                                         (let ((__tmp289687
                                                                (let ((__tmp289688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp289688)))
                       (__tmp289682
                        (let ((__tmp289684
                               (let ((__tmp289685
                                      (let ((__tmp289686
                                             (##structure-ref
                                              _self284607_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp289686 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp289685)))
                              (__tmp289683
                               (let ()
                                 (declare (not safe))
                                 (cons _object284647_ '()))))
                          (declare (not safe))
                          (cons __tmp289684 __tmp289683))))
                   (declare (not safe))
                   (cons __tmp289687 __tmp289682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp289681))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp289680
                                              _stx284608_))))))
                               _hd284615284629_)
                              (let ()
                                (declare (not safe))
                                (_g284611284621_ _g284612284624_)))))
                      (let ()
                        (declare (not safe))
                        (_g284611284621_ _g284612284624_))))))
          (declare (not safe))
          (_g284610284650_ _args284609_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t289385)
        (let ((__id289386
               (let ((__tmp289387
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289385 'id))))
                 (if __tmp289387 __tmp289387 (error '"Unknown slot" 'id)))))
          (lambda (_self284607_ _stx284608_ _args284609_)
            (let* ((_g284611284621_
                    (lambda (_g284612284618_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g284612284618_))))
                   (_g284610284650_
                    (lambda (_g284612284624_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g284612284624_))
                          (let ((_e284616284626_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g284612284624_))))
                            (let ((_hd284615284629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284616284626_)))
                                  (_tl284614284631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284616284626_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl284614284631_))
                                  ((lambda (_L284634_)
                                     (let* ((_klass284645_
                                             (let ((__tmp289701
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self284607_
                                                       __id289386
                                                       __t289385
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx284608_
                                                __tmp289701)))
                                            (_object284647_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L284634_))))
                                       (if (##structure-ref
                                            _klass284645_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp289717
                                                  (let ((__tmp289718
                                                         (let ((__tmp289720
                                                                (let ((__tmp289721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp289722
                                      (##structure-ref
                                       _klass284645_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp289722 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp289721)))
                       (__tmp289719
                        (let ()
                          (declare (not safe))
                          (cons _object284647_ '()))))
                   (declare (not safe))
                   (cons __tmp289720 __tmp289719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp289718))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp289717
                                              _stx284608_))
                                           (if (##structure-ref
                                                _klass284645_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp289711
                                                      (let ((__tmp289712
                                                             (let ((__tmp289714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp289715
                                   (let ((__tmp289716
                                          (##structure-ref
                                           _klass284645_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp289716 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp289715)))
                           (__tmp289713
                            (let ()
                              (declare (not safe))
                              (cons _object284647_ '()))))
                       (declare (not safe))
                       (cons __tmp289714 __tmp289713))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp289712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp289711
                                                  _stx284608_))
                                               (let ((__tmp289702
                                                      (let ((__tmp289703
                                                             (let ((__tmp289709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp289710
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp289710)))
                           (__tmp289704
                            (let ((__tmp289706
                                   (let ((__tmp289707
                                          (let ((__tmp289708
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self284607_
                                                    __id289386
                                                    __t289385
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp289708 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp289707)))
                                  (__tmp289705
                                   (let ()
                                     (declare (not safe))
                                     (cons _object284647_ '()))))
                              (declare (not safe))
                              (cons __tmp289706 __tmp289705))))
                       (declare (not safe))
                       (cons __tmp289709 __tmp289704))))
                (declare (not safe))
                (cons '%#call __tmp289703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp289702
                                                  _stx284608_))))))
                                   _hd284615284629_)
                                  (let ()
                                    (declare (not safe))
                                    (_g284611284621_ _g284612284624_)))))
                          (let ()
                            (declare (not safe))
                            (_g284611284621_ _g284612284624_))))))
              (declare (not safe))
              (_g284610284650_ _args284609_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate::optimize-call
       gxc#!predicate::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#!constructor::optimize-call
      (lambda (_self284327_ _stx284328_ _args284329_)
        (let* ((_klass284331_
                (let ((__tmp289723
                       (##structure-ref _self284327_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx284328_ __tmp289723)))
               (_fields284333_
                (length (##structure-ref _klass284331_ '5 gxc#!class::t '#f)))
               (_args284335_ (map gxc#compile-e _args284329_))
               (_inline-make-object284337_
                (let ((__tmp289724
                       (let ((__tmp289730
                              (let ((__tmp289731
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp289731)))
                             (__tmp289725
                              (let ((__tmp289727
                                     (let ((__tmp289728
                                            (let ((__tmp289729
                                                   (##structure-ref
                                                    _self284327_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp289729 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp289728)))
                                    (__tmp289726
                                     (make-list _fields284333_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp289727 __tmp289726))))
                         (declare (not safe))
                         (cons __tmp289730 __tmp289725))))
                  (declare (not safe))
                  (cons '%#call __tmp289724))))
          (let ((_$e284340_
                 (##structure-ref _klass284331_ '6 gxc#!class::t '#f)))
            (if _$e284340_
                ((lambda (_ctor284343_)
                   (let ((_$obj284345_
                          (let ((__tmp289831 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp289831)))
                         (_ctor-impl284346_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass284331_
                             _ctor284343_))))
                     (let ((__tmp289832
                            (let ((__tmp289833
                                   (let ((__tmp289901
                                          (let ((__tmp289902
                                                 (let ((__tmp289904
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj284345_
                                                                '())))
                                                       (__tmp289903
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object284337_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp289904
                                                         __tmp289903))))
                                            (declare (not safe))
                                            (cons __tmp289902 '())))
                                         (__tmp289834
                                          (let ((__tmp289835
                                                 (let ((__tmp289836
                                                        (let ((__tmp289840
                                                               (if _ctor-impl284346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp289895
                                  (let ((__tmp289899
                                         (let ((__tmp289900
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl284346_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp289900)))
                                        (__tmp289896
                                         (let ((__tmp289897
                                                (let ((__tmp289898
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj284345_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp289898))))
                                           (declare (not safe))
                                           (cons __tmp289897 _args284335_))))
                                    (declare (not safe))
                                    (cons __tmp289899 __tmp289896))))
                             (declare (not safe))
                             (cons '%#call __tmp289895))
                           (let* ((_$ctor284348_
                                   (let ((__tmp289841 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp289841)))
                                  (__tmp289842
                                   (let ((__tmp289877
                                          (let ((__tmp289878
                                                 (let ((__tmp289894
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor284348_
                                                                '())))
                                                       (__tmp289879
                                                        (let ((__tmp289880
                                                               (let ((__tmp289881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp289892
                                     (let ((__tmp289893
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp289893)))
                                    (__tmp289882
                                     (let ((__tmp289889
                                            (let ((__tmp289890
                                                   (let ((__tmp289891
                                                          (##structure-ref
                                                           _self284327_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp289891 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp289890)))
                                           (__tmp289883
                                            (let ((__tmp289887
                                                   (let ((__tmp289888
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj284345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp289888)))
                                                  (__tmp289884
                                                   (let ((__tmp289885
                                                          (let ((__tmp289886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor284343_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp289886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp289885 '()))))
                                              (declare (not safe))
                                              (cons __tmp289887 __tmp289884))))
                                       (declare (not safe))
                                       (cons __tmp289889 __tmp289883))))
                                (declare (not safe))
                                (cons __tmp289892 __tmp289882))))
                         (declare (not safe))
                         (cons '%#call __tmp289881))))
                  (declare (not safe))
                  (cons __tmp289880 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp289894
                                                         __tmp289879))))
                                            (declare (not safe))
                                            (cons __tmp289878 '())))
                                         (__tmp289843
                                          (let ((__tmp289844
                                                 (let ((__tmp289845
                                                        (let ((__tmp289875
                                                               (let ((__tmp289876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor284348_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp289876)))
                      (__tmp289846
                       (let ((__tmp289868
                              (let ((__tmp289869
                                     (let ((__tmp289873
                                            (let ((__tmp289874
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor284348_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp289874)))
                                           (__tmp289870
                                            (let ((__tmp289871
                                                   (let ((__tmp289872
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj284345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp289872))))
                                              (declare (not safe))
                                              (cons __tmp289871
                                                    _args284335_))))
                                       (declare (not safe))
                                       (cons __tmp289873 __tmp289870))))
                                (declare (not safe))
                                (cons '%#call __tmp289869)))
                             (__tmp289847
                              (let ((__tmp289848
                                     (let ((__tmp289849
                                            (let ((__tmp289866
                                                   (let ((__tmp289867
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp289867)))
                                                  (__tmp289850
                                                   (let ((__tmp289864
                                                          (let ((__tmp289865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp289865)))
                 (__tmp289851
                  (let ((__tmp289862
                         (let ((__tmp289863
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp289863)))
                        (__tmp289852
                         (let ((__tmp289859
                                (let ((__tmp289860
                                       (let ((__tmp289861
                                              (##structure-ref
                                               _self284327_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp289861 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp289860)))
                               (__tmp289853
                                (let ((__tmp289857
                                       (let ((__tmp289858
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp289858)))
                                      (__tmp289854
                                       (let ((__tmp289855
                                              (let ((__tmp289856
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor284343_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp289856))))
                                         (declare (not safe))
                                         (cons __tmp289855 '()))))
                                  (declare (not safe))
                                  (cons __tmp289857 __tmp289854))))
                           (declare (not safe))
                           (cons __tmp289859 __tmp289853))))
                    (declare (not safe))
                    (cons __tmp289862 __tmp289852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp289864
                                                           __tmp289851))))
                                              (declare (not safe))
                                              (cons __tmp289866 __tmp289850))))
                                       (declare (not safe))
                                       (cons '%#call __tmp289849))))
                                (declare (not safe))
                                (cons __tmp289848 '()))))
                         (declare (not safe))
                         (cons __tmp289868 __tmp289847))))
                  (declare (not safe))
                  (cons __tmp289875 __tmp289846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp289845))))
                                            (declare (not safe))
                                            (cons __tmp289844 '()))))
                                     (declare (not safe))
                                     (cons __tmp289877 __tmp289843))))
                             (declare (not safe))
                             (cons '%#let-values __tmp289842))))
                      (__tmp289837
                       (let ((__tmp289838
                              (let ((__tmp289839
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj284345_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp289839))))
                         (declare (not safe))
                         (cons __tmp289838 '()))))
                  (declare (not safe))
                  (cons __tmp289840 __tmp289837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp289836))))
                                            (declare (not safe))
                                            (cons __tmp289835 '()))))
                                     (declare (not safe))
                                     (cons __tmp289901 __tmp289834))))
                              (declare (not safe))
                              (cons '%#let-values __tmp289833))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp289832 _stx284328_))))
                 _$e284340_)
                (let ((_$e284350_
                       (##structure-ref _klass284331_ '9 gxc#!class::t '#f)))
                  (if _$e284350_
                      ((lambda (_metaclass284353_)
                         (let* ((_$obj284355_
                                 (let ((__tmp289793 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp289793)))
                                (_metakons284357_
                                 (let ((__tmp289794
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx284328_
                                           _metaclass284353_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp289794
                                    'instance-init!))))
                           (let ((__tmp289795
                                  (let ((__tmp289796
                                         (let ((__tmp289827
                                                (let ((__tmp289828
                                                       (let ((__tmp289830
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj284355_ '())))
                     (__tmp289829
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object284337_ '()))))
                 (declare (not safe))
                 (cons __tmp289830 __tmp289829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp289828 '())))
                                               (__tmp289797
                                                (let ((__tmp289798
                                                       (let ((__tmp289799
                                                              (let ((__tmp289803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons284357_
                                 (let ((__tmp289817
                                        (let ((__tmp289825
                                               (let ((__tmp289826
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons284357_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp289826)))
                                              (__tmp289818
                                               (let ((__tmp289822
                                                      (let ((__tmp289823
                                                             (let ((__tmp289824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self284327_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp289824 '()))))
                (declare (not safe))
                (cons '%#ref __tmp289823)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp289819
                                                      (let ((__tmp289820
                                                             (let ((__tmp289821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj284355_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp289821))))
                (declare (not safe))
                (cons __tmp289820 _args284335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp289822
                                                       __tmp289819))))
                                          (declare (not safe))
                                          (cons __tmp289825 __tmp289818))))
                                   (declare (not safe))
                                   (cons '%#call __tmp289817))
                                 (let ((__tmp289804
                                        (let ((__tmp289815
                                               (let ((__tmp289816
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp289816)))
                                              (__tmp289805
                                               (let ((__tmp289812
                                                      (let ((__tmp289813
                                                             (let ((__tmp289814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self284327_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp289814 '()))))
                (declare (not safe))
                (cons '%#ref __tmp289813)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp289806
                                                      (let ((__tmp289810
                                                             (let ((__tmp289811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp289811)))
                    (__tmp289807
                     (let ((__tmp289808
                            (let ((__tmp289809
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj284355_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp289809))))
                       (declare (not safe))
                       (cons __tmp289808 _args284335_))))
                (declare (not safe))
                (cons __tmp289810 __tmp289807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp289812
                                                       __tmp289806))))
                                          (declare (not safe))
                                          (cons __tmp289815 __tmp289805))))
                                   (declare (not safe))
                                   (cons '%#call __tmp289804))))
                            (__tmp289800
                             (let ((__tmp289801
                                    (let ((__tmp289802
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj284355_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp289802))))
                               (declare (not safe))
                               (cons __tmp289801 '()))))
                        (declare (not safe))
                        (cons __tmp289803 __tmp289800))))
                 (declare (not safe))
                 (cons '%#begin __tmp289799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp289798 '()))))
                                           (declare (not safe))
                                           (cons __tmp289827 __tmp289797))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp289796))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp289795 _stx284328_))))
                       _$e284350_)
                      (if (##structure-ref _klass284331_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args284335_) _fields284333_)
                              (let ((__tmp289785
                                     (let ((__tmp289786
                                            (let ((__tmp289791
                                                   (let ((__tmp289792
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp289792)))
                                                  (__tmp289787
                                                   (let ((__tmp289788
                                                          (let ((__tmp289789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp289790
                                (##structure-ref
                                 _self284327_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp289790 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp289789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp289788
                                                           _args284335_))))
                                              (declare (not safe))
                                              (cons __tmp289791 __tmp289787))))
                                       (declare (not safe))
                                       (cons '%#call __tmp289786))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp289785
                                 _stx284328_))
                              (let ((__tmp289784
                                     (##structure-ref
                                      _self284327_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp289783
                                     (length (##structure-ref
                                              _klass284331_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx284328_
                                 __tmp289784
                                 __tmp289783)))
                          (let ((_$obj284360_
                                 (let ((__tmp289732 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp289732))))
                            (let _lp284362_ ((_rest284364_ _args284335_)
                                             (_initializers284365_ '()))
                              (let* ((___stx289462289463_ _rest284364_)
                                     (_g284369284390_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx289462289463_)))))
                                (let ((___kont289464289465_
                                       (lambda (_L284444_ _L284445_ _L284446_)
                                         (let* ((_slot284477_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L284446_))))
                                                (_off284479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass284331_
                                                    _slot284477_))))
                                           (if _off284479_
                                               (let ((__tmp289734
                                                      (let ((__tmp289735
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off284479_ _L284445_))))
                (declare (not safe))
                (cons __tmp289735 _initializers284365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp284362_
                                                  _L284444_
                                                  __tmp289734))
                                               (let ((__tmp289733
                                                      (##structure-ref
                                                       _self284327_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx284328_
                                                  __tmp289733
                                                  _slot284477_))))))
                                      (___kont289466289467_
                                       (lambda ()
                                         (let ((__tmp289736
                                                (let ((__tmp289737
                                                       (let ((__tmp289760
                                                              (let ((__tmp289761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp289763
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj284360_ '())))
                                   (__tmp289762
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object284337_ '()))))
                               (declare (not safe))
                               (cons __tmp289763 __tmp289762))))
                        (declare (not safe))
                        (cons __tmp289761 '())))
                     (__tmp289738
                      (let ((__tmp289739
                             (let ((__tmp289740
                                    (let ((__tmp289757
                                           (let ((__tmp289758
                                                  (let ((__tmp289759
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj284360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp289759))))
                                             (declare (not safe))
                                             (cons __tmp289758 '())))
                                          (__tmp289741
                                           (let ((__tmp289742
                                                  (lambda (_i284404_ _r284405_)
                                                    (let ((__tmp289743
                                                           (let ((__tmp289744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp289754
                                 (let ((__tmp289755
                                        (let ((__tmp289756
                                               (##structure-ref
                                                _self284327_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp289756 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp289755)))
                                (__tmp289745
                                 (let ((__tmp289751
                                        (let ((__tmp289752
                                               (let ((__tmp289753
                                                      (car _i284404_)))
                                                 (declare (not safe))
                                                 (cons __tmp289753 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp289752)))
                                       (__tmp289746
                                        (let ((__tmp289749
                                               (let ((__tmp289750
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj284360_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp289750)))
                                              (__tmp289747
                                               (let ((__tmp289748
                                                      (cdr _i284404_)))
                                                 (declare (not safe))
                                                 (cons __tmp289748 '()))))
                                          (declare (not safe))
                                          (cons __tmp289749 __tmp289747))))
                                   (declare (not safe))
                                   (cons __tmp289751 __tmp289746))))
                            (declare (not safe))
                            (cons __tmp289754 __tmp289745))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp289744))))
              (declare (not safe))
              (cons __tmp289743 _r284405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp289742
                                                     '()
                                                     _initializers284365_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp289757 __tmp289741))))
                               (declare (not safe))
                               (cons '%#begin __tmp289740))))
                        (declare (not safe))
                        (cons __tmp289739 '()))))
                 (declare (not safe))
                 (cons __tmp289760 __tmp289738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp289737))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp289736
                                            _stx284328_))))
                                      (___kont289468289469_
                                       (lambda ()
                                         (let ((__tmp289764
                                                (let ((__tmp289765
                                                       (let ((__tmp289779
                                                              (let ((__tmp289780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp289782
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj284360_ '())))
                                   (__tmp289781
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object284337_ '()))))
                               (declare (not safe))
                               (cons __tmp289782 __tmp289781))))
                        (declare (not safe))
                        (cons __tmp289780 '())))
                     (__tmp289766
                      (let ((__tmp289767
                             (let ((__tmp289768
                                    (let ((__tmp289772
                                           (let ((__tmp289773
                                                  (let ((__tmp289777
                                                         (let ((__tmp289778
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp289778)))
                (__tmp289774
                 (let ((__tmp289775
                        (let ((__tmp289776
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj284360_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp289776))))
                   (declare (not safe))
                   (cons __tmp289775 _args284335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp289777
                                                          __tmp289774))))
                                             (declare (not safe))
                                             (cons '%#call __tmp289773)))
                                          (__tmp289769
                                           (let ((__tmp289770
                                                  (let ((__tmp289771
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj284360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp289771))))
                                             (declare (not safe))
                                             (cons __tmp289770 '()))))
                                      (declare (not safe))
                                      (cons __tmp289772 __tmp289769))))
                               (declare (not safe))
                               (cons '%#begin __tmp289768))))
                        (declare (not safe))
                        (cons __tmp289767 '()))))
                 (declare (not safe))
                 (cons __tmp289779 __tmp289766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp289765))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp289764
                                            _stx284328_)))))
                                  (let* ((_g284367284407_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx289462289463_))
                                                (___kont289466289467_)
                                                (___kont289468289469_))))
                                         (___match289499289500_
                                          (lambda (_e284376284412_
                                                   _hd284375284415_
                                                   _tl284374284417_
                                                   _e284379284420_
                                                   _hd284378284423_
                                                   _tl284377284425_
                                                   _e284382284428_
                                                   _hd284381284431_
                                                   _tl284380284433_
                                                   _e284385284436_
                                                   _hd284384284439_
                                                   _tl284383284441_)
                                            (let ((_L284444_ _tl284383284441_)
                                                  (_L284445_ _hd284384284439_)
                                                  (_L284446_ _hd284381284431_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L284446_))
                                                  (___kont289464289465_
                                                   _L284444_
                                                   _L284445_
                                                   _L284446_)
                                                  (___kont289468289469_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx289462289463_))
                                        (let ((_e284376284412_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx289462289463_))))
                                          (let ((_tl284374284417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e284376284412_)))
                                                (_hd284375284415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e284376284412_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd284375284415_))
                                                (let ((_e284379284420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd284375284415_))))
                                                  (let ((_tl284377284425_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284379284420_)))
                                                        (_hd284378284423_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284379284420_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd284378284423_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd284378284423_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl284377284425_))
                        (let ((_e284382284428_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl284377284425_))))
                          (let ((_tl284380284433_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e284382284428_)))
                                (_hd284381284431_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e284382284428_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl284380284433_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl284374284417_))
                                    (let ((_e284385284436_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl284374284417_))))
                                      (let ((_tl284383284441_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284385284436_)))
                                            (_hd284384284439_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284385284436_))))
                                        (___match289499289500_
                                         _e284376284412_
                                         _hd284375284415_
                                         _tl284374284417_
                                         _e284379284420_
                                         _hd284378284423_
                                         _tl284377284425_
                                         _e284382284428_
                                         _hd284381284431_
                                         _tl284380284433_
                                         _e284385284436_
                                         _hd284384284439_
                                         _tl284383284441_)))
                                    (___kont289468289469_))
                                (___kont289468289469_))))
                        (___kont289468289469_))
                    (___kont289468289469_))
                (___kont289468289469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont289468289469_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284367284407_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t289388)
        (let ((__id289389
               (let ((__tmp289390
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289388 'id))))
                 (if __tmp289390 __tmp289390 (error '"Unknown slot" 'id)))))
          (lambda (_self284327_ _stx284328_ _args284329_)
            (let* ((_klass284331_
                    (let ((__tmp289905
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self284327_
                              __id289389
                              __t289388
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx284328_ __tmp289905)))
                   (_fields284333_
                    (length (##structure-ref
                             _klass284331_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args284335_ (map gxc#compile-e _args284329_))
                   (_inline-make-object284337_
                    (let ((__tmp289906
                           (let ((__tmp289912
                                  (let ((__tmp289913
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp289913)))
                                 (__tmp289907
                                  (let ((__tmp289909
                                         (let ((__tmp289910
                                                (let ((__tmp289911
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self284327_
                                                          __id289389
                                                          __t289388
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp289911 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp289910)))
                                        (__tmp289908
                                         (make-list
                                          _fields284333_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp289909 __tmp289908))))
                             (declare (not safe))
                             (cons __tmp289912 __tmp289907))))
                      (declare (not safe))
                      (cons '%#call __tmp289906))))
              (let ((_$e284340_
                     (##structure-ref _klass284331_ '6 gxc#!class::t '#f)))
                (if _$e284340_
                    ((lambda (_ctor284343_)
                       (let ((_$obj284345_
                              (let ((__tmp290013 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp290013)))
                             (_ctor-impl284346_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass284331_
                                 _ctor284343_))))
                         (let ((__tmp290014
                                (let ((__tmp290015
                                       (let ((__tmp290083
                                              (let ((__tmp290084
                                                     (let ((__tmp290086
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj284345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp290085
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object284337_ '()))))
               (declare (not safe))
               (cons __tmp290086 __tmp290085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290084 '())))
                                             (__tmp290016
                                              (let ((__tmp290017
                                                     (let ((__tmp290018
                                                            (let ((__tmp290022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl284346_
                               (let ((__tmp290077
                                      (let ((__tmp290081
                                             (let ((__tmp290082
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl284346_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp290082)))
                                            (__tmp290078
                                             (let ((__tmp290079
                                                    (let ((__tmp290080
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj284345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp290080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290079
                                                     _args284335_))))
                                        (declare (not safe))
                                        (cons __tmp290081 __tmp290078))))
                                 (declare (not safe))
                                 (cons '%#call __tmp290077))
                               (let* ((_$ctor284348_
                                       (let ((__tmp290023
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp290023)))
                                      (__tmp290024
                                       (let ((__tmp290059
                                              (let ((__tmp290060
                                                     (let ((__tmp290076
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor284348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp290061
                    (let ((__tmp290062
                           (let ((__tmp290063
                                  (let ((__tmp290074
                                         (let ((__tmp290075
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290075)))
                                        (__tmp290064
                                         (let ((__tmp290071
                                                (let ((__tmp290072
                                                       (let ((__tmp290073
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self284327_
                         __id289389
                         __t289388
                         '#f))))
                 (declare (not safe))
                 (cons __tmp290073 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp290072)))
                                               (__tmp290065
                                                (let ((__tmp290069
                                                       (let ((__tmp290070
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj284345_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290070)))
              (__tmp290066
               (let ((__tmp290067
                      (let ((__tmp290068
                             (let ()
                               (declare (not safe))
                               (cons _ctor284343_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp290068))))
                 (declare (not safe))
                 (cons __tmp290067 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290069
                                                        __tmp290066))))
                                           (declare (not safe))
                                           (cons __tmp290071 __tmp290065))))
                                    (declare (not safe))
                                    (cons __tmp290074 __tmp290064))))
                             (declare (not safe))
                             (cons '%#call __tmp290063))))
                      (declare (not safe))
                      (cons __tmp290062 '()))))
               (declare (not safe))
               (cons __tmp290076 __tmp290061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290060 '())))
                                             (__tmp290025
                                              (let ((__tmp290026
                                                     (let ((__tmp290027
                                                            (let ((__tmp290057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290058
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor284348_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp290058)))
                          (__tmp290028
                           (let ((__tmp290050
                                  (let ((__tmp290051
                                         (let ((__tmp290055
                                                (let ((__tmp290056
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor284348_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp290056)))
                                               (__tmp290052
                                                (let ((__tmp290053
                                                       (let ((__tmp290054
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj284345_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290053
                                                        _args284335_))))
                                           (declare (not safe))
                                           (cons __tmp290055 __tmp290052))))
                                    (declare (not safe))
                                    (cons '%#call __tmp290051)))
                                 (__tmp290029
                                  (let ((__tmp290030
                                         (let ((__tmp290031
                                                (let ((__tmp290048
                                                       (let ((__tmp290049
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290049)))
              (__tmp290032
               (let ((__tmp290046
                      (let ((__tmp290047
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp290047)))
                     (__tmp290033
                      (let ((__tmp290044
                             (let ((__tmp290045
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp290045)))
                            (__tmp290034
                             (let ((__tmp290041
                                    (let ((__tmp290042
                                           (let ((__tmp290043
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self284327_
                                                     __id289389
                                                     __t289388
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp290043 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp290042)))
                                   (__tmp290035
                                    (let ((__tmp290039
                                           (let ((__tmp290040
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp290040)))
                                          (__tmp290036
                                           (let ((__tmp290037
                                                  (let ((__tmp290038
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor284343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp290038))))
                                             (declare (not safe))
                                             (cons __tmp290037 '()))))
                                      (declare (not safe))
                                      (cons __tmp290039 __tmp290036))))
                               (declare (not safe))
                               (cons __tmp290041 __tmp290035))))
                        (declare (not safe))
                        (cons __tmp290044 __tmp290034))))
                 (declare (not safe))
                 (cons __tmp290046 __tmp290033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290048
                                                        __tmp290032))))
                                           (declare (not safe))
                                           (cons '%#call __tmp290031))))
                                    (declare (not safe))
                                    (cons __tmp290030 '()))))
                             (declare (not safe))
                             (cons __tmp290050 __tmp290029))))
                      (declare (not safe))
                      (cons __tmp290057 __tmp290028))))
               (declare (not safe))
               (cons '%#if __tmp290027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290026 '()))))
                                         (declare (not safe))
                                         (cons __tmp290059 __tmp290025))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp290024))))
                          (__tmp290019
                           (let ((__tmp290020
                                  (let ((__tmp290021
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj284345_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp290021))))
                             (declare (not safe))
                             (cons __tmp290020 '()))))
                      (declare (not safe))
                      (cons __tmp290022 __tmp290019))))
               (declare (not safe))
               (cons '%#begin __tmp290018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290017 '()))))
                                         (declare (not safe))
                                         (cons __tmp290083 __tmp290016))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp290015))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp290014 _stx284328_))))
                     _$e284340_)
                    (let ((_$e284350_
                           (##structure-ref
                            _klass284331_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e284350_
                          ((lambda (_metaclass284353_)
                             (let* ((_$obj284355_
                                     (let ((__tmp289975 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp289975)))
                                    (_metakons284357_
                                     (let ((__tmp289976
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx284328_
                                               _metaclass284353_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp289976
                                        'instance-init!))))
                               (let ((__tmp289977
                                      (let ((__tmp289978
                                             (let ((__tmp290009
                                                    (let ((__tmp290010
                                                           (let ((__tmp290012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj284355_ '())))
                         (__tmp290011
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object284337_ '()))))
                     (declare (not safe))
                     (cons __tmp290012 __tmp290011))))
              (declare (not safe))
              (cons __tmp290010 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp289979
                                                    (let ((__tmp289980
                                                           (let ((__tmp289981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp289985
                                 (if _metakons284357_
                                     (let ((__tmp289999
                                            (let ((__tmp290007
                                                   (let ((__tmp290008
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons284357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290008)))
                                                  (__tmp290000
                                                   (let ((__tmp290004
                                                          (let ((__tmp290005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp290006
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self284327_
                                   __id289389
                                   __t289388
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp290006 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp290005)))
                 (__tmp290001
                  (let ((__tmp290002
                         (let ((__tmp290003
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj284355_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp290003))))
                    (declare (not safe))
                    (cons __tmp290002 _args284335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290004
                                                           __tmp290001))))
                                              (declare (not safe))
                                              (cons __tmp290007 __tmp290000))))
                                       (declare (not safe))
                                       (cons '%#call __tmp289999))
                                     (let ((__tmp289986
                                            (let ((__tmp289997
                                                   (let ((__tmp289998
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp289998)))
                                                  (__tmp289987
                                                   (let ((__tmp289994
                                                          (let ((__tmp289995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp289996
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self284327_
                                   __id289389
                                   __t289388
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp289996 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp289995)))
                 (__tmp289988
                  (let ((__tmp289992
                         (let ((__tmp289993
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp289993)))
                        (__tmp289989
                         (let ((__tmp289990
                                (let ((__tmp289991
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj284355_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp289991))))
                           (declare (not safe))
                           (cons __tmp289990 _args284335_))))
                    (declare (not safe))
                    (cons __tmp289992 __tmp289989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp289994
                                                           __tmp289988))))
                                              (declare (not safe))
                                              (cons __tmp289997 __tmp289987))))
                                       (declare (not safe))
                                       (cons '%#call __tmp289986))))
                                (__tmp289982
                                 (let ((__tmp289983
                                        (let ((__tmp289984
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj284355_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp289984))))
                                   (declare (not safe))
                                   (cons __tmp289983 '()))))
                            (declare (not safe))
                            (cons __tmp289985 __tmp289982))))
                     (declare (not safe))
                     (cons '%#begin __tmp289981))))
              (declare (not safe))
              (cons __tmp289980 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290009
                                                     __tmp289979))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp289978))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp289977
                                  _stx284328_))))
                           _$e284350_)
                          (if (##structure-ref
                               _klass284331_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args284335_) _fields284333_)
                                  (let ((__tmp289967
                                         (let ((__tmp289968
                                                (let ((__tmp289973
                                                       (let ((__tmp289974
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp289974)))
              (__tmp289969
               (let ((__tmp289970
                      (let ((__tmp289971
                             (let ((__tmp289972
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self284327_
                                       __id289389
                                       __t289388
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp289972 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp289971))))
                 (declare (not safe))
                 (cons __tmp289970 _args284335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp289973
                                                        __tmp289969))))
                                           (declare (not safe))
                                           (cons '%#call __tmp289968))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp289967
                                     _stx284328_))
                                  (let ((__tmp289966
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self284327_
                                            __id289389
                                            __t289388
                                            '#f)))
                                        (__tmp289965
                                         (length (##structure-ref
                                                  _klass284331_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx284328_
                                     __tmp289966
                                     __tmp289965)))
                              (let ((_$obj284360_
                                     (let ((__tmp289914 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp289914))))
                                (let _lp284362_ ((_rest284364_ _args284335_)
                                                 (_initializers284365_ '()))
                                  (let* ((___stx289504289505_ _rest284364_)
                                         (_g284369284390_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx289504289505_)))))
                                    (let ((___kont289506289507_
                                           (lambda (_L284444_
                                                    _L284445_
                                                    _L284446_)
                                             (let* ((_slot284477_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L284446_))))
                                                    (_off284479_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass284331_
                                                        _slot284477_))))
                                               (if _off284479_
                                                   (let ((__tmp289916
                                                          (let ((__tmp289917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off284479_ _L284445_))))
                    (declare (not safe))
                    (cons __tmp289917 _initializers284365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp284362_
                                                      _L284444_
                                                      __tmp289916))
                                                   (let ((__tmp289915
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self284327_
                                                             __id289389
                                                             __t289388
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx284328_
                                                      __tmp289915
                                                      _slot284477_))))))
                                          (___kont289508289509_
                                           (lambda ()
                                             (let ((__tmp289918
                                                    (let ((__tmp289919
                                                           (let ((__tmp289942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp289943
                                 (let ((__tmp289945
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj284360_ '())))
                                       (__tmp289944
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object284337_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp289945 __tmp289944))))
                            (declare (not safe))
                            (cons __tmp289943 '())))
                         (__tmp289920
                          (let ((__tmp289921
                                 (let ((__tmp289922
                                        (let ((__tmp289939
                                               (let ((__tmp289940
                                                      (let ((__tmp289941
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj284360_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp289941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp289940 '())))
                                              (__tmp289923
                                               (let ((__tmp289924
                                                      (lambda (_i284404_
                                                               _r284405_)
                                                        (let ((__tmp289925
                                                               (let ((__tmp289926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp289936
                                     (let ((__tmp289937
                                            (let ((__tmp289938
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self284327_
                                                      __id289389
                                                      __t289388
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp289938 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp289937)))
                                    (__tmp289927
                                     (let ((__tmp289933
                                            (let ((__tmp289934
                                                   (let ((__tmp289935
                                                          (car _i284404_)))
                                                     (declare (not safe))
                                                     (cons __tmp289935 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp289934)))
                                           (__tmp289928
                                            (let ((__tmp289931
                                                   (let ((__tmp289932
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj284360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp289932)))
                                                  (__tmp289929
                                                   (let ((__tmp289930
                                                          (cdr _i284404_)))
                                                     (declare (not safe))
                                                     (cons __tmp289930 '()))))
                                              (declare (not safe))
                                              (cons __tmp289931 __tmp289929))))
                                       (declare (not safe))
                                       (cons __tmp289933 __tmp289928))))
                                (declare (not safe))
                                (cons __tmp289936 __tmp289927))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp289926))))
                  (declare (not safe))
                  (cons __tmp289925 _r284405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp289924
                                                         '()
                                                         _initializers284365_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp289939
                                                  __tmp289923))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp289922))))
                            (declare (not safe))
                            (cons __tmp289921 '()))))
                     (declare (not safe))
                     (cons __tmp289942 __tmp289920))))
              (declare (not safe))
              (cons '%#let-values __tmp289919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp289918
                                                _stx284328_))))
                                          (___kont289510289511_
                                           (lambda ()
                                             (let ((__tmp289946
                                                    (let ((__tmp289947
                                                           (let ((__tmp289961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp289962
                                 (let ((__tmp289964
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj284360_ '())))
                                       (__tmp289963
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object284337_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp289964 __tmp289963))))
                            (declare (not safe))
                            (cons __tmp289962 '())))
                         (__tmp289948
                          (let ((__tmp289949
                                 (let ((__tmp289950
                                        (let ((__tmp289954
                                               (let ((__tmp289955
                                                      (let ((__tmp289959
                                                             (let ((__tmp289960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp289960)))
                    (__tmp289956
                     (let ((__tmp289957
                            (let ((__tmp289958
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj284360_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp289958))))
                       (declare (not safe))
                       (cons __tmp289957 _args284335_))))
                (declare (not safe))
                (cons __tmp289959 __tmp289956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp289955)))
                                              (__tmp289951
                                               (let ((__tmp289952
                                                      (let ((__tmp289953
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj284360_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp289953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp289952 '()))))
                                          (declare (not safe))
                                          (cons __tmp289954 __tmp289951))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp289950))))
                            (declare (not safe))
                            (cons __tmp289949 '()))))
                     (declare (not safe))
                     (cons __tmp289961 __tmp289948))))
              (declare (not safe))
              (cons '%#let-values __tmp289947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp289946
                                                _stx284328_)))))
                                      (let* ((_g284367284407_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx289504289505_))
                                                    (___kont289508289509_)
                                                    (___kont289510289511_))))
                                             (___match289541289542_
                                              (lambda (_e284376284412_
                                                       _hd284375284415_
                                                       _tl284374284417_
                                                       _e284379284420_
                                                       _hd284378284423_
                                                       _tl284377284425_
                                                       _e284382284428_
                                                       _hd284381284431_
                                                       _tl284380284433_
                                                       _e284385284436_
                                                       _hd284384284439_
                                                       _tl284383284441_)
                                                (let ((_L284444_
                                                       _tl284383284441_)
                                                      (_L284445_
                                                       _hd284384284439_)
                                                      (_L284446_
                                                       _hd284381284431_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L284446_))
                                                      (___kont289506289507_
                                                       _L284444_
                                                       _L284445_
                                                       _L284446_)
                                                      (___kont289510289511_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx289504289505_))
                                            (let ((_e284376284412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx289504289505_))))
                                              (let ((_tl284374284417_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e284376284412_)))
                                                    (_hd284375284415_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e284376284412_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd284375284415_))
                                                    (let ((_e284379284420_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd284375284415_))))
                                                      (let ((_tl284377284425_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e284379284420_)))
                    (_hd284378284423_
                     (let () (declare (not safe)) (##car _e284379284420_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd284378284423_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd284378284423_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284377284425_))
                            (let ((_e284382284428_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl284377284425_))))
                              (let ((_tl284380284433_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284382284428_)))
                                    (_hd284381284431_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284382284428_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl284380284433_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl284374284417_))
                                        (let ((_e284385284436_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl284374284417_))))
                                          (let ((_tl284383284441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e284385284436_)))
                                                (_hd284384284439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e284385284436_))))
                                            (___match289541289542_
                                             _e284376284412_
                                             _hd284375284415_
                                             _tl284374284417_
                                             _e284379284420_
                                             _hd284378284423_
                                             _tl284377284425_
                                             _e284382284428_
                                             _hd284381284431_
                                             _tl284380284433_
                                             _e284385284436_
                                             _hd284384284439_
                                             _tl284383284441_)))
                                        (___kont289510289511_))
                                    (___kont289510289511_))))
                            (___kont289510289511_))
                        (___kont289510289511_))
                    (___kont289510289511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont289510289511_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g284367284407_))))))))))))))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor::optimize-call
       gxc#!constructor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_self284150_ _stx284151_ _args284152_)
        (let* ((_g284154284164_
                (lambda (_g284155284161_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g284155284161_))))
               (_g284153284202_
                (lambda (_g284155284167_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g284155284167_))
                      (let ((_e284159284169_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g284155284167_))))
                        (let ((_hd284158284172_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284159284169_)))
                              (_tl284157284174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284159284169_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl284157284174_))
                              ((lambda (_L284177_)
                                 (let* ((_klass284188_
                                         (let ((__tmp290087
                                                (##structure-ref
                                                 _self284150_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx284151_
                                            __tmp290087)))
                                        (_field284190_
                                         (let ((__tmp290088
                                                (##structure-ref
                                                 _self284150_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass284188_
                                            __tmp290088)))
                                        (_object284192_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L284177_))))
                                   (if (##structure-ref
                                        _klass284188_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp290165
                                              (let ((__tmp290174
                                                     (if (##structure-ref
                                                          _self284150_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp290166
                                                     (let ((__tmp290171
                                                            (let ((__tmp290172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290173
                                  (##structure-ref
                                   _self284150_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp290173 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp290172)))
                   (__tmp290167
                    (let ((__tmp290169
                           (let ((__tmp290170
                                  (let ()
                                    (declare (not safe))
                                    (cons _field284190_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp290170)))
                          (__tmp290168
                           (let ()
                             (declare (not safe))
                             (cons _object284192_ '()))))
                      (declare (not safe))
                      (cons __tmp290169 __tmp290168))))
               (declare (not safe))
               (cons __tmp290171 __tmp290167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp290174
                                                      __tmp290166))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp290165
                                          _stx284151_))
                                       (if (##structure-ref
                                            _klass284188_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp290155
                                                  (let ((__tmp290164
                                                         (if (##structure-ref
                                                              _self284150_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp290156
                                                         (let ((__tmp290161
                                                                (let ((__tmp290162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp290163
                                      (##structure-ref
                                       _self284150_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp290163 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp290162)))
                       (__tmp290157
                        (let ((__tmp290159
                               (let ((__tmp290160
                                      (let ()
                                        (declare (not safe))
                                        (cons _field284190_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp290160)))
                              (__tmp290158
                               (let ()
                                 (declare (not safe))
                                 (cons _object284192_ '()))))
                          (declare (not safe))
                          (cons __tmp290159 __tmp290158))))
                   (declare (not safe))
                   (cons __tmp290161 __tmp290157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp290164
                                                          __tmp290156))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp290155
                                              _stx284151_))
                                           (let ((_$e284195_
                                                  (let ((__tmp290089
                                                         (##structure-ref
                                                          _self284150_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass284188_
                                                     __tmp290089))))
                                             (if _$e284195_
                                                 ((lambda (_klass284198_)
                                                    (let ((__tmp290145
                                                           (let ((__tmp290154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self284150_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp290146
                          (let ((__tmp290151
                                 (let ((__tmp290152
                                        (let ((__tmp290153
                                               (##structure-ref
                                                _self284150_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp290153 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp290152)))
                                (__tmp290147
                                 (let ((__tmp290149
                                        (let ((__tmp290150
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field284190_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp290150)))
                                       (__tmp290148
                                        (let ()
                                          (declare (not safe))
                                          (cons _object284192_ '()))))
                                   (declare (not safe))
                                   (cons __tmp290149 __tmp290148))))
                            (declare (not safe))
                            (cons __tmp290151 __tmp290147))))
                     (declare (not safe))
                     (cons __tmp290154 __tmp290146))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp290145 _stx284151_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e284195_)
                                                 (if (##structure-ref
                                                      _self284150_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp290099
                                                            (let* ((_$obj284200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp290100 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp290100)))
                           (__tmp290101
                            (let ((__tmp290141
                                   (let ((__tmp290142
                                          (let ((__tmp290144
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj284200_ '())))
                                                (__tmp290143
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object284192_ '()))))
                                            (declare (not safe))
                                            (cons __tmp290144 __tmp290143))))
                                     (declare (not safe))
                                     (cons __tmp290142 '())))
                                  (__tmp290102
                                   (let ((__tmp290103
                                          (let ((__tmp290104
                                                 (let ((__tmp290133
                                                        (let ((__tmp290134
                                                               (let ((__tmp290138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp290139
                                     (let ((__tmp290140
                                            (##structure-ref
                                             _klass284188_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp290140 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp290139)))
                             (__tmp290135
                              (let ((__tmp290136
                                     (let ((__tmp290137
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj284200_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp290137))))
                                (declare (not safe))
                                (cons __tmp290136 '()))))
                         (declare (not safe))
                         (cons __tmp290138 __tmp290135))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp290134)))
               (__tmp290105
                (let ((__tmp290122
                       (let ((__tmp290123
                              (let ((__tmp290130
                                     (let ((__tmp290131
                                            (let ((__tmp290132
                                                   (##structure-ref
                                                    _self284150_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp290132 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp290131)))
                                    (__tmp290124
                                     (let ((__tmp290128
                                            (let ((__tmp290129
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field284190_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp290129)))
                                           (__tmp290125
                                            (let ((__tmp290126
                                                   (let ((__tmp290127
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj284200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290127))))
                                              (declare (not safe))
                                              (cons __tmp290126 '()))))
                                       (declare (not safe))
                                       (cons __tmp290128 __tmp290125))))
                                (declare (not safe))
                                (cons __tmp290130 __tmp290124))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp290123)))
                      (__tmp290106
                       (let ((__tmp290107
                              (let ((__tmp290108
                                     (let ((__tmp290120
                                            (let ((__tmp290121
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp290121)))
                                           (__tmp290109
                                            (let ((__tmp290117
                                                   (let ((__tmp290118
                                                          (let ((__tmp290119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self284150_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp290119 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp290118)))
                                                  (__tmp290110
                                                   (let ((__tmp290115
                                                          (let ((__tmp290116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj284200_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp290116)))
                 (__tmp290111
                  (let ((__tmp290112
                         (let ((__tmp290113
                                (let ((__tmp290114
                                       (##structure-ref
                                        _self284150_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp290114 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp290113))))
                    (declare (not safe))
                    (cons __tmp290112 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290115
                                                           __tmp290111))))
                                              (declare (not safe))
                                              (cons __tmp290117 __tmp290110))))
                                       (declare (not safe))
                                       (cons __tmp290120 __tmp290109))))
                                (declare (not safe))
                                (cons '%#call __tmp290108))))
                         (declare (not safe))
                         (cons __tmp290107 '()))))
                  (declare (not safe))
                  (cons __tmp290122 __tmp290106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290133
                                                         __tmp290105))))
                                            (declare (not safe))
                                            (cons '%#if __tmp290104))))
                                     (declare (not safe))
                                     (cons __tmp290103 '()))))
                              (declare (not safe))
                              (cons __tmp290141 __tmp290102))))
                      (declare (not safe))
                      (cons '%#let-values __tmp290101))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp290099 _stx284151_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp290090
                                                            (let ((__tmp290091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290097
                                  (let ((__tmp290098
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp290098)))
                                 (__tmp290092
                                  (let ((__tmp290093
                                         (let ((__tmp290094
                                                (let ((__tmp290095
                                                       (let ((__tmp290096
                                                              (##structure-ref
                                                               _self284150_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp290096
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp290095))))
                                           (declare (not safe))
                                           (cons __tmp290094 '()))))
                                    (declare (not safe))
                                    (cons _object284192_ __tmp290093))))
                             (declare (not safe))
                             (cons __tmp290097 __tmp290092))))
                      (declare (not safe))
                      (cons '%#call __tmp290091))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp290090 _stx284151_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd284158284172_)
                              (let ()
                                (declare (not safe))
                                (_g284154284164_ _g284155284167_)))))
                      (let ()
                        (declare (not safe))
                        (_g284154284164_ _g284155284167_))))))
          (declare (not safe))
          (_g284153284202_ _args284152_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t289391)
        (let ((__id289392
               (let ((__tmp289395
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289391 'id))))
                 (if __tmp289395 __tmp289395 (error '"Unknown slot" 'id))))
              (__slot289393
               (let ((__tmp289396
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289391 'slot))))
                 (if __tmp289396 __tmp289396 (error '"Unknown slot" 'slot))))
              (__checked?289394
               (let ((__tmp289397
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289391 'checked?))))
                 (if __tmp289397
                     __tmp289397
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self284150_ _stx284151_ _args284152_)
            (let* ((_g284154284164_
                    (lambda (_g284155284161_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g284155284161_))))
                   (_g284153284202_
                    (lambda (_g284155284167_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g284155284167_))
                          (let ((_e284159284169_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g284155284167_))))
                            (let ((_hd284158284172_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e284159284169_)))
                                  (_tl284157284174_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e284159284169_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl284157284174_))
                                  ((lambda (_L284177_)
                                     (let* ((_klass284188_
                                             (let ((__tmp290175
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self284150_
                                                       __id289392
                                                       __t289391
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx284151_
                                                __tmp290175)))
                                            (_field284190_
                                             (let ((__tmp290176
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self284150_
                                                       __slot289393
                                                       __t289391
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass284188_
                                                __tmp290176)))
                                            (_object284192_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L284177_))))
                                       (if (##structure-ref
                                            _klass284188_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp290253
                                                  (let ((__tmp290262
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self284150_
                        __checked?289394
                        __t289391
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp290254
                 (let ((__tmp290259
                        (let ((__tmp290260
                               (let ((__tmp290261
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self284150_
                                         __id289392
                                         __t289391
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp290261 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp290260)))
                       (__tmp290255
                        (let ((__tmp290257
                               (let ((__tmp290258
                                      (let ()
                                        (declare (not safe))
                                        (cons _field284190_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp290258)))
                              (__tmp290256
                               (let ()
                                 (declare (not safe))
                                 (cons _object284192_ '()))))
                          (declare (not safe))
                          (cons __tmp290257 __tmp290256))))
                   (declare (not safe))
                   (cons __tmp290259 __tmp290255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp290262
                                                          __tmp290254))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp290253
                                              _stx284151_))
                                           (if (##structure-ref
                                                _klass284188_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp290243
                                                      (let ((__tmp290252
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self284150_
                            __checked?289394
                            __t289391
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp290244
                     (let ((__tmp290249
                            (let ((__tmp290250
                                   (let ((__tmp290251
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self284150_
                                             __id289392
                                             __t289391
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp290251 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp290250)))
                           (__tmp290245
                            (let ((__tmp290247
                                   (let ((__tmp290248
                                          (let ()
                                            (declare (not safe))
                                            (cons _field284190_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp290248)))
                                  (__tmp290246
                                   (let ()
                                     (declare (not safe))
                                     (cons _object284192_ '()))))
                              (declare (not safe))
                              (cons __tmp290247 __tmp290246))))
                       (declare (not safe))
                       (cons __tmp290249 __tmp290245))))
                (declare (not safe))
                (cons __tmp290252 __tmp290244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp290243
                                                  _stx284151_))
                                               (let ((_$e284195_
                                                      (let ((__tmp290177
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self284150_
                        __slot289393
                        __t289391
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass284188_ __tmp290177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e284195_
                                                     ((lambda (_klass284198_)
                                                        (let ((__tmp290233
                                                               (let ((__tmp290242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self284150_
                                     __checked?289394
                                     __t289391
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp290234
                              (let ((__tmp290239
                                     (let ((__tmp290240
                                            (let ((__tmp290241
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self284150_
                                                      __id289392
                                                      __t289391
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp290241 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp290240)))
                                    (__tmp290235
                                     (let ((__tmp290237
                                            (let ((__tmp290238
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field284190_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp290238)))
                                           (__tmp290236
                                            (let ()
                                              (declare (not safe))
                                              (cons _object284192_ '()))))
                                       (declare (not safe))
                                       (cons __tmp290237 __tmp290236))))
                                (declare (not safe))
                                (cons __tmp290239 __tmp290235))))
                         (declare (not safe))
                         (cons __tmp290242 __tmp290234))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp290233 _stx284151_)))
              _$e284195_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self284150_
                                                            __checked?289394
                                                            __t289391
                                                            '#f))
                                                         (let ((__tmp290187
                                                                (let* ((_$obj284200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp290188 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp290188)))
                               (__tmp290189
                                (let ((__tmp290229
                                       (let ((__tmp290230
                                              (let ((__tmp290232
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj284200_
                                                             '())))
                                                    (__tmp290231
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object284192_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp290232
                                                      __tmp290231))))
                                         (declare (not safe))
                                         (cons __tmp290230 '())))
                                      (__tmp290190
                                       (let ((__tmp290191
                                              (let ((__tmp290192
                                                     (let ((__tmp290221
                                                            (let ((__tmp290222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290226
                                  (let ((__tmp290227
                                         (let ((__tmp290228
                                                (##structure-ref
                                                 _klass284188_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp290228 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp290227)))
                                 (__tmp290223
                                  (let ((__tmp290224
                                         (let ((__tmp290225
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj284200_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290225))))
                                    (declare (not safe))
                                    (cons __tmp290224 '()))))
                             (declare (not safe))
                             (cons __tmp290226 __tmp290223))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp290222)))
                   (__tmp290193
                    (let ((__tmp290210
                           (let ((__tmp290211
                                  (let ((__tmp290218
                                         (let ((__tmp290219
                                                (let ((__tmp290220
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self284150_
                                                          __id289392
                                                          __t289391
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp290220 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290219)))
                                        (__tmp290212
                                         (let ((__tmp290216
                                                (let ((__tmp290217
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field284190_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp290217)))
                                               (__tmp290213
                                                (let ((__tmp290214
                                                       (let ((__tmp290215
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj284200_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290214 '()))))
                                           (declare (not safe))
                                           (cons __tmp290216 __tmp290213))))
                                    (declare (not safe))
                                    (cons __tmp290218 __tmp290212))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp290211)))
                          (__tmp290194
                           (let ((__tmp290195
                                  (let ((__tmp290196
                                         (let ((__tmp290208
                                                (let ((__tmp290209
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp290209)))
                                               (__tmp290197
                                                (let ((__tmp290205
                                                       (let ((__tmp290206
                                                              (let ((__tmp290207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self284150_
                                __id289392
                                __t289391
                                '#f))))
                        (declare (not safe))
                        (cons __tmp290207 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp290206)))
              (__tmp290198
               (let ((__tmp290203
                      (let ((__tmp290204
                             (let ()
                               (declare (not safe))
                               (cons _$obj284200_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp290204)))
                     (__tmp290199
                      (let ((__tmp290200
                             (let ((__tmp290201
                                    (let ((__tmp290202
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self284150_
                                              __slot289393
                                              __t289391
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp290202 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp290201))))
                        (declare (not safe))
                        (cons __tmp290200 '()))))
                 (declare (not safe))
                 (cons __tmp290203 __tmp290199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp290205
                                                        __tmp290198))))
                                           (declare (not safe))
                                           (cons __tmp290208 __tmp290197))))
                                    (declare (not safe))
                                    (cons '%#call __tmp290196))))
                             (declare (not safe))
                             (cons __tmp290195 '()))))
                      (declare (not safe))
                      (cons __tmp290210 __tmp290194))))
               (declare (not safe))
               (cons __tmp290221 __tmp290193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp290192))))
                                         (declare (not safe))
                                         (cons __tmp290191 '()))))
                                  (declare (not safe))
                                  (cons __tmp290229 __tmp290190))))
                          (declare (not safe))
                          (cons '%#let-values __tmp290189))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp290187 _stx284151_))
                 (let ((__tmp290178
                        (let ((__tmp290179
                               (let ((__tmp290185
                                      (let ((__tmp290186
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp290186)))
                                     (__tmp290180
                                      (let ((__tmp290181
                                             (let ((__tmp290182
                                                    (let ((__tmp290183
                                                           (let ((__tmp290184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self284150_
                             __slot289393
                             __t289391
                             '#f))))
                     (declare (not safe))
                     (cons __tmp290184 '()))))
              (declare (not safe))
              (cons '%#quote __tmp290183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290182 '()))))
                                        (declare (not safe))
                                        (cons _object284192_ __tmp290181))))
                                 (declare (not safe))
                                 (cons __tmp290185 __tmp290180))))
                          (declare (not safe))
                          (cons '%#call __tmp290179))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp290178 _stx284151_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd284158284172_)
                                  (let ()
                                    (declare (not safe))
                                    (_g284154284164_ _g284155284167_)))))
                          (let ()
                            (declare (not safe))
                            (_g284154284164_ _g284155284167_))))))
              (declare (not safe))
              (_g284153284202_ _args284152_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor::optimize-call
       gxc#!accessor::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_self283955_ _stx283956_ _args283957_)
        (let* ((_g283959283973_
                (lambda (_g283960283970_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g283960283970_))))
               (_g283958284025_
                (lambda (_g283960283976_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g283960283976_))
                      (let ((_e283965283978_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g283960283976_))))
                        (let ((_hd283964283981_
                               (let ()
                                 (declare (not safe))
                                 (##car _e283965283978_)))
                              (_tl283963283983_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e283965283978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl283963283983_))
                              (let ((_e283968283986_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl283963283983_))))
                                (let ((_hd283967283989_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e283968283986_)))
                                      (_tl283966283991_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e283968283986_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl283966283991_))
                                      ((lambda (_L283994_ _L283995_)
                                         (let* ((_klass284009_
                                                 (let ((__tmp290263
                                                        (##structure-ref
                                                         _self283955_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx283956_
                                                    __tmp290263)))
                                                (_field284011_
                                                 (let ((__tmp290264
                                                        (##structure-ref
                                                         _self283955_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass284009_
                                                    __tmp290264)))
                                                (_object284013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L283995_)))
                                                (_value284015_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L283994_))))
                                           (if (##structure-ref
                                                _klass284009_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp290346
                                                      (let ((__tmp290356
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self283955_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp290347
                     (let ((__tmp290353
                            (let ((__tmp290354
                                   (let ((__tmp290355
                                          (##structure-ref
                                           _self283955_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp290355 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp290354)))
                           (__tmp290348
                            (let ((__tmp290351
                                   (let ((__tmp290352
                                          (let ()
                                            (declare (not safe))
                                            (cons _field284011_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp290352)))
                                  (__tmp290349
                                   (let ((__tmp290350
                                          (let ()
                                            (declare (not safe))
                                            (cons _value284015_ '()))))
                                     (declare (not safe))
                                     (cons _object284013_ __tmp290350))))
                              (declare (not safe))
                              (cons __tmp290351 __tmp290349))))
                       (declare (not safe))
                       (cons __tmp290353 __tmp290348))))
                (declare (not safe))
                (cons __tmp290356 __tmp290347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp290346
                                                  _stx283956_))
                                               (if (##structure-ref
                                                    _klass284009_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp290335
                                                          (let ((__tmp290345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self283955_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp290336
                         (let ((__tmp290342
                                (let ((__tmp290343
                                       (let ((__tmp290344
                                              (##structure-ref
                                               _self283955_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp290344 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp290343)))
                               (__tmp290337
                                (let ((__tmp290340
                                       (let ((__tmp290341
                                              (let ()
                                                (declare (not safe))
                                                (cons _field284011_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp290341)))
                                      (__tmp290338
                                       (let ((__tmp290339
                                              (let ()
                                                (declare (not safe))
                                                (cons _value284015_ '()))))
                                         (declare (not safe))
                                         (cons _object284013_ __tmp290339))))
                                  (declare (not safe))
                                  (cons __tmp290340 __tmp290338))))
                           (declare (not safe))
                           (cons __tmp290342 __tmp290337))))
                    (declare (not safe))
                    (cons __tmp290345 __tmp290336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp290335
                                                      _stx283956_))
                                                   (let ((_$e284018_
                                                          (let ((__tmp290265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self283955_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass284009_ __tmp290265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e284018_
                                                         ((lambda (_klass284021_)
                                                            (let ((__tmp290324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290334
                                  (if (##structure-ref
                                       _self283955_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp290325
                                  (let ((__tmp290331
                                         (let ((__tmp290332
                                                (let ((__tmp290333
                                                       (##structure-ref
                                                        _self283955_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp290333 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp290332)))
                                        (__tmp290326
                                         (let ((__tmp290329
                                                (let ((__tmp290330
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field284011_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp290330)))
                                               (__tmp290327
                                                (let ((__tmp290328
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value284015_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object284013_
                                                        __tmp290328))))
                                           (declare (not safe))
                                           (cons __tmp290329 __tmp290327))))
                                    (declare (not safe))
                                    (cons __tmp290331 __tmp290326))))
                             (declare (not safe))
                             (cons __tmp290334 __tmp290325))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp290324 _stx283956_)))
                  _$e284018_)
                 (if (##structure-ref _self283955_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp290276
                            (let* ((_$obj284023_
                                    (let ((__tmp290277 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp290277)))
                                   (__tmp290278
                                    (let ((__tmp290320
                                           (let ((__tmp290321
                                                  (let ((__tmp290323
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj284023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp290322
                 (let () (declare (not safe)) (cons _object284013_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp290323
                                                          __tmp290322))))
                                             (declare (not safe))
                                             (cons __tmp290321 '())))
                                          (__tmp290279
                                           (let ((__tmp290280
                                                  (let ((__tmp290281
                                                         (let ((__tmp290312
                                                                (let ((__tmp290313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp290317
                                      (let ((__tmp290318
                                             (let ((__tmp290319
                                                    (##structure-ref
                                                     _klass284009_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp290319 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp290318)))
                                     (__tmp290314
                                      (let ((__tmp290315
                                             (let ((__tmp290316
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj284023_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp290316))))
                                        (declare (not safe))
                                        (cons __tmp290315 '()))))
                                 (declare (not safe))
                                 (cons __tmp290317 __tmp290314))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp290313)))
                       (__tmp290282
                        (let ((__tmp290300
                               (let ((__tmp290301
                                      (let ((__tmp290309
                                             (let ((__tmp290310
                                                    (let ((__tmp290311
                                                           (##structure-ref
                                                            _self283955_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp290311 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp290310)))
                                            (__tmp290302
                                             (let ((__tmp290307
                                                    (let ((__tmp290308
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field284011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp290308)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp290303
                                                    (let ((__tmp290305
                                                           (let ((__tmp290306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj284023_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp290306)))
                  (__tmp290304
                   (let () (declare (not safe)) (cons _value284015_ '()))))
              (declare (not safe))
              (cons __tmp290305 __tmp290304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290307
                                                     __tmp290303))))
                                        (declare (not safe))
                                        (cons __tmp290309 __tmp290302))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp290301)))
                              (__tmp290283
                               (let ((__tmp290284
                                      (let ((__tmp290285
                                             (let ((__tmp290298
                                                    (let ((__tmp290299
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp290299)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp290286
                                                    (let ((__tmp290295
                                                           (let ((__tmp290296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp290297
                                 (##structure-ref
                                  _self283955_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp290297 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp290296)))
                  (__tmp290287
                   (let ((__tmp290293
                          (let ((__tmp290294
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj284023_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp290294)))
                         (__tmp290288
                          (let ((__tmp290290
                                 (let ((__tmp290291
                                        (let ((__tmp290292
                                               (##structure-ref
                                                _self283955_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp290292 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp290291)))
                                (__tmp290289
                                 (let ()
                                   (declare (not safe))
                                   (cons _value284015_ '()))))
                            (declare (not safe))
                            (cons __tmp290290 __tmp290289))))
                     (declare (not safe))
                     (cons __tmp290293 __tmp290288))))
              (declare (not safe))
              (cons __tmp290295 __tmp290287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290298
                                                     __tmp290286))))
                                        (declare (not safe))
                                        (cons '%#call __tmp290285))))
                                 (declare (not safe))
                                 (cons __tmp290284 '()))))
                          (declare (not safe))
                          (cons __tmp290300 __tmp290283))))
                   (declare (not safe))
                   (cons __tmp290312 __tmp290282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp290281))))
                                             (declare (not safe))
                                             (cons __tmp290280 '()))))
                                      (declare (not safe))
                                      (cons __tmp290320 __tmp290279))))
                              (declare (not safe))
                              (cons '%#let-values __tmp290278))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp290276 _stx283956_))
                     (let ((__tmp290266
                            (let ((__tmp290267
                                   (let ((__tmp290274
                                          (let ((__tmp290275
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp290275)))
                                         (__tmp290268
                                          (let ((__tmp290269
                                                 (let ((__tmp290271
                                                        (let ((__tmp290272
                                                               (let ((__tmp290273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self283955_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp290273 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp290272)))
               (__tmp290270
                (let () (declare (not safe)) (cons _value284015_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290271
                                                         __tmp290270))))
                                            (declare (not safe))
                                            (cons _object284013_
                                                  __tmp290269))))
                                     (declare (not safe))
                                     (cons __tmp290274 __tmp290268))))
                              (declare (not safe))
                              (cons '%#call __tmp290267))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp290266 _stx283956_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd283967283989_
                                       _hd283964283981_)
                                      (let ()
                                        (declare (not safe))
                                        (_g283959283973_ _g283960283976_)))))
                              (let ()
                                (declare (not safe))
                                (_g283959283973_ _g283960283976_)))))
                      (let ()
                        (declare (not safe))
                        (_g283959283973_ _g283960283976_))))))
          (declare (not safe))
          (_g283958284025_ _args283957_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t289398)
        (let ((__id289399
               (let ((__tmp289402
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289398 'id))))
                 (if __tmp289402 __tmp289402 (error '"Unknown slot" 'id))))
              (__slot289400
               (let ((__tmp289403
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289398 'slot))))
                 (if __tmp289403 __tmp289403 (error '"Unknown slot" 'slot))))
              (__checked?289401
               (let ((__tmp289404
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t289398 'checked?))))
                 (if __tmp289404
                     __tmp289404
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self283955_ _stx283956_ _args283957_)
            (let* ((_g283959283973_
                    (lambda (_g283960283970_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g283960283970_))))
                   (_g283958284025_
                    (lambda (_g283960283976_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g283960283976_))
                          (let ((_e283965283978_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g283960283976_))))
                            (let ((_hd283964283981_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e283965283978_)))
                                  (_tl283963283983_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e283965283978_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl283963283983_))
                                  (let ((_e283968283986_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl283963283983_))))
                                    (let ((_hd283967283989_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e283968283986_)))
                                          (_tl283966283991_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e283968283986_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl283966283991_))
                                          ((lambda (_L283994_ _L283995_)
                                             (let* ((_klass284009_
                                                     (let ((__tmp290357
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self283955_
                                                               __id289399
                                                               __t289398
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx283956_
                                                        __tmp290357)))
                                                    (_field284011_
                                                     (let ((__tmp290358
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self283955_
                                                               __slot289400
                                                               __t289398
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass284009_
                                                        __tmp290358)))
                                                    (_object284013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L283995_)))
                                                    (_value284015_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L283994_))))
                                               (if (##structure-ref
                                                    _klass284009_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp290440
                                                          (let ((__tmp290450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self283955_
                                __checked?289401
                                __t289398
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp290441
                         (let ((__tmp290447
                                (let ((__tmp290448
                                       (let ((__tmp290449
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self283955_
                                                 __id289399
                                                 __t289398
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp290449 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp290448)))
                               (__tmp290442
                                (let ((__tmp290445
                                       (let ((__tmp290446
                                              (let ()
                                                (declare (not safe))
                                                (cons _field284011_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp290446)))
                                      (__tmp290443
                                       (let ((__tmp290444
                                              (let ()
                                                (declare (not safe))
                                                (cons _value284015_ '()))))
                                         (declare (not safe))
                                         (cons _object284013_ __tmp290444))))
                                  (declare (not safe))
                                  (cons __tmp290445 __tmp290443))))
                           (declare (not safe))
                           (cons __tmp290447 __tmp290442))))
                    (declare (not safe))
                    (cons __tmp290450 __tmp290441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp290440
                                                      _stx283956_))
                                                   (if (##structure-ref
                                                        _klass284009_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp290429
                                                              (let ((__tmp290439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self283955_
                                    __checked?289401
                                    __t289398
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp290430
                             (let ((__tmp290436
                                    (let ((__tmp290437
                                           (let ((__tmp290438
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self283955_
                                                     __id289399
                                                     __t289398
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp290438 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp290437)))
                                   (__tmp290431
                                    (let ((__tmp290434
                                           (let ((__tmp290435
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field284011_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp290435)))
                                          (__tmp290432
                                           (let ((__tmp290433
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value284015_ '()))))
                                             (declare (not safe))
                                             (cons _object284013_
                                                   __tmp290433))))
                                      (declare (not safe))
                                      (cons __tmp290434 __tmp290432))))
                               (declare (not safe))
                               (cons __tmp290436 __tmp290431))))
                        (declare (not safe))
                        (cons __tmp290439 __tmp290430))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp290429 _stx283956_))
               (let ((_$e284018_
                      (let ((__tmp290359
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self283955_
                                __slot289400
                                __t289398
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass284009_
                         __tmp290359))))
                 (if _$e284018_
                     ((lambda (_klass284021_)
                        (let ((__tmp290418
                               (let ((__tmp290428
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self283955_
                                             __checked?289401
                                             __t289398
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp290419
                                      (let ((__tmp290425
                                             (let ((__tmp290426
                                                    (let ((__tmp290427
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self283955_
                                                              __id289399
                                                              __t289398
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp290427 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp290426)))
                                            (__tmp290420
                                             (let ((__tmp290423
                                                    (let ((__tmp290424
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field284011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp290424)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp290421
                                                    (let ((__tmp290422
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value284015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object284013_ __tmp290422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp290423
                                                     __tmp290421))))
                                        (declare (not safe))
                                        (cons __tmp290425 __tmp290420))))
                                 (declare (not safe))
                                 (cons __tmp290428 __tmp290419))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp290418 _stx283956_)))
                      _$e284018_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self283955_
                            __checked?289401
                            __t289398
                            '#f))
                         (let ((__tmp290370
                                (let* ((_$obj284023_
                                        (let ((__tmp290371 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp290371)))
                                       (__tmp290372
                                        (let ((__tmp290414
                                               (let ((__tmp290415
                                                      (let ((__tmp290417
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj284023_ '())))
                    (__tmp290416
                     (let () (declare (not safe)) (cons _object284013_ '()))))
                (declare (not safe))
                (cons __tmp290417 __tmp290416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp290415 '())))
                                              (__tmp290373
                                               (let ((__tmp290374
                                                      (let ((__tmp290375
                                                             (let ((__tmp290406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp290407
                                   (let ((__tmp290411
                                          (let ((__tmp290412
                                                 (let ((__tmp290413
                                                        (##structure-ref
                                                         _klass284009_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp290413 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp290412)))
                                         (__tmp290408
                                          (let ((__tmp290409
                                                 (let ((__tmp290410
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj284023_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp290410))))
                                            (declare (not safe))
                                            (cons __tmp290409 '()))))
                                     (declare (not safe))
                                     (cons __tmp290411 __tmp290408))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp290407)))
                           (__tmp290376
                            (let ((__tmp290394
                                   (let ((__tmp290395
                                          (let ((__tmp290403
                                                 (let ((__tmp290404
                                                        (let ((__tmp290405
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self283955_
                          __id289399
                          __t289398
                          '#f))))
                  (declare (not safe))
                  (cons __tmp290405 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp290404)))
                                                (__tmp290396
                                                 (let ((__tmp290401
                                                        (let ((__tmp290402
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field284011_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp290402)))
               (__tmp290397
                (let ((__tmp290399
                       (let ((__tmp290400
                              (let ()
                                (declare (not safe))
                                (cons _$obj284023_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp290400)))
                      (__tmp290398
                       (let () (declare (not safe)) (cons _value284015_ '()))))
                  (declare (not safe))
                  (cons __tmp290399 __tmp290398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290401
                                                         __tmp290397))))
                                            (declare (not safe))
                                            (cons __tmp290403 __tmp290396))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp290395)))
                                  (__tmp290377
                                   (let ((__tmp290378
                                          (let ((__tmp290379
                                                 (let ((__tmp290392
                                                        (let ((__tmp290393
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp290393)))
               (__tmp290380
                (let ((__tmp290389
                       (let ((__tmp290390
                              (let ((__tmp290391
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self283955_
                                        __id289399
                                        __t289398
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp290391 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp290390)))
                      (__tmp290381
                       (let ((__tmp290387
                              (let ((__tmp290388
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj284023_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp290388)))
                             (__tmp290382
                              (let ((__tmp290384
                                     (let ((__tmp290385
                                            (let ((__tmp290386
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self283955_
                                                      __slot289400
                                                      __t289398
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp290386 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp290385)))
                                    (__tmp290383
                                     (let ()
                                       (declare (not safe))
                                       (cons _value284015_ '()))))
                                (declare (not safe))
                                (cons __tmp290384 __tmp290383))))
                         (declare (not safe))
                         (cons __tmp290387 __tmp290382))))
                  (declare (not safe))
                  (cons __tmp290389 __tmp290381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290392
                                                         __tmp290380))))
                                            (declare (not safe))
                                            (cons '%#call __tmp290379))))
                                     (declare (not safe))
                                     (cons __tmp290378 '()))))
                              (declare (not safe))
                              (cons __tmp290394 __tmp290377))))
                       (declare (not safe))
                       (cons __tmp290406 __tmp290376))))
                (declare (not safe))
                (cons '%#if __tmp290375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp290374 '()))))
                                          (declare (not safe))
                                          (cons __tmp290414 __tmp290373))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp290372))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp290370 _stx283956_))
                         (let ((__tmp290360
                                (let ((__tmp290361
                                       (let ((__tmp290368
                                              (let ((__tmp290369
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp290369)))
                                             (__tmp290362
                                              (let ((__tmp290363
                                                     (let ((__tmp290365
                                                            (let ((__tmp290366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290367
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self283955_
                                     __slot289400
                                     __t289398
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp290367 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp290366)))
                   (__tmp290364
                    (let () (declare (not safe)) (cons _value284015_ '()))))
               (declare (not safe))
               (cons __tmp290365 __tmp290364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object284013_
                                                      __tmp290363))))
                                         (declare (not safe))
                                         (cons __tmp290368 __tmp290362))))
                                  (declare (not safe))
                                  (cons '%#call __tmp290361))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp290360
                            _stx283956_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd283967283989_
                                           _hd283964283981_)
                                          (let ()
                                            (declare (not safe))
                                            (_g283959283973_
                                             _g283960283976_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g283959283973_ _g283960283976_)))))
                          (let ()
                            (declare (not safe))
                            (_g283959283973_ _g283960283976_))))))
              (declare (not safe))
              (_g283958284025_ _args283957_))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator::optimize-call
       gxc#!mutator::optimize-call::specialize))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self283789_ _stx283790_ _args283791_)
        (let* ((_self283792283801_ _self283789_)
               (_E283794283805_
                (lambda () (error '"No clause matching" _self283792283801_)))
               (_K283795283812_
                (lambda (_inline283808_ _dispatch283809_ _arity283810_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self283789_ _args283791_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx283790_
                         _arity283810_)))
                  (if _inline283808_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp290456
                               (let ((__tmp290457
                                      (_inline283808_ _stx283790_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp290457
                                  _stx283790_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp290456)))
                      (if _dispatch283809_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch283809_))
                            (let ((__tmp290451
                                   (let ((__tmp290452
                                          (let ((__tmp290453
                                                 (let ((__tmp290454
                                                        (let ((__tmp290455
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch283809_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp290455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp290454
                                                         _args283791_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp290453))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp290452
                                      _stx283790_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp290451)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx283790_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283792283801_ 'gxc#!lambda::t))
              (let* ((_e283796283815_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283792283801_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283797283818_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283792283801_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity283821_ _e283797283818_)
                     (_e283798283823_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283792283801_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch283826_ _e283798283823_)
                     (_e283799283828_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283792283801_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline283831_ _e283799283828_))
                (declare (not safe))
                (_K283795283812_
                 _inline283831_
                 _dispatch283826_
                 _arity283821_))
              (let () (declare (not safe)) (_E283794283805_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self283628_ _stx283629_ _args283630_)
        (let* ((_self283631283638_ _self283628_)
               (_E283633283642_
                (lambda () (error '"No clause matching" _self283631283638_)))
               (_K283634283656_
                (lambda (_clauses283645_)
                  (let ((_$e283651_
                         (let ((__tmp290458
                                (lambda (_g283646283648_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g283646283648_
                                     _args283630_)))))
                           (declare (not safe))
                           (find __tmp290458 _clauses283645_))))
                    (if _$e283651_
                        ((lambda (_clause283654_)
                           (let ((__method289673
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause283654_
                                     'optimize-call))))
                             (if __method289673
                                 (__method289673
                                  _clause283654_
                                  _stx283629_
                                  _args283630_)
                                 (error '"Missing method"
                                        _clause283654_
                                        'optimize-call))))
                         _$e283651_)
                        (let ((__tmp290459
                               (map gxc#!lambda-arity _clauses283645_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx283629_
                           __tmp290459)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283631283638_
                 'gxc#!case-lambda::t))
              (let* ((_e283635283659_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283631283638_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283636283662_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283631283638_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses283665_ _e283636283662_))
                (declare (not safe))
                (_K283634283656_ _clauses283665_))
              (let () (declare (not safe)) (_E283633283642_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self283442_ _args283443_)
        (let* ((_self283444283451_ _self283442_)
               (_E283446283455_
                (lambda () (error '"No clause matching" _self283444283451_)))
               (_K283447283495_
                (lambda (_arity283458_)
                  (let* ((_arity283459283468_ _arity283458_)
                         (_E283462283472_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity283459283468_))))
                    (let ((_K283466283492_
                           (lambda ()
                             (fx= (length _args283443_) _arity283458_)))
                          (_K283463283478_
                           (lambda (_arity283476_)
                             (fx>= (length _args283443_) _arity283476_))))
                      (let ((_try-match283461283488_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity283459283468_))
                                   (let ((_tl283465283483_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity283459283468_)))
                                         (_hd283464283481_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity283459283468_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl283465283483_))
                                         (let ((_arity283486_
                                                _hd283464283481_))
                                           (declare (not safe))
                                           (_K283463283478_ _arity283486_))
                                         (let ()
                                           (declare (not safe))
                                           (_E283462283472_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E283462283472_))))))
                        (if (fixnum? _arity283459283468_)
                            (let () (declare (not safe)) (_K283466283492_))
                            (let ()
                              (declare (not safe))
                              (_try-match283461283488_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self283444283451_ 'gxc#!lambda::t))
              (let* ((_e283448283498_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283444283451_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283449283501_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283444283451_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity283504_ _e283449283501_))
                (declare (not safe))
                (_K283447283495_ _arity283504_))
              (let () (declare (not safe)) (_E283446283455_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self283327_ _stx283328_ _args283329_)
        (let* ((_self283330283338_ _self283327_)
               (_E283332283342_
                (lambda () (error '"No clause matching" _self283330283338_)))
               (_K283333283426_
                (lambda (_dispatch283345_ _table283346_)
                  (let* ((_g283347283356_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch283345_)))
                         (_else283349283364_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch283345_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx283328_))))
                         (_K283351283410_
                          (lambda (_main283367_ _keys283368_)
                            (let ((_g290460_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx283328_
                                      _args283329_))))
                              (begin
                                (let ((_g290461_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g290460_)
                                             (##vector-length _g290460_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g290461_ 2)))
                                      (error "Context expects 2 values"
                                             _g290461_)))
                                (let ((_pargs283370_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g290460_ 0)))
                                      (_kwargs283371_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g290460_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main283367_))
                                    (if _table283346_
                                        (let ((_xargs283378_
                                               (map (lambda (_key283373_)
                                                      (let ((_$e283375_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key283373_ _kwargs283371_))))
                (if _$e283375_ (values _$e283375_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys283368_)))
                                          (for-each
                                           (lambda (_kw283380_)
                                             (if (memq (car _kw283380_)
                                                       _keys283368_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx283328_
                                                    _keys283368_
                                                    _kw283380_))))
                                           _kwargs283371_)
                                          (let ((__tmp290513
                                                 (let ((__tmp290514
                                                        (let ((__tmp290515
                                                               (let ((__tmp290520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp290521
                                     (let ()
                                       (declare (not safe))
                                       (cons _main283367_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp290521)))
                             (__tmp290516
                              (let ((__tmp290518
                                     (let ((__tmp290519
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp290519)))
                                    (__tmp290517
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs283370_
                                               _xargs283378_))))
                                (declare (not safe))
                                (cons __tmp290518 __tmp290517))))
                         (declare (not safe))
                         (cons __tmp290520 __tmp290516))))
                  (declare (not safe))
                  (cons '%#call __tmp290515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp290514
                                                    _stx283328_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp290513)))
                                        (let* ((_kwt283382_
                                                (let ((__tmp290462
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp290462)))
                                               (_kwvars283385_
                                                (map (lambda (_g290463_)
                                                       (let ((__tmp290464
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp290464)))
                                                     _kwargs283371_))
                                               (_kwbind283390_
                                                (map (lambda (_kw283387_
                                                              _kwvar283388_)
                                                       (let ((__tmp290467
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar283388_ '())))
                     (__tmp290465
                      (let ((__tmp290466 (cdr _kw283387_)))
                        (declare (not safe))
                        (cons __tmp290466 '()))))
                 (declare (not safe))
                 (cons __tmp290467 __tmp290465)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs283371_
                                                     _kwvars283385_))
                                               (_kwset283395_
                                                (map (lambda (_kw283392_
                                                              _kwvar283393_)
                                                       (let ((__tmp290468
                                                              (let ((__tmp290469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp290477
                                    (let ((__tmp290478
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt283382_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp290478)))
                                   (__tmp290470
                                    (let ((__tmp290474
                                           (let ((__tmp290475
                                                  (let ((__tmp290476
                                                         (car _kw283392_)))
                                                    (declare (not safe))
                                                    (cons __tmp290476 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp290475)))
                                          (__tmp290471
                                           (let ((__tmp290472
                                                  (let ((__tmp290473
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar283393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp290473))))
                                             (declare (not safe))
                                             (cons __tmp290472 '()))))
                                      (declare (not safe))
                                      (cons __tmp290474 __tmp290471))))
                               (declare (not safe))
                               (cons __tmp290477 __tmp290470))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp290469))))
                 (declare (not safe))
                 (cons '%#call __tmp290468)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs283371_
                                                     _kwvars283385_))
                                               (_xkwargs283400_
                                                (map (lambda (_kw283397_
                                                              _kwvar283398_)
                                                       (let ((__tmp290481
                                                              (car _kw283397_))
                                                             (__tmp290479
                                                              (let ((__tmp290480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar283398_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp290480))))
                 (declare (not safe))
                 (cons __tmp290481 __tmp290479)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs283371_
                                                     _kwvars283385_))
                                               (_xargs283407_
                                                (map (lambda (_key283402_)
                                                       (let ((_$e283404_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key283402_ _xkwargs283400_))))
                 (if _$e283404_ (values _$e283404_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys283368_)))
                                          (let ((__tmp290482
                                                 (let ((__tmp290483
                                                        (let ((__tmp290484
                                                               (let ((__tmp290485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp290486
                                     (let ((__tmp290487
                                            (let ((__tmp290501
                                                   (let ((__tmp290502
                                                          (let ((__tmp290512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt283382_ '())))
                        (__tmp290503
                         (let ((__tmp290504
                                (let ((__tmp290505
                                       (let ((__tmp290506
                                              (let ((__tmp290507
                                                     (let ((__tmp290508
                                                            (let ((__tmp290509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp290510
                                  (let ((__tmp290511 (length _kwargs283371_)))
                                    (declare (not safe))
                                    (cons __tmp290511 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp290510))))
                      (declare (not safe))
                      (cons __tmp290509 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp290508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp290507))))
                                         (declare (not safe))
                                         (cons '%#call __tmp290506))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp290505
                                   _stx283328_))))
                           (declare (not safe))
                           (cons __tmp290504 '()))))
                    (declare (not safe))
                    (cons __tmp290512 __tmp290503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290502 '())))
                                                  (__tmp290488
                                                   (let ((__tmp290489
                                                          (let ((__tmp290490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp290491
                                (let ((__tmp290492
                                       (let ((__tmp290493
                                              (let ((__tmp290494
                                                     (let ((__tmp290499
                                                            (let ((__tmp290500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main283367_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp290500)))
                   (__tmp290495
                    (let ((__tmp290497
                           (let ((__tmp290498
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt283382_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp290498)))
                          (__tmp290496
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs283370_ _xargs283407_))))
                      (declare (not safe))
                      (cons __tmp290497 __tmp290496))))
               (declare (not safe))
               (cons __tmp290499 __tmp290495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp290494))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp290493
                                          _stx283328_))))
                                  (declare (not safe))
                                  (cons __tmp290492 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp290491 _kwset283395_))))
                    (declare (not safe))
                    (cons '%#begin __tmp290490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp290489 '()))))
                                              (declare (not safe))
                                              (cons __tmp290501 __tmp290488))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp290487))))
                                (declare (not safe))
                                (cons __tmp290486 '()))))
                         (declare (not safe))
                         (cons _kwbind283390_ __tmp290485))))
                  (declare (not safe))
                  (cons '%#let-values __tmp290484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp290483
                                                    _stx283328_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp290482)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g283347283356_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e283352283413_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g283347283356_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e283353283416_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g283347283356_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys283419_ _e283353283416_)
                               (_e283354283421_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g283347283356_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main283424_ _e283354283421_))
                          (declare (not safe))
                          (_K283351283410_ _main283424_ _keys283419_))
                        (let () (declare (not safe)) (_else283349283364_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self283330283338_
                 'gxc#!kw-lambda::t))
              (let* ((_e283334283429_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283330283338_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e283335283432_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283330283338_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table283435_ _e283335283432_)
                     (_e283336283437_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self283330283338_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch283440_ _e283336283437_))
                (declare (not safe))
                (_K283333283426_ _dispatch283440_ _table283435_))
              (let () (declare (not safe)) (_E283332283342_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx282940_ _args282941_)
        (let _lp282943_ ((_rest282945_ _args282941_)
                         (_pargs282946_ '())
                         (_kwargs282947_ '()))
          (let* ((___stx289555289556_ _rest282945_)
                 (_g282953283005_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx289555289556_)))))
            (let ((___kont289557289558_
                   (lambda (_L283184_ _L283185_)
                     (let ((__tmp290522
                            (let ()
                              (declare (not safe))
                              (cons _L283185_ _pargs282946_))))
                       (declare (not safe))
                       (_lp282943_ _L283184_ __tmp290522 _kwargs282947_))))
                  (___kont289559289560_
                   (lambda (_L283130_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L283130_ _pargs282946_))
                             (reverse _kwargs282947_))))
                  (___kont289561289562_
                   (lambda (_L283077_ _L283078_ _L283079_)
                     (let ((_kw283096_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L283079_))))
                       (if (assq _kw283096_ _kwargs282947_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx282940_
                              _kw283096_))
                           (let ((__tmp290523
                                  (let ((__tmp290524
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw283096_ _L283078_))))
                                    (declare (not safe))
                                    (cons __tmp290524 _kwargs282947_))))
                             (declare (not safe))
                             (_lp282943_
                              _L283077_
                              _pargs282946_
                              __tmp290523))))))
                  (___kont289563289564_
                   (lambda (_L283025_ _L283026_)
                     (let ((__tmp290525
                            (let ()
                              (declare (not safe))
                              (cons _L283026_ _pargs282946_))))
                       (declare (not safe))
                       (_lp282943_ _L283025_ __tmp290525 _kwargs282947_))))
                  (___kont289565289566_
                   (lambda ()
                     (values (reverse _pargs282946_)
                             (reverse _kwargs282947_)))))
              (let* ((_g282952283012_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx289555289556_))
                            (___kont289565289566_)
                            (let () (declare (not safe)) (_g282953283005_)))))
                     (___match289662289663_
                      (lambda (_e282986283045_
                               _hd282985283048_
                               _tl282984283050_
                               _e282989283053_
                               _hd282988283056_
                               _tl282987283058_
                               _e282992283061_
                               _hd282991283064_
                               _tl282990283066_
                               _e282995283069_
                               _hd282994283072_
                               _tl282993283074_)
                        (let ((_L283077_ _tl282993283074_)
                              (_L283078_ _hd282994283072_)
                              (_L283079_ _hd282991283064_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L283079_))
                              (___kont289561289562_
                               _L283077_
                               _L283078_
                               _L283079_)
                              (___kont289563289564_
                               _tl282984283050_
                               _hd282985283048_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx289555289556_))
                    (let ((_e282959283149_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx289555289556_))))
                      (let ((_tl282957283154_
                             (let ()
                               (declare (not safe))
                               (##cdr _e282959283149_)))
                            (_hd282958283152_
                             (let ()
                               (declare (not safe))
                               (##car _e282959283149_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd282958283152_))
                            (let ((_e282962283157_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd282958283152_))))
                              (let ((_tl282960283162_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e282962283157_)))
                                    (_hd282961283160_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e282962283157_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd282961283160_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd282961283160_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl282960283162_))
                                            (let ((_e282965283165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl282960283162_))))
                                              (let ((_tl282963283170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e282965283165_)))
                                                    (_hd282964283168_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e282965283165_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd282964283168_))
                                                    (let ((_e282966283173_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd282964283168_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e282966283173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl282963283170_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl282957283154_))
                          (let ((_e282969283176_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl282957283154_))))
                            (let ((_tl282967283181_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e282969283176_)))
                                  (_hd282968283179_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e282969283176_))))
                              (___kont289557289558_
                               _tl282967283181_
                               _hd282968283179_)))
                          (___kont289563289564_
                           _tl282957283154_
                           _hd282958283152_))
                      (___kont289563289564_ _tl282957283154_ _hd282958283152_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e282966283173_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl282963283170_))
                          (___kont289559289560_ _tl282957283154_)
                          (___kont289563289564_
                           _tl282957283154_
                           _hd282958283152_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl282963283170_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl282957283154_))
                              (let ((_e282995283069_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl282957283154_))))
                                (let ((_tl282993283074_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e282995283069_)))
                                      (_hd282994283072_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e282995283069_))))
                                  (___match289662289663_
                                   _e282959283149_
                                   _hd282958283152_
                                   _tl282957283154_
                                   _e282962283157_
                                   _hd282961283160_
                                   _tl282960283162_
                                   _e282965283165_
                                   _hd282964283168_
                                   _tl282963283170_
                                   _e282995283069_
                                   _hd282994283072_
                                   _tl282993283074_)))
                              (___kont289563289564_
                               _tl282957283154_
                               _hd282958283152_))
                          (___kont289563289564_
                           _tl282957283154_
                           _hd282958283152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl282963283170_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl282957283154_))
                                                            (let ((_e282995283069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl282957283154_))))
                      (let ((_tl282993283074_
                             (let ()
                               (declare (not safe))
                               (##cdr _e282995283069_)))
                            (_hd282994283072_
                             (let ()
                               (declare (not safe))
                               (##car _e282995283069_))))
                        (___match289662289663_
                         _e282959283149_
                         _hd282958283152_
                         _tl282957283154_
                         _e282962283157_
                         _hd282961283160_
                         _tl282960283162_
                         _e282965283165_
                         _hd282964283168_
                         _tl282963283170_
                         _e282995283069_
                         _hd282994283072_
                         _tl282993283074_)))
                    (___kont289563289564_ _tl282957283154_ _hd282958283152_))
                (___kont289563289564_ _tl282957283154_ _hd282958283152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont289563289564_
                                             _tl282957283154_
                                             _hd282958283152_))
                                        (___kont289563289564_
                                         _tl282957283154_
                                         _hd282958283152_))
                                    (___kont289563289564_
                                     _tl282957283154_
                                     _hd282958283152_))))
                            (___kont289563289564_
                             _tl282957283154_
                             _hd282958283152_))))
                    (let () (declare (not safe)) (_g282952283012_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self282936_ _stx282937_ _args282938_)
        (let () (declare (not safe)) (gxc#xform-call% _stx282937_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
