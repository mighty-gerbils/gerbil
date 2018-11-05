(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (define gxc#gerbil-gsc (lambda () (getenv '"GERBIL_GSC" '"gsc")))
  (define gxc#compile-file__%
    (lambda (_srcpath50241_ _opts50242_)
      (if (string? _srcpath50241_)
          '#!void
          (gxc#raise-compile-error
           '"Invalid module source path"
           _srcpath50241_))
      (let ((_outdir50244_ (pgetq 'output-dir: _opts50242_))
            (_invoke-gsc?50245_ (pgetq 'invoke-gsc: _opts50242_))
            (_gsc-options50246_ (pgetq 'gsc-options: _opts50242_))
            (_keep-scm?50247_ (pgetq 'keep-scm: _opts50242_))
            (_verbosity50248_ (pgetq 'verbose: _opts50242_))
            (_optimize50249_ (pgetq 'optimize: _opts50242_))
            (_debug50250_ (pgetq 'debug: _opts50242_))
            (_gen-ssxi50251_ (pgetq 'generate-ssxi: _opts50242_))
            (_static50252_ (pgetq 'static: _opts50242_)))
        (if _outdir50244_ (create-directory* _outdir50244_) '#!void)
        (if _optimize50249_ (gxc#optimizer-info-init!) '#!void)
        (call-with-parameters
         (lambda ()
           (gxc#verbose '"compile " _srcpath50241_)
           (gxc#compile-top-module (gx#import-module__0 _srcpath50241_)))
         gxc#current-compile-output-dir
         _outdir50244_
         gxc#current-compile-invoke-gsc
         _invoke-gsc?50245_
         gxc#current-compile-gsc-options
         _gsc-options50246_
         gxc#current-compile-keep-scm
         _keep-scm?50247_
         gxc#current-compile-verbose
         _verbosity50248_
         gxc#current-compile-optimize
         _optimize50249_
         gxc#current-compile-debug
         _debug50250_
         gxc#current-compile-generate-ssxi
         _gen-ssxi50251_
         gxc#current-compile-static
         _static50252_
         gxc#current-compile-timestamp
         (gxc#compile-timestamp)))))
  (define gxc#compile-file__0
    (lambda (_srcpath50258_)
      (let ((_opts50260_ '()))
        (gxc#compile-file__% _srcpath50258_ _opts50260_))))
  (define gxc#compile-file
    (lambda _g50282_
      (let ((_g50281_ (length _g50282_)))
        (cond ((##fx= _g50281_ 1) (apply gxc#compile-file__0 _g50282_))
              ((##fx= _g50281_ 2) (apply gxc#compile-file__% _g50282_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#compile-file
                _g50282_))))))
  (define gxc#compile-exe-stub__%
    (lambda (_srcpath50227_ _opts50228_)
      (gxc#do-compile-exe
       _srcpath50227_
       _opts50228_
       gxc#compile-exe-stub-module)))
  (define gxc#compile-exe-stub__0
    (lambda (_srcpath50233_)
      (let ((_opts50235_ '()))
        (gxc#compile-exe-stub__% _srcpath50233_ _opts50235_))))
  (define gxc#compile-exe-stub
    (lambda _g50284_
      (let ((_g50283_ (length _g50284_)))
        (cond ((##fx= _g50283_ 1) (apply gxc#compile-exe-stub__0 _g50284_))
              ((##fx= _g50283_ 2) (apply gxc#compile-exe-stub__% _g50284_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#compile-exe-stub
                _g50284_))))))
  (define gxc#compile-static-exe__%
    (lambda (_srcpath50213_ _opts50214_)
      (gxc#do-compile-exe
       _srcpath50213_
       _opts50214_
       gxc#compile-exe-static-module)))
  (define gxc#compile-static-exe__0
    (lambda (_srcpath50219_)
      (let ((_opts50221_ '()))
        (gxc#compile-static-exe__% _srcpath50219_ _opts50221_))))
  (define gxc#compile-static-exe
    (lambda _g50286_
      (let ((_g50285_ (length _g50286_)))
        (cond ((##fx= _g50285_ 1) (apply gxc#compile-static-exe__0 _g50286_))
              ((##fx= _g50285_ 2) (apply gxc#compile-static-exe__% _g50286_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#compile-static-exe
                _g50286_))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath50201_ _opts50202_ _compile-e50203_)
      (if (string? _srcpath50201_)
          '#!void
          (gxc#raise-compile-error
           '"Invalid module source path"
           _srcpath50201_))
      (let ((_outdir50205_ (pgetq 'output-dir: _opts50202_))
            (_invoke-gsc?50206_ (pgetq 'invoke-gsc: _opts50202_))
            (_gsc-options50207_ (pgetq 'gsc-options: _opts50202_))
            (_keep-scm?50208_ (pgetq 'keep-scm: _opts50202_))
            (_verbosity50209_ (pgetq 'verbose: _opts50202_)))
        (if _outdir50205_ (create-directory* _outdir50205_) '#!void)
        (call-with-parameters
         (lambda ()
           (gxc#verbose '"compile exe " _srcpath50201_)
           (_compile-e50203_ (gx#import-module__0 _srcpath50201_) _opts50202_))
         gxc#current-compile-output-dir
         _outdir50205_
         gxc#current-compile-invoke-gsc
         _invoke-gsc?50206_
         gxc#current-compile-gsc-options
         _gsc-options50207_
         gxc#current-compile-keep-scm
         _keep-scm?50208_
         gxc#current-compile-verbose
         _verbosity50209_
         gxc#current-compile-timestamp
         (gxc#compile-timestamp)))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx50167_ _opts50168_)
      (letrec ((_generate-stub50170_
                (lambda (_gx-init-stub50192_)
                  (let* ((_mod-str50194_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx50167_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt50196_ (string-append _mod-str50194_ '"__rt"))
                         (_mod-main50198_
                          (gxc#find-runtime-symbol _ctx50167_ 'main)))
                    (write '(##namespace ("")))
                    (newline)
                    (write (cons 'include (cons _gx-init-stub50192_ '())))
                    (newline)
                    (write (cons '_gx#start!
                                 (cons _mod-rt50196_
                                       (cons (cons 'quote
                                                   (cons _mod-main50198_ '()))
                                             '()))))
                    (newline))))
               (_compile-stub50171_
                (lambda (_output-scm50178_ _output-bin50179_)
                  (let* ((_init-stub50181_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args50183_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin50179_
                                            (cons _output-scm50178_ '()))))))
                    (with-output-to-file
                     _output-scm50178_
                     (lambda () (_generate-stub50170_ _init-stub50181_)))
                    (if (gxc#current-compile-invoke-gsc)
                        (begin
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args50183_))
                          (let* ((_proc50187_
                                  (open-process
                                   (cons 'path:
                                         (cons (gxc#gerbil-gsc)
                                               (cons 'arguments:
                                                     (cons _gsc-args50183_
                                                           (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_status50189_ (process-status _proc50187_)))
                            (if (zero? _status50189_)
                                '#!void
                                (gxc#raise-compile-error
                                 '"Compilation error; gsc exit with nonzero status"
                                 _output-scm50178_
                                 _output-bin50179_
                                 _status50189_))))
                        '#!void)))))
        (let* ((_output-bin50173_
                (gxc#compile-exe-output-file _ctx50167_ _opts50168_))
               (_output-scm50175_ (string-append _output-bin50173_ '".scm")))
          (create-directory* (path-directory _output-scm50175_))
          (_compile-stub50171_ _output-scm50175_ _output-bin50173_)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _output-scm50175_))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx50028_ _opts50029_)
      (letrec ((_reset-declare50031_
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
               (_user-declare50032_
                (lambda ()
                  (let* ((_gsc-opts50110_ (pgetq 'gsc-options: _opts50029_))
                         (_gsc-prelude50112_
                          (if _gsc-opts50110_
                              (member '"-prelude" _gsc-opts50110_)
                              '#f))
                         (_gsc-prelude50114_
                          (if _gsc-prelude50112_
                              (read (open-input-string
                                     (cadr _gsc-prelude50112_)))
                              '#f)))
                    (let _lift50117_ ((_expr50119_ _gsc-prelude50114_))
                      (let* ((_expr5012050132_ _expr50119_)
                             (_else5012350140_ (lambda () '#f)))
                        (let ((_K5012850160_ (lambda () _expr50119_))
                              (_K5012550146_
                               (lambda (_exprs50144_)
                                 (ormap1 _lift50117_ _exprs50144_))))
                          (if (##pair? _expr5012050132_)
                              (let ((_hd5012950163_ (##car _expr5012050132_)))
                                (if (##eq? _hd5012950163_ 'declare)
                                    (_K5012850160_)
                                    (let ((_tl5012750151_
                                           (##cdr _expr5012050132_)))
                                      (if (##eq? _hd5012950163_ 'begin)
                                          (let ((_exprs50154_ _tl5012750151_))
                                            (_K5012550146_ _exprs50154_))
                                          (_else5012350140_)))))
                              (_else5012350140_))))))))
               (_generate-stub50033_
                (lambda (_deps50101_)
                  (let ((_mod-main50103_
                         (gxc#find-runtime-symbol _ctx50028_ 'main))
                        (_reset-decl50104_ (_reset-declare50031_))
                        (_user-decl50105_ (_user-declare50032_)))
                    (write '(##namespace ("")))
                    (newline)
                    (write '(declare (optimize-dead-definitions)))
                    (newline)
                    (for-each
                     (lambda (_dep50107_)
                       (write (cons 'include (cons _dep50107_ '())))
                       (newline)
                       (write '(##namespace ("")))
                       (write _reset-decl50104_)
                       (if _user-decl50105_ (write _user-decl50105_) '#!void)
                       (newline))
                     _deps50101_)
                    (write (cons 'apply
                                 (cons _mod-main50103_
                                       (cons (cons 'cdr
                                                   (cons (cons 'command-line
                                                               '())
                                                         '()))
                                             '()))))
                    (newline))))
               (_static-include50034_
                (lambda (_gsc-opts50084_ _home50085_)
                  (letrec* ((_static-dir50087_
                             (path-expand '"lib/static" _home50085_))
                            (_user-static-dir50088_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags50089_
                             (string-append
                              '"-I "
                              _static-dir50087_
                              '" -I "
                              _user-static-dir50088_)))
                    (let ((_$e50091_ (member '"-cc-options" _gsc-opts50084_)))
                      (if _$e50091_
                          ((lambda (_rest50094_)
                             (let* ((_cell50096_ (cdr _rest50094_))
                                    (_opt50098_ (car _cell50096_)))
                               (set-car!
                                _cell50096_
                                (string-append
                                 _opt50098_
                                 '" "
                                 _cppflags50089_))
                               _gsc-opts50084_))
                           _$e50091_)
                          (cons '"-cc-options"
                                (cons _cppflags50089_ _gsc-opts50084_)))))))
               (_compile-stub50035_
                (lambda (_output-scm50042_ _output-bin50043_)
                  (let* ((_gerbil-home50045_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc050047_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home50045_))
                         (_gx-gambc-init50049_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home50045_))
                         (_gx-gambc-macros50051_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home50045_))
                         (_include-gx-gambc-macros50053_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros50051_
                           '"\")"))
                         (_bin-scm50055_
                          (gxc#find-static-module-file _ctx50028_))
                         (_deps50057_
                          (gxc#find-runtime-module-deps _ctx50028_))
                         (_deps50059_
                          (map gxc#find-static-module-file _deps50057_))
                         (_deps50064_
                          (filter (lambda (_$obj50061_)
                                    (not (gxc#file-empty? _$obj50061_)))
                                  _deps50059_))
                         (_gsc-opts50069_
                          (let ((_$e50066_ (pgetq 'gsc-options: _opts50029_)))
                            (if _$e50066_ _$e50066_ '())))
                         (_gsc-opts50071_
                          (_static-include50034_
                           _gsc-opts50069_
                           _gerbil-home50045_))
                         (_gsc-gx-macros50073_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros50053_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros50053_
                                          '()))))
                         (_gsc-args50075_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin50043_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm50042_ '())
                            _gsc-gx-macros50073_)
                    _gsc-opts50071_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options__0)))))))
                    (with-output-to-file
                     _output-scm50042_
                     (lambda ()
                       (_generate-stub50033_
                        (cons _gx-gambc050047_
                              (cons _gx-gambc-init50049_
                                    (foldr1 cons
                                            (cons _bin-scm50055_ '())
                                            _deps50064_))))))
                    (if (gxc#current-compile-invoke-gsc)
                        (begin
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args50075_))
                          (let* ((_proc50079_
                                  (open-process
                                   (cons 'path:
                                         (cons (gxc#gerbil-gsc)
                                               (cons 'arguments:
                                                     (cons _gsc-args50075_
                                                           (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_status50081_ (process-status _proc50079_)))
                            (if (zero? _status50081_)
                                '#!void
                                (gxc#raise-compile-error
                                 '"Compilation error; gsc exit with nonzero status"
                                 _output-scm50042_
                                 _output-bin50043_
                                 _status50081_))))
                        '#!void)))))
        (let* ((_output-bin50037_
                (gxc#compile-exe-output-file _ctx50028_ _opts50029_))
               (_output-scm50039_ (string-append _output-bin50037_ '".scm")))
          (_compile-stub50035_ _output-scm50039_ _output-bin50037_)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _output-scm50039_))))))
  (define gxc#find-export-binding
    (lambda (_ctx49978_ _id49979_)
      (let ((_$e50025_
             (find (lambda (_e4998049982_)
                     (let* ((_g4998449994_ _e4998049982_)
                            (_else4998650002_ (lambda () '#f))
                            (_K4998850006_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4998449994_
                            'gx#module-export::t)
                           (let* ((_e4998950009_
                                   (##vector-ref _g4998449994_ '1))
                                  (_e4999050012_
                                   (##vector-ref _g4998449994_ '2))
                                  (_e4999150015_
                                   (##vector-ref _g4998449994_ '3)))
                             (if (##eq? _e4999150015_ '0)
                                 (let ((_e4999250018_
                                        (##vector-ref _g4998449994_ '4)))
                                   (if ((lambda (_g5002050022_)
                                          (eq? _g5002050022_ _id49979_))
                                        _e4999250018_)
                                       (_K4998850006_)
                                       (_else4998650002_)))
                                 (_else4998650002_)))
                           (_else4998650002_))))
                   (##structure-ref _ctx49978_ '9 gx#module-context::t '#f))))
        (if _$e50025_ (gx#core-resolve-module-export _$e50025_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx49970_ _id49971_)
      (let ((_$e49973_ (gxc#find-export-binding _ctx49970_ _id49971_)))
        (if _$e49973_
            ((lambda (_bind49976_)
               (if (##structure-instance-of?
                    _bind49976_
                    'gx#runtime-binding::t)
                   '#!void
                   (gxc#raise-compile-error
                    '"export is not a runtime binding"
                    _id49971_))
               (##structure-ref _bind49976_ '1 gx#binding::t '#f))
             _$e49973_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx49970_ '1 gx#expander-context::t '#f)
             _id49971_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx49857_)
      (letrec* ((_ht49859_ (make-table 'test: eq?))
                (_import-set-template49860_
                 (lambda (_in49922_ _phi49923_)
                   (let ((_iphi49925_
                          (fx+ _phi49923_
                               (##direct-structure-ref
                                _in49922_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports49926_
                          (##structure-ref
                           (##direct-structure-ref
                            _in49922_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp49928_ ((_rest49930_ _imports49926_)
                                     (_r49931_ '()))
                       (let* ((_rest4993249940_ _rest49930_)
                              (_else4993449948_ (lambda () _r49931_))
                              (_K4993649958_
                               (lambda (_rest49951_ _in49952_)
                                 (if (##structure-instance-of?
                                      _in49952_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi49925_)
                                         (_lp49928_
                                          _rest49951_
                                          (cons _in49952_ _r49931_))
                                         (_lp49928_ _rest49951_ _r49931_))
                                     (if (##structure-direct-instance-of?
                                          _in49952_
                                          'gx#module-import::t)
                                         (let ((_iphi49954_
                                                (fx+ _phi49923_
                                                     (##direct-structure-ref
                                                      _in49952_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi49954_)
                                               (_lp49928_
                                                _rest49951_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in49952_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r49931_))
                                               (_lp49928_
                                                _rest49951_
                                                _r49931_)))
                                         (if (##structure-direct-instance-of?
                                              _in49952_
                                              'gx#import-set::t)
                                             (let ((_xphi49956_
                                                    (fx+ _iphi49925_
                                                         (##direct-structure-ref
                                                          _in49952_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi49956_)
                                                   (_lp49928_
                                                    _rest49951_
                                                    (cons (##direct-structure-ref
                                                           _in49952_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r49931_))
                                                   (if (fxpositive?
                                                        _xphi49956_)
                                                       (_lp49928_
                                                        _rest49951_
                                                        (foldl1 cons
                                                                _r49931_
                                                                (_import-set-template49860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in49952_
                         _iphi49925_)))
               (_lp49928_ _rest49951_ _r49931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp49928_
                                              _rest49951_
                                              _r49931_)))))))
                         (if (##pair? _rest4993249940_)
                             (let ((_hd4993749961_ (##car _rest4993249940_))
                                   (_tl4993849963_ (##cdr _rest4993249940_)))
                               (let* ((_in49966_ _hd4993749961_)
                                      (_rest49968_ _tl4993849963_))
                                 (_K4993649958_ _rest49968_ _in49966_)))
                             (_else4993449948_)))))))
                (_find-deps49861_
                 (lambda (_rest49868_ _deps49869_)
                   (let* ((_rest4987049878_ _rest49868_)
                          (_else4987249886_ (lambda () _deps49869_))
                          (_K4987449910_
                           (lambda (_rest49889_ _hd49890_)
                             (if (##structure-instance-of?
                                  _hd49890_
                                  'gx#module-context::t)
                                 (let ((_id49892_
                                        (##structure-ref
                                         _hd49890_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports49893_
                                        (##structure-ref
                                         _hd49890_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht49859_ _id49892_ '#f)
                                       (_find-deps49861_
                                        _rest49889_
                                        _deps49869_)
                                       (let ((_$e49895_
                                              (gx#core-context-prelude__%
                                               _hd49890_)))
                                         (if _$e49895_
                                             ((lambda (_pre49898_)
                                                (let ((_xdeps49900_
                                                       (_find-deps49861_
                                                        (cons _pre49898_
                                                              _imports49893_)
                                                        _deps49869_)))
                                                  (table-set!
                                                   _ht49859_
                                                   _id49892_
                                                   _hd49890_)
                                                  (_find-deps49861_
                                                   _rest49889_
                                                   (cons _hd49890_
                                                         _xdeps49900_))))
                                              _$e49895_)
                                             (let ((_xdeps49902_
                                                    (_find-deps49861_
                                                     _imports49893_
                                                     _deps49869_)))
                                               (table-set!
                                                _ht49859_
                                                _id49892_
                                                _hd49890_)
                                               (_find-deps49861_
                                                _rest49889_
                                                (cons _hd49890_
                                                      _xdeps49902_)))))))
                                 (if (##structure-instance-of?
                                      _hd49890_
                                      'gx#prelude-context::t)
                                     (let ((_id49904_
                                            (##structure-ref
                                             _hd49890_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht49859_ _id49904_ '#f)
                                           (_find-deps49861_
                                            _rest49889_
                                            _deps49869_)
                                           (let ((_xdeps49906_
                                                  (_find-deps49861_
                                                   (##structure-ref
                                                    _hd49890_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps49869_)))
                                             (if (table-ref
                                                  _ht49859_
                                                  _id49904_
                                                  '#f)
                                                 (_find-deps49861_
                                                  _rest49889_
                                                  _xdeps49906_)
                                                 (begin
                                                   (table-set!
                                                    _ht49859_
                                                    _id49904_
                                                    _hd49890_)
                                                   (_find-deps49861_
                                                    _rest49889_
                                                    (cons _hd49890_
                                                          _xdeps49906_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd49890_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd49890_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps49861_
                                              (cons (##direct-structure-ref
                                                     _hd49890_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest49889_)
                                              _deps49869_)
                                             (_find-deps49861_
                                              _rest49889_
                                              _deps49869_))
                                         (if (##structure-direct-instance-of?
                                              _hd49890_
                                              'gx#module-export::t)
                                             (_find-deps49861_
                                              (cons (##direct-structure-ref
                                                     _hd49890_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest49889_)
                                              _deps49869_)
                                             (if (##structure-direct-instance-of?
                                                  _hd49890_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd49890_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps49861_
                                                      (cons (##direct-structure-ref
                                                             _hd49890_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest49889_)
                                                      _deps49869_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd49890_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps49908_
                                                                (_import-set-template49860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd49890_
                         '0)))
                   (_find-deps49861_
                    (foldl1 cons _rest49889_ _xdeps49908_)
                    _deps49869_))
                 (_find-deps49861_ _rest49889_ _deps49869_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd49890_)))))))))
                     (if (##pair? _rest4987049878_)
                         (let ((_hd4987549913_ (##car _rest4987049878_))
                               (_tl4987649915_ (##cdr _rest4987049878_)))
                           (let* ((_hd49918_ _hd4987549913_)
                                  (_rest49920_ _tl4987649915_))
                             (_K4987449910_ _rest49920_ _hd49918_)))
                         (_else4987249886_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps49861_
                          (let ((_$e49863_
                                 (gx#core-context-prelude__% _ctx49857_)))
                            (if _$e49863_
                                ((lambda (_pre49866_)
                                   (cons _pre49866_
                                         (##structure-ref
                                          _ctx49857_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e49863_)
                                (##structure-ref
                                 _ctx49857_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx49796_)
      (let* ((_scm49798_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx49796_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs49800_ (gx#current-expander-module-library-path))
             (_dirs49809_
              (let ((_$e49802_ (gxc#current-compile-output-dir)))
                (if _$e49802_
                    ((lambda (_g4980449806_) (cons _g4980449806_ _dirs49800_))
                     _$e49802_)
                    _dirs49800_)))
             (_dirs49815_
              (map (lambda (_g4981049812_)
                     (path-expand '"static" _g4981049812_))
                   _dirs49809_)))
        (let _lp49818_ ((_rest49820_ _dirs49815_))
          (let* ((_rest4982149829_ _rest49820_)
                 (_else4982349837_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx49796_ '1 gx#expander-context::t '#f)
                     _scm49798_)))
                 (_K4982549845_
                  (lambda (_rest49840_ _dir49841_)
                    (let ((_path49843_ (path-expand _scm49798_ _dir49841_)))
                      (if (file-exists? _path49843_)
                          _path49843_
                          (_lp49818_ _rest49840_))))))
            (if (##pair? _rest4982149829_)
                (let ((_hd4982649848_ (##car _rest4982149829_))
                      (_tl4982749850_ (##cdr _rest4982149829_)))
                  (let* ((_dir49853_ _hd4982649848_)
                         (_rest49855_ _tl4982749850_))
                    (_K4982549845_ _rest49855_ _dir49853_)))
                (_else4982349837_)))))))
  (define gxc#file-empty?
    (lambda (_path49794_)
      (zero? (file-info-size (file-info _path49794_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx49791_)
      (call-with-parameters
       (lambda ()
         (gxc#verbose
          '"compile "
          (##structure-ref _ctx49791_ '1 gx#expander-context::t '#f))
         (if (gxc#current-compile-optimize) (gxc#optimize! _ctx49791_) '#!void)
         (gxc#collect-bindings _ctx49791_)
         (gxc#compile-runtime-code _ctx49791_)
         (gxc#compile-meta-code _ctx49791_)
         (if (and (gxc#current-compile-optimize)
                  (gxc#current-compile-generate-ssxi))
             (gxc#compile-ssxi-code _ctx49791_)
             '#!void))
       gx#current-expander-context
       _ctx49791_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj50279 (make-object gxc#symbol-table::t '2)))
         (gxc#symbol-table:::init! __obj50279)
         __obj50279)
       gxc#current-compile-runtime-sections
       (make-table 'test: eq?)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx49789_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx49789_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx49743_)
      (letrec ((_compile149745_
                (lambda (_ctx49778_)
                  (let* ((_code49780_
                          (##structure-ref
                           _ctx49778_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt49784_
                          (if (gxc#apply-find-runtime-code _code49780_)
                              (let ((_idstr49782_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx49778_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr49782_ '"__0"))
                              '#f)))
                    (if _rt49784_
                        (begin
                          (table-set!
                           (gxc#current-compile-runtime-sections)
                           _ctx49778_
                           _rt49784_)
                          (_generate-runtime-code49746_
                           _ctx49778_
                           _code49780_))
                        (if (gxc#current-compile-static)
                            (let ((_path49787_
                                   (gxc#compile-static-output-file
                                    _ctx49778_)))
                              (with-output-to-file
                               (cons 'path:
                                     (cons _path49787_
                                           (cons 'permissions:
                                                 (cons '420 '()))))
                               void))
                            '#!void))
                    (_generate-loader-code49747_
                     _ctx49778_
                     _code49780_
                     _rt49784_))))
               (_generate-runtime-code49746_
                (lambda (_ctx49762_ _code49763_)
                  (let* ((_lifts49765_ (box '()))
                         (_runtime-code49768_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code49763_))
                           gx#current-expander-context
                           _ctx49762_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts49765_
                           gxc#current-compile-marks
                           (make-table 'test: eq?)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code49770_
                          (if (null? (unbox _lifts49765_))
                              _runtime-code49768_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code49768_ '())
                                            (reverse (unbox _lifts49765_))))))
                         (_scm049772_
                          (gxc#compile-output-file _ctx49762_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms49775_
                               (gxc#compile-static-output-file _ctx49762_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-scm-file__0
                              _scm049772_
                              _runtime-code49770_))
                           gxc#current-compile-keep-scm
                           '#t)
                          (if (file-exists? _scms49775_)
                              (delete-file _scms49775_)
                              '#!void)
                          (gxc#verbose
                           '"copy static module "
                           _scm049772_
                           '" => "
                           _scms49775_)
                          (copy-file _scm049772_ _scms49775_)
                          (if (gxc#current-compile-keep-scm)
                              '#!void
                              (delete-file _scm049772_)))
                        (gxc#compile-scm-file__0
                         _scm049772_
                         _runtime-code49770_)))))
               (_generate-loader-code49747_
                (lambda (_ctx49751_ _code49752_ _rt49753_)
                  (let* ((_loader-code49756_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code49752_))
                           gx#current-expander-context
                           _ctx49751_))
                         (_loader-code49758_
                          (if _rt49753_
                              (cons 'begin
                                    (cons _loader-code49756_
                                          (cons (cons 'load-module
                                                      (cons _rt49753_ '()))
                                                '())))
                              _loader-code49756_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx49751_ 'rt '".scm")
                        _loader-code49758_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules49749_
               (cons _ctx49743_ (gxc#lift-nested-modules _ctx49743_))))
          (for-each _compile149745_ _all-modules49749_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx49645_)
      (letrec ((_compile-ssi49647_
                (lambda (_code49713_)
                  (let* ((_path49715_
                          (gxc#compile-output-file _ctx49645_ '#f '".ssi"))
                         (_prelude49726_
                          (let* ((_super49717_
                                  (##structure-ref
                                   _ctx49645_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e49719_
                                  (##structure-ref
                                   _super49717_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e49719_
                                ((lambda (_g4972149723_)
                                   (make-symbol '":" _g4972149723_))
                                 _$e49719_)
                                ':<root>)))
                         (_ns49728_
                          (##structure-ref
                           _ctx49645_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr49730_
                          (symbol->string
                           (##structure-ref
                            _ctx49645_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg49737_
                          (let ((_$e49732_ (string-rindex _idstr49730_ '#\/)))
                            (if _$e49732_
                                ((lambda (_x49735_)
                                   (string->symbol
                                    (substring _idstr49730_ '0 _x49735_)))
                                 _$e49732_)
                                '#f)))
                         (_rt49739_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx49645_
                           '#f)))
                    (gxc#verbose '"compile " _path49715_)
                    (with-output-to-file
                     (cons 'path:
                           (cons _path49715_
                                 (cons 'permissions: (cons '420 '()))))
                     (lambda ()
                       (displayln '"prelude:" '" " _prelude49726_)
                       (if _pkg49737_
                           (displayln '"package:" '" " _pkg49737_)
                           '#!void)
                       (displayln '"namespace:" '" " _ns49728_)
                       (newline)
                       (pretty-print _code49713_)
                       (if _rt49739_
                           (pretty-print
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons '_gx#load-module '()))
                                        (cons (cons '%#quote
                                                    (cons _rt49739_ '()))
                                              '()))))
                           '#!void))))))
               (_compile-phi49648_
                (lambda (_part49653_)
                  (let* ((_part4965449667_ _part49653_)
                         (_E4965649671_
                          (lambda ()
                            (error '"No clause matching" _part4965449667_)))
                         (_K4965749682_
                          (lambda (_code49674_
                                   _n49675_
                                   _phi49676_
                                   _phi-ctx49677_)
                            (let ((_code49680_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code49674_))
                                    gx#current-expander-context
                                    _phi-ctx49677_
                                    gx#current-expander-phi
                                    _phi49676_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx49645_
                                _n49675_
                                '".scm")
                               _code49680_
                               '#t)))))
                    (if (##pair? _part4965449667_)
                        (let ((_hd4965849685_ (##car _part4965449667_))
                              (_tl4965949687_ (##cdr _part4965449667_)))
                          (let ((_phi-ctx49690_ _hd4965849685_))
                            (if (##pair? _tl4965949687_)
                                (let ((_hd4966049692_ (##car _tl4965949687_))
                                      (_tl4966149694_ (##cdr _tl4965949687_)))
                                  (let ((_phi49697_ _hd4966049692_))
                                    (if (##pair? _tl4966149694_)
                                        (let ((_hd4966249699_
                                               (##car _tl4966149694_))
                                              (_tl4966349701_
                                               (##cdr _tl4966149694_)))
                                          (let ((_n49704_ _hd4966249699_))
                                            (if (##pair? _tl4966349701_)
                                                (let ((_hd4966449706_
                                                       (##car _tl4966349701_))
                                                      (_tl4966549708_
                                                       (##cdr _tl4966349701_)))
                                                  (let ((_code49711_
                                                         _hd4966449706_))
                                                    (if (##null? _tl4966549708_)
                                                        (_K4965749682_
                                                         _code49711_
                                                         _n49704_
                                                         _phi49697_
                                                         _phi-ctx49690_)
                                                        (_E4965649671_))))
                                                (_E4965649671_))))
                                        (_E4965649671_))))
                                (_E4965649671_))))
                        (_E4965649671_))))))
        (let ((_g50287_ (gxc#generate-meta-code _ctx49645_)))
          (begin
            (let ((_g50288_
                   (if (##values? _g50287_) (##vector-length _g50287_) 1)))
              (if (not (##fx= _g50288_ 2))
                  (error "Context expects 2 values" _g50288_)))
            (let ((_ssi-code49650_ (##vector-ref _g50287_ 0))
                  (_phi-code49651_ (##vector-ref _g50287_ 1)))
              (begin
                (_compile-ssi49647_ _ssi-code49650_)
                (for-each _compile-phi49648_ _phi-code49651_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx49628_)
      (let* ((_path49630_ (gxc#compile-output-file _ctx49628_ '#f '".ssxi.ss"))
             (_code49632_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx49628_ '11 gx#module-context::t '#f)))
             (_idstr49634_
              (symbol->string
               (##structure-ref _ctx49628_ '1 gx#expander-context::t '#f)))
             (_pkg49641_
              (let ((_$e49636_ (string-rindex _idstr49634_ '#\/)))
                (if _$e49636_
                    ((lambda (_x49639_)
                       (string->symbol (substring _idstr49634_ '0 _x49639_)))
                     _$e49636_)
                    '#f))))
        (gxc#verbose '"compile " _path49630_)
        (with-output-to-file
         (cons 'path: (cons _path49630_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (displayln '"prelude: :gerbil/compiler/ssxi")
           (if _pkg49641_ (displayln '"package: " _pkg49641_) '#!void)
           (newline)
           (pretty-print _code49632_))))))
  (define gxc#generate-meta-code
    (lambda (_ctx49621_)
      (let* ((_state49623_
              (let ((__obj50280 (make-object gxc#meta-state::t '4)))
                (gxc#meta-state:::init! __obj50280 _ctx49621_)
                __obj50280))
             (_ssi-code49625_
              (gxc#apply-generate-meta
               (##structure-ref _ctx49621_ '11 gx#module-context::t '#f)
               _state49623_)))
        (values _ssi-code49625_ (gxc#meta-state-end! _state49623_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx49614_)
      (let ((_lifts49616_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code49619_ (gxc#apply-generate-runtime-phi _stx49614_)))
             (if (null? (unbox _lifts49616_))
                 _code49619_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code49619_ '())
                               (reverse (unbox _lifts49616_)))))))
         gxc#current-compile-lift
         _lifts49616_
         gxc#current-compile-marks
         (make-table 'test: eq?)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx49610_)
      (let ((_modules49612_ (box '())))
        (gxc#apply-lift-modules
         (##structure-ref _ctx49610_ '11 gx#module-context::t '#f)
         _modules49612_)
        (reverse (unbox _modules49612_)))))
  (define gxc#compile-scm-file__%
    (lambda (_path49593_ _code49594_ _phi?49595_)
      (gxc#verbose '"compile " _path49593_)
      (with-output-to-file
       (cons 'path: (cons _path49593_ (cons 'permissions: (cons '420 '()))))
       (lambda ()
         (pretty-print
          (cons 'declare
                (cons (cons 'block '())
                      (cons (cons 'standard-bindings '())
                            (cons (cons 'extended-bindings '())
                                  (foldr1 cons
                                          '()
                                          (if _phi?49595_
                                              '((inlining-limit 200))
                                              '())))))))
         (pretty-print _code49594_)))
      (if (gxc#current-compile-invoke-gsc)
          (gxc#gsc-compile-file _path49593_ _phi?49595_)
          '#!void)
      (if (gxc#current-compile-keep-scm) '#!void (delete-file _path49593_))))
  (define gxc#compile-scm-file__0
    (lambda (_path49601_ _code49602_)
      (let ((_phi?49604_ '#f))
        (gxc#compile-scm-file__% _path49601_ _code49602_ _phi?49604_))))
  (define gxc#compile-scm-file
    (lambda _g50290_
      (let ((_g50289_ (length _g50290_)))
        (cond ((##fx= _g50289_ 2) (apply gxc#compile-scm-file__0 _g50290_))
              ((##fx= _g50289_ 3) (apply gxc#compile-scm-file__% _g50290_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#compile-scm-file
                _g50290_))))))
  (define gxc#gsc-debug-options__%
    (lambda (_phi?49500_)
      (let ((_$e49573_ (gxc#current-compile-debug)))
        (if _$e49573_
            ((lambda (_debug49576_)
               (let ((_$e49578_ _debug49576_))
                 (if (eq? 'env _$e49578_)
                     (if _phi?49500_ '() (cons '"-debug-environments" '()))
                     (if (eq? 'env/phi _$e49578_)
                         (cons '"-debug-environments" '())
                         (if (eq? 'src _$e49578_)
                             (if _phi?49500_
                                 '()
                                 (cons '"-debug-environments"
                                       (cons '"-debug-source" '())))
                             (if (eq? 'src/phi _$e49578_)
                                 (cons '"-debug-environments"
                                       (cons '"-debug-source" '()))
                                 (if (eq? 'all _$e49578_)
                                     (if _phi?49500_ '() (cons '"-debug" '()))
                                     (if (or (eq? 'all/phi _$e49578_)
                                             (eq? '#t _$e49578_))
                                         (cons '"-debug" '())
                                         (gxc#raise-compile-error
                                          '"unknown debug option"
                                          _debug49576_)))))))))
             _$e49573_)
            '()))))
  (define gxc#gsc-debug-options__0
    (lambda ()
      (let ((_phi?49588_ '#f)) (gxc#gsc-debug-options__% _phi?49588_))))
  (define gxc#gsc-debug-options
    (lambda _g50292_
      (let ((_g50291_ (length _g50292_)))
        (cond ((##fx= _g50291_ 0) (apply gxc#gsc-debug-options__0 _g50292_))
              ((##fx= _g50291_ 1) (apply gxc#gsc-debug-options__% _g50292_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#gsc-debug-options
                _g50292_))))))
  (define gxc#gsc-compile-file
    (lambda (_path49481_ _phi?49482_)
      (let* ((_gsc-args49489_
              (let ((_$e49484_ (gxc#current-compile-gsc-options)))
                (if _$e49484_
                    ((lambda (_opts49487_)
                       (foldr1 cons (cons _path49481_ '()) _opts49487_))
                     _$e49484_)
                    (cons _path49481_ '()))))
             (_gsc-args49491_
              (foldr1 cons
                      _gsc-args49489_
                      (gxc#gsc-debug-options__% _phi?49482_)))
             (_g50293_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args49491_)))
             (_proc49494_
              (open-process
               (cons 'path:
                     (cons (gxc#gerbil-gsc)
                           (cons 'arguments:
                                 (cons _gsc-args49491_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status49496_ (process-status _proc49494_)))
        (if (zero? _status49496_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path49481_
             _status49496_)))))
  (define gxc#compile-output-file
    (lambda (_ctx49453_ _n49454_ _ext49455_)
      (letrec ((_module-relative-path49457_
                (lambda (_ctx49479_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx49479_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory49458_
                (lambda (_ctx49475_)
                  (path-directory
                   (let ((_mpath49477_
                          (##structure-ref
                           _ctx49475_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath49477_)
                         _mpath49477_
                         (last _mpath49477_))))))
               (_section-string49459_
                (lambda (_n49473_)
                  (if (number? _n49473_)
                      (number->string _n49473_)
                      (if (symbol? _n49473_)
                          (symbol->string _n49473_)
                          (if (string? _n49473_)
                              _n49473_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n49473_))))))
               (_file-name49460_
                (lambda (_path49471_)
                  (if _n49454_
                      (string-append
                       _path49471_
                       '"__"
                       (_section-string49459_ _n49454_)
                       _ext49455_)
                      (string-append _path49471_ _ext49455_))))
               (_file-path49461_
                (lambda ()
                  (let ((_$e49466_ (gxc#current-compile-output-dir)))
                    (if _$e49466_
                        ((lambda (_outdir49469_)
                           (path-expand
                            (_file-name49460_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx49453_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir49469_))
                         _$e49466_)
                        (path-expand
                         (_file-name49460_
                          (_module-relative-path49457_ _ctx49453_))
                         (_module-source-directory49458_ _ctx49453_)))))))
        (let ((_path49463_ (_file-path49461_)))
          (create-directory* (path-directory _path49463_))
          _path49463_))))
  (define gxc#compile-static-output-file
    (lambda (_ctx49436_)
      (letrec ((_file-name49438_
                (lambda (_id49451_)
                  (string-append (gxc#static-module-name _id49451_) '".scm")))
               (_file-path49439_
                (lambda ()
                  (let* ((_file49444_
                          (_file-name49438_
                           (##structure-ref
                            _ctx49436_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e49446_ (gxc#current-compile-output-dir)))
                    (if _$e49446_
                        ((lambda (_outdir49449_)
                           (path-expand
                            _file49444_
                            (path-expand '"static" _outdir49449_)))
                         _$e49446_)
                        (path-expand _file49444_ '"static"))))))
        (let ((_path49441_ (_file-path49439_)))
          (create-directory* (path-directory _path49441_))
          _path49441_))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx49423_ _opts49424_)
      (let ((_$e49426_ (pgetq 'output-file: _opts49424_)))
        (if _$e49426_
            (values _$e49426_)
            (let* ((_mod-str49429_
                    (symbol->string
                     (##structure-ref
                      _ctx49423_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e49431_ (string-rindex _mod-str49429_ '#\/)))
              (if _$e49431_
                  ((lambda (_ix49434_)
                     (substring
                      _mod-str49429_
                      (fx+ _ix49434_ '1)
                      (string-length _mod-str49429_)))
                   _$e49431_)
                  _mod-str49429_))))))
  (define gxc#static-module-name
    (lambda (_idstr49416_)
      (if (string? _idstr49416_)
          (let* ((_str49418_ (gxc#module-id->path-string _idstr49416_))
                 (_strs49420_ (string-split _str49418_ '#\/)))
            (string-join _strs49420_ '"__"))
          (if (symbol? _idstr49416_)
              (gxc#static-module-name (symbol->string _idstr49416_))
              (error '"Bad module id" _idstr49416_))))))
