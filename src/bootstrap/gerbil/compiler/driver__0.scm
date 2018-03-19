(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath48711_ _opts48712_)
        (begin
          (if (string? _srcpath48711_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath48711_))
          (let ((_outdir48714_ (pgetq 'output-dir: _opts48712_))
                (_invoke-gsc?48715_ (pgetq 'invoke-gsc: _opts48712_))
                (_gsc-options48716_ (pgetq 'gsc-options: _opts48712_))
                (_keep-scm?48717_ (pgetq 'keep-scm: _opts48712_))
                (_verbosity48718_ (pgetq 'verbose: _opts48712_))
                (_optimize48719_ (pgetq 'optimize: _opts48712_))
                (_debug48720_ (pgetq 'debug: _opts48712_))
                (_gen-ssxi48721_ (pgetq 'generate-ssxi: _opts48712_))
                (_static48722_ (pgetq 'static: _opts48712_)))
            (begin
              (if _outdir48714_ (create-directory* _outdir48714_) '#!void)
              (if _optimize48719_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath48711_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath48711_))))
               gxc#current-compile-output-dir
               _outdir48714_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?48715_
               gxc#current-compile-gsc-options
               _gsc-options48716_
               gxc#current-compile-keep-scm
               _keep-scm?48717_
               gxc#current-compile-verbose
               _verbosity48718_
               gxc#current-compile-optimize
               _optimize48719_
               gxc#current-compile-debug
               _debug48720_
               gxc#current-compile-generate-ssxi
               _gen-ssxi48721_
               gxc#current-compile-static
               _static48722_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath48728_)
          (let ((_opts48730_ '()))
            (gxc#compile-file__% _srcpath48728_ _opts48730_))))
      (define gxc#compile-file
        (lambda _g48751_
          (let ((_g48750_ (length _g48751_)))
            (cond ((##fx= _g48750_ 1) (apply gxc#compile-file__0 _g48751_))
                  ((##fx= _g48750_ 2) (apply gxc#compile-file__% _g48751_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g48751_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath48697_ _opts48698_)
        (gxc#do-compile-exe
         _srcpath48697_
         _opts48698_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath48703_)
          (let ((_opts48705_ '()))
            (gxc#compile-exe-stub__% _srcpath48703_ _opts48705_))))
      (define gxc#compile-exe-stub
        (lambda _g48753_
          (let ((_g48752_ (length _g48753_)))
            (cond ((##fx= _g48752_ 1) (apply gxc#compile-exe-stub__0 _g48753_))
                  ((##fx= _g48752_ 2) (apply gxc#compile-exe-stub__% _g48753_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g48753_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath48683_ _opts48684_)
        (gxc#do-compile-exe
         _srcpath48683_
         _opts48684_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath48689_)
          (let ((_opts48691_ '()))
            (gxc#compile-static-exe__% _srcpath48689_ _opts48691_))))
      (define gxc#compile-static-exe
        (lambda _g48755_
          (let ((_g48754_ (length _g48755_)))
            (cond ((##fx= _g48754_ 1)
                   (apply gxc#compile-static-exe__0 _g48755_))
                  ((##fx= _g48754_ 2)
                   (apply gxc#compile-static-exe__% _g48755_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g48755_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath48671_ _opts48672_ _compile-e48673_)
      (begin
        (if (string? _srcpath48671_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath48671_))
        (let ((_outdir48675_ (pgetq 'output-dir: _opts48672_))
              (_invoke-gsc?48676_ (pgetq 'invoke-gsc: _opts48672_))
              (_gsc-options48677_ (pgetq 'gsc-options: _opts48672_))
              (_keep-scm?48678_ (pgetq 'keep-scm: _opts48672_))
              (_verbosity48679_ (pgetq 'verbose: _opts48672_)))
          (begin
            (if _outdir48675_ (create-directory* _outdir48675_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath48671_)
                 (_compile-e48673_
                  (gx#import-module__0 _srcpath48671_)
                  _opts48672_)))
             gxc#current-compile-output-dir
             _outdir48675_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?48676_
             gxc#current-compile-gsc-options
             _gsc-options48677_
             gxc#current-compile-keep-scm
             _keep-scm?48678_
             gxc#current-compile-verbose
             _verbosity48679_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx48637_ _opts48638_)
      (letrec ((_generate-stub48640_
                (lambda (_gx-init-stub48662_)
                  (let* ((_mod-str48664_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx48637_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt48666_ (string-append _mod-str48664_ '"__rt"))
                         (_mod-main48668_
                          (gxc#find-runtime-symbol _ctx48637_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub48662_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt48666_
                                         (cons (cons 'quote
                                                     (cons _mod-main48668_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub48641_
                (lambda (_output-scm48648_ _output-bin48649_)
                  (let* ((_init-stub48651_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args48653_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48649_
                                            (cons _output-scm48648_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm48648_
                       (lambda () (_generate-stub48640_ _init-stub48651_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48653_))
                            (let* ((_proc48657_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48653_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48659_
                                    (process-status _proc48657_)))
                              (if (zero? _status48659_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48648_
                                   _output-bin48649_
                                   _status48659_))))
                          '#!void))))))
        (let* ((_output-bin48643_
                (gxc#compile-exe-output-file _ctx48637_ _opts48638_))
               (_output-scm48645_ (string-append _output-bin48643_ '".scm")))
          (begin
            (_compile-stub48641_ _output-scm48645_ _output-bin48643_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48645_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48498_ _opts48499_)
      (letrec ((_reset-declare48501_
                (lambda ()
                  '(declare
                     (gambit-scheme)
                     (block)
                     (core)
                     (inline)
                     (inline-primitives)
                     (inlining-limit 350)
                     (constant-fold)
                     (lambda-lift)
                     (standard-bindings)
                     (extended-bindings)
                     (run-time-bindings)
                     (safe)
                     (interrupts-enabled)
                     (proper-tail-calls)
                     (not generative-lambda)
                     (optimize-dead-local-variables)
                     (optimize-dead-definitions)
                     (generic)
                     (mostly-fixnum-flonum))))
               (_user-declare48502_
                (lambda ()
                  (let* ((_gsc-opts48580_ (pgetq 'gsc-options: _opts48499_))
                         (_gsc-prelude48582_
                          (if _gsc-opts48580_
                              (member '"-prelude" _gsc-opts48580_)
                              '#f))
                         (_gsc-prelude48584_
                          (if _gsc-prelude48582_
                              (read (open-input-string
                                     (cadr _gsc-prelude48582_)))
                              '#f)))
                    (let _lift48587_ ((_expr48589_ _gsc-prelude48584_))
                      (let* ((_expr4859048602_ _expr48589_)
                             (_else4859348610_ (lambda () '#f)))
                        (let ((_K4859848630_ (lambda () _expr48589_))
                              (_K4859548616_
                               (lambda (_exprs48614_)
                                 (ormap1 _lift48587_ _exprs48614_))))
                          (if (##pair? _expr4859048602_)
                              (let ((_hd4859948633_ (##car _expr4859048602_)))
                                (if (##eq? _hd4859948633_ 'declare)
                                    (_K4859848630_)
                                    (let ((_tl4859748621_
                                           (##cdr _expr4859048602_)))
                                      (if (##eq? _hd4859948633_ 'begin)
                                          (let ((_exprs48624_ _tl4859748621_))
                                            (_K4859548616_ _exprs48624_))
                                          (_else4859348610_)))))
                              (_else4859348610_))))))))
               (_generate-stub48503_
                (lambda (_deps48571_)
                  (let ((_mod-main48573_
                         (gxc#find-runtime-symbol _ctx48498_ 'main))
                        (_reset-decl48574_ (_reset-declare48501_))
                        (_user-decl48575_ (_user-declare48502_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep48577_)
                         (begin
                           (write (cons 'include (cons _dep48577_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl48574_)
                           (if _user-decl48575_
                               (write _user-decl48575_)
                               '#!void)
                           (newline)))
                       _deps48571_)
                      (write (cons 'apply
                                   (cons _mod-main48573_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48504_
                (lambda (_gsc-opts48554_ _home48555_)
                  (letrec* ((_static-dir48557_
                             (path-expand '"lib/static" _home48555_))
                            (_user-static-dir48558_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48559_
                             (string-append
                              '"-I "
                              _static-dir48557_
                              '" -I "
                              _user-static-dir48558_)))
                    (let ((_$e48561_ (member '"-cc-options" _gsc-opts48554_)))
                      (if _$e48561_
                          ((lambda (_rest48564_)
                             (let* ((_cell48566_ (cdr _rest48564_))
                                    (_opt48568_ (car _cell48566_)))
                               (begin
                                 (set-car!
                                  _cell48566_
                                  (string-append
                                   _opt48568_
                                   '" "
                                   _cppflags48559_))
                                 _gsc-opts48554_)))
                           _$e48561_)
                          (cons '"-cc-options"
                                (cons _cppflags48559_ _gsc-opts48554_)))))))
               (_compile-stub48505_
                (lambda (_output-scm48512_ _output-bin48513_)
                  (let* ((_gerbil-home48515_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048517_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48515_))
                         (_gx-gambc-init48519_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48515_))
                         (_gx-gambc-macros48521_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48515_))
                         (_include-gx-gambc-macros48523_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48521_
                           '"\")"))
                         (_bin-scm48525_
                          (gxc#find-static-module-file _ctx48498_))
                         (_deps48527_
                          (gxc#find-runtime-module-deps _ctx48498_))
                         (_deps48529_
                          (map gxc#find-static-module-file _deps48527_))
                         (_deps48534_
                          (filter (lambda (_$obj48531_)
                                    (not (gxc#file-empty? _$obj48531_)))
                                  _deps48529_))
                         (_gsc-opts48539_
                          (let ((_$e48536_ (pgetq 'gsc-options: _opts48499_)))
                            (if _$e48536_ _$e48536_ '())))
                         (_gsc-opts48541_
                          (_static-include48504_
                           _gsc-opts48539_
                           _gerbil-home48515_))
                         (_gsc-gx-macros48543_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48523_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48523_
                                          '()))))
                         (_gsc-args48545_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48513_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48512_ '())
                            _gsc-gx-macros48543_)
                    _gsc-opts48541_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48512_
                       (lambda ()
                         (_generate-stub48503_
                          (cons _gx-gambc048517_
                                (cons _gx-gambc-init48519_
                                      (foldr1 cons
                                              (cons _bin-scm48525_ '())
                                              _deps48534_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48545_))
                            (let* ((_proc48549_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48545_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48551_
                                    (process-status _proc48549_)))
                              (if (zero? _status48551_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48512_
                                   _output-bin48513_
                                   _status48551_))))
                          '#!void))))))
        (let* ((_output-bin48507_
                (gxc#compile-exe-output-file _ctx48498_ _opts48499_))
               (_output-scm48509_ (string-append _output-bin48507_ '".scm")))
          (begin
            (_compile-stub48505_ _output-scm48509_ _output-bin48507_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48509_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48448_ _id48449_)
      (let ((_$e48495_
             (find (lambda (_e4845048452_)
                     (let* ((_g4845448464_ _e4845048452_)
                            (_else4845648472_ (lambda () '#f))
                            (_K4845848476_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4845448464_
                            'gx#module-export::t)
                           (let* ((_e4845948479_
                                   (##vector-ref _g4845448464_ '1))
                                  (_e4846048482_
                                   (##vector-ref _g4845448464_ '2))
                                  (_e4846148485_
                                   (##vector-ref _g4845448464_ '3)))
                             (if (##eq? _e4846148485_ '0)
                                 (let ((_e4846248488_
                                        (##vector-ref _g4845448464_ '4)))
                                   (if ((lambda (_g4849048492_)
                                          (eq? _g4849048492_ _id48449_))
                                        _e4846248488_)
                                       (_K4845848476_)
                                       (_else4845648472_)))
                                 (_else4845648472_)))
                           (_else4845648472_))))
                   (##structure-ref _ctx48448_ '9 gx#module-context::t '#f))))
        (if _$e48495_ (gx#core-resolve-module-export _$e48495_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48440_ _id48441_)
      (let ((_$e48443_ (gxc#find-export-binding _ctx48440_ _id48441_)))
        (if _$e48443_
            ((lambda (_bind48446_)
               (begin
                 (if (##structure-instance-of?
                      _bind48446_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48441_))
                 (##structure-ref _bind48446_ '1 gx#binding::t '#f)))
             _$e48443_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48440_ '1 gx#expander-context::t '#f)
             _id48441_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48327_)
      (letrec* ((_ht48329_ (make-hash-table-eq))
                (_import-set-template48330_
                 (lambda (_in48392_ _phi48393_)
                   (let ((_iphi48395_
                          (fx+ _phi48393_
                               (##direct-structure-ref
                                _in48392_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48396_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48392_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48398_ ((_rest48400_ _imports48396_)
                                     (_r48401_ '()))
                       (let* ((_rest4840248410_ _rest48400_)
                              (_else4840448418_ (lambda () _r48401_))
                              (_K4840648428_
                               (lambda (_rest48421_ _in48422_)
                                 (if (##structure-instance-of?
                                      _in48422_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48395_)
                                         (_lp48398_
                                          _rest48421_
                                          (cons _in48422_ _r48401_))
                                         (_lp48398_ _rest48421_ _r48401_))
                                     (if (##structure-direct-instance-of?
                                          _in48422_
                                          'gx#module-import::t)
                                         (let ((_iphi48424_
                                                (fx+ _phi48393_
                                                     (##direct-structure-ref
                                                      _in48422_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48424_)
                                               (_lp48398_
                                                _rest48421_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48422_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48401_))
                                               (_lp48398_
                                                _rest48421_
                                                _r48401_)))
                                         (if (##structure-direct-instance-of?
                                              _in48422_
                                              'gx#import-set::t)
                                             (let ((_xphi48426_
                                                    (fx+ _iphi48395_
                                                         (##direct-structure-ref
                                                          _in48422_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48426_)
                                                   (_lp48398_
                                                    _rest48421_
                                                    (cons (##direct-structure-ref
                                                           _in48422_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48401_))
                                                   (if (fxpositive?
                                                        _xphi48426_)
                                                       (_lp48398_
                                                        _rest48421_
                                                        (foldl1 cons
                                                                _r48401_
                                                                (_import-set-template48330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48422_
                         _iphi48395_)))
               (_lp48398_ _rest48421_ _r48401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48398_
                                              _rest48421_
                                              _r48401_)))))))
                         (if (##pair? _rest4840248410_)
                             (let ((_hd4840748431_ (##car _rest4840248410_))
                                   (_tl4840848433_ (##cdr _rest4840248410_)))
                               (let* ((_in48436_ _hd4840748431_)
                                      (_rest48438_ _tl4840848433_))
                                 (_K4840648428_ _rest48438_ _in48436_)))
                             (_else4840448418_)))))))
                (_find-deps48331_
                 (lambda (_rest48338_ _deps48339_)
                   (let* ((_rest4834048348_ _rest48338_)
                          (_else4834248356_ (lambda () _deps48339_))
                          (_K4834448380_
                           (lambda (_rest48359_ _hd48360_)
                             (if (##structure-instance-of?
                                  _hd48360_
                                  'gx#module-context::t)
                                 (let ((_id48362_
                                        (##structure-ref
                                         _hd48360_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48363_
                                        (##structure-ref
                                         _hd48360_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48329_ _id48362_ '#f)
                                       (_find-deps48331_
                                        _rest48359_
                                        _deps48339_)
                                       (let ((_$e48365_
                                              (gx#core-context-prelude__%
                                               _hd48360_)))
                                         (if _$e48365_
                                             ((lambda (_pre48368_)
                                                (let ((_xdeps48370_
                                                       (_find-deps48331_
                                                        (cons _pre48368_
                                                              _imports48363_)
                                                        _deps48339_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48329_
                                                     _id48362_
                                                     _hd48360_)
                                                    (_find-deps48331_
                                                     _rest48359_
                                                     (cons _hd48360_
                                                           _xdeps48370_)))))
                                              _$e48365_)
                                             (let ((_xdeps48372_
                                                    (_find-deps48331_
                                                     _imports48363_
                                                     _deps48339_)))
                                               (begin
                                                 (table-set!
                                                  _ht48329_
                                                  _id48362_
                                                  _hd48360_)
                                                 (_find-deps48331_
                                                  _rest48359_
                                                  (cons _hd48360_
                                                        _xdeps48372_))))))))
                                 (if (##structure-instance-of?
                                      _hd48360_
                                      'gx#prelude-context::t)
                                     (let ((_id48374_
                                            (##structure-ref
                                             _hd48360_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48329_ _id48374_ '#f)
                                           (_find-deps48331_
                                            _rest48359_
                                            _deps48339_)
                                           (let ((_xdeps48376_
                                                  (_find-deps48331_
                                                   (##structure-ref
                                                    _hd48360_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48339_)))
                                             (if (table-ref
                                                  _ht48329_
                                                  _id48374_
                                                  '#f)
                                                 (_find-deps48331_
                                                  _rest48359_
                                                  _xdeps48376_)
                                                 (begin
                                                   (table-set!
                                                    _ht48329_
                                                    _id48374_
                                                    _hd48360_)
                                                   (_find-deps48331_
                                                    _rest48359_
                                                    (cons _hd48360_
                                                          _xdeps48376_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48360_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48360_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48331_
                                              (cons (##direct-structure-ref
                                                     _hd48360_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48359_)
                                              _deps48339_)
                                             (_find-deps48331_
                                              _rest48359_
                                              _deps48339_))
                                         (if (##structure-direct-instance-of?
                                              _hd48360_
                                              'gx#module-export::t)
                                             (_find-deps48331_
                                              (cons (##direct-structure-ref
                                                     _hd48360_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48359_)
                                              _deps48339_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48360_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48360_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48331_
                                                      (cons (##direct-structure-ref
                                                             _hd48360_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48359_)
                                                      _deps48339_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48360_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48378_
                                                                (_import-set-template48330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48360_
                         '0)))
                   (_find-deps48331_
                    (foldl1 cons _rest48359_ _xdeps48378_)
                    _deps48339_))
                 (_find-deps48331_ _rest48359_ _deps48339_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48360_)))))))))
                     (if (##pair? _rest4834048348_)
                         (let ((_hd4834548383_ (##car _rest4834048348_))
                               (_tl4834648385_ (##cdr _rest4834048348_)))
                           (let* ((_hd48388_ _hd4834548383_)
                                  (_rest48390_ _tl4834648385_))
                             (_K4834448380_ _rest48390_ _hd48388_)))
                         (_else4834248356_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48331_
                          (let ((_$e48333_
                                 (gx#core-context-prelude__% _ctx48327_)))
                            (if _$e48333_
                                ((lambda (_pre48336_)
                                   (cons _pre48336_
                                         (##structure-ref
                                          _ctx48327_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48333_)
                                (##structure-ref
                                 _ctx48327_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48266_)
      (let* ((_scm48268_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48266_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48270_ (gx#current-expander-module-library-path))
             (_dirs48279_
              (let ((_$e48272_ (gxc#current-compile-output-dir)))
                (if _$e48272_
                    ((lambda (_g4827448276_) (cons _g4827448276_ _dirs48270_))
                     _$e48272_)
                    _dirs48270_)))
             (_dirs48285_
              (map (lambda (_g4828048282_)
                     (path-expand '"static" _g4828048282_))
                   _dirs48279_)))
        (let _lp48288_ ((_rest48290_ _dirs48285_))
          (let* ((_rest4829148299_ _rest48290_)
                 (_else4829348307_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48266_ '1 gx#expander-context::t '#f)
                     _scm48268_)))
                 (_K4829548315_
                  (lambda (_rest48310_ _dir48311_)
                    (let ((_path48313_ (path-expand _scm48268_ _dir48311_)))
                      (if (file-exists? _path48313_)
                          _path48313_
                          (_lp48288_ _rest48310_))))))
            (if (##pair? _rest4829148299_)
                (let ((_hd4829648318_ (##car _rest4829148299_))
                      (_tl4829748320_ (##cdr _rest4829148299_)))
                  (let* ((_dir48323_ _hd4829648318_)
                         (_rest48325_ _tl4829748320_))
                    (_K4829548315_ _rest48325_ _dir48323_)))
                (_else4829348307_)))))))
  (define gxc#file-empty?
    (lambda (_path48264_)
      (zero? (file-info-size (file-info _path48264_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48261_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48261_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48261_)
               '#!void)
           (gxc#collect-bindings _ctx48261_)
           (gxc#compile-runtime-code _ctx48261_)
           (gxc#compile-meta-code _ctx48261_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48261_)
               '#!void)))
       gx#current-expander-context
       _ctx48261_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj48748 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj48748) __obj48748))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48259_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48259_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48213_)
      (letrec ((_compile148215_
                (lambda (_ctx48248_)
                  (let* ((_code48250_
                          (##structure-ref
                           _ctx48248_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48254_
                          (if (gxc#apply-find-runtime-code _code48250_)
                              (let ((_idstr48252_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48248_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48252_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48254_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48248_
                             _rt48254_)
                            (_generate-runtime-code48216_
                             _ctx48248_
                             _code48250_))
                          (if (gxc#current-compile-static)
                              (let ((_path48257_
                                     (gxc#compile-static-output-file
                                      _ctx48248_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48257_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48217_
                       _ctx48248_
                       _code48250_
                       _rt48254_)))))
               (_generate-runtime-code48216_
                (lambda (_ctx48232_ _code48233_)
                  (let* ((_lifts48235_ (box '()))
                         (_runtime-code48238_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48233_))
                           gx#current-expander-context
                           _ctx48232_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48235_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code48240_
                          (if (null? (unbox _lifts48235_))
                              _runtime-code48238_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48238_ '())
                                            (reverse (unbox _lifts48235_))))))
                         (_scm048242_
                          (gxc#compile-output-file _ctx48232_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48245_
                               (gxc#compile-static-output-file _ctx48232_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm048242_
                                _runtime-code48240_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48245_)
                                (delete-file _scms48245_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048242_
                             '" => "
                             _scms48245_)
                            (copy-file _scm048242_ _scms48245_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048242_))))
                        (gxc#compile-scm-file
                         _scm048242_
                         _runtime-code48240_)))))
               (_generate-loader-code48217_
                (lambda (_ctx48221_ _code48222_ _rt48223_)
                  (let* ((_loader-code48226_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48222_))
                           gx#current-expander-context
                           _ctx48221_))
                         (_loader-code48228_
                          (if _rt48223_
                              (cons 'begin
                                    (cons _loader-code48226_
                                          (cons (cons 'load-module
                                                      (cons _rt48223_ '()))
                                                '())))
                              _loader-code48226_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx48221_ 'rt '".scm")
                        _loader-code48228_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48219_
               (cons _ctx48213_ (gxc#lift-nested-modules _ctx48213_))))
          (for-each _compile148215_ _all-modules48219_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48115_)
      (letrec ((_compile-ssi48117_
                (lambda (_code48183_)
                  (let* ((_path48185_
                          (gxc#compile-output-file _ctx48115_ '#f '".ssi"))
                         (_prelude48196_
                          (let* ((_super48187_
                                  (##structure-ref
                                   _ctx48115_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48189_
                                  (##structure-ref
                                   _super48187_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48189_
                                ((lambda (_g4819148193_)
                                   (make-symbol '":" _g4819148193_))
                                 _$e48189_)
                                ':<root>)))
                         (_ns48198_
                          (##structure-ref
                           _ctx48115_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48200_
                          (symbol->string
                           (##structure-ref
                            _ctx48115_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48207_
                          (let ((_$e48202_ (string-rindex _idstr48200_ '#\/)))
                            (if _$e48202_
                                ((lambda (_x48205_)
                                   (string->symbol
                                    (substring _idstr48200_ '0 _x48205_)))
                                 _$e48202_)
                                '#f)))
                         (_rt48209_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48115_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48185_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48185_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48196_)
                           (if _pkg48207_
                               (displayln '"package:" '" " _pkg48207_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48198_)
                           (newline)
                           (pretty-print _code48183_)
                           (if _rt48209_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48209_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48118_
                (lambda (_part48123_)
                  (let* ((_part4812448137_ _part48123_)
                         (_E4812648141_
                          (lambda ()
                            (error '"No clause matching" _part4812448137_)))
                         (_K4812748152_
                          (lambda (_code48144_
                                   _n48145_
                                   _phi48146_
                                   _phi-ctx48147_)
                            (let ((_code48150_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48144_))
                                    gx#current-expander-context
                                    _phi-ctx48147_
                                    gx#current-expander-phi
                                    _phi48146_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx48115_
                                _n48145_
                                '".scm")
                               _code48150_)))))
                    (if (##pair? _part4812448137_)
                        (let ((_hd4812848155_ (##car _part4812448137_))
                              (_tl4812948157_ (##cdr _part4812448137_)))
                          (let ((_phi-ctx48160_ _hd4812848155_))
                            (if (##pair? _tl4812948157_)
                                (let ((_hd4813048162_ (##car _tl4812948157_))
                                      (_tl4813148164_ (##cdr _tl4812948157_)))
                                  (let ((_phi48167_ _hd4813048162_))
                                    (if (##pair? _tl4813148164_)
                                        (let ((_hd4813248169_
                                               (##car _tl4813148164_))
                                              (_tl4813348171_
                                               (##cdr _tl4813148164_)))
                                          (let ((_n48174_ _hd4813248169_))
                                            (if (##pair? _tl4813348171_)
                                                (let ((_hd4813448176_
                                                       (##car _tl4813348171_))
                                                      (_tl4813548178_
                                                       (##cdr _tl4813348171_)))
                                                  (let ((_code48181_
                                                         _hd4813448176_))
                                                    (if (##null? _tl4813548178_)
                                                        (_K4812748152_
                                                         _code48181_
                                                         _n48174_
                                                         _phi48167_
                                                         _phi-ctx48160_)
                                                        (_E4812648141_))))
                                                (_E4812648141_))))
                                        (_E4812648141_))))
                                (_E4812648141_))))
                        (_E4812648141_))))))
        (let ((_g48756_ (gxc#generate-meta-code _ctx48115_)))
          (begin
            (let ((_g48757_
                   (if (##values? _g48756_) (##vector-length _g48756_) 1)))
              (if (not (##fx= _g48757_ 2))
                  (error "Context expects 2 values" _g48757_)))
            (let ((_ssi-code48120_ (##vector-ref _g48756_ 0))
                  (_phi-code48121_ (##vector-ref _g48756_ 1)))
              (begin
                (_compile-ssi48117_ _ssi-code48120_)
                (for-each _compile-phi48118_ _phi-code48121_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48098_)
      (let* ((_path48100_ (gxc#compile-output-file _ctx48098_ '#f '".ssxi.ss"))
             (_code48102_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48098_ '11 gx#module-context::t '#f)))
             (_idstr48104_
              (symbol->string
               (##structure-ref _ctx48098_ '1 gx#expander-context::t '#f)))
             (_pkg48111_
              (let ((_$e48106_ (string-rindex _idstr48104_ '#\/)))
                (if _$e48106_
                    ((lambda (_x48109_)
                       (string->symbol (substring _idstr48104_ '0 _x48109_)))
                     _$e48106_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48100_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48100_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48111_ (displayln '"package: " _pkg48111_) '#!void)
               (newline)
               (pretty-print _code48102_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48091_)
      (let* ((_state48093_
              (let ((__obj48749 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj48749 _ctx48091_)
                  __obj48749)))
             (_ssi-code48095_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48091_ '11 gx#module-context::t '#f)
               _state48093_)))
        (values _ssi-code48095_ (gxc#meta-state-end! _state48093_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48084_)
      (let ((_lifts48086_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48089_ (gxc#apply-generate-runtime-phi _stx48084_)))
             (if (null? (unbox _lifts48086_))
                 _code48089_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48089_ '())
                               (reverse (unbox _lifts48086_)))))))
         gxc#current-compile-lift
         _lifts48086_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48080_)
      (let ((_modules48082_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48080_ '11 gx#module-context::t '#f)
           _modules48082_)
          (reverse (unbox _modules48082_))))))
  (define gxc#compile-scm-file
    (lambda (_path48076_ _code48077_)
      (begin
        (gxc#verbose '"compile " _path48076_)
        (with-output-to-file
         (cons 'path: (cons _path48076_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code48077_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path48076_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path48076_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e48065_ (gxc#current-compile-debug)))
        (if _$e48065_
            ((lambda (_debug48068_)
               (let ((_$e48070_ _debug48068_))
                 (if (eq? 'env _$e48070_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e48070_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e48073_ (eq? 'all _$e48070_)))
                               (if _$e48073_ _$e48073_ (eq? '#t _$e48070_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug48068_))))))
             _$e48065_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path48047_)
      (let* ((_gsc-args48054_
              (let ((_$e48049_ (gxc#current-compile-gsc-options)))
                (if _$e48049_
                    ((lambda (_opts48052_)
                       (foldr1 cons (cons _path48047_ '()) _opts48052_))
                     _$e48049_)
                    (cons _path48047_ '()))))
             (_gsc-args48056_
              (foldr1 cons _gsc-args48054_ (gxc#gsc-debug-options)))
             (_g48758_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args48056_)))
             (_proc48059_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args48056_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status48061_ (process-status _proc48059_)))
        (if (zero? _status48061_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path48047_
             _status48061_)))))
  (define gxc#compile-output-file
    (lambda (_ctx48019_ _n48020_ _ext48021_)
      (letrec ((_module-relative-path48023_
                (lambda (_ctx48045_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx48045_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory48024_
                (lambda (_ctx48041_)
                  (path-directory
                   (let ((_mpath48043_
                          (##structure-ref
                           _ctx48041_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath48043_)
                         _mpath48043_
                         (last _mpath48043_))))))
               (_section-string48025_
                (lambda (_n48039_)
                  (if (number? _n48039_)
                      (number->string _n48039_)
                      (if (symbol? _n48039_)
                          (symbol->string _n48039_)
                          (if (string? _n48039_)
                              _n48039_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n48039_))))))
               (_file-name48026_
                (lambda (_path48037_)
                  (if _n48020_
                      (string-append
                       _path48037_
                       '"__"
                       (_section-string48025_ _n48020_)
                       _ext48021_)
                      (string-append _path48037_ _ext48021_))))
               (_file-path48027_
                (lambda ()
                  (let ((_$e48032_ (gxc#current-compile-output-dir)))
                    (if _$e48032_
                        ((lambda (_outdir48035_)
                           (path-expand
                            (_file-name48026_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx48019_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir48035_))
                         _$e48032_)
                        (path-expand
                         (_file-name48026_
                          (_module-relative-path48023_ _ctx48019_))
                         (_module-source-directory48024_ _ctx48019_)))))))
        (let ((_path48029_ (_file-path48027_)))
          (begin
            (create-directory* (path-directory _path48029_))
            _path48029_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx48002_)
      (letrec ((_file-name48004_
                (lambda (_id48017_)
                  (string-append (gxc#static-module-name _id48017_) '".scm")))
               (_file-path48005_
                (lambda ()
                  (let* ((_file48010_
                          (_file-name48004_
                           (##structure-ref
                            _ctx48002_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e48012_ (gxc#current-compile-output-dir)))
                    (if _$e48012_
                        ((lambda (_outdir48015_)
                           (path-expand
                            _file48010_
                            (path-expand '"static" _outdir48015_)))
                         _$e48012_)
                        (path-expand _file48010_ '"static"))))))
        (let ((_path48007_ (_file-path48005_)))
          (begin
            (create-directory* (path-directory _path48007_))
            _path48007_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx47989_ _opts47990_)
      (let ((_$e47992_ (pgetq 'output-file: _opts47990_)))
        (if _$e47992_
            (values _$e47992_)
            (let* ((_mod-str47995_
                    (symbol->string
                     (##structure-ref
                      _ctx47989_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e47997_ (string-rindex _mod-str47995_ '#\/)))
              (if _$e47997_
                  ((lambda (_ix48000_)
                     (substring
                      _mod-str47995_
                      (fx+ _ix48000_ '1)
                      (string-length _mod-str47995_)))
                   _$e47997_)
                  _mod-str47995_))))))
  (define gxc#static-module-name
    (lambda (_idstr47982_)
      (if (string? _idstr47982_)
          (let* ((_str47984_ (gxc#module-id->path-string _idstr47982_))
                 (_strs47986_ (string-split _str47984_ '#\/)))
            (string-join _strs47986_ '"__"))
          (if (symbol? _idstr47982_)
              (gxc#static-module-name (symbol->string _idstr47982_))
              (error '"Bad module id" _idstr47982_))))))
