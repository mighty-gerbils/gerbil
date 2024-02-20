(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708452004)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj153129
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj153129)
               __obj153129)))))
    (define gxc#optimize!
      (lambda (_ctx152822_)
        (let ((__tmp153133
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx152822_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp153135
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp153134
                        (##structure-ref
                         _ctx152822_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp153135 __tmp153134 '#t))
                 (let ((_code152825_
                        (let ((__tmp153136
                               (##structure-ref
                                _ctx152822_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp153136))))
                   (##structure-set!
                    _ctx152822_
                    _code152825_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp153132 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp153131 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp153133
           gxc#current-compile-mutators
           __tmp153132
           gxc#current-compile-local-type
           __tmp153131))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (letrec ((_load-it!152818_
                  (lambda (_id152820_)
                    (if (let ((__tmp153137
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp153137 _id152820_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id152820_))
                          (let ((__tmp153138
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp153138 _id152820_ '#t)))))))
          (for-each
           _load-it!152818_
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
      (lambda (_ctx152762_)
        (letrec* ((_deps152764_
                   (let* ((_imports152808_
                           (##structure-ref
                            _ctx152762_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e152810_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx152762_))))
                     (if _$e152810_
                         ((lambda (_g152812152814_)
                            (let ()
                              (declare (not safe))
                              (cons _g152812152814_ _imports152808_)))
                          _$e152810_)
                         _imports152808_))))
          (let _lp152766_ ((_rest152768_ _deps152764_))
            (let* ((_rest152769152777_ _rest152768_)
                   (_else152771152785_ (lambda () '#!void))
                   (_K152773152796_
                    (lambda (_rest152788_ _hd152789_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd152789_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp153140
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp153139
                                       (##structure-ref
                                        _hd152789_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp153140 __tmp153139))
                                '#!void
                                (begin
                                  (let ((_$e152791_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd152789_))))
                                    (if _$e152791_
                                        ((lambda (_pre152794_)
                                           (let ((__tmp153141
                                                  (let ((__tmp153142
                                                         (##structure-ref
                                                          _hd152789_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre152794_
                                                          __tmp153142))))
                                             (declare (not safe))
                                             (_lp152766_ __tmp153141)))
                                         _$e152791_)
                                        (let ((__tmp153143
                                               (##structure-ref
                                                _hd152789_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp152766_ __tmp153143))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd152789_))))
                            (let ()
                              (declare (not safe))
                              (_lp152766_ _rest152788_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd152789_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp153145
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp153144
                                           (##structure-ref
                                            _hd152789_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp153145 __tmp153144))
                                    '#!void
                                    (begin
                                      (let ((__tmp153146
                                             (##structure-ref
                                              _hd152789_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp152766_ __tmp153146))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd152789_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp152766_ _rest152788_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd152789_
                                     'gx#module-import::t))
                                  (let ((__tmp153147
                                         (let ((__tmp153148
                                                (##direct-structure-ref
                                                 _hd152789_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153148 _rest152788_))))
                                    (declare (not safe))
                                    (_lp152766_ __tmp153147))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd152789_
                                         'gx#module-export::t))
                                      (let ((__tmp153149
                                             (let ((__tmp153150
                                                    (##direct-structure-ref
                                                     _hd152789_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153150
                                                     _rest152788_))))
                                        (declare (not safe))
                                        (_lp152766_ __tmp153149))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd152789_
                                             'gx#import-set::t))
                                          (let ((__tmp153151
                                                 (let ((__tmp153152
                                                        (##direct-structure-ref
                                                         _hd152789_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153152
                                                         _rest152788_))))
                                            (declare (not safe))
                                            (_lp152766_ __tmp153151))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd152789_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest152769152777_))
                  (let ((_hd152774152799_
                         (let ()
                           (declare (not safe))
                           (##car _rest152769152777_)))
                        (_tl152775152801_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest152769152777_))))
                    (let* ((_hd152804_ _hd152774152799_)
                           (_rest152806_ _tl152775152801_))
                      (declare (not safe))
                      (_K152773152796_ _rest152806_ _hd152804_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx152742_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx152742_
                    'gx#module-context::t))
                 (let ((__tmp153153
                        (##structure-ref
                         _ctx152742_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp153153)))
            '#!void
            (let* ((_ht152744_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id152746_
                    (##structure-ref
                     _ctx152742_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod152748_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht152744_ _id152746_))))
              (let ((_$e152751_ _mod152748_))
                (if _$e152751_
                    _$e152751_
                    (let* ((_mod152754_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx152742_)))
                           (_val152759_
                            (let ((_$e152756_ _mod152754_))
                              (if _$e152756_ _$e152756_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht152744_ _id152746_ _val152759_))
                      _val152759_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx152740_)
        (if (##structure-ref _ctx152740_ '1 gx#expander-context::t '#f)
            (let ((__tmp153154
                   (##structure-ref
                    _ctx152740_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp153154))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id152717_)
        (letrec ((_catch-e152719_
                  (lambda (_exn152738_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id152717_))
                          (display-exception _exn152738_))
                        '#!void)
                    '#f))
                 (_import-e152720_
                  (lambda ()
                    (let* ((_str-id152723_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id152717_))
                             '".ssxi"))
                           (_artefact-path152731_
                            (let ((_odir152724152726_
                                   (gxc#current-compile-output-dir)))
                              (if _odir152724152726_
                                  (let ((_odir152729_ _odir152724152726_))
                                    (path-expand
                                     (string-append _str-id152723_ '".ss")
                                     _odir152729_))
                                  '#f)))
                           (_library-path152733_
                            (string->symbol
                             (string-append '":" _str-id152723_ '".ss")))
                           (_ssxi-path152735_
                            (if (and _artefact-path152731_
                                     (file-exists? _artefact-path152731_))
                                _artefact-path152731_
                                _library-path152733_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path152735_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path152735_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e152719_ _import-e152720_)))))
    (define gxc#optimize-source
      (lambda (_stx152708_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx152708_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx152708_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx152708_))
        (let* ((_stx152710_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx152708_)))
               (_stx152712_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx152710_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx152712_))
          (let ((_stx152715_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx152712_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx152715_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl152705_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp153155 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-merge! _tbl152705_ __tmp153155))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152705_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl152705_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152705_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl152705_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152705_ '%#call gxc#generate-ssxi-call%))
           _tbl152705_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx152688_ . _args152690_)
        (let ((__tmp153157
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152690_)
                     (gxc#compile-e__0 _stx152688_)
                     (let ((_arg1152695_ (car _args152690_))
                           (_rest152697_ (cdr _args152690_)))
                       (if (null? _rest152697_)
                           (gxc#compile-e__1 _stx152688_ _arg1152695_)
                           (let ((_arg2152700_ (car _rest152697_))
                                 (_rest152702_ (cdr _rest152697_)))
                             (if (null? _rest152702_)
                                 (gxc#compile-e__2
                                  _stx152688_
                                  _arg1152695_
                                  _arg2152700_)
                                 (apply gxc#compile-e
                                        _stx152688_
                                        _arg1152695_
                                        _arg2152700_
                                        _rest152702_))))))))
              (__tmp153156 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp153157
           gxc#current-compile-methods
           __tmp153156))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx152649_)
        (let* ((_g152651152661_
                (lambda (_g152652152658_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152652152658_))))
               (_g152650152685_
                (lambda (_g152652152664_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152652152664_))
                      (let ((_e152654152666_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152652152664_))))
                        (let ((_hd152655152669_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152654152666_)))
                              (_tl152656152671_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152654152666_))))
                          ((lambda (_L152674_)
                             (let ((__tmp153160
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx152649_))))
                                   (__tmp153158
                                    (let ((__tmp153159
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp153159 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp153160
                                gx#current-expander-phi
                                __tmp153158)))
                           _tl152656152671_)))
                      (let ()
                        (declare (not safe))
                        (_g152651152661_ _g152652152664_))))))
          (declare (not safe))
          (_g152650152685_ _stx152649_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx152589_)
        (let* ((_g152591152605_
                (lambda (_g152592152602_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152592152602_))))
               (_g152590152646_
                (lambda (_g152592152608_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152592152608_))
                      (let ((_e152595152610_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152592152608_))))
                        (let ((_hd152596152613_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152595152610_)))
                              (_tl152597152615_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152595152610_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152597152615_))
                              (let ((_e152598152618_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152597152615_))))
                                (let ((_hd152599152621_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152598152618_)))
                                      (_tl152600152623_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152598152618_))))
                                  ((lambda (_L152626_ _L152627_)
                                     (let* ((_ctx152640_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L152627_)))
                                            (_code152642_
                                             (##structure-ref
                                              _ctx152640_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp153161
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code152642_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp153161
                                          gx#current-expander-context
                                          _ctx152640_))))
                                   _tl152600152623_
                                   _hd152599152621_)))
                              (let ()
                                (declare (not safe))
                                (_g152591152605_ _g152592152608_)))))
                      (let ()
                        (declare (not safe))
                        (_g152591152605_ _g152592152608_))))))
          (declare (not safe))
          (_g152590152646_ _stx152589_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx152399_)
        (letrec ((_generate-e152401_
                  (lambda (_id152578_)
                    (let* ((_sym152580_
                            (if (let ((__tmp153162
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp153162))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id152578_))
                                '#f))
                           (_$e152582_
                            (if _sym152580_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym152580_))
                                '#f)))
                      (if _$e152582_
                          ((lambda (_type152585_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym152580_))
                             (let* ((_typedecl152587_
                                     (let ((__method153130
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type152585_
                                               'typedecl))))
                                       (if __method153130
                                           (__method153130 _type152585_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type152585_
                                                    'typedecl)))))
                                    (__tmp153163
                                     (let ((__tmp153164
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl152587_ '()))))
                                       (declare (not safe))
                                       (cons _sym152580_ __tmp153164))))
                               (declare (not safe))
                               (cons 'declare-type __tmp153163)))
                           _$e152582_)
                          '(begin))))))
          (let* ((___stx152828152829_ _stx152399_)
                 (_g152404152442_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152828152829_)))))
            (let ((___kont152830152831_
                   (lambda (_L152560_)
                     (let ()
                       (declare (not safe))
                       (_generate-e152401_ _L152560_))))
                  (___kont152832152833_
                   (lambda (_L152495_)
                     (let ((_types152521_
                            (map _generate-e152401_
                                 (let ((__tmp153165
                                        (lambda (_g152513152516_
                                                 _g152514152518_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g152513152516_
                                                  _g152514152518_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp153165 '() _L152495_)))))
                       (declare (not safe))
                       (cons 'begin _types152521_)))))
              (let ((___match152883152884_
                     (lambda (_e152420152447_
                              _hd152421152450_
                              _tl152422152452_
                              _e152423152455_
                              _hd152424152458_
                              _tl152425152460_
                              ___splice152834152835_
                              _target152426152463_
                              _tl152428152465_)
                       (letrec ((_loop152429152468_
                                 (lambda (_hd152427152471_ _id152433152473_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd152427152471_))
                                       (let ((_e152430152476_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd152427152471_))))
                                         (let ((_lp-tl152432152481_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e152430152476_)))
                                               (_lp-hd152431152479_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e152430152476_))))
                                           (let ((__tmp153166
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd152431152479_
                                                          _id152433152473_))))
                                             (declare (not safe))
                                             (_loop152429152468_
                                              _lp-tl152432152481_
                                              __tmp153166))))
                                       (let ((_id152434152484_
                                              (reverse _id152433152473_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl152425152460_))
                                             (let ((_e152435152487_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl152425152460_))))
                                               (let ((_tl152437152492_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e152435152487_)))
                                                     (_hd152436152490_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e152435152487_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl152437152492_))
                                                     (___kont152832152833_
                                                      _id152434152484_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g152404152442_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g152404152442_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop152429152468_ _target152426152463_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152828152829_))
                    (let ((_e152407152528_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152828152829_))))
                      (let ((_tl152409152533_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152407152528_)))
                            (_hd152408152531_
                             (let ()
                               (declare (not safe))
                               (##car _e152407152528_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152409152533_))
                            (let ((_e152410152536_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152409152533_))))
                              (let ((_tl152412152541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152410152536_)))
                                    (_hd152411152539_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152410152536_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd152411152539_))
                                    (let ((_e152413152544_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd152411152539_))))
                                      (let ((_tl152415152549_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152413152544_)))
                                            (_hd152414152547_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152413152544_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl152415152549_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152412152541_))
                                                (let ((_e152416152552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152412152541_))))
                                                  (let ((_tl152418152557_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152416152552_)))
                                                        (_hd152417152555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152416152552_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152418152557_))
                                                        (___kont152830152831_
                                                         _hd152414152547_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd152411152539_))
                                                            (let ((___splice152834152835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd152411152539_ '0))))
                      (let ((_tl152428152465_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice152834152835_ '1)))
                            (_target152426152463_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice152834152835_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl152428152465_))
                            (___match152883152884_
                             _e152407152528_
                             _hd152408152531_
                             _tl152409152533_
                             _e152410152536_
                             _hd152411152539_
                             _tl152412152541_
                             ___splice152834152835_
                             _target152426152463_
                             _tl152428152465_)
                            (let () (declare (not safe)) (_g152404152442_)))))
                    (let () (declare (not safe)) (_g152404152442_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd152411152539_))
                                                    (let ((___splice152834152835_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd152411152539_
                                                              '0))))
                                                      (let ((_tl152428152465_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice152834152835_ '1)))
                    (_target152426152463_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice152834152835_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl152428152465_))
                    (___match152883152884_
                     _e152407152528_
                     _hd152408152531_
                     _tl152409152533_
                     _e152410152536_
                     _hd152411152539_
                     _tl152412152541_
                     ___splice152834152835_
                     _target152426152463_
                     _tl152428152465_)
                    (let () (declare (not safe)) (_g152404152442_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g152404152442_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd152411152539_))
                                                (let ((___splice152834152835_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd152411152539_
                                                          '0))))
                                                  (let ((_tl152428152465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice152834152835_
                                                            '1)))
                                                        (_target152426152463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice152834152835_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152428152465_))
                                                        (___match152883152884_
                                                         _e152407152528_
                                                         _hd152408152531_
                                                         _tl152409152533_
                                                         _e152410152536_
                                                         _hd152411152539_
                                                         _tl152412152541_
                                                         ___splice152834152835_
                                                         _target152426152463_
                                                         _tl152428152465_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g152404152442_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g152404152442_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd152411152539_))
                                        (let ((___splice152834152835_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd152411152539_
                                                  '0))))
                                          (let ((_tl152428152465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice152834152835_
                                                    '1)))
                                                (_target152426152463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice152834152835_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl152428152465_))
                                                (___match152883152884_
                                                 _e152407152528_
                                                 _hd152408152531_
                                                 _tl152409152533_
                                                 _e152410152536_
                                                 _hd152411152539_
                                                 _tl152412152541_
                                                 ___splice152834152835_
                                                 _target152426152463_
                                                 _tl152428152465_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g152404152442_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152404152442_))))))
                            (let () (declare (not safe)) (_g152404152442_)))))
                    (let () (declare (not safe)) (_g152404152442_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx151953_)
        (let* ((___stx152886152887_ _stx151953_)
               (_g151957152059_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152886152887_)))))
          (let ((___kont152888152889_
                 (lambda (_L152349_ _L152350_ _L152351_ _L152352_ _L152353_)
                   (let ((__tmp153167
                          (let ((__tmp153174
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L152352_)))
                                (__tmp153168
                                 (let ((__tmp153173
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L152351_)))
                                       (__tmp153169
                                        (let ((__tmp153172
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L152350_)))
                                              (__tmp153170
                                               (let ((__tmp153171
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L152349_))))
                                                 (declare (not safe))
                                                 (cons __tmp153171 '()))))
                                          (declare (not safe))
                                          (cons __tmp153172 __tmp153170))))
                                   (declare (not safe))
                                   (cons __tmp153173 __tmp153169))))
                            (declare (not safe))
                            (cons __tmp153174 __tmp153168))))
                     (declare (not safe))
                     (cons 'declare-method __tmp153167))))
                (___kont152890152891_
                 (lambda (_L152175_ _L152176_ _L152177_ _L152178_)
                   (let ((__tmp153175
                          (let ((__tmp153181
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L152177_)))
                                (__tmp153176
                                 (let ((__tmp153180
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L152176_)))
                                       (__tmp153177
                                        (let ((__tmp153179
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L152175_)))
                                              (__tmp153178
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp153179 __tmp153178))))
                                   (declare (not safe))
                                   (cons __tmp153180 __tmp153177))))
                            (declare (not safe))
                            (cons __tmp153181 __tmp153176))))
                     (declare (not safe))
                     (cons 'declare-method __tmp153175))))
                (___kont152892152893_ (lambda () '(begin))))
            (let ((___match153021153022_
                   (lambda (_e151964152221_
                            _hd151965152224_
                            _tl151966152226_
                            _e151967152229_
                            _hd151968152232_
                            _tl151969152234_
                            _e151970152237_
                            _hd151971152240_
                            _tl151972152242_
                            _e151973152245_
                            _hd151974152248_
                            _tl151975152250_
                            _e151976152253_
                            _hd151977152256_
                            _tl151978152258_
                            _e151979152261_
                            _hd151980152264_
                            _tl151981152266_
                            _e151982152269_
                            _hd151983152272_
                            _tl151984152274_
                            _e151985152277_
                            _hd151986152280_
                            _tl151987152282_
                            _e151988152285_
                            _hd151989152288_
                            _tl151990152290_
                            _e151991152293_
                            _hd151992152296_
                            _tl151993152298_
                            _e151994152301_
                            _hd151995152304_
                            _tl151996152306_
                            _e151997152309_
                            _hd151998152312_
                            _tl151999152314_
                            _e152000152317_
                            _hd152001152320_
                            _tl152002152322_
                            _e152003152325_
                            _hd152004152328_
                            _tl152005152330_
                            _e152006152333_
                            _hd152007152336_
                            _tl152008152338_
                            _e152009152341_
                            _hd152010152344_
                            _tl152011152346_)
                     (let ((_L152349_ _hd152010152344_)
                           (_L152350_ _hd152001152320_)
                           (_L152351_ _hd151992152296_)
                           (_L152352_ _hd151983152272_)
                           (_L152353_ _hd151974152248_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L152353_
                              'bind-method!))
                           (___kont152888152889_
                            _L152349_
                            _L152350_
                            _L152351_
                            _L152352_
                            _L152353_)
                           (___kont152892152893_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx152886152887_))
                  (let ((_e151964152221_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx152886152887_))))
                    (let ((_tl151966152226_
                           (let ()
                             (declare (not safe))
                             (##cdr _e151964152221_)))
                          (_hd151965152224_
                           (let ()
                             (declare (not safe))
                             (##car _e151964152221_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl151966152226_))
                          (let ((_e151967152229_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl151966152226_))))
                            (let ((_tl151969152234_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151967152229_)))
                                  (_hd151968152232_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151967152229_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd151968152232_))
                                  (let ((_e151970152237_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd151968152232_))))
                                    (let ((_tl151972152242_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151970152237_)))
                                          (_hd151971152240_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151970152237_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd151971152240_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd151971152240_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl151972152242_))
                                                  (let ((_e151973152245_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl151972152242_))))
                                                    (let ((_tl151975152250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e151973152245_)))
                                                          (_hd151974152248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e151973152245_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl151975152250_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl151969152234_))
                      (let ((_e151976152253_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl151969152234_))))
                        (let ((_tl151978152258_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151976152253_)))
                              (_hd151977152256_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151976152253_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd151977152256_))
                              (let ((_e151979152261_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd151977152256_))))
                                (let ((_tl151981152266_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151979152261_)))
                                      (_hd151980152264_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151979152261_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd151980152264_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd151980152264_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl151981152266_))
                                              (let ((_e151982152269_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl151981152266_))))
                                                (let ((_tl151984152274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e151982152269_)))
                                                      (_hd151983152272_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e151982152269_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl151984152274_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl151978152258_))
                                                          (let ((_e151985152277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl151978152258_))))
                    (let ((_tl151987152282_
                           (let ()
                             (declare (not safe))
                             (##cdr _e151985152277_)))
                          (_hd151986152280_
                           (let ()
                             (declare (not safe))
                             (##car _e151985152277_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd151986152280_))
                          (let ((_e151988152285_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd151986152280_))))
                            (let ((_tl151990152290_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151988152285_)))
                                  (_hd151989152288_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151988152285_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd151989152288_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd151989152288_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl151990152290_))
                                          (let ((_e151991152293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl151990152290_))))
                                            (let ((_tl151993152298_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e151991152293_)))
                                                  (_hd151992152296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e151991152293_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl151993152298_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl151987152282_))
                                                      (let ((_e151994152301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl151987152282_))))
                (let ((_tl151996152306_
                       (let () (declare (not safe)) (##cdr _e151994152301_)))
                      (_hd151995152304_
                       (let () (declare (not safe)) (##car _e151994152301_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd151995152304_))
                      (let ((_e151997152309_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd151995152304_))))
                        (let ((_tl151999152314_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151997152309_)))
                              (_hd151998152312_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151997152309_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd151998152312_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd151998152312_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl151999152314_))
                                      (let ((_e152000152317_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl151999152314_))))
                                        (let ((_tl152002152322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e152000152317_)))
                                              (_hd152001152320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e152000152317_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl152002152322_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl151996152306_))
                                                  (let ((_e152003152325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl151996152306_))))
                                                    (let ((_tl152005152330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e152003152325_)))
                                                          (_hd152004152328_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e152003152325_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd152004152328_))
                                                          (let ((_e152006152333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd152004152328_))))
                    (let ((_tl152008152338_
                           (let ()
                             (declare (not safe))
                             (##cdr _e152006152333_)))
                          (_hd152007152336_
                           (let ()
                             (declare (not safe))
                             (##car _e152006152333_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd152007152336_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd152007152336_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl152008152338_))
                                  (let ((_e152009152341_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl152008152338_))))
                                    (let ((_tl152011152346_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152009152341_)))
                                          (_hd152010152344_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152009152341_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152011152346_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl152005152330_))
                                              (___match153021153022_
                                               _e151964152221_
                                               _hd151965152224_
                                               _tl151966152226_
                                               _e151967152229_
                                               _hd151968152232_
                                               _tl151969152234_
                                               _e151970152237_
                                               _hd151971152240_
                                               _tl151972152242_
                                               _e151973152245_
                                               _hd151974152248_
                                               _tl151975152250_
                                               _e151976152253_
                                               _hd151977152256_
                                               _tl151978152258_
                                               _e151979152261_
                                               _hd151980152264_
                                               _tl151981152266_
                                               _e151982152269_
                                               _hd151983152272_
                                               _tl151984152274_
                                               _e151985152277_
                                               _hd151986152280_
                                               _tl151987152282_
                                               _e151988152285_
                                               _hd151989152288_
                                               _tl151990152290_
                                               _e151991152293_
                                               _hd151992152296_
                                               _tl151993152298_
                                               _e151994152301_
                                               _hd151995152304_
                                               _tl151996152306_
                                               _e151997152309_
                                               _hd151998152312_
                                               _tl151999152314_
                                               _e152000152317_
                                               _hd152001152320_
                                               _tl152002152322_
                                               _e152003152325_
                                               _hd152004152328_
                                               _tl152005152330_
                                               _e152006152333_
                                               _hd152007152336_
                                               _tl152008152338_
                                               _e152009152341_
                                               _hd152010152344_
                                               _tl152011152346_)
                                              (___kont152892152893_))
                                          (___kont152892152893_))))
                                  (___kont152892152893_))
                              (___kont152892152893_))
                          (___kont152892152893_))))
                  (___kont152892152893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl151996152306_))
                                                      (if (let ((__tmp153182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp153182 'bind-method!))
                  (let ((_L152175_ _hd152001152320_)
                        (_L152176_ _hd151992152296_)
                        (_L152177_ _hd151983152272_)
                        (_L152178_ _hd151974152248_))
                    (___kont152890152891_
                     _L152175_
                     _L152176_
                     _L152177_
                     _L152178_))
                  (___kont152892152893_))
              (___kont152892152893_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont152892152893_))))
                                      (___kont152892152893_))
                                  (___kont152892152893_))
                              (___kont152892152893_))))
                      (___kont152892152893_))))
              (___kont152892152893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont152892152893_))))
                                          (___kont152892152893_))
                                      (___kont152892152893_))
                                  (___kont152892152893_))))
                          (___kont152892152893_))))
                  (___kont152892152893_))
              (___kont152892152893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont152892152893_))
                                          (___kont152892152893_))
                                      (___kont152892152893_))))
                              (___kont152892152893_))))
                      (___kont152892152893_))
                  (___kont152892152893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont152892152893_))
                                              (___kont152892152893_))
                                          (___kont152892152893_))))
                                  (___kont152892152893_))))
                          (___kont152892152893_))))
                  (___kont152892152893_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self151929_)
        (let* ((_self151930151936_ _self151929_)
               (_E151932151940_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151930151936_))))
               (_K151933151945_
                (lambda (_alias-id151943_)
                  (let ((__tmp153183
                         (let ()
                           (declare (not safe))
                           (cons _alias-id151943_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp153183)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151930151936_ 'gxc#!alias::t))
              (let* ((_e151934151948_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151930151936_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id151951_ _e151934151948_))
                (declare (not safe))
                (_K151933151945_ _alias-id151951_))
              (let () (declare (not safe)) (_E151932151940_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self151720_)
        (let* ((_self151721151736_ _self151720_)
               (_E151723151740_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151721151736_))))
               (_K151724151754_
                (lambda (_methods151743_
                         _metaclass151744_
                         _final?151745_
                         _struct?151746_
                         _constructor151747_
                         _fields151748_
                         _slots151749_
                         _precendence-list151750_
                         _super151751_
                         _id151752_)
                  (let ((__tmp153184
                         (let ((__tmp153185
                                (let ((__tmp153186
                                       (let ((__tmp153187
                                              (let ((__tmp153188
                                                     (let ((__tmp153189
                                                            (let ((__tmp153190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153191
                                  (let ((__tmp153192
                                         (let ((__tmp153193
                                                (let ((__tmp153194
                                                       (if _methods151743_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods151743_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153194 '()))))
                                           (declare (not safe))
                                           (cons _metaclass151744_
                                                 __tmp153193))))
                                    (declare (not safe))
                                    (cons _final?151745_ __tmp153192))))
                             (declare (not safe))
                             (cons _struct?151746_ __tmp153191))))
                      (declare (not safe))
                      (cons _constructor151747_ __tmp153190))))
               (declare (not safe))
               (cons _fields151748_ __tmp153189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots151749_
                                                      __tmp153188))))
                                         (declare (not safe))
                                         (cons _precendence-list151750_
                                               __tmp153187))))
                                  (declare (not safe))
                                  (cons _super151751_ __tmp153186))))
                           (declare (not safe))
                           (cons _id151752_ __tmp153185))))
                    (declare (not safe))
                    (cons '@class __tmp153184)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151721151736_ 'gxc#!class::t))
              (let* ((_e151725151757_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id151760_ _e151725151757_)
                     (_e151726151762_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super151765_ _e151726151762_)
                     (_e151727151767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list151770_ _e151727151767_)
                     (_e151728151772_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots151775_ _e151728151772_)
                     (_e151729151777_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields151780_ _e151729151777_)
                     (_e151730151782_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor151785_ _e151730151782_)
                     (_e151731151787_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?151790_ _e151731151787_)
                     (_e151732151792_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?151795_ _e151732151792_)
                     (_e151733151797_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass151800_ _e151733151797_)
                     (_e151734151802_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151721151736_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods151805_ _e151734151802_))
                (declare (not safe))
                (_K151724151754_
                 _methods151805_
                 _metaclass151800_
                 _final?151795_
                 _struct?151790_
                 _constructor151785_
                 _fields151780_
                 _slots151775_
                 _precendence-list151770_
                 _super151765_
                 _id151760_))
              (let () (declare (not safe)) (_E151723151740_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self151574_)
        (let* ((_self151575151581_ _self151574_)
               (_E151577151585_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151575151581_))))
               (_K151578151590_
                (lambda (_klass-id151588_)
                  (let ((__tmp153195
                         (let ()
                           (declare (not safe))
                           (cons _klass-id151588_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp153195)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151575151581_
                 'gxc#!predicate::t))
              (let* ((_e151579151593_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151575151581_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id151596_ _e151579151593_))
                (declare (not safe))
                (_K151578151590_ _klass-id151596_))
              (let () (declare (not safe)) (_E151577151585_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self151428_)
        (let* ((_self151429151435_ _self151428_)
               (_E151431151439_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151429151435_))))
               (_K151432151444_
                (lambda (_klass-id151442_)
                  (let ((__tmp153196
                         (let ()
                           (declare (not safe))
                           (cons _klass-id151442_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp153196)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151429151435_
                 'gxc#!constructor::t))
              (let* ((_e151433151447_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151429151435_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id151450_ _e151433151447_))
                (declare (not safe))
                (_K151432151444_ _klass-id151450_))
              (let () (declare (not safe)) (_E151431151439_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self151268_)
        (let* ((_self151269151277_ _self151268_)
               (_E151271151281_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151269151277_))))
               (_K151272151288_
                (lambda (_checked?151284_ _slot151285_ _klass-id151286_)
                  (let ((__tmp153197
                         (let ((__tmp153198
                                (let ((__tmp153199
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?151284_ '()))))
                                  (declare (not safe))
                                  (cons _slot151285_ __tmp153199))))
                           (declare (not safe))
                           (cons _klass-id151286_ __tmp153198))))
                    (declare (not safe))
                    (cons '@accessor __tmp153197)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151269151277_
                 'gxc#!accessor::t))
              (let* ((_e151273151291_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151269151277_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id151294_ _e151273151291_)
                     (_e151274151296_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151269151277_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot151299_ _e151274151296_)
                     (_e151275151301_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151269151277_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?151304_ _e151275151301_))
                (declare (not safe))
                (_K151272151288_
                 _checked?151304_
                 _slot151299_
                 _klass-id151294_))
              (let () (declare (not safe)) (_E151271151281_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self151108_)
        (let* ((_self151109151117_ _self151108_)
               (_E151111151121_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151109151117_))))
               (_K151112151128_
                (lambda (_checked?151124_ _slot151125_ _klass-id151126_)
                  (let ((__tmp153200
                         (let ((__tmp153201
                                (let ((__tmp153202
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?151124_ '()))))
                                  (declare (not safe))
                                  (cons _slot151125_ __tmp153202))))
                           (declare (not safe))
                           (cons _klass-id151126_ __tmp153201))))
                    (declare (not safe))
                    (cons '@mutator __tmp153200)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151109151117_ 'gxc#!mutator::t))
              (let* ((_e151113151131_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151109151117_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id151134_ _e151113151131_)
                     (_e151114151136_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151109151117_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot151139_ _e151114151136_)
                     (_e151115151141_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151109151117_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?151144_ _e151115151141_))
                (declare (not safe))
                (_K151112151128_
                 _checked?151144_
                 _slot151139_
                 _klass-id151134_))
              (let () (declare (not safe)) (_E151111151121_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self150934_)
        (let* ((_self150935150945_ _self150934_)
               (_E150937150949_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150935150945_))))
               (_K150938150960_
                (lambda (_typedecl150952_
                         _inline150953_
                         _dispatch150954_
                         _arity150955_)
                  (if _inline150953_
                      (let ((_$e150957_ _typedecl150952_))
                        (if _$e150957_
                            _$e150957_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp153203
                             (let ((__tmp153204
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch150954_ '()))))
                               (declare (not safe))
                               (cons _arity150955_ __tmp153204))))
                        (declare (not safe))
                        (cons '@lambda __tmp153203))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150935150945_ 'gxc#!lambda::t))
              (let* ((_e150939150963_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150935150945_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150940150966_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150935150945_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150969_ _e150940150966_)
                     (_e150941150971_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150935150945_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch150974_ _e150941150971_)
                     (_e150942150976_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150935150945_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline150979_ _e150942150976_)
                     (_e150943150981_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150935150945_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl150984_ _e150943150981_))
                (declare (not safe))
                (_K150938150960_
                 _typedecl150984_
                 _inline150979_
                 _dispatch150974_
                 _arity150969_))
              (let () (declare (not safe)) (_E150937150949_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self150745_)
        (letrec ((_clause-e150747_
                  (lambda (_clause150777_)
                    (let* ((_clause150778150786_ _clause150777_)
                           (_E150780150790_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause150778150786_))))
                           (_K150781150796_
                            (lambda (_dispatch150793_ _arity150794_)
                              (let ((__tmp153205
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch150793_ '()))))
                                (declare (not safe))
                                (cons _arity150794_ __tmp153205)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause150778150786_
                             'gxc#!lambda::t))
                          (let* ((_e150782150799_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause150778150786_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e150783150802_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause150778150786_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity150805_ _e150783150802_)
                                 (_e150784150807_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause150778150786_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch150810_ _e150784150807_))
                            (declare (not safe))
                            (_K150781150796_ _dispatch150810_ _arity150805_))
                          (let () (declare (not safe)) (_E150780150790_)))))))
          (let* ((_self150748150755_ _self150745_)
                 (_E150750150759_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self150748150755_))))
                 (_K150751150766_
                  (lambda (_clauses150762_)
                    (let ((_clauses150764_
                           (map _clause-e150747_ _clauses150762_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses150764_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self150748150755_
                   'gxc#!case-lambda::t))
                (let* ((_e150752150769_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self150748150755_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e150753150772_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self150748150755_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses150775_ _e150753150772_))
                  (declare (not safe))
                  (_K150751150766_ _clauses150775_))
                (let () (declare (not safe)) (_E150750150759_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self150588_)
        (let* ((_self150589150597_ _self150588_)
               (_E150591150601_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150589150597_))))
               (_K150592150607_
                (lambda (_dispatch150604_ _table150605_)
                  (let ((__tmp153206
                         (let ((__tmp153207
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch150604_ '()))))
                           (declare (not safe))
                           (cons _table150605_ __tmp153207))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp153206)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150589150597_
                 'gxc#!kw-lambda::t))
              (let* ((_e150593150610_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150589150597_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150594150613_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150589150597_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150616_ _e150594150613_)
                     (_e150595150618_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150589150597_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150621_ _e150595150618_))
                (declare (not safe))
                (_K150592150607_ _dispatch150621_ _table150616_))
              (let () (declare (not safe)) (_E150591150601_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self150431_)
        (let* ((_self150432150440_ _self150431_)
               (_E150434150444_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150432150440_))))
               (_K150435150450_
                (lambda (_main150447_ _keys150448_)
                  (let ((__tmp153208
                         (let ((__tmp153209
                                (let ()
                                  (declare (not safe))
                                  (cons _main150447_ '()))))
                           (declare (not safe))
                           (cons _keys150448_ __tmp153209))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp153208)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150432150440_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e150436150453_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150432150440_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150437150456_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150432150440_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys150459_ _e150437150456_)
                     (_e150438150461_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150432150440_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main150464_ _e150438150461_))
                (declare (not safe))
                (_K150435150450_ _main150464_ _keys150459_))
              (let () (declare (not safe)) (_E150434150444_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
