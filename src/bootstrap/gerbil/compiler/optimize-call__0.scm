(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1697117343)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl65527_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp65912 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl65527_ __tmp65912))
           (let ()
             (declare (not safe))
             (table-set! _tbl65527_ '%#call gxc#optimize-call%))
           _tbl65527_))))
    (define gxc#apply-optimize-call
      (lambda (_stx65510_ . _args65512_)
        (let ((__tmp65914
               (lambda ()
                 (declare (not safe))
                 (if (null? _args65512_)
                     (gxc#compile-e__0 _stx65510_)
                     (let ((_arg165517_ (car _args65512_))
                           (_rest65519_ (cdr _args65512_)))
                       (if (null? _rest65519_)
                           (gxc#compile-e__1 _stx65510_ _arg165517_)
                           (let ((_arg265522_ (car _rest65519_))
                                 (_rest65524_ (cdr _rest65519_)))
                             (if (null? _rest65524_)
                                 (gxc#compile-e__2
                                  _stx65510_
                                  _arg165517_
                                  _arg265522_)
                                 (apply gxc#compile-e
                                        _stx65510_
                                        _arg165517_
                                        _arg265522_
                                        _rest65524_))))))))
              (__tmp65913 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp65914
           gxc#current-compile-methods
           __tmp65913))))
    (define gxc#optimize-call%
      (lambda (_stx65365_)
        (let* ((___stx6554865549_ _stx65365_)
               (_g6536865388_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx6554865549_)))))
          (let ((___kont6555065551_
                 (lambda (_L65432_ _L65433_)
                   (let* ((_rator-id65451_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L65433_)))
                          (_rator-type65453_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id65451_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type65453_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp65915
                                  (##structure-ref
                                   _rator-type65453_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id65451_
                              '" => "
                              _rator-type65453_
                              '" "
                              __tmp65915))
                           (let ((_optimized65456_
                                  (let ((__method65910
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type65453_
                                            'optimize-call))))
                                    (if __method65910
                                        (__method65910
                                         _rator-type65453_
                                         _stx65365_
                                         _L65432_)
                                        (error '"Missing method"
                                               _rator-type65453_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type65453_))
                                 _optimized65456_
                                 (let* ((___stx6553065531_ _optimized65456_)
                                        (_g6545965469_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6553065531_)))))
                                   (let ((___kont6553265533_
                                          (lambda (_L65489_)
                                            (let ((__tmp65916
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L65489_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp65916
                                               _stx65365_))))
                                         (___kont6553465535_
                                          (lambda () _optimized65456_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6553065531_))
                                         (let ((_e6546465481_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6553065531_))))
                                           (let ((_tl6546265486_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6546465481_)))
                                                 (_hd6546365484_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6546465481_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd6546365484_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd6546365484_))
                                                     (___kont6553265533_
                                                      _tl6546265486_)
                                                     (___kont6553465535_))
                                                 (___kont6553465535_))))
                                         (___kont6553465535_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type65453_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx65365_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal application; not a procedure"
                                _stx65365_
                                _rator-type65453_)))))))
                (___kont6555265553_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx65365_)))))
            (if (let () (declare (not safe)) (gx#stx-pair? ___stx6554865549_))
                (let ((_e6537465400_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx6554865549_))))
                  (let ((_tl6537265405_
                         (let () (declare (not safe)) (##cdr _e6537465400_)))
                        (_hd6537365403_
                         (let () (declare (not safe)) (##car _e6537465400_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl6537265405_))
                        (let ((_e6537765408_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl6537265405_))))
                          (let ((_tl6537565413_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6537765408_)))
                                (_hd6537665411_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6537765408_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd6537665411_))
                                (let ((_e6538065416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd6537665411_))))
                                  (let ((_tl6537865421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6538065416_)))
                                        (_hd6537965419_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6538065416_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd6537965419_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd6537965419_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl6537865421_))
                                                (let ((_e6538365424_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl6537865421_))))
                                                  (let ((_tl6538165429_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6538365424_)))
                                                        (_hd6538265427_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6538365424_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6538165429_))
                                                        (___kont6555065551_
                                                         _tl6537565413_
                                                         _hd6538265427_)
                                                        (___kont6555265553_))))
                                                (___kont6555265553_))
                                            (___kont6555265553_))
                                        (___kont6555265553_))))
                                (___kont6555265553_))))
                        (___kont6555265553_))))
                (___kont6555265553_))))))
    (define gxc#!struct-pred::optimize-call
      (lambda (_self65219_ _stx65220_ _args65221_)
        (let* ((_self6522265228_ _self65219_)
               (_E6522465232_
                (lambda () (error '"No clause matching" _self6522265228_)))
               (_K6522565357_
                (lambda (_struct-t65235_)
                  (let* ((_struct-type65237_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t65235_)))
                         (_struct-type6523865252_ _struct-type65237_)
                         (_else6524165260_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx65220_
                               _struct-t65235_
                               _struct-type65237_)))))
                    (let ((_K6524465332_
                           (lambda (_plist65271_ _struct-type-id65272_)
                             (let* ((___stx6558665587_ _args65221_)
                                    (_g6527565285_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6558665587_)))))
                               (let ((___kont6558865589_
                                      (lambda (_L65305_)
                                        (let ((_expr65326_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__0 _L65305_)))
                                              (_op65327_
                                               (if (and _plist65271_
                                                        (let ()
                                                          (declare (not safe))
                                                          (assgetq 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _plist65271_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '%#struct-direct-instance?
                                                   '%#struct-instance?)))
                                          (let ((__tmp65917
                                                 (let ((__tmp65918
                                                        (let ((__tmp65920
                                                               (let ((__tmp65921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _struct-type-id65272_ '()))))
                         (declare (not safe))
                         (cons '%#quote __tmp65921)))
                      (__tmp65919
                       (let () (declare (not safe)) (cons _expr65326_ '()))))
                  (declare (not safe))
                  (cons __tmp65920 __tmp65919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _op65327_
                                                         __tmp65918))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp65917
                                             _stx65220_)))))
                                     (___kont6559065591_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal struct predicate application"
                                           _stx65220_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6558665587_))
                                     (let ((_e6528065297_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6558665587_))))
                                       (let ((_tl6527865302_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6528065297_)))
                                             (_hd6527965300_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6528065297_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6527865302_))
                                             (___kont6558865589_
                                              _hd6527965300_)
                                             (___kont6559065591_))))
                                     (___kont6559065591_))))))
                          (_K6524365265_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx65220_)))))
                      (let ((_try-match6524065268_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6523865252_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6524365265_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6524165260_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6523865252_
                               'gxc#!struct-type::t))
                            (let* ((_e6524565335_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6523865252_
                                       '1)))
                                   (_e6524665340_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6523865252_
                                       '2)))
                                   (_e6524765343_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6523865252_
                                       '3)))
                                   (_e6524865346_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6523865252_
                                       '4)))
                                   (_e6524965349_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6523865252_
                                       '5)))
                                   (_e6525065352_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6523865252_
                                       '6))))
                              (let ((_struct-type-id65338_ _e6524565335_)
                                    (_plist65355_ _e6525065352_))
                                (let ()
                                  (declare (not safe))
                                  (_K6524465332_
                                   _plist65355_
                                   _struct-type-id65338_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6524065268_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6522265228_
                 'gxc#!struct-pred::t))
              (let* ((_e6522665360_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6522265228_ '1)))
                     (_struct-t65363_ _e6522665360_))
                (declare (not safe))
                (_K6522565357_ _struct-t65363_))
              (let () (declare (not safe)) (_E6522465232_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-pred::t
       'optimize-call
       gxc#!struct-pred::optimize-call
       '#f))
    (define gxc#!struct-cons::optimize-call
      (lambda (_self64993_ _stx64994_ _args64995_)
        (let* ((_self6499665002_ _self64993_)
               (_E6499865006_
                (lambda () (error '"No clause matching" _self6499665002_)))
               (_K6499965089_
                (lambda (_struct-t65009_)
                  (let* ((_struct-type65011_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t65009_)))
                         (_struct-type6501265025_ _struct-type65011_)
                         (_else6501565033_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct constructor application; not a struct type"
                               _stx64994_
                               _struct-t65009_
                               _struct-type65011_)))))
                    (let ((_K6501865063_
                           (lambda (_ctor65044_
                                    _xfields65045_
                                    _fields65046_
                                    _type-id65047_)
                             (let* ((_args65049_
                                     (map gxc#compile-e _args64995_))
                                    (_$e65051_
                                     (if _ctor65044_
                                         (if _xfields65045_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!struct-type-lookup-method
                                                _struct-type65011_
                                                _ctor65044_))
                                             '#f)
                                         '#f)))
                               (if _$e65051_
                                   ((lambda (_kons65054_)
                                      (let* ((_$obj65056_
                                              (make-symbol (gensym '__obj)))
                                             (__tmp65936
                                              (let ((__tmp65937
                                                     (let ((__tmp65953
                                                            (let ((__tmp65954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65967
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj65056_ '())))
                                 (__tmp65955
                                  (let ((__tmp65956
                                         (let ((__tmp65957
                                                (let ((__tmp65965
                                                       (let ((__tmp65966
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'make-object '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp65966)))
              (__tmp65958
               (let ((__tmp65963
                      (let ((__tmp65964
                             (let ()
                               (declare (not safe))
                               (cons _struct-t65009_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp65964)))
                     (__tmp65959
                      (let ((__tmp65960
                             (let ((__tmp65961
                                    (let ((__tmp65962
                                           (fx+ _fields65046_ _xfields65045_)))
                                      (declare (not safe))
                                      (cons __tmp65962 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp65961))))
                        (declare (not safe))
                        (cons __tmp65960 '()))))
                 (declare (not safe))
                 (cons __tmp65963 __tmp65959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp65965
                                                        __tmp65958))))
                                           (declare (not safe))
                                           (cons '%#call __tmp65957))))
                                    (declare (not safe))
                                    (cons __tmp65956 '()))))
                             (declare (not safe))
                             (cons __tmp65967 __tmp65955))))
                      (declare (not safe))
                      (cons __tmp65954 '())))
                   (__tmp65938
                    (let ((__tmp65939
                           (let ((__tmp65940
                                  (let ((__tmp65944
                                         (let ((__tmp65945
                                                (let ((__tmp65946
                                                       (let ((__tmp65947
                                                              (let ((__tmp65951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp65952
                                    (let ()
                                      (declare (not safe))
                                      (cons _kons65054_ '()))))
                               (declare (not safe))
                               (cons '%#ref __tmp65952)))
                            (__tmp65948
                             (let ((__tmp65949
                                    (let ((__tmp65950
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj65056_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp65950))))
                               (declare (not safe))
                               (cons __tmp65949 _args65049_))))
                        (declare (not safe))
                        (cons __tmp65951 __tmp65948))))
                 (declare (not safe))
                 (cons '%#call __tmp65947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp65946
                                                   _stx64994_))))
                                           (declare (not safe))
                                           (gxc#compile-e__0 __tmp65945)))
                                        (__tmp65941
                                         (let ((__tmp65942
                                                (let ((__tmp65943
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj65056_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp65943))))
                                           (declare (not safe))
                                           (cons __tmp65942 '()))))
                                    (declare (not safe))
                                    (cons __tmp65944 __tmp65941))))
                             (declare (not safe))
                             (cons '%#begin __tmp65940))))
                      (declare (not safe))
                      (cons __tmp65939 '()))))
               (declare (not safe))
               (cons __tmp65953 __tmp65938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp65937))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp65936
                                         _stx64994_)))
                                    _$e65051_)
                                   (if (or _ctor65044_
                                           (let ()
                                             (declare (not safe))
                                             (not _xfields65045_)))
                                       (let ((__tmp65929
                                              (let ((__tmp65930
                                                     (let ((__tmp65934
                                                            (let ((__tmp65935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons 'make-struct-instance '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp65935)))
                   (__tmp65931
                    (let ((__tmp65932
                           (let ((__tmp65933
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t65009_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp65933))))
                      (declare (not safe))
                      (cons __tmp65932 _args65049_))))
               (declare (not safe))
               (cons __tmp65934 __tmp65931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp65930))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp65929
                                          _stx64994_))
                                       (let ((_arity65061_
                                              (fx+ _fields65046_
                                                   _xfields65045_)))
                                         (if (fx= _arity65061_
                                                  (length _args65049_))
                                             (let ((__tmp65922
                                                    (let ((__tmp65923
                                                           (let ((__tmp65927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp65928
                                 (let ()
                                   (declare (not safe))
                                   (cons '##structure '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp65928)))
                         (__tmp65924
                          (let ((__tmp65925
                                 (let ((__tmp65926
                                        (let ()
                                          (declare (not safe))
                                          (cons _struct-t65009_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp65926))))
                            (declare (not safe))
                            (cons __tmp65925 _args65049_))))
                     (declare (not safe))
                     (cons __tmp65927 __tmp65924))))
              (declare (not safe))
              (cons '%#call __tmp65923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp65922
                                                _stx64994_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"Illegal struct constructor application; arity mismatch"
                                                _stx64994_
                                                _struct-t65009_
                                                _arity65061_)))))))))
                          (_K6501765038_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline struct constructor; unknown struct type "
                                _struct-t65009_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx64994_)))))
                      (let ((_try-match6501465041_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6501265025_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6501765038_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6501565033_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6501265025_
                               'gxc#!struct-type::t))
                            (let* ((_e6501965066_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6501265025_
                                       '1)))
                                   (_e6502065071_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6501265025_
                                       '2)))
                                   (_e6502165074_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6501265025_
                                       '3)))
                                   (_e6502265079_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6501265025_
                                       '4)))
                                   (_e6502365084_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6501265025_
                                       '5))))
                              (let ((_type-id65069_ _e6501965066_)
                                    (_fields65077_ _e6502165074_)
                                    (_xfields65082_ _e6502265079_)
                                    (_ctor65087_ _e6502365084_))
                                (let ()
                                  (declare (not safe))
                                  (_K6501865063_
                                   _ctor65087_
                                   _xfields65082_
                                   _fields65077_
                                   _type-id65069_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6501465041_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6499665002_
                 'gxc#!struct-cons::t))
              (let* ((_e6500065092_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6499665002_ '1)))
                     (_struct-t65095_ _e6500065092_))
                (declare (not safe))
                (_K6499965089_ _struct-t65095_))
              (let () (declare (not safe)) (_E6499865006_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-cons::t
       'optimize-call
       gxc#!struct-cons::optimize-call
       '#f))
    (define gxc#!struct-getf::optimize-call
      (lambda (_self64704_ _stx64705_ _args64706_)
        (let* ((_self6470764715_ _self64704_)
               (_E6470964719_
                (lambda () (error '"No clause matching" _self6470764715_)))
               (_K6471064853_
                (lambda (_unchecked?64722_ _off64723_ _struct-t64724_)
                  (let* ((_struct-type64726_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t64724_)))
                         (_struct-type6472764741_ _struct-type64726_)
                         (_else6473064749_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx64705_
                               _struct-t64724_
                               _struct-type64726_)))))
                    (let ((_K6473364824_
                           (lambda (_plist64760_
                                    _xfields64761_
                                    _fields64762_
                                    _struct-type-id64763_)
                             (if _xfields64761_
                                 (let* ((___stx6563465635_ _args64706_)
                                        (_g6476664776_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6563465635_)))))
                                   (let ((___kont6563665637_
                                          (lambda (_L64796_)
                                            (let ((_expr64817_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L64796_)))
                                                  (_off64818_
                                                   (fx+ _off64723_
                                                        _xfields64761_
                                                        '1))
                                                  (_op64819_
                                                   (if _unchecked?64722_
                                                       '%#struct-unchecked-ref
                                                       (if (and _plist64760_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist64760_)))
                   '%#struct-direct-ref
                   '%#struct-ref))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp65968
                                                     (let ((__tmp65969
                                                            (let ((__tmp65974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65975
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t64724_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp65975)))
                          (__tmp65970
                           (let ((__tmp65972
                                  (let ((__tmp65973
                                         (let ()
                                           (declare (not safe))
                                           (cons _off64818_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp65973)))
                                 (__tmp65971
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr64817_ '()))))
                             (declare (not safe))
                             (cons __tmp65972 __tmp65971))))
                      (declare (not safe))
                      (cons __tmp65974 __tmp65970))))
               (declare (not safe))
               (cons _op64819_ __tmp65969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp65968
                                                 _stx64705_)))))
                                         (___kont6563865639_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct accessor application"
                                               _stx64705_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6563465635_))
                                         (let ((_e6477164788_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6563465635_))))
                                           (let ((_tl6476964793_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6477164788_)))
                                                 (_hd6477064791_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6477164788_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _tl6476964793_))
                                                 (___kont6563665637_
                                                  _hd6477064791_)
                                                 (___kont6563865639_))))
                                         (___kont6563865639_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-getf: incomplete struct "
                                      _struct-type-id64763_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx64705_))))))
                          (_K6473264754_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx64705_)))))
                      (let ((_try-match6472964757_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6472764741_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6473264754_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6473064749_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6472764741_
                               'gxc#!struct-type::t))
                            (let* ((_e6473464827_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6472764741_
                                       '1)))
                                   (_e6473564832_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6472764741_
                                       '2)))
                                   (_e6473664835_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6472764741_
                                       '3)))
                                   (_e6473764840_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6472764741_
                                       '4)))
                                   (_e6473864845_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6472764741_
                                       '5)))
                                   (_e6473964848_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6472764741_
                                       '6))))
                              (let ((_struct-type-id64830_ _e6473464827_)
                                    (_fields64838_ _e6473664835_)
                                    (_xfields64843_ _e6473764840_)
                                    (_plist64851_ _e6473964848_))
                                (let ()
                                  (declare (not safe))
                                  (_K6473364824_
                                   _plist64851_
                                   _xfields64843_
                                   _fields64838_
                                   _struct-type-id64830_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6472964757_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6470764715_
                 'gxc#!struct-getf::t))
              (let* ((_e6471164856_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6470764715_ '1)))
                     (_struct-t64859_ _e6471164856_)
                     (_e6471264861_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6470764715_ '2)))
                     (_off64864_ _e6471264861_)
                     (_e6471364866_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6470764715_ '3)))
                     (_unchecked?64869_ _e6471364866_))
                (declare (not safe))
                (_K6471064853_ _unchecked?64869_ _off64864_ _struct-t64859_))
              (let () (declare (not safe)) (_E6470964719_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-getf::t
       'optimize-call
       gxc#!struct-getf::optimize-call
       '#f))
    (define gxc#!struct-setf::optimize-call
      (lambda (_self64398_ _stx64399_ _args64400_)
        (let* ((_self6440164409_ _self64398_)
               (_E6440364413_
                (lambda () (error '"No clause matching" _self6440164409_)))
               (_K6440464564_
                (lambda (_unchecked?64416_ _off64417_ _struct-t64418_)
                  (let* ((_struct-type64420_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _struct-t64418_)))
                         (_struct-type6442164435_ _struct-type64420_)
                         (_else6442464443_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal struct predicate application; not a struct type"
                               _stx64399_
                               _struct-t64418_
                               _struct-type64420_)))))
                    (let ((_K6442764535_
                           (lambda (_plist64454_
                                    _xfields64455_
                                    _fields64456_
                                    _struct-type-id64457_)
                             (if _xfields64455_
                                 (let* ((___stx6566765668_ _args64400_)
                                        (_g6446064474_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx6566765668_)))))
                                   (let ((___kont6566965670_
                                          (lambda (_L64502_ _L64503_)
                                            (let ((_expr64527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L64503_)))
                                                  (_val64528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _L64502_)))
                                                  (_off64529_
                                                   (fx+ _off64417_
                                                        _xfields64455_
                                                        '1))
                                                  (_op64530_
                                                   (if _unchecked?64416_
                                                       '%#struct-unchecked-set!
                                                       (if (and _plist64454_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (assgetq 'final: _plist64454_)))
                   '%#struct-direct-set!
                   '%#struct-set!))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((__tmp65976
                                                     (let ((__tmp65977
                                                            (let ((__tmp65983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65984
                                  (let ()
                                    (declare (not safe))
                                    (cons _struct-t64418_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp65984)))
                          (__tmp65978
                           (let ((__tmp65981
                                  (let ((__tmp65982
                                         (let ()
                                           (declare (not safe))
                                           (cons _off64529_ '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp65982)))
                                 (__tmp65979
                                  (let ((__tmp65980
                                         (let ()
                                           (declare (not safe))
                                           (cons _val64528_ '()))))
                                    (declare (not safe))
                                    (cons _expr64527_ __tmp65980))))
                             (declare (not safe))
                             (cons __tmp65981 __tmp65979))))
                      (declare (not safe))
                      (cons __tmp65983 __tmp65978))))
               (declare (not safe))
               (cons _op64530_ __tmp65977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp65976
                                                 _stx64399_)))))
                                         (___kont6567165672_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Illegal struct mutator application"
                                               _stx64399_)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx6566765668_))
                                         (let ((_e6446664486_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx6566765668_))))
                                           (let ((_tl6446464491_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e6446664486_)))
                                                 (_hd6446564489_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e6446664486_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl6446464491_))
                                                 (let ((_e6446964494_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl6446464491_))))
                                                   (let ((_tl6446764499_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e6446964494_)))
                                                         (_hd6446864497_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e6446964494_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl6446764499_))
                                                         (___kont6566965670_
                                                          _hd6446864497_
                                                          _hd6446564489_)
                                                         (___kont6567165672_))))
                                                 (___kont6567165672_))))
                                         (___kont6567165672_))))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"struct-setf: incomplete struct "
                                      _struct-type-id64457_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#xform-call% _stx64399_))))))
                          (_K6442664448_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx64399_)))))
                      (let ((_try-match6442364451_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _struct-type6442164435_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6442664448_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6442464443_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _struct-type6442164435_
                               'gxc#!struct-type::t))
                            (let* ((_e6442864538_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6442164435_
                                       '1)))
                                   (_e6442964543_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6442164435_
                                       '2)))
                                   (_e6443064546_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6442164435_
                                       '3)))
                                   (_e6443164551_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6442164435_
                                       '4)))
                                   (_e6443264556_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6442164435_
                                       '5)))
                                   (_e6443364559_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _struct-type6442164435_
                                       '6))))
                              (let ((_struct-type-id64541_ _e6442864538_)
                                    (_fields64549_ _e6443064546_)
                                    (_xfields64554_ _e6443164551_)
                                    (_plist64562_ _e6443364559_))
                                (let ()
                                  (declare (not safe))
                                  (_K6442764535_
                                   _plist64562_
                                   _xfields64554_
                                   _fields64549_
                                   _struct-type-id64541_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6442364451_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6440164409_
                 'gxc#!struct-setf::t))
              (let* ((_e6440564567_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6440164409_ '1)))
                     (_struct-t64570_ _e6440564567_)
                     (_e6440664572_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6440164409_ '2)))
                     (_off64575_ _e6440664572_)
                     (_e6440764577_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6440164409_ '3)))
                     (_unchecked?64580_ _e6440764577_))
                (declare (not safe))
                (_K6440464564_ _unchecked?64580_ _off64575_ _struct-t64570_))
              (let () (declare (not safe)) (_E6440364413_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!struct-setf::t
       'optimize-call
       gxc#!struct-setf::optimize-call
       '#f))
    (define gxc#!class-pred::optimize-call
      (lambda (_self64126_ _stx64127_ _args64128_)
        (let* ((_self6412964135_ _self64126_)
               (_E6413164139_
                (lambda () (error '"No clause matching" _self6412964135_)))
               (_K6413264268_
                (lambda (_class-t64142_)
                  (let* ((_class-type64144_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t64142_)))
                         (_class-type6414564160_ _class-type64144_)
                         (_else6414864168_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal class predicate application; not a class type"
                               _stx64127_
                               _class-t64142_
                               _class-type64144_)))))
                    (let ((_K6415164240_
                           (lambda (_plist64179_ _class-type-id64180_)
                             (let* ((___stx6570665707_ _args64128_)
                                    (_g6418364193_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx6570665707_)))))
                               (let ((___kont6570865709_
                                      (lambda (_L64213_)
                                        (let ((_expr64234_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__0 _L64213_)))
                                              (_final?64235_
                                               (if _plist64179_
                                                   (let ()
                                                     (declare (not safe))
                                                     (assgetq 'final:
                                                              _plist64179_))
                                                   '#f)))
                                          (if _final?64235_
                                              (let ((__tmp65993
                                                     (let ((__tmp65994
                                                            (let ((__tmp65996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65997
                                  (let ()
                                    (declare (not safe))
                                    (cons _class-type-id64180_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp65997)))
                          (__tmp65995
                           (let ()
                             (declare (not safe))
                             (cons _expr64234_ '()))))
                      (declare (not safe))
                      (cons __tmp65996 __tmp65995))))
               (declare (not safe))
               (cons '%#struct-direct-instance? __tmp65994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp65993
                                                 _stx64127_))
                                              (let ((__tmp65985
                                                     (let ((__tmp65986
                                                            (let ((__tmp65991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp65992
                                  (let ()
                                    (declare (not safe))
                                    (cons 'class-instance? '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp65992)))
                          (__tmp65987
                           (let ((__tmp65989
                                  (let ((__tmp65990
                                         (let ()
                                           (declare (not safe))
                                           (cons _class-t64142_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp65990)))
                                 (__tmp65988
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr64234_ '()))))
                             (declare (not safe))
                             (cons __tmp65989 __tmp65988))))
                      (declare (not safe))
                      (cons __tmp65991 __tmp65987))))
               (declare (not safe))
               (cons '%#call __tmp65986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#xform-wrap-source
                                                 __tmp65985
                                                 _stx64127_))))))
                                     (___kont6571065711_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"Illegal class predicate application"
                                           _stx64127_)))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx6570665707_))
                                     (let ((_e6418864205_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx6570665707_))))
                                       (let ((_tl6418664210_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e6418864205_)))
                                             (_hd6418764208_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e6418864205_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl6418664210_))
                                             (___kont6570865709_
                                              _hd6418764208_)
                                             (___kont6571065711_))))
                                     (___kont6571065711_))))))
                          (_K6415064173_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx64127_)))))
                      (let ((_try-match6414764176_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6414564160_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6415064173_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6414864168_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6414564160_
                               'gxc#!class-type::t))
                            (let* ((_e6415264243_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6414564160_
                                       '1)))
                                   (_e6415364248_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6414564160_
                                       '2)))
                                   (_e6415464251_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6414564160_
                                       '3)))
                                   (_e6415564254_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6414564160_
                                       '4)))
                                   (_e6415664257_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6414564160_
                                       '5)))
                                   (_e6415764260_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6414564160_
                                       '6)))
                                   (_e6415864263_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _class-type6414564160_
                                       '7))))
                              (let ((_class-type-id64246_ _e6415264243_)
                                    (_plist64266_ _e6415864263_))
                                (let ()
                                  (declare (not safe))
                                  (_K6415164240_
                                   _plist64266_
                                   _class-type-id64246_))))
                            (let ()
                              (declare (not safe))
                              (_try-match6414764176_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6412964135_
                 'gxc#!class-pred::t))
              (let* ((_e6413364271_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6412964135_ '1)))
                     (_class-t64274_ _e6413364271_))
                (declare (not safe))
                (_K6413264268_ _class-t64274_))
              (let () (declare (not safe)) (_E6413164139_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-pred::t
       'optimize-call
       gxc#!class-pred::optimize-call
       '#f))
    (define gxc#!class-cons::optimize-call
      (lambda (_self63944_ _stx63945_ _args63946_)
        (let* ((_self6394763953_ _self63944_)
               (_E6394963957_
                (lambda () (error '"No clause matching" _self6394763953_)))
               (_K6395063996_
                (lambda (_class-t63960_)
                  (let* ((_class-type63962_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-resolve-type _class-t63960_)))
                         (_class-type6396363971_ _class-type63962_)
                         (_else6396663979_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal class constructor application; not a struct type"
                               _stx63945_
                               _class-t63960_
                               _class-type63962_)))))
                    (let ((_K6396963993_
                           (lambda ()
                             (let* ((_args63991_
                                     (map gxc#compile-e _args63946_))
                                    (__tmp65998
                                     (let ((__tmp65999
                                            (let ((__tmp66003
                                                   (let ((__tmp66004
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'make-class-instance
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp66004)))
                                                  (__tmp66000
                                                   (let ((__tmp66001
                                                          (let ((__tmp66002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _class-t63960_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp66002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66001
                                                           _args63991_))))
                                              (declare (not safe))
                                              (cons __tmp66003 __tmp66000))))
                                       (declare (not safe))
                                       (cons '%#call __tmp65999))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp65998 _stx63945_))))
                          (_K6396863984_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"cannot inline class constructor; class struct type "
                                _class-t63960_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx63945_)))))
                      (let ((_try-match6396563987_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##eq? _class-type6396363971_ '#f))
                                   (let ()
                                     (declare (not safe))
                                     (_K6396863984_))
                                   (let ()
                                     (declare (not safe))
                                     (_else6396663979_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _class-type6396363971_
                               'gxc#!class-type::t))
                            (let () (declare (not safe)) (_K6396963993_))
                            (let ()
                              (declare (not safe))
                              (_try-match6396563987_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6394763953_
                 'gxc#!class-cons::t))
              (let* ((_e6395163999_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6394763953_ '1)))
                     (_class-t64002_ _e6395163999_))
                (declare (not safe))
                (_K6395063996_ _class-t64002_))
              (let () (declare (not safe)) (_E6394963957_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-cons::t
       'optimize-call
       gxc#!class-cons::optimize-call
       '#f))
    (define gxc#!class-getf::optimize-call
      (lambda (_self63731_ _stx63732_ _args63733_)
        (let* ((_self6373463742_ _self63731_)
               (_E6373663746_
                (lambda () (error '"No clause matching" _self6373463742_)))
               (_K6373763804_
                (lambda (_unchecked?63749_ _slot63750_ _class-t63751_)
                  (let* ((___stx6574665747_ _args63733_)
                         (_g6375463764_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6574665747_)))))
                    (let ((___kont6574865749_
                           (lambda (_L63784_)
                             (let* ((_expr63799_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L63784_)))
                                    (__tmp66005
                                     (let ((__tmp66006
                                            (let ((__tmp66011
                                                   (let ((__tmp66012
                                                          (let ((__tmp66013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _unchecked?63749_ 'slot-ref 'unchecked-slot-ref)))
                    (declare (not safe))
                    (cons __tmp66013 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp66012)))
                                                  (__tmp66007
                                                   (let ((__tmp66008
                                                          (let ((__tmp66009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp66010
                                (let ()
                                  (declare (not safe))
                                  (cons _slot63750_ '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp66010))))
                    (declare (not safe))
                    (cons __tmp66009 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr63799_
                                                           __tmp66008))))
                                              (declare (not safe))
                                              (cons __tmp66011 __tmp66007))))
                                       (declare (not safe))
                                       (cons '%#call __tmp66006))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp66005 _stx63732_))))
                          (___kont6575065751_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class accessor application"
                                _stx63732_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6574665747_))
                          (let ((_e6375963776_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6574665747_))))
                            (let ((_tl6375763781_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6375963776_)))
                                  (_hd6375863779_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6375963776_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl6375763781_))
                                  (___kont6574865749_ _hd6375863779_)
                                  (___kont6575065751_))))
                          (___kont6575065751_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6373463742_
                 'gxc#!class-getf::t))
              (let* ((_e6373863807_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6373463742_ '1)))
                     (_class-t63810_ _e6373863807_)
                     (_e6373963812_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6373463742_ '2)))
                     (_slot63815_ _e6373963812_)
                     (_e6374063817_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6373463742_ '3)))
                     (_unchecked?63820_ _e6374063817_))
                (declare (not safe))
                (_K6373763804_ _unchecked?63820_ _slot63815_ _class-t63810_))
              (let () (declare (not safe)) (_E6373663746_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-getf::t
       'optimize-call
       gxc#!class-getf::optimize-call
       '#f))
    (define gxc#!class-setf::optimize-call
      (lambda (_self63501_ _stx63502_ _args63503_)
        (let* ((_self6350463512_ _self63501_)
               (_E6350663516_
                (lambda () (error '"No clause matching" _self6350463512_)))
               (_K6350763591_
                (lambda (_unchecked?63519_ _slot63520_ _class-t63521_)
                  (let* ((___stx6576265763_ _args63503_)
                         (_g6352463538_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx6576265763_)))))
                    (let ((___kont6576465765_
                           (lambda (_L63566_ _L63567_)
                             (let ((_expr63585_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__0 _L63567_)))
                                   (_val63586_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__0 _L63566_))))
                               (let ((__tmp66014
                                      (let ((__tmp66015
                                             (let ((__tmp66021
                                                    (let ((__tmp66022
                                                           (let ((__tmp66023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if _unchecked?63519_
                              'unchecked-slot-set!
                              'slot-set!)))
                     (declare (not safe))
                     (cons __tmp66023 '()))))
              (declare (not safe))
              (cons '%#ref __tmp66022)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp66016
                                                    (let ((__tmp66017
                                                           (let ((__tmp66019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp66020
                                 (let ()
                                   (declare (not safe))
                                   (cons _slot63520_ '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp66020)))
                         (__tmp66018
                          (let () (declare (not safe)) (cons _val63586_ '()))))
                     (declare (not safe))
                     (cons __tmp66019 __tmp66018))))
              (declare (not safe))
              (cons _expr63585_ __tmp66017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp66021 __tmp66016))))
                                        (declare (not safe))
                                        (cons '%#call __tmp66015))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp66014
                                  _stx63502_)))))
                          (___kont6576665767_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"Illegal class mutator application"
                                _stx63502_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? ___stx6576265763_))
                          (let ((_e6353063550_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e ___stx6576265763_))))
                            (let ((_tl6352863555_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6353063550_)))
                                  (_hd6352963553_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6353063550_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl6352863555_))
                                  (let ((_e6353363558_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl6352863555_))))
                                    (let ((_tl6353163563_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e6353363558_)))
                                          (_hd6353263561_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e6353363558_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl6353163563_))
                                          (___kont6576465765_
                                           _hd6353263561_
                                           _hd6352963553_)
                                          (___kont6576665767_))))
                                  (___kont6576665767_))))
                          (___kont6576665767_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6350463512_
                 'gxc#!class-setf::t))
              (let* ((_e6350863594_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6350463512_ '1)))
                     (_class-t63597_ _e6350863594_)
                     (_e6350963599_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6350463512_ '2)))
                     (_slot63602_ _e6350963599_)
                     (_e6351063604_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6350463512_ '3)))
                     (_unchecked?63607_ _e6351063604_))
                (declare (not safe))
                (_K6350763591_ _unchecked?63607_ _slot63602_ _class-t63597_))
              (let () (declare (not safe)) (_E6350663516_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!class-setf::t
       'optimize-call
       gxc#!class-setf::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_self63335_ _stx63336_ _args63337_)
        (let* ((_self6333863347_ _self63335_)
               (_E6334063351_
                (lambda () (error '"No clause matching" _self6333863347_)))
               (_K6334163358_
                (lambda (_inline63354_ _dispatch63355_ _arity63356_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self63335_ _args63337_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx63336_
                         _arity63356_)))
                  (if _inline63354_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp66029
                               (let ((__tmp66030 (_inline63354_ _stx63336_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp66030
                                  _stx63336_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp66029)))
                      (if _dispatch63355_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch63355_))
                            (let ((__tmp66024
                                   (let ((__tmp66025
                                          (let ((__tmp66026
                                                 (let ((__tmp66027
                                                        (let ((__tmp66028
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch63355_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp66028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp66027
                                                         _args63337_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp66026))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp66025
                                      _stx63336_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp66024)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx63336_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6333863347_ 'gxc#!lambda::t))
              (let* ((_e6334263361_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6333863347_ '1)))
                     (_e6334363364_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6333863347_ '2)))
                     (_arity63367_ _e6334363364_)
                     (_e6334463369_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6333863347_ '3)))
                     (_dispatch63372_ _e6334463369_)
                     (_e6334563374_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6333863347_ '4)))
                     (_inline63377_ _e6334563374_))
                (declare (not safe))
                (_K6334163358_ _inline63377_ _dispatch63372_ _arity63367_))
              (let () (declare (not safe)) (_E6334063351_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self63174_ _stx63175_ _args63176_)
        (let* ((_self6317763184_ _self63174_)
               (_E6317963188_
                (lambda () (error '"No clause matching" _self6317763184_)))
               (_K6318063202_
                (lambda (_clauses63191_)
                  (let ((_$e63197_
                         (let ((__tmp66031
                                (lambda (_g6319263194_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g6319263194_
                                     _args63176_)))))
                           (declare (not safe))
                           (find __tmp66031 _clauses63191_))))
                    (if _$e63197_
                        ((lambda (_clause63200_)
                           (let ((__method65911
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause63200_
                                     'optimize-call))))
                             (if __method65911
                                 (__method65911
                                  _clause63200_
                                  _stx63175_
                                  _args63176_)
                                 (error '"Missing method"
                                        _clause63200_
                                        'optimize-call))))
                         _$e63197_)
                        (let ((__tmp66032
                               (map gxc#!lambda-arity _clauses63191_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx63175_
                           __tmp66032)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self6317763184_
                 'gxc#!case-lambda::t))
              (let* ((_e6318163205_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6317763184_ '1)))
                     (_e6318263208_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6317763184_ '2)))
                     (_clauses63211_ _e6318263208_))
                (declare (not safe))
                (_K6318063202_ _clauses63211_))
              (let () (declare (not safe)) (_E6317963188_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self62988_ _args62989_)
        (let* ((_self6299062997_ _self62988_)
               (_E6299263001_
                (lambda () (error '"No clause matching" _self6299062997_)))
               (_K6299363041_
                (lambda (_arity63004_)
                  (let* ((_arity6300563014_ _arity63004_)
                         (_E6300863018_
                          (lambda ()
                            (error '"No clause matching" _arity6300563014_))))
                    (let ((_K6301263038_
                           (lambda () (fx= (length _args62989_) _arity63004_)))
                          (_K6300963024_
                           (lambda (_arity63022_)
                             (fx>= (length _args62989_) _arity63022_))))
                      (let ((_try-match6300763034_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity6300563014_))
                                   (let ((_tl6301163029_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity6300563014_)))
                                         (_hd6301063027_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity6300563014_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl6301163029_))
                                         (let ((_arity63032_ _hd6301063027_))
                                           (declare (not safe))
                                           (_K6300963024_ _arity63032_))
                                         (let ()
                                           (declare (not safe))
                                           (_E6300863018_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E6300863018_))))))
                        (if (fixnum? _arity6300563014_)
                            (let () (declare (not safe)) (_K6301263038_))
                            (let ()
                              (declare (not safe))
                              (_try-match6300763034_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6299062997_ 'gxc#!lambda::t))
              (let* ((_e6299463044_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6299062997_ '1)))
                     (_e6299563047_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6299062997_ '2)))
                     (_arity63050_ _e6299563047_))
                (declare (not safe))
                (_K6299363041_ _arity63050_))
              (let () (declare (not safe)) (_E6299263001_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self62873_ _stx62874_ _args62875_)
        (let* ((_self6287662884_ _self62873_)
               (_E6287862888_
                (lambda () (error '"No clause matching" _self6287662884_)))
               (_K6287962972_
                (lambda (_dispatch62891_ _table62892_)
                  (let* ((_g6289362902_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch62891_)))
                         (_else6289562910_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch62891_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx62874_))))
                         (_K6289762956_
                          (lambda (_main62913_ _keys62914_)
                            (let ((_g66033_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx62874_
                                      _args62875_))))
                              (begin
                                (let ((_g66034_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g66033_)
                                             (##vector-length _g66033_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g66034_ 2)))
                                      (error "Context expects 2 values"
                                             _g66034_)))
                                (let ((_pargs62916_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66033_ 0)))
                                      (_kwargs62917_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g66033_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main62913_))
                                    (if _table62892_
                                        (let ((_xargs62924_
                                               (map (lambda (_key62919_)
                                                      (let ((_$e62921_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key62919_ _kwargs62917_))))
                (if _$e62921_ (values _$e62921_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys62914_)))
                                          (for-each
                                           (lambda (_kw62926_)
                                             (if (memq (car _kw62926_)
                                                       _keys62914_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx62874_
                                                    _keys62914_
                                                    _kw62926_))))
                                           _kwargs62917_)
                                          (let ((__tmp66084
                                                 (let ((__tmp66085
                                                        (let ((__tmp66086
                                                               (let ((__tmp66091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp66092
                                     (let ()
                                       (declare (not safe))
                                       (cons _main62913_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp66092)))
                             (__tmp66087
                              (let ((__tmp66089
                                     (let ((__tmp66090
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp66090)))
                                    (__tmp66088
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs62916_
                                               _xargs62924_))))
                                (declare (not safe))
                                (cons __tmp66089 __tmp66088))))
                         (declare (not safe))
                         (cons __tmp66091 __tmp66087))))
                  (declare (not safe))
                  (cons '%#call __tmp66086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp66085
                                                    _stx62874_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp66084)))
                                        (let* ((_kwt62928_
                                                (make-symbol (gensym '__kwt)))
                                               (_kwvars62931_
                                                (map (lambda (_g66035_)
                                                       (make-symbol
                                                        (gensym '__kw)))
                                                     _kwargs62917_))
                                               (_kwbind62936_
                                                (map (lambda (_kw62933_
                                                              _kwvar62934_)
                                                       (let ((__tmp66038
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar62934_ '())))
                     (__tmp66036
                      (let ((__tmp66037 (cdr _kw62933_)))
                        (declare (not safe))
                        (cons __tmp66037 '()))))
                 (declare (not safe))
                 (cons __tmp66038 __tmp66036)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs62917_
                                                     _kwvars62931_))
                                               (_kwset62941_
                                                (map (lambda (_kw62938_
                                                              _kwvar62939_)
                                                       (let ((__tmp66039
                                                              (let ((__tmp66040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp66048
                                    (let ((__tmp66049
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt62928_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp66049)))
                                   (__tmp66041
                                    (let ((__tmp66045
                                           (let ((__tmp66046
                                                  (let ((__tmp66047
                                                         (car _kw62938_)))
                                                    (declare (not safe))
                                                    (cons __tmp66047 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp66046)))
                                          (__tmp66042
                                           (let ((__tmp66043
                                                  (let ((__tmp66044
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar62939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp66044))))
                                             (declare (not safe))
                                             (cons __tmp66043 '()))))
                                      (declare (not safe))
                                      (cons __tmp66045 __tmp66042))))
                               (declare (not safe))
                               (cons __tmp66048 __tmp66041))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp66040))))
                 (declare (not safe))
                 (cons '%#call __tmp66039)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs62917_
                                                     _kwvars62931_))
                                               (_xkwargs62946_
                                                (map (lambda (_kw62943_
                                                              _kwvar62944_)
                                                       (let ((__tmp66052
                                                              (car _kw62943_))
                                                             (__tmp66050
                                                              (let ((__tmp66051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar62944_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp66051))))
                 (declare (not safe))
                 (cons __tmp66052 __tmp66050)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs62917_
                                                     _kwvars62931_))
                                               (_xargs62953_
                                                (map (lambda (_key62948_)
                                                       (let ((_$e62950_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key62948_ _xkwargs62946_))))
                 (if _$e62950_ (values _$e62950_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys62914_)))
                                          (let ((__tmp66053
                                                 (let ((__tmp66054
                                                        (let ((__tmp66055
                                                               (let ((__tmp66056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp66057
                                     (let ((__tmp66058
                                            (let ((__tmp66072
                                                   (let ((__tmp66073
                                                          (let ((__tmp66083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt62928_ '())))
                        (__tmp66074
                         (let ((__tmp66075
                                (let ((__tmp66076
                                       (let ((__tmp66077
                                              (let ((__tmp66078
                                                     (let ((__tmp66079
                                                            (let ((__tmp66080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp66081
                                  (let ((__tmp66082 (length _kwargs62917_)))
                                    (declare (not safe))
                                    (cons __tmp66082 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp66081))))
                      (declare (not safe))
                      (cons __tmp66080 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp66079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp66078))))
                                         (declare (not safe))
                                         (cons '%#call __tmp66077))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp66076
                                   _stx62874_))))
                           (declare (not safe))
                           (cons __tmp66075 '()))))
                    (declare (not safe))
                    (cons __tmp66083 __tmp66074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66073 '())))
                                                  (__tmp66059
                                                   (let ((__tmp66060
                                                          (let ((__tmp66061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp66062
                                (let ((__tmp66063
                                       (let ((__tmp66064
                                              (let ((__tmp66065
                                                     (let ((__tmp66070
                                                            (let ((__tmp66071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main62913_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp66071)))
                   (__tmp66066
                    (let ((__tmp66068
                           (let ((__tmp66069
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt62928_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp66069)))
                          (__tmp66067
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs62916_ _xargs62953_))))
                      (declare (not safe))
                      (cons __tmp66068 __tmp66067))))
               (declare (not safe))
               (cons __tmp66070 __tmp66066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp66065))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp66064
                                          _stx62874_))))
                                  (declare (not safe))
                                  (cons __tmp66063 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp66062 _kwset62941_))))
                    (declare (not safe))
                    (cons '%#begin __tmp66061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp66060 '()))))
                                              (declare (not safe))
                                              (cons __tmp66072 __tmp66059))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp66058))))
                                (declare (not safe))
                                (cons __tmp66057 '()))))
                         (declare (not safe))
                         (cons _kwbind62936_ __tmp66056))))
                  (declare (not safe))
                  (cons '%#let-values __tmp66055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp66054
                                                    _stx62874_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp66053)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g6289362902_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e6289862959_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6289362902_ '1)))
                               (_e6289962962_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6289362902_ '2)))
                               (_keys62965_ _e6289962962_)
                               (_e6290062967_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g6289362902_ '3)))
                               (_main62970_ _e6290062967_))
                          (declare (not safe))
                          (_K6289762956_ _main62970_ _keys62965_))
                        (let () (declare (not safe)) (_else6289562910_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self6287662884_ 'gxc#!kw-lambda::t))
              (let* ((_e6288062975_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6287662884_ '1)))
                     (_e6288162978_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6287662884_ '2)))
                     (_table62981_ _e6288162978_)
                     (_e6288262983_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _self6287662884_ '3)))
                     (_dispatch62986_ _e6288262983_))
                (declare (not safe))
                (_K6287962972_ _dispatch62986_ _table62981_))
              (let () (declare (not safe)) (_E6287862888_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx62486_ _args62487_)
        (let _lp62489_ ((_rest62491_ _args62487_)
                        (_pargs62492_ '())
                        (_kwargs62493_ '()))
          (let* ((___stx6579365794_ _rest62491_)
                 (_g6249962551_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx6579365794_)))))
            (let ((___kont6579565796_
                   (lambda (_L62730_ _L62731_)
                     (let ((__tmp66093
                            (let ()
                              (declare (not safe))
                              (cons _L62731_ _pargs62492_))))
                       (declare (not safe))
                       (_lp62489_ _L62730_ __tmp66093 _kwargs62493_))))
                  (___kont6579765798_
                   (lambda (_L62676_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L62676_ _pargs62492_))
                             (reverse _kwargs62493_))))
                  (___kont6579965800_
                   (lambda (_L62623_ _L62624_ _L62625_)
                     (let ((_kw62642_
                            (let () (declare (not safe)) (gx#stx-e _L62625_))))
                       (if (assq _kw62642_ _kwargs62493_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx62486_
                              _kw62642_))
                           (let ((__tmp66094
                                  (let ((__tmp66095
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw62642_ _L62624_))))
                                    (declare (not safe))
                                    (cons __tmp66095 _kwargs62493_))))
                             (declare (not safe))
                             (_lp62489_ _L62623_ _pargs62492_ __tmp66094))))))
                  (___kont6580165802_
                   (lambda (_L62571_ _L62572_)
                     (let ((__tmp66096
                            (let ()
                              (declare (not safe))
                              (cons _L62572_ _pargs62492_))))
                       (declare (not safe))
                       (_lp62489_ _L62571_ __tmp66096 _kwargs62493_))))
                  (___kont6580365804_
                   (lambda ()
                     (values (reverse _pargs62492_) (reverse _kwargs62493_)))))
              (let* ((_g6249862558_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx6579365794_))
                            (___kont6580365804_)
                            (let () (declare (not safe)) (_g6249962551_)))))
                     (___match6590065901_
                      (lambda (_e6253262591_
                               _hd6253162594_
                               _tl6253062596_
                               _e6253562599_
                               _hd6253462602_
                               _tl6253362604_
                               _e6253862607_
                               _hd6253762610_
                               _tl6253662612_
                               _e6254162615_
                               _hd6254062618_
                               _tl6253962620_)
                        (let ((_L62623_ _tl6253962620_)
                              (_L62624_ _hd6254062618_)
                              (_L62625_ _hd6253762610_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L62625_))
                              (___kont6579965800_ _L62623_ _L62624_ _L62625_)
                              (___kont6580165802_
                               _tl6253062596_
                               _hd6253162594_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx6579365794_))
                    (let ((_e6250562695_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx6579365794_))))
                      (let ((_tl6250362700_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6250562695_)))
                            (_hd6250462698_
                             (let ()
                               (declare (not safe))
                               (##car _e6250562695_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd6250462698_))
                            (let ((_e6250862703_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd6250462698_))))
                              (let ((_tl6250662708_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6250862703_)))
                                    (_hd6250762706_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6250862703_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd6250762706_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd6250762706_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl6250662708_))
                                            (let ((_e6251162711_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl6250662708_))))
                                              (let ((_tl6250962716_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6251162711_)))
                                                    (_hd6251062714_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6251162711_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd6251062714_))
                                                    (let ((_e6251262719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd6251062714_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e6251262719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl6250962716_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl6250362700_))
                          (let ((_e6251562722_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl6250362700_))))
                            (let ((_tl6251362727_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e6251562722_)))
                                  (_hd6251462725_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e6251562722_))))
                              (___kont6579565796_
                               _tl6251362727_
                               _hd6251462725_)))
                          (___kont6580165802_ _tl6250362700_ _hd6250462698_))
                      (___kont6580165802_ _tl6250362700_ _hd6250462698_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e6251262719_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6250962716_))
                          (___kont6579765798_ _tl6250362700_)
                          (___kont6580165802_ _tl6250362700_ _hd6250462698_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl6250962716_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl6250362700_))
                              (let ((_e6254162615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl6250362700_))))
                                (let ((_tl6253962620_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6254162615_)))
                                      (_hd6254062618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6254162615_))))
                                  (___match6590065901_
                                   _e6250562695_
                                   _hd6250462698_
                                   _tl6250362700_
                                   _e6250862703_
                                   _hd6250762706_
                                   _tl6250662708_
                                   _e6251162711_
                                   _hd6251062714_
                                   _tl6250962716_
                                   _e6254162615_
                                   _hd6254062618_
                                   _tl6253962620_)))
                              (___kont6580165802_
                               _tl6250362700_
                               _hd6250462698_))
                          (___kont6580165802_
                           _tl6250362700_
                           _hd6250462698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl6250962716_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl6250362700_))
                                                            (let ((_e6254162615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl6250362700_))))
                      (let ((_tl6253962620_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6254162615_)))
                            (_hd6254062618_
                             (let ()
                               (declare (not safe))
                               (##car _e6254162615_))))
                        (___match6590065901_
                         _e6250562695_
                         _hd6250462698_
                         _tl6250362700_
                         _e6250862703_
                         _hd6250762706_
                         _tl6250662708_
                         _e6251162711_
                         _hd6251062714_
                         _tl6250962716_
                         _e6254162615_
                         _hd6254062618_
                         _tl6253962620_)))
                    (___kont6580165802_ _tl6250362700_ _hd6250462698_))
                (___kont6580165802_ _tl6250362700_ _hd6250462698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont6580165802_
                                             _tl6250362700_
                                             _hd6250462698_))
                                        (___kont6580165802_
                                         _tl6250362700_
                                         _hd6250462698_))
                                    (___kont6580165802_
                                     _tl6250362700_
                                     _hd6250462698_))))
                            (___kont6580165802_
                             _tl6250362700_
                             _hd6250462698_))))
                    (let () (declare (not safe)) (_g6249862558_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self62482_ _stx62483_ _args62484_)
        (let () (declare (not safe)) (gxc#xform-call% _stx62483_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
