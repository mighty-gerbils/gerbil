(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707842378)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj291658
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj291658)
               __obj291658)))))
    (define gxc#optimize!
      (lambda (_ctx286783_)
        (let ((__tmp291662
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx286783_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp291664
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp291663
                        (##structure-ref
                         _ctx286783_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp291664 __tmp291663 '#t))
                 (let ((_code286786_
                        (let ((__tmp291665
                               (##structure-ref
                                _ctx286783_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp291665))))
                   (##structure-set!
                    _ctx286783_
                    _code286786_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp291661
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp291660
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp291662
           gxc#current-compile-mutators
           __tmp291661
           gxc#current-compile-local-type
           __tmp291660))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp291666
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp291666 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx286727_)
        (letrec* ((_deps286729_
                   (let* ((_imports286773_
                           (##structure-ref
                            _ctx286727_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e286775_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx286727_))))
                     (if _$e286775_
                         ((lambda (_g286777286779_)
                            (let ()
                              (declare (not safe))
                              (cons _g286777286779_ _imports286773_)))
                          _$e286775_)
                         _imports286773_))))
          (let _lp286731_ ((_rest286733_ _deps286729_))
            (let* ((_rest286734286742_ _rest286733_)
                   (_else286736286750_ (lambda () '#!void))
                   (_K286738286761_
                    (lambda (_rest286753_ _hd286754_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd286754_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp291680
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp291679
                                       (##structure-ref
                                        _hd286754_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp291680 __tmp291679 '#f))
                                '#!void
                                (begin
                                  (let ((_$e286756_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd286754_))))
                                    (if _$e286756_
                                        ((lambda (_pre286759_)
                                           (let ((__tmp291677
                                                  (let ((__tmp291678
                                                         (##structure-ref
                                                          _hd286754_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre286759_
                                                          __tmp291678))))
                                             (declare (not safe))
                                             (_lp286731_ __tmp291677)))
                                         _$e286756_)
                                        (let ((__tmp291676
                                               (##structure-ref
                                                _hd286754_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp286731_ __tmp291676))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd286754_))))
                            (let ()
                              (declare (not safe))
                              (_lp286731_ _rest286753_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd286754_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp291675
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp291674
                                           (##structure-ref
                                            _hd286754_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp291675 __tmp291674 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp291673
                                             (##structure-ref
                                              _hd286754_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp286731_ __tmp291673))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd286754_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp286731_ _rest286753_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd286754_
                                     'gx#module-import::t))
                                  (let ((__tmp291671
                                         (let ((__tmp291672
                                                (##direct-structure-ref
                                                 _hd286754_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp291672 _rest286753_))))
                                    (declare (not safe))
                                    (_lp286731_ __tmp291671))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd286754_
                                         'gx#module-export::t))
                                      (let ((__tmp291669
                                             (let ((__tmp291670
                                                    (##direct-structure-ref
                                                     _hd286754_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp291670
                                                     _rest286753_))))
                                        (declare (not safe))
                                        (_lp286731_ __tmp291669))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd286754_
                                             'gx#import-set::t))
                                          (let ((__tmp291667
                                                 (let ((__tmp291668
                                                        (##direct-structure-ref
                                                         _hd286754_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp291668
                                                         _rest286753_))))
                                            (declare (not safe))
                                            (_lp286731_ __tmp291667))
                                          (error '"Unexpected module import"
                                                 _hd286754_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest286734286742_))
                  (let ((_hd286739286764_
                         (let ()
                           (declare (not safe))
                           (##car _rest286734286742_)))
                        (_tl286740286766_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest286734286742_))))
                    (let* ((_hd286769_ _hd286739286764_)
                           (_rest286771_ _tl286740286766_))
                      (declare (not safe))
                      (_K286738286761_ _rest286771_ _hd286769_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx286707_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx286707_
                    'gx#module-context::t))
                 (let ((__tmp291681
                        (##structure-ref
                         _ctx286707_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp291681)))
            '#!void
            (let* ((_ht286709_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id286711_
                    (##structure-ref
                     _ctx286707_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod286713_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht286709_ _id286711_ '#f))))
              (let ((_$e286716_ _mod286713_))
                (if _$e286716_
                    _$e286716_
                    (let* ((_mod286719_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx286707_)))
                           (_val286724_
                            (let ((_$e286721_ _mod286719_))
                              (if _$e286721_ _$e286721_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht286709_ _id286711_ _val286724_))
                      _val286724_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx286705_)
        (if (##structure-ref _ctx286705_ '1 gx#expander-context::t '#f)
            (let ((__tmp291682
                   (##structure-ref
                    _ctx286705_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp291682))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id286682_)
        (letrec ((_catch-e286684_
                  (lambda (_exn286703_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id286682_))
                          (display-exception _exn286703_))
                        '#!void)
                    '#f))
                 (_import-e286685_
                  (lambda ()
                    (let* ((_str-id286688_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id286682_))
                             '".ssxi"))
                           (_artefact-path286696_
                            (let ((_odir286689286691_
                                   (gxc#current-compile-output-dir)))
                              (if _odir286689286691_
                                  (let ((_odir286694_ _odir286689286691_))
                                    (path-expand
                                     (string-append _str-id286688_ '".ss")
                                     _odir286694_))
                                  '#f)))
                           (_library-path286698_
                            (string->symbol
                             (string-append '":" _str-id286688_ '".ss")))
                           (_ssxi-path286700_
                            (if (and _artefact-path286696_
                                     (file-exists? _artefact-path286696_))
                                _artefact-path286696_
                                _library-path286698_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path286700_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path286700_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e286684_ _import-e286685_)))))
    (define gxc#optimize-source
      (lambda (_stx286673_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx286673_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx286673_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx286673_))
        (let* ((_stx286675_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx286673_)))
               (_stx286677_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx286675_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx286677_))
          (let ((_stx286680_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx286677_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx286680_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl286670_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp291683 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl286670_ __tmp291683))
           (let ()
             (declare (not safe))
             (table-set! _tbl286670_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286670_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286670_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286670_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286670_ '%#call gxc#generate-ssxi-call%))
           _tbl286670_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx286653_ . _args286655_)
        (let ((__tmp291685
               (lambda ()
                 (declare (not safe))
                 (if (null? _args286655_)
                     (gxc#compile-e__0 _stx286653_)
                     (let ((_arg1286660_ (car _args286655_))
                           (_rest286662_ (cdr _args286655_)))
                       (if (null? _rest286662_)
                           (gxc#compile-e__1 _stx286653_ _arg1286660_)
                           (let ((_arg2286665_ (car _rest286662_))
                                 (_rest286667_ (cdr _rest286662_)))
                             (if (null? _rest286667_)
                                 (gxc#compile-e__2
                                  _stx286653_
                                  _arg1286660_
                                  _arg2286665_)
                                 (apply gxc#compile-e
                                        _stx286653_
                                        _arg1286660_
                                        _arg2286665_
                                        _rest286667_))))))))
              (__tmp291684 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp291685
           gxc#current-compile-methods
           __tmp291684))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx286614_)
        (let* ((_g286616286626_
                (lambda (_g286617286623_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g286617286623_))))
               (_g286615286650_
                (lambda (_g286617286629_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g286617286629_))
                      (let ((_e286621286631_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g286617286629_))))
                        (let ((_hd286620286634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286621286631_)))
                              (_tl286619286636_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286621286631_))))
                          ((lambda (_L286639_)
                             (let ((__tmp291688
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx286614_))))
                                   (__tmp291686
                                    (let ((__tmp291687
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp291687 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp291688
                                gx#current-expander-phi
                                __tmp291686)))
                           _tl286619286636_)))
                      (let ()
                        (declare (not safe))
                        (_g286616286626_ _g286617286629_))))))
          (declare (not safe))
          (_g286615286650_ _stx286614_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx286554_)
        (let* ((_g286556286570_
                (lambda (_g286557286567_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g286557286567_))))
               (_g286555286611_
                (lambda (_g286557286573_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g286557286573_))
                      (let ((_e286562286575_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g286557286573_))))
                        (let ((_hd286561286578_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286562286575_)))
                              (_tl286560286580_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286562286575_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl286560286580_))
                              (let ((_e286565286583_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl286560286580_))))
                                (let ((_hd286564286586_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e286565286583_)))
                                      (_tl286563286588_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e286565286583_))))
                                  ((lambda (_L286591_ _L286592_)
                                     (let* ((_ctx286605_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L286592_)))
                                            (_code286607_
                                             (##structure-ref
                                              _ctx286605_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp291689
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code286607_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp291689
                                          gx#current-expander-context
                                          _ctx286605_))))
                                   _tl286563286588_
                                   _hd286564286586_)))
                              (let ()
                                (declare (not safe))
                                (_g286556286570_ _g286557286573_)))))
                      (let ()
                        (declare (not safe))
                        (_g286556286570_ _g286557286573_))))))
          (declare (not safe))
          (_g286555286611_ _stx286554_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx286364_)
        (letrec ((_generate-e286366_
                  (lambda (_id286543_)
                    (let* ((_sym286545_
                            (if (let ((__tmp291690
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp291690))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id286543_))
                                '#f))
                           (_$e286547_
                            (if _sym286545_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym286545_))
                                '#f)))
                      (if _$e286547_
                          ((lambda (_type286550_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym286545_))
                             (let* ((_typedecl286552_
                                     (let ((__method291659
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type286550_
                                               'typedecl))))
                                       (if __method291659
                                           (__method291659 _type286550_)
                                           (error '"Missing method"
                                                  _type286550_
                                                  'typedecl))))
                                    (__tmp291691
                                     (let ((__tmp291692
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl286552_ '()))))
                                       (declare (not safe))
                                       (cons _sym286545_ __tmp291692))))
                               (declare (not safe))
                               (cons 'declare-type __tmp291691)))
                           _$e286547_)
                          '(begin))))))
          (let* ((___stx291357291358_ _stx286364_)
                 (_g286369286407_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx291357291358_)))))
            (let ((___kont291359291360_
                   (lambda (_L286525_)
                     (let ()
                       (declare (not safe))
                       (_generate-e286366_ _L286525_))))
                  (___kont291361291362_
                   (lambda (_L286460_)
                     (let ((_types286486_
                            (map _generate-e286366_
                                 (let ((__tmp291693
                                        (lambda (_g286478286481_
                                                 _g286479286483_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g286478286481_
                                                  _g286479286483_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp291693 '() _L286460_)))))
                       (declare (not safe))
                       (cons 'begin _types286486_)))))
              (let ((___match291412291413_
                     (lambda (_e286387286412_
                              _hd286386286415_
                              _tl286385286417_
                              _e286390286420_
                              _hd286389286423_
                              _tl286388286425_
                              ___splice291363291364_
                              _target286391286428_
                              _tl286393286430_)
                       (letrec ((_loop286394286433_
                                 (lambda (_hd286392286436_ _id286398286438_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd286392286436_))
                                       (let ((_e286395286441_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd286392286436_))))
                                         (let ((_lp-tl286397286446_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e286395286441_)))
                                               (_lp-hd286396286444_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e286395286441_))))
                                           (let ((__tmp291694
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd286396286444_
                                                          _id286398286438_))))
                                             (declare (not safe))
                                             (_loop286394286433_
                                              _lp-tl286397286446_
                                              __tmp291694))))
                                       (let ((_id286399286449_
                                              (reverse _id286398286438_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl286388286425_))
                                             (let ((_e286402286452_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl286388286425_))))
                                               (let ((_tl286400286457_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e286402286452_)))
                                                     (_hd286401286455_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e286402286452_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl286400286457_))
                                                     (___kont291361291362_
                                                      _id286399286449_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g286369286407_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g286369286407_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop286394286433_ _target286391286428_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx291357291358_))
                    (let ((_e286374286493_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx291357291358_))))
                      (let ((_tl286372286498_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286374286493_)))
                            (_hd286373286496_
                             (let ()
                               (declare (not safe))
                               (##car _e286374286493_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286372286498_))
                            (let ((_e286377286501_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl286372286498_))))
                              (let ((_tl286375286506_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286377286501_)))
                                    (_hd286376286504_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286377286501_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286376286504_))
                                    (let ((_e286380286509_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd286376286504_))))
                                      (let ((_tl286378286514_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286380286509_)))
                                            (_hd286379286512_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286380286509_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286378286514_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl286375286506_))
                                                (let ((_e286383286517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl286375286506_))))
                                                  (let ((_tl286381286522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e286383286517_)))
                                                        (_hd286382286520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e286383286517_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286381286522_))
                                                        (___kont291359291360_
                                                         _hd286379286512_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd286376286504_))
                                                            (let ((___splice291363291364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd286376286504_ '0))))
                      (let ((_tl286393286430_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice291363291364_ '1)))
                            (_target286391286428_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice291363291364_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl286393286430_))
                            (___match291412291413_
                             _e286374286493_
                             _hd286373286496_
                             _tl286372286498_
                             _e286377286501_
                             _hd286376286504_
                             _tl286375286506_
                             ___splice291363291364_
                             _target286391286428_
                             _tl286393286430_)
                            (let () (declare (not safe)) (_g286369286407_)))))
                    (let () (declare (not safe)) (_g286369286407_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd286376286504_))
                                                    (let ((___splice291363291364_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd286376286504_
                                                              '0))))
                                                      (let ((_tl286393286430_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice291363291364_ '1)))
                    (_target286391286428_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice291363291364_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl286393286430_))
                    (___match291412291413_
                     _e286374286493_
                     _hd286373286496_
                     _tl286372286498_
                     _e286377286501_
                     _hd286376286504_
                     _tl286375286506_
                     ___splice291363291364_
                     _target286391286428_
                     _tl286393286430_)
                    (let () (declare (not safe)) (_g286369286407_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g286369286407_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd286376286504_))
                                                (let ((___splice291363291364_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd286376286504_
                                                          '0))))
                                                  (let ((_tl286393286430_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291363291364_
                                                            '1)))
                                                        (_target286391286428_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291363291364_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286393286430_))
                                                        (___match291412291413_
                                                         _e286374286493_
                                                         _hd286373286496_
                                                         _tl286372286498_
                                                         _e286377286501_
                                                         _hd286376286504_
                                                         _tl286375286506_
                                                         ___splice291363291364_
                                                         _target286391286428_
                                                         _tl286393286430_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g286369286407_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286369286407_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd286376286504_))
                                        (let ((___splice291363291364_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd286376286504_
                                                  '0))))
                                          (let ((_tl286393286430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice291363291364_
                                                    '1)))
                                                (_target286391286428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice291363291364_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl286393286430_))
                                                (___match291412291413_
                                                 _e286374286493_
                                                 _hd286373286496_
                                                 _tl286372286498_
                                                 _e286377286501_
                                                 _hd286376286504_
                                                 _tl286375286506_
                                                 ___splice291363291364_
                                                 _target286391286428_
                                                 _tl286393286430_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286369286407_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g286369286407_))))))
                            (let () (declare (not safe)) (_g286369286407_)))))
                    (let () (declare (not safe)) (_g286369286407_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx285918_)
        (let* ((___stx291415291416_ _stx285918_)
               (_g285922286024_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx291415291416_)))))
          (let ((___kont291417291418_
                 (lambda (_L286314_ _L286315_ _L286316_ _L286317_ _L286318_)
                   (let ((__tmp291695
                          (let ((__tmp291702
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L286317_)))
                                (__tmp291696
                                 (let ((__tmp291701
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L286316_)))
                                       (__tmp291697
                                        (let ((__tmp291700
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L286315_)))
                                              (__tmp291698
                                               (let ((__tmp291699
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L286314_))))
                                                 (declare (not safe))
                                                 (cons __tmp291699 '()))))
                                          (declare (not safe))
                                          (cons __tmp291700 __tmp291698))))
                                   (declare (not safe))
                                   (cons __tmp291701 __tmp291697))))
                            (declare (not safe))
                            (cons __tmp291702 __tmp291696))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291695))))
                (___kont291419291420_
                 (lambda (_L286140_ _L286141_ _L286142_ _L286143_)
                   (let ((__tmp291703
                          (let ((__tmp291709
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L286142_)))
                                (__tmp291704
                                 (let ((__tmp291708
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L286141_)))
                                       (__tmp291705
                                        (let ((__tmp291707
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L286140_)))
                                              (__tmp291706
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp291707 __tmp291706))))
                                   (declare (not safe))
                                   (cons __tmp291708 __tmp291705))))
                            (declare (not safe))
                            (cons __tmp291709 __tmp291704))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291703))))
                (___kont291421291422_ (lambda () '(begin))))
            (let ((___match291550291551_
                   (lambda (_e285931286186_
                            _hd285930286189_
                            _tl285929286191_
                            _e285934286194_
                            _hd285933286197_
                            _tl285932286199_
                            _e285937286202_
                            _hd285936286205_
                            _tl285935286207_
                            _e285940286210_
                            _hd285939286213_
                            _tl285938286215_
                            _e285943286218_
                            _hd285942286221_
                            _tl285941286223_
                            _e285946286226_
                            _hd285945286229_
                            _tl285944286231_
                            _e285949286234_
                            _hd285948286237_
                            _tl285947286239_
                            _e285952286242_
                            _hd285951286245_
                            _tl285950286247_
                            _e285955286250_
                            _hd285954286253_
                            _tl285953286255_
                            _e285958286258_
                            _hd285957286261_
                            _tl285956286263_
                            _e285961286266_
                            _hd285960286269_
                            _tl285959286271_
                            _e285964286274_
                            _hd285963286277_
                            _tl285962286279_
                            _e285967286282_
                            _hd285966286285_
                            _tl285965286287_
                            _e285970286290_
                            _hd285969286293_
                            _tl285968286295_
                            _e285973286298_
                            _hd285972286301_
                            _tl285971286303_
                            _e285976286306_
                            _hd285975286309_
                            _tl285974286311_)
                     (let ((_L286314_ _hd285975286309_)
                           (_L286315_ _hd285966286285_)
                           (_L286316_ _hd285957286261_)
                           (_L286317_ _hd285948286237_)
                           (_L286318_ _hd285939286213_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L286318_
                              'bind-method!))
                           (___kont291417291418_
                            _L286314_
                            _L286315_
                            _L286316_
                            _L286317_
                            _L286318_)
                           (___kont291421291422_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx291415291416_))
                  (let ((_e285931286186_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx291415291416_))))
                    (let ((_tl285929286191_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285931286186_)))
                          (_hd285930286189_
                           (let ()
                             (declare (not safe))
                             (##car _e285931286186_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl285929286191_))
                          (let ((_e285934286194_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl285929286191_))))
                            (let ((_tl285932286199_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e285934286194_)))
                                  (_hd285933286197_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e285934286194_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd285933286197_))
                                  (let ((_e285937286202_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd285933286197_))))
                                    (let ((_tl285935286207_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e285937286202_)))
                                          (_hd285936286205_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e285937286202_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd285936286205_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd285936286205_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl285935286207_))
                                                  (let ((_e285940286210_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl285935286207_))))
                                                    (let ((_tl285938286215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e285940286210_)))
                                                          (_hd285939286213_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e285940286210_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl285938286215_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl285932286199_))
                      (let ((_e285943286218_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl285932286199_))))
                        (let ((_tl285941286223_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285943286218_)))
                              (_hd285942286221_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285943286218_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd285942286221_))
                              (let ((_e285946286226_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd285942286221_))))
                                (let ((_tl285944286231_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285946286226_)))
                                      (_hd285945286229_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285946286226_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd285945286229_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd285945286229_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl285944286231_))
                                              (let ((_e285949286234_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl285944286231_))))
                                                (let ((_tl285947286239_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e285949286234_)))
                                                      (_hd285948286237_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e285949286234_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl285947286239_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl285941286223_))
                                                          (let ((_e285952286242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl285941286223_))))
                    (let ((_tl285950286247_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285952286242_)))
                          (_hd285951286245_
                           (let ()
                             (declare (not safe))
                             (##car _e285952286242_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd285951286245_))
                          (let ((_e285955286250_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd285951286245_))))
                            (let ((_tl285953286255_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e285955286250_)))
                                  (_hd285954286253_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e285955286250_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd285954286253_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd285954286253_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl285953286255_))
                                          (let ((_e285958286258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl285953286255_))))
                                            (let ((_tl285956286263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e285958286258_)))
                                                  (_hd285957286261_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e285958286258_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl285956286263_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl285950286247_))
                                                      (let ((_e285961286266_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl285950286247_))))
                (let ((_tl285959286271_
                       (let () (declare (not safe)) (##cdr _e285961286266_)))
                      (_hd285960286269_
                       (let () (declare (not safe)) (##car _e285961286266_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd285960286269_))
                      (let ((_e285964286274_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd285960286269_))))
                        (let ((_tl285962286279_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285964286274_)))
                              (_hd285963286277_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285964286274_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd285963286277_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd285963286277_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl285962286279_))
                                      (let ((_e285967286282_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl285962286279_))))
                                        (let ((_tl285965286287_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e285967286282_)))
                                              (_hd285966286285_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e285967286282_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285965286287_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl285959286271_))
                                                  (let ((_e285970286290_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl285959286271_))))
                                                    (let ((_tl285968286295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e285970286290_)))
                                                          (_hd285969286293_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e285970286290_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd285969286293_))
                                                          (let ((_e285973286298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd285969286293_))))
                    (let ((_tl285971286303_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285973286298_)))
                          (_hd285972286301_
                           (let ()
                             (declare (not safe))
                             (##car _e285973286298_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd285972286301_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd285972286301_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl285971286303_))
                                  (let ((_e285976286306_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl285971286303_))))
                                    (let ((_tl285974286311_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e285976286306_)))
                                          (_hd285975286309_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e285976286306_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl285974286311_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285968286295_))
                                              (___match291550291551_
                                               _e285931286186_
                                               _hd285930286189_
                                               _tl285929286191_
                                               _e285934286194_
                                               _hd285933286197_
                                               _tl285932286199_
                                               _e285937286202_
                                               _hd285936286205_
                                               _tl285935286207_
                                               _e285940286210_
                                               _hd285939286213_
                                               _tl285938286215_
                                               _e285943286218_
                                               _hd285942286221_
                                               _tl285941286223_
                                               _e285946286226_
                                               _hd285945286229_
                                               _tl285944286231_
                                               _e285949286234_
                                               _hd285948286237_
                                               _tl285947286239_
                                               _e285952286242_
                                               _hd285951286245_
                                               _tl285950286247_
                                               _e285955286250_
                                               _hd285954286253_
                                               _tl285953286255_
                                               _e285958286258_
                                               _hd285957286261_
                                               _tl285956286263_
                                               _e285961286266_
                                               _hd285960286269_
                                               _tl285959286271_
                                               _e285964286274_
                                               _hd285963286277_
                                               _tl285962286279_
                                               _e285967286282_
                                               _hd285966286285_
                                               _tl285965286287_
                                               _e285970286290_
                                               _hd285969286293_
                                               _tl285968286295_
                                               _e285973286298_
                                               _hd285972286301_
                                               _tl285971286303_
                                               _e285976286306_
                                               _hd285975286309_
                                               _tl285974286311_)
                                              (___kont291421291422_))
                                          (___kont291421291422_))))
                                  (___kont291421291422_))
                              (___kont291421291422_))
                          (___kont291421291422_))))
                  (___kont291421291422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl285959286271_))
                                                      (if (let ((__tmp291710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp291710 'bind-method!))
                  (let ((_L286140_ _hd285966286285_)
                        (_L286141_ _hd285957286261_)
                        (_L286142_ _hd285948286237_)
                        (_L286143_ _hd285939286213_))
                    (___kont291419291420_
                     _L286140_
                     _L286141_
                     _L286142_
                     _L286143_))
                  (___kont291421291422_))
              (___kont291421291422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont291421291422_))))
                                      (___kont291421291422_))
                                  (___kont291421291422_))
                              (___kont291421291422_))))
                      (___kont291421291422_))))
              (___kont291421291422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont291421291422_))))
                                          (___kont291421291422_))
                                      (___kont291421291422_))
                                  (___kont291421291422_))))
                          (___kont291421291422_))))
                  (___kont291421291422_))
              (___kont291421291422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont291421291422_))
                                          (___kont291421291422_))
                                      (___kont291421291422_))))
                              (___kont291421291422_))))
                      (___kont291421291422_))
                  (___kont291421291422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont291421291422_))
                                              (___kont291421291422_))
                                          (___kont291421291422_))))
                                  (___kont291421291422_))))
                          (___kont291421291422_))))
                  (___kont291421291422_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self285894_)
        (let* ((_self285895285901_ _self285894_)
               (_E285897285905_
                (lambda () (error '"No clause matching" _self285895285901_)))
               (_K285898285910_
                (lambda (_alias-id285908_)
                  (let ((__tmp291711
                         (let ()
                           (declare (not safe))
                           (cons _alias-id285908_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp291711)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285895285901_ 'gxc#!alias::t))
              (let* ((_e285899285913_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285895285901_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id285916_ _e285899285913_))
                (declare (not safe))
                (_K285898285910_ _alias-id285916_))
              (let () (declare (not safe)) (_E285897285905_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self285685_)
        (let* ((_self285686285701_ _self285685_)
               (_E285688285705_
                (lambda () (error '"No clause matching" _self285686285701_)))
               (_K285689285719_
                (lambda (_methods285708_
                         _metaclass285709_
                         _final?285710_
                         _struct?285711_
                         _constructor285712_
                         _fields285713_
                         _slots285714_
                         _precendence-list285715_
                         _super285716_
                         _id285717_)
                  (let ((__tmp291712
                         (let ((__tmp291713
                                (let ((__tmp291714
                                       (let ((__tmp291715
                                              (let ((__tmp291716
                                                     (let ((__tmp291717
                                                            (let ((__tmp291718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp291719
                                  (let ((__tmp291720
                                         (let ((__tmp291721
                                                (let ((__tmp291722
                                                       (if _methods285708_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (table->list
                                                              _methods285708_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp291722 '()))))
                                           (declare (not safe))
                                           (cons _metaclass285709_
                                                 __tmp291721))))
                                    (declare (not safe))
                                    (cons _final?285710_ __tmp291720))))
                             (declare (not safe))
                             (cons _struct?285711_ __tmp291719))))
                      (declare (not safe))
                      (cons _constructor285712_ __tmp291718))))
               (declare (not safe))
               (cons _fields285713_ __tmp291717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots285714_
                                                      __tmp291716))))
                                         (declare (not safe))
                                         (cons _precendence-list285715_
                                               __tmp291715))))
                                  (declare (not safe))
                                  (cons _super285716_ __tmp291714))))
                           (declare (not safe))
                           (cons _id285717_ __tmp291713))))
                    (declare (not safe))
                    (cons '@class __tmp291712)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285686285701_ 'gxc#!class::t))
              (let* ((_e285690285722_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id285725_ _e285690285722_)
                     (_e285691285727_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super285730_ _e285691285727_)
                     (_e285692285732_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list285735_ _e285692285732_)
                     (_e285693285737_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots285740_ _e285693285737_)
                     (_e285694285742_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields285745_ _e285694285742_)
                     (_e285695285747_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor285750_ _e285695285747_)
                     (_e285696285752_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?285755_ _e285696285752_)
                     (_e285697285757_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?285760_ _e285697285757_)
                     (_e285698285762_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass285765_ _e285698285762_)
                     (_e285699285767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285686285701_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods285770_ _e285699285767_))
                (declare (not safe))
                (_K285689285719_
                 _methods285770_
                 _metaclass285765_
                 _final?285760_
                 _struct?285755_
                 _constructor285750_
                 _fields285745_
                 _slots285740_
                 _precendence-list285735_
                 _super285730_
                 _id285725_))
              (let () (declare (not safe)) (_E285688285705_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self285539_)
        (let* ((_self285540285546_ _self285539_)
               (_E285542285550_
                (lambda () (error '"No clause matching" _self285540285546_)))
               (_K285543285555_
                (lambda (_klass-id285553_)
                  (let ((__tmp291723
                         (let ()
                           (declare (not safe))
                           (cons _klass-id285553_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp291723)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285540285546_
                 'gxc#!predicate::t))
              (let* ((_e285544285558_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285540285546_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285561_ _e285544285558_))
                (declare (not safe))
                (_K285543285555_ _klass-id285561_))
              (let () (declare (not safe)) (_E285542285550_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self285393_)
        (let* ((_self285394285400_ _self285393_)
               (_E285396285404_
                (lambda () (error '"No clause matching" _self285394285400_)))
               (_K285397285409_
                (lambda (_klass-id285407_)
                  (let ((__tmp291724
                         (let ()
                           (declare (not safe))
                           (cons _klass-id285407_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp291724)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285394285400_
                 'gxc#!constructor::t))
              (let* ((_e285398285412_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285394285400_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285415_ _e285398285412_))
                (declare (not safe))
                (_K285397285409_ _klass-id285415_))
              (let () (declare (not safe)) (_E285396285404_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self285233_)
        (let* ((_self285234285242_ _self285233_)
               (_E285236285246_
                (lambda () (error '"No clause matching" _self285234285242_)))
               (_K285237285253_
                (lambda (_checked?285249_ _slot285250_ _klass-id285251_)
                  (let ((__tmp291725
                         (let ((__tmp291726
                                (let ((__tmp291727
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?285249_ '()))))
                                  (declare (not safe))
                                  (cons _slot285250_ __tmp291727))))
                           (declare (not safe))
                           (cons _klass-id285251_ __tmp291726))))
                    (declare (not safe))
                    (cons '@accessor __tmp291725)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285234285242_
                 'gxc#!accessor::t))
              (let* ((_e285238285256_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285234285242_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285259_ _e285238285256_)
                     (_e285239285261_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285234285242_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot285264_ _e285239285261_)
                     (_e285240285266_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285234285242_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?285269_ _e285240285266_))
                (declare (not safe))
                (_K285237285253_
                 _checked?285269_
                 _slot285264_
                 _klass-id285259_))
              (let () (declare (not safe)) (_E285236285246_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self285073_)
        (let* ((_self285074285082_ _self285073_)
               (_E285076285086_
                (lambda () (error '"No clause matching" _self285074285082_)))
               (_K285077285093_
                (lambda (_checked?285089_ _slot285090_ _klass-id285091_)
                  (let ((__tmp291728
                         (let ((__tmp291729
                                (let ((__tmp291730
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?285089_ '()))))
                                  (declare (not safe))
                                  (cons _slot285090_ __tmp291730))))
                           (declare (not safe))
                           (cons _klass-id285091_ __tmp291729))))
                    (declare (not safe))
                    (cons '@mutator __tmp291728)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285074285082_ 'gxc#!mutator::t))
              (let* ((_e285078285096_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285074285082_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285099_ _e285078285096_)
                     (_e285079285101_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285074285082_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot285104_ _e285079285101_)
                     (_e285080285106_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285074285082_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?285109_ _e285080285106_))
                (declare (not safe))
                (_K285077285093_
                 _checked?285109_
                 _slot285104_
                 _klass-id285099_))
              (let () (declare (not safe)) (_E285076285086_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self284899_)
        (let* ((_self284900284910_ _self284899_)
               (_E284902284914_
                (lambda () (error '"No clause matching" _self284900284910_)))
               (_K284903284925_
                (lambda (_typedecl284917_
                         _inline284918_
                         _dispatch284919_
                         _arity284920_)
                  (if _inline284918_
                      (let ((_$e284922_ _typedecl284917_))
                        (if _$e284922_
                            _$e284922_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp291731
                             (let ((__tmp291732
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch284919_ '()))))
                               (declare (not safe))
                               (cons _arity284920_ __tmp291732))))
                        (declare (not safe))
                        (cons '@lambda __tmp291731))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284900284910_ 'gxc#!lambda::t))
              (let* ((_e284904284928_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284900284910_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284905284931_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284900284910_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity284934_ _e284905284931_)
                     (_e284906284936_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284900284910_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch284939_ _e284906284936_)
                     (_e284907284941_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284900284910_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline284944_ _e284907284941_)
                     (_e284908284946_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284900284910_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl284949_ _e284908284946_))
                (declare (not safe))
                (_K284903284925_
                 _typedecl284949_
                 _inline284944_
                 _dispatch284939_
                 _arity284934_))
              (let () (declare (not safe)) (_E284902284914_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self284710_)
        (letrec ((_clause-e284712_
                  (lambda (_clause284742_)
                    (let* ((_clause284743284751_ _clause284742_)
                           (_E284745284755_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause284743284751_)))
                           (_K284746284761_
                            (lambda (_dispatch284758_ _arity284759_)
                              (let ((__tmp291733
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch284758_ '()))))
                                (declare (not safe))
                                (cons _arity284759_ __tmp291733)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause284743284751_
                             'gxc#!lambda::t))
                          (let* ((_e284747284764_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284743284751_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e284748284767_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284743284751_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity284770_ _e284748284767_)
                                 (_e284749284772_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284743284751_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch284775_ _e284749284772_))
                            (declare (not safe))
                            (_K284746284761_ _dispatch284775_ _arity284770_))
                          (let () (declare (not safe)) (_E284745284755_)))))))
          (let* ((_self284713284720_ _self284710_)
                 (_E284715284724_
                  (lambda () (error '"No clause matching" _self284713284720_)))
                 (_K284716284731_
                  (lambda (_clauses284727_)
                    (let ((_clauses284729_
                           (map _clause-e284712_ _clauses284727_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses284729_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self284713284720_
                   'gxc#!case-lambda::t))
                (let* ((_e284717284734_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284713284720_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e284718284737_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284713284720_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses284740_ _e284718284737_))
                  (declare (not safe))
                  (_K284716284731_ _clauses284740_))
                (let () (declare (not safe)) (_E284715284724_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self284553_)
        (let* ((_self284554284562_ _self284553_)
               (_E284556284566_
                (lambda () (error '"No clause matching" _self284554284562_)))
               (_K284557284572_
                (lambda (_dispatch284569_ _table284570_)
                  (let ((__tmp291734
                         (let ((__tmp291735
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch284569_ '()))))
                           (declare (not safe))
                           (cons _table284570_ __tmp291735))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp291734)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284554284562_
                 'gxc#!kw-lambda::t))
              (let* ((_e284558284575_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284554284562_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284559284578_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284554284562_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table284581_ _e284559284578_)
                     (_e284560284583_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284554284562_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch284586_ _e284560284583_))
                (declare (not safe))
                (_K284557284572_ _dispatch284586_ _table284581_))
              (let () (declare (not safe)) (_E284556284566_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self284396_)
        (let* ((_self284397284405_ _self284396_)
               (_E284399284409_
                (lambda () (error '"No clause matching" _self284397284405_)))
               (_K284400284415_
                (lambda (_main284412_ _keys284413_)
                  (let ((__tmp291736
                         (let ((__tmp291737
                                (let ()
                                  (declare (not safe))
                                  (cons _main284412_ '()))))
                           (declare (not safe))
                           (cons _keys284413_ __tmp291737))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp291736)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284397284405_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e284401284418_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284405_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284402284421_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284405_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys284424_ _e284402284421_)
                     (_e284403284426_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284397284405_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main284429_ _e284403284426_))
                (declare (not safe))
                (_K284400284415_ _main284429_ _keys284424_))
              (let () (declare (not safe)) (_E284399284409_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
