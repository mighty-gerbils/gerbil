(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1709038446)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj155896
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj155896)
               __obj155896)))))
    (define gxc#optimize!
      (lambda (_ctx155589_)
        (let ((__tmp155900
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx155589_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp155902
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp155901
                        (##structure-ref
                         _ctx155589_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp155902 __tmp155901 '#t))
                 (let ((_code155592_
                        (let ((__tmp155903
                               (##structure-ref
                                _ctx155589_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp155903))))
                   (##structure-set!
                    _ctx155589_
                    _code155592_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp155899 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp155898 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp155900
           gxc#current-compile-mutators
           __tmp155899
           gxc#current-compile-local-type
           __tmp155898))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!155585_
                  (lambda (_id155587_)
                    (if (let ((__tmp155905
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp155905 _id155587_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id155587_))
                          (let ((__tmp155904
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp155904 _id155587_ '#t)))))))
          (for-each
           _load-it!155585_
           '(gerbil/runtime/gambit
             gerbil/runtime/util
             gerbil/runtime/table
             gerbil/runtime/control
             gerbil/runtime/system
             gerbil/runtime/c3
             gerbil/runtime/mop
             gerbil/runtime/error
             gerbil/runtime/interface
             gerbil/runtime/hash
             gerbil/runtime/thread
             gerbil/runtime/syntax
             gerbil/runtime/eval
             gerbil/runtime/repl
             gerbil/runtime/loader
             gerbil/runtime/init
             gerbil/runtime
             gerbil/builtin)))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx155529_)
        (letrec* ((_deps155531_
                   (let* ((_imports155575_
                           (##structure-ref
                            _ctx155529_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e155577_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx155529_))))
                     (if _$e155577_
                         ((lambda (_g155579155581_)
                            (let ()
                              (declare (not safe))
                              (cons _g155579155581_ _imports155575_)))
                          _$e155577_)
                         _imports155575_))))
          (let _lp155533_ ((_rest155535_ _deps155531_))
            (let* ((_rest155536155544_ _rest155535_)
                   (_else155538155552_ (lambda () '#!void))
                   (_K155540155563_
                    (lambda (_rest155555_ _hd155556_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd155556_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp155919
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp155918
                                       (##structure-ref
                                        _hd155556_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp155919 __tmp155918))
                                '#!void
                                (begin
                                  (let ((_$e155558_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd155556_))))
                                    (if _$e155558_
                                        ((lambda (_pre155561_)
                                           (let ((__tmp155916
                                                  (let ((__tmp155917
                                                         (##structure-ref
                                                          _hd155556_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre155561_
                                                          __tmp155917))))
                                             (declare (not safe))
                                             (_lp155533_ __tmp155916)))
                                         _$e155558_)
                                        (let ((__tmp155915
                                               (##structure-ref
                                                _hd155556_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp155533_ __tmp155915))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd155556_))))
                            (let ()
                              (declare (not safe))
                              (_lp155533_ _rest155555_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd155556_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp155914
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp155913
                                           (##structure-ref
                                            _hd155556_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp155914 __tmp155913))
                                    '#!void
                                    (begin
                                      (let ((__tmp155912
                                             (##structure-ref
                                              _hd155556_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp155533_ __tmp155912))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd155556_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp155533_ _rest155555_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd155556_
                                     'gx#module-import::t))
                                  (let ((__tmp155910
                                         (let ((__tmp155911
                                                (##direct-structure-ref
                                                 _hd155556_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155911 _rest155555_))))
                                    (declare (not safe))
                                    (_lp155533_ __tmp155910))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd155556_
                                         'gx#module-export::t))
                                      (let ((__tmp155908
                                             (let ((__tmp155909
                                                    (##direct-structure-ref
                                                     _hd155556_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155909
                                                     _rest155555_))))
                                        (declare (not safe))
                                        (_lp155533_ __tmp155908))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd155556_
                                             'gx#import-set::t))
                                          (let ((__tmp155906
                                                 (let ((__tmp155907
                                                        (##direct-structure-ref
                                                         _hd155556_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155907
                                                         _rest155555_))))
                                            (declare (not safe))
                                            (_lp155533_ __tmp155906))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd155556_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest155536155544_))
                  (let ((_hd155541155566_
                         (let ()
                           (declare (not safe))
                           (##car _rest155536155544_)))
                        (_tl155542155568_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest155536155544_))))
                    (let* ((_hd155571_ _hd155541155566_)
                           (_rest155573_ _tl155542155568_))
                      (declare (not safe))
                      (_K155540155563_ _rest155573_ _hd155571_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx155509_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx155509_
                    'gx#module-context::t))
                 (let ((__tmp155920
                        (##structure-ref
                         _ctx155509_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp155920)))
            '#!void
            (let* ((_ht155511_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id155513_
                    (##structure-ref
                     _ctx155509_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod155515_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht155511_ _id155513_))))
              (let ((_$e155518_ _mod155515_))
                (if _$e155518_
                    _$e155518_
                    (let* ((_mod155521_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx155509_)))
                           (_val155526_
                            (let ((_$e155523_ _mod155521_))
                              (if _$e155523_ _$e155523_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht155511_ _id155513_ _val155526_))
                      _val155526_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx155507_)
        (if (##structure-ref _ctx155507_ '1 gx#expander-context::t '#f)
            (let ((__tmp155921
                   (##structure-ref
                    _ctx155507_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp155921))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id155484_)
        (letrec ((_catch-e155486_
                  (lambda (_exn155505_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id155484_))
                          (display-exception _exn155505_))
                        '#!void)
                    '#f))
                 (_import-e155487_
                  (lambda ()
                    (let* ((_str-id155490_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id155484_))
                             '".ssxi"))
                           (_artefact-path155498_
                            (let ((_odir155491155493_
                                   (gxc#current-compile-output-dir)))
                              (if _odir155491155493_
                                  (let ((_odir155496_ _odir155491155493_))
                                    (path-expand
                                     (string-append _str-id155490_ '".ss")
                                     _odir155496_))
                                  '#f)))
                           (_library-path155500_
                            (string->symbol
                             (string-append '":" _str-id155490_ '".ss")))
                           (_ssxi-path155502_
                            (if (and _artefact-path155498_
                                     (file-exists? _artefact-path155498_))
                                _artefact-path155498_
                                _library-path155500_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path155502_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path155502_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e155486_ _import-e155487_)))))
    (define gxc#optimize-source
      (lambda (_stx155475_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx155475_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx155475_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx155475_))
        (let* ((_stx155477_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx155475_)))
               (_stx155479_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx155477_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx155479_))
          (let ((_stx155482_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx155479_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx155482_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl155472_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp155922 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl155472_ __tmp155922))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155472_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155472_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155472_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl155472_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl155472_ '%#call gxc#generate-ssxi-call%))
           _tbl155472_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx155455_ . _args155457_)
        (let ((__tmp155924
               (lambda ()
                 (declare (not safe))
                 (if (null? _args155457_)
                     (gxc#compile-e__0 _stx155455_)
                     (let ((_arg1155462_ (car _args155457_))
                           (_rest155464_ (cdr _args155457_)))
                       (if (null? _rest155464_)
                           (gxc#compile-e__1 _stx155455_ _arg1155462_)
                           (let ((_arg2155467_ (car _rest155464_))
                                 (_rest155469_ (cdr _rest155464_)))
                             (if (null? _rest155469_)
                                 (gxc#compile-e__2
                                  _stx155455_
                                  _arg1155462_
                                  _arg2155467_)
                                 (apply gxc#compile-e
                                        _stx155455_
                                        _arg1155462_
                                        _arg2155467_
                                        _rest155469_))))))))
              (__tmp155923 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp155924
           gxc#current-compile-methods
           __tmp155923))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx155416_)
        (let* ((_g155418155428_
                (lambda (_g155419155425_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155419155425_))))
               (_g155417155452_
                (lambda (_g155419155431_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155419155431_))
                      (let ((_e155423155433_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155419155431_))))
                        (let ((_hd155422155436_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155423155433_)))
                              (_tl155421155438_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155423155433_))))
                          ((lambda (_L155441_)
                             (let ((__tmp155927
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx155416_))))
                                   (__tmp155925
                                    (let ((__tmp155926
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp155926 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp155927
                                gx#current-expander-phi
                                __tmp155925)))
                           _tl155421155438_)))
                      (let ()
                        (declare (not safe))
                        (_g155418155428_ _g155419155431_))))))
          (declare (not safe))
          (_g155417155452_ _stx155416_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx155356_)
        (let* ((_g155358155372_
                (lambda (_g155359155369_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g155359155369_))))
               (_g155357155413_
                (lambda (_g155359155375_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g155359155375_))
                      (let ((_e155364155377_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g155359155375_))))
                        (let ((_hd155363155380_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155364155377_)))
                              (_tl155362155382_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155364155377_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl155362155382_))
                              (let ((_e155367155385_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl155362155382_))))
                                (let ((_hd155366155388_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155367155385_)))
                                      (_tl155365155390_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155367155385_))))
                                  ((lambda (_L155393_ _L155394_)
                                     (let* ((_ctx155407_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L155394_)))
                                            (_code155409_
                                             (##structure-ref
                                              _ctx155407_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp155928
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code155409_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp155928
                                          gx#current-expander-context
                                          _ctx155407_))))
                                   _tl155365155390_
                                   _hd155366155388_)))
                              (let ()
                                (declare (not safe))
                                (_g155358155372_ _g155359155375_)))))
                      (let ()
                        (declare (not safe))
                        (_g155358155372_ _g155359155375_))))))
          (declare (not safe))
          (_g155357155413_ _stx155356_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx155166_)
        (letrec ((_generate-e155168_
                  (lambda (_id155345_)
                    (let* ((_sym155347_
                            (if (let ((__tmp155929
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp155929))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id155345_))
                                '#f))
                           (_$e155349_
                            (if _sym155347_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym155347_))
                                '#f)))
                      (if _$e155349_
                          ((lambda (_type155352_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym155347_))
                             (let* ((_typedecl155354_
                                     (let ((__method155897
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type155352_
                                               'typedecl))))
                                       (if __method155897
                                           (__method155897 _type155352_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type155352_
                                                    'typedecl)))))
                                    (__tmp155930
                                     (let ((__tmp155931
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl155354_ '()))))
                                       (declare (not safe))
                                       (cons _sym155347_ __tmp155931))))
                               (declare (not safe))
                               (cons 'declare-type __tmp155930)))
                           _$e155349_)
                          '(begin))))))
          (let* ((___stx155595155596_ _stx155166_)
                 (_g155171155209_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx155595155596_)))))
            (let ((___kont155597155598_
                   (lambda (_L155327_)
                     (let ()
                       (declare (not safe))
                       (_generate-e155168_ _L155327_))))
                  (___kont155599155600_
                   (lambda (_L155262_)
                     (let ((_types155288_
                            (map _generate-e155168_
                                 (let ((__tmp155932
                                        (lambda (_g155280155283_
                                                 _g155281155285_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g155280155283_
                                                  _g155281155285_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp155932 '() _L155262_)))))
                       (declare (not safe))
                       (cons 'begin _types155288_)))))
              (let ((___match155650155651_
                     (lambda (_e155189155214_
                              _hd155188155217_
                              _tl155187155219_
                              _e155192155222_
                              _hd155191155225_
                              _tl155190155227_
                              ___splice155601155602_
                              _target155193155230_
                              _tl155195155232_)
                       (letrec ((_loop155196155235_
                                 (lambda (_hd155194155238_ _id155200155240_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd155194155238_))
                                       (let ((_e155197155243_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd155194155238_))))
                                         (let ((_lp-tl155199155248_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e155197155243_)))
                                               (_lp-hd155198155246_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e155197155243_))))
                                           (let ((__tmp155933
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd155198155246_
                                                          _id155200155240_))))
                                             (declare (not safe))
                                             (_loop155196155235_
                                              _lp-tl155199155248_
                                              __tmp155933))))
                                       (let ((_id155201155251_
                                              (reverse _id155200155240_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl155190155227_))
                                             (let ((_e155204155254_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl155190155227_))))
                                               (let ((_tl155202155259_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e155204155254_)))
                                                     (_hd155203155257_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e155204155254_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl155202155259_))
                                                     (___kont155599155600_
                                                      _id155201155251_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g155171155209_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g155171155209_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop155196155235_ _target155193155230_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx155595155596_))
                    (let ((_e155176155295_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx155595155596_))))
                      (let ((_tl155174155300_
                             (let ()
                               (declare (not safe))
                               (##cdr _e155176155295_)))
                            (_hd155175155298_
                             (let ()
                               (declare (not safe))
                               (##car _e155176155295_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl155174155300_))
                            (let ((_e155179155303_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl155174155300_))))
                              (let ((_tl155177155308_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e155179155303_)))
                                    (_hd155178155306_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e155179155303_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd155178155306_))
                                    (let ((_e155182155311_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd155178155306_))))
                                      (let ((_tl155180155316_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e155182155311_)))
                                            (_hd155181155314_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e155182155311_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl155180155316_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl155177155308_))
                                                (let ((_e155185155319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl155177155308_))))
                                                  (let ((_tl155183155324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e155185155319_)))
                                                        (_hd155184155322_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e155185155319_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155183155324_))
                                                        (___kont155597155598_
                                                         _hd155181155314_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd155178155306_))
                                                            (let ((___splice155601155602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd155178155306_ '0))))
                      (let ((_tl155195155232_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155601155602_ '1)))
                            (_target155193155230_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice155601155602_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl155195155232_))
                            (___match155650155651_
                             _e155176155295_
                             _hd155175155298_
                             _tl155174155300_
                             _e155179155303_
                             _hd155178155306_
                             _tl155177155308_
                             ___splice155601155602_
                             _target155193155230_
                             _tl155195155232_)
                            (let () (declare (not safe)) (_g155171155209_)))))
                    (let () (declare (not safe)) (_g155171155209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd155178155306_))
                                                    (let ((___splice155601155602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd155178155306_
                                                              '0))))
                                                      (let ((_tl155195155232_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice155601155602_ '1)))
                    (_target155193155230_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice155601155602_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl155195155232_))
                    (___match155650155651_
                     _e155176155295_
                     _hd155175155298_
                     _tl155174155300_
                     _e155179155303_
                     _hd155178155306_
                     _tl155177155308_
                     ___splice155601155602_
                     _target155193155230_
                     _tl155195155232_)
                    (let () (declare (not safe)) (_g155171155209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g155171155209_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd155178155306_))
                                                (let ((___splice155601155602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd155178155306_
                                                          '0))))
                                                  (let ((_tl155195155232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155601155602_
                                                            '1)))
                                                        (_target155193155230_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice155601155602_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl155195155232_))
                                                        (___match155650155651_
                                                         _e155176155295_
                                                         _hd155175155298_
                                                         _tl155174155300_
                                                         _e155179155303_
                                                         _hd155178155306_
                                                         _tl155177155308_
                                                         ___splice155601155602_
                                                         _target155193155230_
                                                         _tl155195155232_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g155171155209_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155171155209_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd155178155306_))
                                        (let ((___splice155601155602_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd155178155306_
                                                  '0))))
                                          (let ((_tl155195155232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155601155602_
                                                    '1)))
                                                (_target155193155230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice155601155602_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl155195155232_))
                                                (___match155650155651_
                                                 _e155176155295_
                                                 _hd155175155298_
                                                 _tl155174155300_
                                                 _e155179155303_
                                                 _hd155178155306_
                                                 _tl155177155308_
                                                 ___splice155601155602_
                                                 _target155193155230_
                                                 _tl155195155232_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g155171155209_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g155171155209_))))))
                            (let () (declare (not safe)) (_g155171155209_)))))
                    (let () (declare (not safe)) (_g155171155209_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx154720_)
        (let* ((___stx155653155654_ _stx154720_)
               (_g154724154826_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx155653155654_)))))
          (let ((___kont155655155656_
                 (lambda (_L155116_ _L155117_ _L155118_ _L155119_ _L155120_)
                   (let ((__tmp155934
                          (let ((__tmp155941
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L155119_)))
                                (__tmp155935
                                 (let ((__tmp155940
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L155118_)))
                                       (__tmp155936
                                        (let ((__tmp155939
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L155117_)))
                                              (__tmp155937
                                               (let ((__tmp155938
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L155116_))))
                                                 (declare (not safe))
                                                 (cons __tmp155938 '()))))
                                          (declare (not safe))
                                          (cons __tmp155939 __tmp155937))))
                                   (declare (not safe))
                                   (cons __tmp155940 __tmp155936))))
                            (declare (not safe))
                            (cons __tmp155941 __tmp155935))))
                     (declare (not safe))
                     (cons 'declare-method __tmp155934))))
                (___kont155657155658_
                 (lambda (_L154942_ _L154943_ _L154944_ _L154945_)
                   (let ((__tmp155942
                          (let ((__tmp155948
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L154944_)))
                                (__tmp155943
                                 (let ((__tmp155947
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L154943_)))
                                       (__tmp155944
                                        (let ((__tmp155946
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L154942_)))
                                              (__tmp155945
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp155946 __tmp155945))))
                                   (declare (not safe))
                                   (cons __tmp155947 __tmp155944))))
                            (declare (not safe))
                            (cons __tmp155948 __tmp155943))))
                     (declare (not safe))
                     (cons 'declare-method __tmp155942))))
                (___kont155659155660_ (lambda () '(begin))))
            (let ((___match155788155789_
                   (lambda (_e154733154988_
                            _hd154732154991_
                            _tl154731154993_
                            _e154736154996_
                            _hd154735154999_
                            _tl154734155001_
                            _e154739155004_
                            _hd154738155007_
                            _tl154737155009_
                            _e154742155012_
                            _hd154741155015_
                            _tl154740155017_
                            _e154745155020_
                            _hd154744155023_
                            _tl154743155025_
                            _e154748155028_
                            _hd154747155031_
                            _tl154746155033_
                            _e154751155036_
                            _hd154750155039_
                            _tl154749155041_
                            _e154754155044_
                            _hd154753155047_
                            _tl154752155049_
                            _e154757155052_
                            _hd154756155055_
                            _tl154755155057_
                            _e154760155060_
                            _hd154759155063_
                            _tl154758155065_
                            _e154763155068_
                            _hd154762155071_
                            _tl154761155073_
                            _e154766155076_
                            _hd154765155079_
                            _tl154764155081_
                            _e154769155084_
                            _hd154768155087_
                            _tl154767155089_
                            _e154772155092_
                            _hd154771155095_
                            _tl154770155097_
                            _e154775155100_
                            _hd154774155103_
                            _tl154773155105_
                            _e154778155108_
                            _hd154777155111_
                            _tl154776155113_)
                     (let ((_L155116_ _hd154777155111_)
                           (_L155117_ _hd154768155087_)
                           (_L155118_ _hd154759155063_)
                           (_L155119_ _hd154750155039_)
                           (_L155120_ _hd154741155015_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L155120_
                              'bind-method!))
                           (___kont155655155656_
                            _L155116_
                            _L155117_
                            _L155118_
                            _L155119_
                            _L155120_)
                           (___kont155659155660_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx155653155654_))
                  (let ((_e154733154988_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx155653155654_))))
                    (let ((_tl154731154993_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154733154988_)))
                          (_hd154732154991_
                           (let ()
                             (declare (not safe))
                             (##car _e154733154988_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl154731154993_))
                          (let ((_e154736154996_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl154731154993_))))
                            (let ((_tl154734155001_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154736154996_)))
                                  (_hd154735154999_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154736154996_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd154735154999_))
                                  (let ((_e154739155004_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd154735154999_))))
                                    (let ((_tl154737155009_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154739155004_)))
                                          (_hd154738155007_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154739155004_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd154738155007_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd154738155007_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154737155009_))
                                                  (let ((_e154742155012_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154737155009_))))
                                                    (let ((_tl154740155017_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154742155012_)))
                                                          (_hd154741155015_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154742155012_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl154740155017_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl154734155001_))
                      (let ((_e154745155020_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl154734155001_))))
                        (let ((_tl154743155025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154745155020_)))
                              (_hd154744155023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154745155020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd154744155023_))
                              (let ((_e154748155028_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd154744155023_))))
                                (let ((_tl154746155033_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e154748155028_)))
                                      (_hd154747155031_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e154748155028_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd154747155031_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd154747155031_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl154746155033_))
                                              (let ((_e154751155036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl154746155033_))))
                                                (let ((_tl154749155041_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e154751155036_)))
                                                      (_hd154750155039_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e154751155036_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154749155041_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl154743155025_))
                                                          (let ((_e154754155044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl154743155025_))))
                    (let ((_tl154752155049_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154754155044_)))
                          (_hd154753155047_
                           (let ()
                             (declare (not safe))
                             (##car _e154754155044_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd154753155047_))
                          (let ((_e154757155052_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd154753155047_))))
                            (let ((_tl154755155057_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154757155052_)))
                                  (_hd154756155055_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154757155052_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd154756155055_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd154756155055_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl154755155057_))
                                          (let ((_e154760155060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl154755155057_))))
                                            (let ((_tl154758155065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e154760155060_)))
                                                  (_hd154759155063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e154760155060_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl154758155065_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl154752155049_))
                                                      (let ((_e154763155068_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl154752155049_))))
                (let ((_tl154761155073_
                       (let () (declare (not safe)) (##cdr _e154763155068_)))
                      (_hd154762155071_
                       (let () (declare (not safe)) (##car _e154763155068_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd154762155071_))
                      (let ((_e154766155076_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd154762155071_))))
                        (let ((_tl154764155081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154766155076_)))
                              (_hd154765155079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154766155076_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd154765155079_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd154765155079_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl154764155081_))
                                      (let ((_e154769155084_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl154764155081_))))
                                        (let ((_tl154767155089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e154769155084_)))
                                              (_hd154768155087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e154769155084_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154767155089_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl154761155073_))
                                                  (let ((_e154772155092_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl154761155073_))))
                                                    (let ((_tl154770155097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e154772155092_)))
                                                          (_hd154771155095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e154772155092_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd154771155095_))
                                                          (let ((_e154775155100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd154771155095_))))
                    (let ((_tl154773155105_
                           (let ()
                             (declare (not safe))
                             (##cdr _e154775155100_)))
                          (_hd154774155103_
                           (let ()
                             (declare (not safe))
                             (##car _e154775155100_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd154774155103_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd154774155103_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl154773155105_))
                                  (let ((_e154778155108_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl154773155105_))))
                                    (let ((_tl154776155113_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e154778155108_)))
                                          (_hd154777155111_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e154778155108_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl154776155113_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl154770155097_))
                                              (___match155788155789_
                                               _e154733154988_
                                               _hd154732154991_
                                               _tl154731154993_
                                               _e154736154996_
                                               _hd154735154999_
                                               _tl154734155001_
                                               _e154739155004_
                                               _hd154738155007_
                                               _tl154737155009_
                                               _e154742155012_
                                               _hd154741155015_
                                               _tl154740155017_
                                               _e154745155020_
                                               _hd154744155023_
                                               _tl154743155025_
                                               _e154748155028_
                                               _hd154747155031_
                                               _tl154746155033_
                                               _e154751155036_
                                               _hd154750155039_
                                               _tl154749155041_
                                               _e154754155044_
                                               _hd154753155047_
                                               _tl154752155049_
                                               _e154757155052_
                                               _hd154756155055_
                                               _tl154755155057_
                                               _e154760155060_
                                               _hd154759155063_
                                               _tl154758155065_
                                               _e154763155068_
                                               _hd154762155071_
                                               _tl154761155073_
                                               _e154766155076_
                                               _hd154765155079_
                                               _tl154764155081_
                                               _e154769155084_
                                               _hd154768155087_
                                               _tl154767155089_
                                               _e154772155092_
                                               _hd154771155095_
                                               _tl154770155097_
                                               _e154775155100_
                                               _hd154774155103_
                                               _tl154773155105_
                                               _e154778155108_
                                               _hd154777155111_
                                               _tl154776155113_)
                                              (___kont155659155660_))
                                          (___kont155659155660_))))
                                  (___kont155659155660_))
                              (___kont155659155660_))
                          (___kont155659155660_))))
                  (___kont155659155660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl154761155073_))
                                                      (if (let ((__tmp155949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp155949 'bind-method!))
                  (let ((_L154942_ _hd154768155087_)
                        (_L154943_ _hd154759155063_)
                        (_L154944_ _hd154750155039_)
                        (_L154945_ _hd154741155015_))
                    (___kont155657155658_
                     _L154942_
                     _L154943_
                     _L154944_
                     _L154945_))
                  (___kont155659155660_))
              (___kont155659155660_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155659155660_))))
                                      (___kont155659155660_))
                                  (___kont155659155660_))
                              (___kont155659155660_))))
                      (___kont155659155660_))))
              (___kont155659155660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155659155660_))))
                                          (___kont155659155660_))
                                      (___kont155659155660_))
                                  (___kont155659155660_))))
                          (___kont155659155660_))))
                  (___kont155659155660_))
              (___kont155659155660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont155659155660_))
                                          (___kont155659155660_))
                                      (___kont155659155660_))))
                              (___kont155659155660_))))
                      (___kont155659155660_))
                  (___kont155659155660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont155659155660_))
                                              (___kont155659155660_))
                                          (___kont155659155660_))))
                                  (___kont155659155660_))))
                          (___kont155659155660_))))
                  (___kont155659155660_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self154696_)
        (let* ((_self154697154703_ _self154696_)
               (_E154699154707_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154697154703_))))
               (_K154700154712_
                (lambda (_alias-id154710_)
                  (let ((__tmp155950
                         (let ()
                           (declare (not safe))
                           (cons _alias-id154710_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp155950)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154697154703_ 'gxc#!alias::t))
              (let* ((_e154701154715_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154697154703_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id154718_ _e154701154715_))
                (declare (not safe))
                (_K154700154712_ _alias-id154718_))
              (let () (declare (not safe)) (_E154699154707_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self154487_)
        (let* ((_self154488154503_ _self154487_)
               (_E154490154507_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154488154503_))))
               (_K154491154521_
                (lambda (_methods154510_
                         _metaclass154511_
                         _final?154512_
                         _struct?154513_
                         _constructor154514_
                         _fields154515_
                         _slots154516_
                         _precendence-list154517_
                         _super154518_
                         _id154519_)
                  (let ((__tmp155951
                         (let ((__tmp155952
                                (let ((__tmp155953
                                       (let ((__tmp155954
                                              (let ((__tmp155955
                                                     (let ((__tmp155956
                                                            (let ((__tmp155957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155958
                                  (let ((__tmp155959
                                         (let ((__tmp155960
                                                (let ((__tmp155961
                                                       (if _methods154510_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods154510_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155961 '()))))
                                           (declare (not safe))
                                           (cons _metaclass154511_
                                                 __tmp155960))))
                                    (declare (not safe))
                                    (cons _final?154512_ __tmp155959))))
                             (declare (not safe))
                             (cons _struct?154513_ __tmp155958))))
                      (declare (not safe))
                      (cons _constructor154514_ __tmp155957))))
               (declare (not safe))
               (cons _fields154515_ __tmp155956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots154516_
                                                      __tmp155955))))
                                         (declare (not safe))
                                         (cons _precendence-list154517_
                                               __tmp155954))))
                                  (declare (not safe))
                                  (cons _super154518_ __tmp155953))))
                           (declare (not safe))
                           (cons _id154519_ __tmp155952))))
                    (declare (not safe))
                    (cons '@class __tmp155951)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154488154503_ 'gxc#!class::t))
              (let* ((_e154492154524_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id154527_ _e154492154524_)
                     (_e154493154529_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super154532_ _e154493154529_)
                     (_e154494154534_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list154537_ _e154494154534_)
                     (_e154495154539_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots154542_ _e154495154539_)
                     (_e154496154544_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields154547_ _e154496154544_)
                     (_e154497154549_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor154552_ _e154497154549_)
                     (_e154498154554_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?154557_ _e154498154554_)
                     (_e154499154559_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?154562_ _e154499154559_)
                     (_e154500154564_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass154567_ _e154500154564_)
                     (_e154501154569_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154488154503_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods154572_ _e154501154569_))
                (declare (not safe))
                (_K154491154521_
                 _methods154572_
                 _metaclass154567_
                 _final?154562_
                 _struct?154557_
                 _constructor154552_
                 _fields154547_
                 _slots154542_
                 _precendence-list154537_
                 _super154532_
                 _id154527_))
              (let () (declare (not safe)) (_E154490154507_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self154341_)
        (let* ((_self154342154348_ _self154341_)
               (_E154344154352_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154342154348_))))
               (_K154345154357_
                (lambda (_klass-id154355_)
                  (let ((__tmp155962
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154355_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp155962)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154342154348_
                 'gxc#!predicate::t))
              (let* ((_e154346154360_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154342154348_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154363_ _e154346154360_))
                (declare (not safe))
                (_K154345154357_ _klass-id154363_))
              (let () (declare (not safe)) (_E154344154352_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self154195_)
        (let* ((_self154196154202_ _self154195_)
               (_E154198154206_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154196154202_))))
               (_K154199154211_
                (lambda (_klass-id154209_)
                  (let ((__tmp155963
                         (let ()
                           (declare (not safe))
                           (cons _klass-id154209_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp155963)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154196154202_
                 'gxc#!constructor::t))
              (let* ((_e154200154214_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154196154202_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154217_ _e154200154214_))
                (declare (not safe))
                (_K154199154211_ _klass-id154217_))
              (let () (declare (not safe)) (_E154198154206_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self154035_)
        (let* ((_self154036154044_ _self154035_)
               (_E154038154048_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154036154044_))))
               (_K154039154055_
                (lambda (_checked?154051_ _slot154052_ _klass-id154053_)
                  (let ((__tmp155964
                         (let ((__tmp155965
                                (let ((__tmp155966
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154051_ '()))))
                                  (declare (not safe))
                                  (cons _slot154052_ __tmp155966))))
                           (declare (not safe))
                           (cons _klass-id154053_ __tmp155965))))
                    (declare (not safe))
                    (cons '@accessor __tmp155964)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154036154044_
                 'gxc#!accessor::t))
              (let* ((_e154040154058_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154036154044_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154061_ _e154040154058_)
                     (_e154041154063_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154036154044_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot154066_ _e154041154063_)
                     (_e154042154068_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154036154044_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?154071_ _e154042154068_))
                (declare (not safe))
                (_K154039154055_
                 _checked?154071_
                 _slot154066_
                 _klass-id154061_))
              (let () (declare (not safe)) (_E154038154048_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self153875_)
        (let* ((_self153876153884_ _self153875_)
               (_E153878153888_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153876153884_))))
               (_K153879153895_
                (lambda (_checked?153891_ _slot153892_ _klass-id153893_)
                  (let ((__tmp155967
                         (let ((__tmp155968
                                (let ((__tmp155969
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?153891_ '()))))
                                  (declare (not safe))
                                  (cons _slot153892_ __tmp155969))))
                           (declare (not safe))
                           (cons _klass-id153893_ __tmp155968))))
                    (declare (not safe))
                    (cons '@mutator __tmp155967)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153876153884_ 'gxc#!mutator::t))
              (let* ((_e153880153898_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153876153884_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id153901_ _e153880153898_)
                     (_e153881153903_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153876153884_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot153906_ _e153881153903_)
                     (_e153882153908_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153876153884_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?153911_ _e153882153908_))
                (declare (not safe))
                (_K153879153895_
                 _checked?153911_
                 _slot153906_
                 _klass-id153901_))
              (let () (declare (not safe)) (_E153878153888_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self153701_)
        (let* ((_self153702153712_ _self153701_)
               (_E153704153716_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153702153712_))))
               (_K153705153727_
                (lambda (_typedecl153719_
                         _inline153720_
                         _dispatch153721_
                         _arity153722_)
                  (if _inline153720_
                      (let ((_$e153724_ _typedecl153719_))
                        (if _$e153724_
                            _$e153724_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp155970
                             (let ((__tmp155971
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch153721_ '()))))
                               (declare (not safe))
                               (cons _arity153722_ __tmp155971))))
                        (declare (not safe))
                        (cons '@lambda __tmp155970))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153702153712_ 'gxc#!lambda::t))
              (let* ((_e153706153730_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153702153712_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153707153733_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153702153712_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153736_ _e153707153733_)
                     (_e153708153738_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153702153712_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153741_ _e153708153738_)
                     (_e153709153743_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153702153712_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153746_ _e153709153743_)
                     (_e153710153748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153702153712_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl153751_ _e153710153748_))
                (declare (not safe))
                (_K153705153727_
                 _typedecl153751_
                 _inline153746_
                 _dispatch153741_
                 _arity153736_))
              (let () (declare (not safe)) (_E153704153716_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self153512_)
        (letrec ((_clause-e153514_
                  (lambda (_clause153544_)
                    (let* ((_clause153545153553_ _clause153544_)
                           (_E153547153557_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause153545153553_))))
                           (_K153548153563_
                            (lambda (_dispatch153560_ _arity153561_)
                              (let ((__tmp155972
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch153560_ '()))))
                                (declare (not safe))
                                (cons _arity153561_ __tmp155972)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause153545153553_
                             'gxc#!lambda::t))
                          (let* ((_e153549153566_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153545153553_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e153550153569_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153545153553_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity153572_ _e153550153569_)
                                 (_e153551153574_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause153545153553_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch153577_ _e153551153574_))
                            (declare (not safe))
                            (_K153548153563_ _dispatch153577_ _arity153572_))
                          (let () (declare (not safe)) (_E153547153557_)))))))
          (let* ((_self153515153522_ _self153512_)
                 (_E153517153526_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self153515153522_))))
                 (_K153518153533_
                  (lambda (_clauses153529_)
                    (let ((_clauses153531_
                           (map _clause-e153514_ _clauses153529_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses153531_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self153515153522_
                   'gxc#!case-lambda::t))
                (let* ((_e153519153536_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153515153522_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e153520153539_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self153515153522_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses153542_ _e153520153539_))
                  (declare (not safe))
                  (_K153518153533_ _clauses153542_))
                (let () (declare (not safe)) (_E153517153526_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self153355_)
        (let* ((_self153356153364_ _self153355_)
               (_E153358153368_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153356153364_))))
               (_K153359153374_
                (lambda (_dispatch153371_ _table153372_)
                  (let ((__tmp155973
                         (let ((__tmp155974
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch153371_ '()))))
                           (declare (not safe))
                           (cons _table153372_ __tmp155974))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp155973)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153356153364_
                 'gxc#!kw-lambda::t))
              (let* ((_e153360153377_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153356153364_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153361153380_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153356153364_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153383_ _e153361153380_)
                     (_e153362153385_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153356153364_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153388_ _e153362153385_))
                (declare (not safe))
                (_K153359153374_ _dispatch153388_ _table153383_))
              (let () (declare (not safe)) (_E153358153368_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self153198_)
        (let* ((_self153199153207_ _self153198_)
               (_E153201153211_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153199153207_))))
               (_K153202153217_
                (lambda (_main153214_ _keys153215_)
                  (let ((__tmp155975
                         (let ((__tmp155976
                                (let ()
                                  (declare (not safe))
                                  (cons _main153214_ '()))))
                           (declare (not safe))
                           (cons _keys153215_ __tmp155976))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp155975)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153199153207_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e153203153220_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153199153207_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153204153223_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153199153207_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys153226_ _e153204153223_)
                     (_e153205153228_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153199153207_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main153231_ _e153205153228_))
                (declare (not safe))
                (_K153202153217_ _main153231_ _keys153226_))
              (let () (declare (not safe)) (_E153201153211_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
