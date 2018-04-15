(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (define gxc#compile-file__%
    (lambda (_srcpath51130_ _opts51131_)
      (if (string? _srcpath51130_)
          '#!void
          (gxc#raise-compile-error
           '"Invalid module source path"
           _srcpath51130_))
      (let ((_outdir51133_ (pgetq 'output-dir: _opts51131_))
            (_invoke-gsc?51134_ (pgetq 'invoke-gsc: _opts51131_))
            (_gsc-options51135_ (pgetq 'gsc-options: _opts51131_))
            (_keep-scm?51136_ (pgetq 'keep-scm: _opts51131_))
            (_verbosity51137_ (pgetq 'verbose: _opts51131_))
            (_optimize51138_ (pgetq 'optimize: _opts51131_))
            (_debug51139_ (pgetq 'debug: _opts51131_))
            (_gen-ssxi51140_ (pgetq 'generate-ssxi: _opts51131_))
            (_static51141_ (pgetq 'static: _opts51131_)))
        (if _outdir51133_ (create-directory* _outdir51133_) '#!void)
        (if _optimize51138_ (gxc#optimizer-info-init!) '#!void)
        (call-with-parameters
         (lambda ()
           (gxc#verbose '"compile " _srcpath51130_)
           (gxc#compile-top-module (gx#import-module__0 _srcpath51130_)))
         gxc#current-compile-output-dir
         _outdir51133_
         gxc#current-compile-invoke-gsc
         _invoke-gsc?51134_
         gxc#current-compile-gsc-options
         _gsc-options51135_
         gxc#current-compile-keep-scm
         _keep-scm?51136_
         gxc#current-compile-verbose
         _verbosity51137_
         gxc#current-compile-optimize
         _optimize51138_
         gxc#current-compile-debug
         _debug51139_
         gxc#current-compile-generate-ssxi
         _gen-ssxi51140_
         gxc#current-compile-static
         _static51141_
         gxc#current-compile-timestamp
         (gxc#compile-timestamp)))))
  (define gxc#compile-file__0
    (lambda (_srcpath51147_)
      (let ((_opts51149_ '()))
        (gxc#compile-file__% _srcpath51147_ _opts51149_))))
  (define gxc#compile-file
    (lambda _g51170_
      (let ((_g51169_ (length _g51170_)))
        (cond ((##fx= _g51169_ 1) (apply gxc#compile-file__0 _g51170_))
              ((##fx= _g51169_ 2) (apply gxc#compile-file__% _g51170_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#compile-file
                _g51170_))))))
  (define gxc#compile-exe-stub__%
    (lambda (_srcpath51116_ _opts51117_)
      (gxc#do-compile-exe
       _srcpath51116_
       _opts51117_
       gxc#compile-exe-stub-module)))
  (define gxc#compile-exe-stub__0
    (lambda (_srcpath51122_)
      (let ((_opts51124_ '()))
        (gxc#compile-exe-stub__% _srcpath51122_ _opts51124_))))
  (define gxc#compile-exe-stub
    (lambda _g51172_
      (let ((_g51171_ (length _g51172_)))
        (cond ((##fx= _g51171_ 1) (apply gxc#compile-exe-stub__0 _g51172_))
              ((##fx= _g51171_ 2) (apply gxc#compile-exe-stub__% _g51172_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#compile-exe-stub
                _g51172_))))))
  (define gxc#compile-static-exe__%
    (lambda (_srcpath51102_ _opts51103_)
      (gxc#do-compile-exe
       _srcpath51102_
       _opts51103_
       gxc#compile-exe-static-module)))
  (define gxc#compile-static-exe__0
    (lambda (_srcpath51108_)
      (let ((_opts51110_ '()))
        (gxc#compile-static-exe__% _srcpath51108_ _opts51110_))))
  (define gxc#compile-static-exe
    (lambda _g51174_
      (let ((_g51173_ (length _g51174_)))
        (cond ((##fx= _g51173_ 1) (apply gxc#compile-static-exe__0 _g51174_))
              ((##fx= _g51173_ 2) (apply gxc#compile-static-exe__% _g51174_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#compile-static-exe
                _g51174_))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath51090_ _opts51091_ _compile-e51092_)
      (if (string? _srcpath51090_)
          '#!void
          (gxc#raise-compile-error
           '"Invalid module source path"
           _srcpath51090_))
      (let ((_outdir51094_ (pgetq 'output-dir: _opts51091_))
            (_invoke-gsc?51095_ (pgetq 'invoke-gsc: _opts51091_))
            (_gsc-options51096_ (pgetq 'gsc-options: _opts51091_))
            (_keep-scm?51097_ (pgetq 'keep-scm: _opts51091_))
            (_verbosity51098_ (pgetq 'verbose: _opts51091_)))
        (if _outdir51094_ (create-directory* _outdir51094_) '#!void)
        (call-with-parameters
         (lambda ()
           (gxc#verbose '"compile exe " _srcpath51090_)
           (_compile-e51092_ (gx#import-module__0 _srcpath51090_) _opts51091_))
         gxc#current-compile-output-dir
         _outdir51094_
         gxc#current-compile-invoke-gsc
         _invoke-gsc?51095_
         gxc#current-compile-gsc-options
         _gsc-options51096_
         gxc#current-compile-keep-scm
         _keep-scm?51097_
         gxc#current-compile-verbose
         _verbosity51098_
         gxc#current-compile-timestamp
         (gxc#compile-timestamp)))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx51056_ _opts51057_)
      (letrec ((_generate-stub51059_
                (lambda (_gx-init-stub51081_)
                  (let* ((_mod-str51083_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx51056_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt51085_ (string-append _mod-str51083_ '"__rt"))
                         (_mod-main51087_
                          (gxc#find-runtime-symbol _ctx51056_ 'main)))
                    (write '(##namespace ("")))
                    (newline)
                    (write (cons 'include (cons _gx-init-stub51081_ '())))
                    (newline)
                    (write (cons '_gx#start!
                                 (cons _mod-rt51085_
                                       (cons (cons 'quote
                                                   (cons _mod-main51087_ '()))
                                             '()))))
                    (newline))))
               (_compile-stub51060_
                (lambda (_output-scm51067_ _output-bin51068_)
                  (let* ((_init-stub51070_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args51072_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin51068_
                                            (cons _output-scm51067_ '()))))))
                    (with-output-to-file
                     _output-scm51067_
                     (lambda () (_generate-stub51059_ _init-stub51070_)))
                    (if (gxc#current-compile-invoke-gsc)
                        (begin
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args51072_))
                          (let* ((_proc51076_
                                  (open-process
                                   (cons 'path:
                                         (cons '"gsc"
                                               (cons 'arguments:
                                                     (cons _gsc-args51072_
                                                           (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_status51078_ (process-status _proc51076_)))
                            (if (zero? _status51078_)
                                '#!void
                                (gxc#raise-compile-error
                                 '"Compilation error; gsc exit with nonzero status"
                                 _output-scm51067_
                                 _output-bin51068_
                                 _status51078_))))
                        '#!void)))))
        (let* ((_output-bin51062_
                (gxc#compile-exe-output-file _ctx51056_ _opts51057_))
               (_output-scm51064_ (string-append _output-bin51062_ '".scm")))
          (_compile-stub51060_ _output-scm51064_ _output-bin51062_)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _output-scm51064_))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx50917_ _opts50918_)
      (letrec ((_reset-declare50920_
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
               (_user-declare50921_
                (lambda ()
                  (let* ((_gsc-opts50999_ (pgetq 'gsc-options: _opts50918_))
                         (_gsc-prelude51001_
                          (if _gsc-opts50999_
                              (member '"-prelude" _gsc-opts50999_)
                              '#f))
                         (_gsc-prelude51003_
                          (if _gsc-prelude51001_
                              (read (open-input-string
                                     (cadr _gsc-prelude51001_)))
                              '#f)))
                    (let _lift51006_ ((_expr51008_ _gsc-prelude51003_))
                      (let* ((_expr5100951021_ _expr51008_)
                             (_else5101251029_ (lambda () '#f)))
                        (let ((_K5101751049_ (lambda () _expr51008_))
                              (_K5101451035_
                               (lambda (_exprs51033_)
                                 (ormap1 _lift51006_ _exprs51033_))))
                          (if (##pair? _expr5100951021_)
                              (let ((_hd5101851052_ (##car _expr5100951021_)))
                                (if (##eq? _hd5101851052_ 'declare)
                                    (_K5101751049_)
                                    (let ((_tl5101651040_
                                           (##cdr _expr5100951021_)))
                                      (if (##eq? _hd5101851052_ 'begin)
                                          (let ((_exprs51043_ _tl5101651040_))
                                            (_K5101451035_ _exprs51043_))
                                          (_else5101251029_)))))
                              (_else5101251029_))))))))
               (_generate-stub50922_
                (lambda (_deps50990_)
                  (let ((_mod-main50992_
                         (gxc#find-runtime-symbol _ctx50917_ 'main))
                        (_reset-decl50993_ (_reset-declare50920_))
                        (_user-decl50994_ (_user-declare50921_)))
                    (write '(##namespace ("")))
                    (newline)
                    (write '(declare (optimize-dead-definitions)))
                    (newline)
                    (for-each
                     (lambda (_dep50996_)
                       (write (cons 'include (cons _dep50996_ '())))
                       (newline)
                       (write '(##namespace ("")))
                       (write _reset-decl50993_)
                       (if _user-decl50994_ (write _user-decl50994_) '#!void)
                       (newline))
                     _deps50990_)
                    (write (cons 'apply
                                 (cons _mod-main50992_
                                       (cons (cons 'cdr
                                                   (cons (cons 'command-line
                                                               '())
                                                         '()))
                                             '()))))
                    (newline))))
               (_static-include50923_
                (lambda (_gsc-opts50973_ _home50974_)
                  (letrec* ((_static-dir50976_
                             (path-expand '"lib/static" _home50974_))
                            (_user-static-dir50977_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags50978_
                             (string-append
                              '"-I "
                              _static-dir50976_
                              '" -I "
                              _user-static-dir50977_)))
                    (let ((_$e50980_ (member '"-cc-options" _gsc-opts50973_)))
                      (if _$e50980_
                          ((lambda (_rest50983_)
                             (let* ((_cell50985_ (cdr _rest50983_))
                                    (_opt50987_ (car _cell50985_)))
                               (set-car!
                                _cell50985_
                                (string-append
                                 _opt50987_
                                 '" "
                                 _cppflags50978_))
                               _gsc-opts50973_))
                           _$e50980_)
                          (cons '"-cc-options"
                                (cons _cppflags50978_ _gsc-opts50973_)))))))
               (_compile-stub50924_
                (lambda (_output-scm50931_ _output-bin50932_)
                  (let* ((_gerbil-home50934_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc050936_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home50934_))
                         (_gx-gambc-init50938_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home50934_))
                         (_gx-gambc-macros50940_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home50934_))
                         (_include-gx-gambc-macros50942_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros50940_
                           '"\")"))
                         (_bin-scm50944_
                          (gxc#find-static-module-file _ctx50917_))
                         (_deps50946_
                          (gxc#find-runtime-module-deps _ctx50917_))
                         (_deps50948_
                          (map gxc#find-static-module-file _deps50946_))
                         (_deps50953_
                          (filter (lambda (_$obj50950_)
                                    (not (gxc#file-empty? _$obj50950_)))
                                  _deps50948_))
                         (_gsc-opts50958_
                          (let ((_$e50955_ (pgetq 'gsc-options: _opts50918_)))
                            (if _$e50955_ _$e50955_ '())))
                         (_gsc-opts50960_
                          (_static-include50923_
                           _gsc-opts50958_
                           _gerbil-home50934_))
                         (_gsc-gx-macros50962_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros50942_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros50942_
                                          '()))))
                         (_gsc-args50964_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin50932_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm50931_ '())
                            _gsc-gx-macros50962_)
                    _gsc-opts50960_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options__0)))))))
                    (with-output-to-file
                     _output-scm50931_
                     (lambda ()
                       (_generate-stub50922_
                        (cons _gx-gambc050936_
                              (cons _gx-gambc-init50938_
                                    (foldr1 cons
                                            (cons _bin-scm50944_ '())
                                            _deps50953_))))))
                    (if (gxc#current-compile-invoke-gsc)
                        (begin
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args50964_))
                          (let* ((_proc50968_
                                  (open-process
                                   (cons 'path:
                                         (cons '"gsc"
                                               (cons 'arguments:
                                                     (cons _gsc-args50964_
                                                           (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_status50970_ (process-status _proc50968_)))
                            (if (zero? _status50970_)
                                '#!void
                                (gxc#raise-compile-error
                                 '"Compilation error; gsc exit with nonzero status"
                                 _output-scm50931_
                                 _output-bin50932_
                                 _status50970_))))
                        '#!void)))))
        (let* ((_output-bin50926_
                (gxc#compile-exe-output-file _ctx50917_ _opts50918_))
               (_output-scm50928_ (string-append _output-bin50926_ '".scm")))
          (_compile-stub50924_ _output-scm50928_ _output-bin50926_)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _output-scm50928_))))))
  (define gxc#find-export-binding
    (lambda (_ctx50867_ _id50868_)
      (let ((_$e50914_
             (find (lambda (_e5086950871_)
                     (let* ((_g5087350883_ _e5086950871_)
                            (_else5087550891_ (lambda () '#f))
                            (_K5087750895_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g5087350883_
                            'gx#module-export::t)
                           (let* ((_e5087850898_
                                   (##vector-ref _g5087350883_ '1))
                                  (_e5087950901_
                                   (##vector-ref _g5087350883_ '2))
                                  (_e5088050904_
                                   (##vector-ref _g5087350883_ '3)))
                             (if (##eq? _e5088050904_ '0)
                                 (let ((_e5088150907_
                                        (##vector-ref _g5087350883_ '4)))
                                   (if ((lambda (_g5090950911_)
                                          (eq? _g5090950911_ _id50868_))
                                        _e5088150907_)
                                       (_K5087750895_)
                                       (_else5087550891_)))
                                 (_else5087550891_)))
                           (_else5087550891_))))
                   (##structure-ref _ctx50867_ '9 gx#module-context::t '#f))))
        (if _$e50914_ (gx#core-resolve-module-export _$e50914_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx50859_ _id50860_)
      (let ((_$e50862_ (gxc#find-export-binding _ctx50859_ _id50860_)))
        (if _$e50862_
            ((lambda (_bind50865_)
               (if (##structure-instance-of?
                    _bind50865_
                    'gx#runtime-binding::t)
                   '#!void
                   (gxc#raise-compile-error
                    '"export is not a runtime binding"
                    _id50860_))
               (##structure-ref _bind50865_ '1 gx#binding::t '#f))
             _$e50862_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx50859_ '1 gx#expander-context::t '#f)
             _id50860_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx50746_)
      (letrec* ((_ht50748_ (make-table 'test: eq?))
                (_import-set-template50749_
                 (lambda (_in50811_ _phi50812_)
                   (let ((_iphi50814_
                          (fx+ _phi50812_
                               (##direct-structure-ref
                                _in50811_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports50815_
                          (##structure-ref
                           (##direct-structure-ref
                            _in50811_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp50817_ ((_rest50819_ _imports50815_)
                                     (_r50820_ '()))
                       (let* ((_rest5082150829_ _rest50819_)
                              (_else5082350837_ (lambda () _r50820_))
                              (_K5082550847_
                               (lambda (_rest50840_ _in50841_)
                                 (if (##structure-instance-of?
                                      _in50841_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi50814_)
                                         (_lp50817_
                                          _rest50840_
                                          (cons _in50841_ _r50820_))
                                         (_lp50817_ _rest50840_ _r50820_))
                                     (if (##structure-direct-instance-of?
                                          _in50841_
                                          'gx#module-import::t)
                                         (let ((_iphi50843_
                                                (fx+ _phi50812_
                                                     (##direct-structure-ref
                                                      _in50841_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi50843_)
                                               (_lp50817_
                                                _rest50840_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in50841_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r50820_))
                                               (_lp50817_
                                                _rest50840_
                                                _r50820_)))
                                         (if (##structure-direct-instance-of?
                                              _in50841_
                                              'gx#import-set::t)
                                             (let ((_xphi50845_
                                                    (fx+ _iphi50814_
                                                         (##direct-structure-ref
                                                          _in50841_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi50845_)
                                                   (_lp50817_
                                                    _rest50840_
                                                    (cons (##direct-structure-ref
                                                           _in50841_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r50820_))
                                                   (if (fxpositive?
                                                        _xphi50845_)
                                                       (_lp50817_
                                                        _rest50840_
                                                        (foldl1 cons
                                                                _r50820_
                                                                (_import-set-template50749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in50841_
                         _iphi50814_)))
               (_lp50817_ _rest50840_ _r50820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp50817_
                                              _rest50840_
                                              _r50820_)))))))
                         (if (##pair? _rest5082150829_)
                             (let ((_hd5082650850_ (##car _rest5082150829_))
                                   (_tl5082750852_ (##cdr _rest5082150829_)))
                               (let* ((_in50855_ _hd5082650850_)
                                      (_rest50857_ _tl5082750852_))
                                 (_K5082550847_ _rest50857_ _in50855_)))
                             (_else5082350837_)))))))
                (_find-deps50750_
                 (lambda (_rest50757_ _deps50758_)
                   (let* ((_rest5075950767_ _rest50757_)
                          (_else5076150775_ (lambda () _deps50758_))
                          (_K5076350799_
                           (lambda (_rest50778_ _hd50779_)
                             (if (##structure-instance-of?
                                  _hd50779_
                                  'gx#module-context::t)
                                 (let ((_id50781_
                                        (##structure-ref
                                         _hd50779_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports50782_
                                        (##structure-ref
                                         _hd50779_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht50748_ _id50781_ '#f)
                                       (_find-deps50750_
                                        _rest50778_
                                        _deps50758_)
                                       (let ((_$e50784_
                                              (gx#core-context-prelude__%
                                               _hd50779_)))
                                         (if _$e50784_
                                             ((lambda (_pre50787_)
                                                (let ((_xdeps50789_
                                                       (_find-deps50750_
                                                        (cons _pre50787_
                                                              _imports50782_)
                                                        _deps50758_)))
                                                  (table-set!
                                                   _ht50748_
                                                   _id50781_
                                                   _hd50779_)
                                                  (_find-deps50750_
                                                   _rest50778_
                                                   (cons _hd50779_
                                                         _xdeps50789_))))
                                              _$e50784_)
                                             (let ((_xdeps50791_
                                                    (_find-deps50750_
                                                     _imports50782_
                                                     _deps50758_)))
                                               (table-set!
                                                _ht50748_
                                                _id50781_
                                                _hd50779_)
                                               (_find-deps50750_
                                                _rest50778_
                                                (cons _hd50779_
                                                      _xdeps50791_)))))))
                                 (if (##structure-instance-of?
                                      _hd50779_
                                      'gx#prelude-context::t)
                                     (let ((_id50793_
                                            (##structure-ref
                                             _hd50779_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht50748_ _id50793_ '#f)
                                           (_find-deps50750_
                                            _rest50778_
                                            _deps50758_)
                                           (let ((_xdeps50795_
                                                  (_find-deps50750_
                                                   (##structure-ref
                                                    _hd50779_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps50758_)))
                                             (if (table-ref
                                                  _ht50748_
                                                  _id50793_
                                                  '#f)
                                                 (_find-deps50750_
                                                  _rest50778_
                                                  _xdeps50795_)
                                                 (begin
                                                   (table-set!
                                                    _ht50748_
                                                    _id50793_
                                                    _hd50779_)
                                                   (_find-deps50750_
                                                    _rest50778_
                                                    (cons _hd50779_
                                                          _xdeps50795_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd50779_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd50779_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps50750_
                                              (cons (##direct-structure-ref
                                                     _hd50779_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest50778_)
                                              _deps50758_)
                                             (_find-deps50750_
                                              _rest50778_
                                              _deps50758_))
                                         (if (##structure-direct-instance-of?
                                              _hd50779_
                                              'gx#module-export::t)
                                             (_find-deps50750_
                                              (cons (##direct-structure-ref
                                                     _hd50779_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest50778_)
                                              _deps50758_)
                                             (if (##structure-direct-instance-of?
                                                  _hd50779_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd50779_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps50750_
                                                      (cons (##direct-structure-ref
                                                             _hd50779_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest50778_)
                                                      _deps50758_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd50779_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps50797_
                                                                (_import-set-template50749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd50779_
                         '0)))
                   (_find-deps50750_
                    (foldl1 cons _rest50778_ _xdeps50797_)
                    _deps50758_))
                 (_find-deps50750_ _rest50778_ _deps50758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd50779_)))))))))
                     (if (##pair? _rest5075950767_)
                         (let ((_hd5076450802_ (##car _rest5075950767_))
                               (_tl5076550804_ (##cdr _rest5075950767_)))
                           (let* ((_hd50807_ _hd5076450802_)
                                  (_rest50809_ _tl5076550804_))
                             (_K5076350799_ _rest50809_ _hd50807_)))
                         (_else5076150775_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps50750_
                          (let ((_$e50752_
                                 (gx#core-context-prelude__% _ctx50746_)))
                            (if _$e50752_
                                ((lambda (_pre50755_)
                                   (cons _pre50755_
                                         (##structure-ref
                                          _ctx50746_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e50752_)
                                (##structure-ref
                                 _ctx50746_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx50685_)
      (let* ((_scm50687_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx50685_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs50689_ (gx#current-expander-module-library-path))
             (_dirs50698_
              (let ((_$e50691_ (gxc#current-compile-output-dir)))
                (if _$e50691_
                    ((lambda (_g5069350695_) (cons _g5069350695_ _dirs50689_))
                     _$e50691_)
                    _dirs50689_)))
             (_dirs50704_
              (map (lambda (_g5069950701_)
                     (path-expand '"static" _g5069950701_))
                   _dirs50698_)))
        (let _lp50707_ ((_rest50709_ _dirs50704_))
          (let* ((_rest5071050718_ _rest50709_)
                 (_else5071250726_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx50685_ '1 gx#expander-context::t '#f)
                     _scm50687_)))
                 (_K5071450734_
                  (lambda (_rest50729_ _dir50730_)
                    (let ((_path50732_ (path-expand _scm50687_ _dir50730_)))
                      (if (file-exists? _path50732_)
                          _path50732_
                          (_lp50707_ _rest50729_))))))
            (if (##pair? _rest5071050718_)
                (let ((_hd5071550737_ (##car _rest5071050718_))
                      (_tl5071650739_ (##cdr _rest5071050718_)))
                  (let* ((_dir50742_ _hd5071550737_)
                         (_rest50744_ _tl5071650739_))
                    (_K5071450734_ _rest50744_ _dir50742_)))
                (_else5071250726_)))))))
  (define gxc#file-empty?
    (lambda (_path50683_)
      (zero? (file-info-size (file-info _path50683_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx50680_)
      (call-with-parameters
       (lambda ()
         (gxc#verbose
          '"compile "
          (##structure-ref _ctx50680_ '1 gx#expander-context::t '#f))
         (if (gxc#current-compile-optimize) (gxc#optimize! _ctx50680_) '#!void)
         (gxc#collect-bindings _ctx50680_)
         (gxc#compile-runtime-code _ctx50680_)
         (gxc#compile-meta-code _ctx50680_)
         (if (and (gxc#current-compile-optimize)
                  (gxc#current-compile-generate-ssxi))
             (gxc#compile-ssxi-code _ctx50680_)
             '#!void))
       gx#current-expander-context
       _ctx50680_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj51167 (make-object gxc#symbol-table::t '2)))
         (gxc#symbol-table:::init! __obj51167)
         __obj51167)
       gxc#current-compile-runtime-sections
       (make-table 'test: eq?)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx50678_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx50678_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx50632_)
      (letrec ((_compile150634_
                (lambda (_ctx50667_)
                  (let* ((_code50669_
                          (##structure-ref
                           _ctx50667_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt50673_
                          (if (gxc#apply-find-runtime-code _code50669_)
                              (let ((_idstr50671_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx50667_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr50671_ '"__0"))
                              '#f)))
                    (if _rt50673_
                        (begin
                          (table-set!
                           (gxc#current-compile-runtime-sections)
                           _ctx50667_
                           _rt50673_)
                          (_generate-runtime-code50635_
                           _ctx50667_
                           _code50669_))
                        (if (gxc#current-compile-static)
                            (let ((_path50676_
                                   (gxc#compile-static-output-file
                                    _ctx50667_)))
                              (with-output-to-file
                               (cons 'path:
                                     (cons _path50676_
                                           (cons 'permissions:
                                                 (cons '420 '()))))
                               void))
                            '#!void))
                    (_generate-loader-code50636_
                     _ctx50667_
                     _code50669_
                     _rt50673_))))
               (_generate-runtime-code50635_
                (lambda (_ctx50651_ _code50652_)
                  (let* ((_lifts50654_ (box '()))
                         (_runtime-code50657_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code50652_))
                           gx#current-expander-context
                           _ctx50651_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts50654_
                           gxc#current-compile-marks
                           (make-table 'test: eq?)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code50659_
                          (if (null? (unbox _lifts50654_))
                              _runtime-code50657_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code50657_ '())
                                            (reverse (unbox _lifts50654_))))))
                         (_scm050661_
                          (gxc#compile-output-file _ctx50651_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms50664_
                               (gxc#compile-static-output-file _ctx50651_)))
                          (call-with-parameters
                           (lambda ()
                             (gxc#compile-scm-file__0
                              _scm050661_
                              _runtime-code50659_))
                           gxc#current-compile-keep-scm
                           '#t)
                          (if (file-exists? _scms50664_)
                              (delete-file _scms50664_)
                              '#!void)
                          (gxc#verbose
                           '"copy static module "
                           _scm050661_
                           '" => "
                           _scms50664_)
                          (copy-file _scm050661_ _scms50664_)
                          (if (gxc#current-compile-keep-scm)
                              '#!void
                              (delete-file _scm050661_)))
                        (gxc#compile-scm-file__0
                         _scm050661_
                         _runtime-code50659_)))))
               (_generate-loader-code50636_
                (lambda (_ctx50640_ _code50641_ _rt50642_)
                  (let* ((_loader-code50645_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code50641_))
                           gx#current-expander-context
                           _ctx50640_))
                         (_loader-code50647_
                          (if _rt50642_
                              (cons 'begin
                                    (cons _loader-code50645_
                                          (cons (cons 'load-module
                                                      (cons _rt50642_ '()))
                                                '())))
                              _loader-code50645_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx50640_ 'rt '".scm")
                        _loader-code50647_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules50638_
               (cons _ctx50632_ (gxc#lift-nested-modules _ctx50632_))))
          (for-each _compile150634_ _all-modules50638_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx50534_)
      (letrec ((_compile-ssi50536_
                (lambda (_code50602_)
                  (let* ((_path50604_
                          (gxc#compile-output-file _ctx50534_ '#f '".ssi"))
                         (_prelude50615_
                          (let* ((_super50606_
                                  (##structure-ref
                                   _ctx50534_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e50608_
                                  (##structure-ref
                                   _super50606_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e50608_
                                ((lambda (_g5061050612_)
                                   (make-symbol '":" _g5061050612_))
                                 _$e50608_)
                                ':<root>)))
                         (_ns50617_
                          (##structure-ref
                           _ctx50534_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr50619_
                          (symbol->string
                           (##structure-ref
                            _ctx50534_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg50626_
                          (let ((_$e50621_ (string-rindex _idstr50619_ '#\/)))
                            (if _$e50621_
                                ((lambda (_x50624_)
                                   (string->symbol
                                    (substring _idstr50619_ '0 _x50624_)))
                                 _$e50621_)
                                '#f)))
                         (_rt50628_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx50534_
                           '#f)))
                    (gxc#verbose '"compile " _path50604_)
                    (with-output-to-file
                     (cons 'path:
                           (cons _path50604_
                                 (cons 'permissions: (cons '420 '()))))
                     (lambda ()
                       (displayln '"prelude:" '" " _prelude50615_)
                       (if _pkg50626_
                           (displayln '"package:" '" " _pkg50626_)
                           '#!void)
                       (displayln '"namespace:" '" " _ns50617_)
                       (newline)
                       (pretty-print _code50602_)
                       (if _rt50628_
                           (pretty-print
                            (cons '%#call
                                  (cons (cons '%#ref
                                              (cons '_gx#load-module '()))
                                        (cons (cons '%#quote
                                                    (cons _rt50628_ '()))
                                              '()))))
                           '#!void))))))
               (_compile-phi50537_
                (lambda (_part50542_)
                  (let* ((_part5054350556_ _part50542_)
                         (_E5054550560_
                          (lambda ()
                            (error '"No clause matching" _part5054350556_)))
                         (_K5054650571_
                          (lambda (_code50563_
                                   _n50564_
                                   _phi50565_
                                   _phi-ctx50566_)
                            (let ((_code50569_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code50563_))
                                    gx#current-expander-context
                                    _phi-ctx50566_
                                    gx#current-expander-phi
                                    _phi50565_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx50534_
                                _n50564_
                                '".scm")
                               _code50569_
                               '#t)))))
                    (if (##pair? _part5054350556_)
                        (let ((_hd5054750574_ (##car _part5054350556_))
                              (_tl5054850576_ (##cdr _part5054350556_)))
                          (let ((_phi-ctx50579_ _hd5054750574_))
                            (if (##pair? _tl5054850576_)
                                (let ((_hd5054950581_ (##car _tl5054850576_))
                                      (_tl5055050583_ (##cdr _tl5054850576_)))
                                  (let ((_phi50586_ _hd5054950581_))
                                    (if (##pair? _tl5055050583_)
                                        (let ((_hd5055150588_
                                               (##car _tl5055050583_))
                                              (_tl5055250590_
                                               (##cdr _tl5055050583_)))
                                          (let ((_n50593_ _hd5055150588_))
                                            (if (##pair? _tl5055250590_)
                                                (let ((_hd5055350595_
                                                       (##car _tl5055250590_))
                                                      (_tl5055450597_
                                                       (##cdr _tl5055250590_)))
                                                  (let ((_code50600_
                                                         _hd5055350595_))
                                                    (if (##null? _tl5055450597_)
                                                        (_K5054650571_
                                                         _code50600_
                                                         _n50593_
                                                         _phi50586_
                                                         _phi-ctx50579_)
                                                        (_E5054550560_))))
                                                (_E5054550560_))))
                                        (_E5054550560_))))
                                (_E5054550560_))))
                        (_E5054550560_))))))
        (let ((_g51175_ (gxc#generate-meta-code _ctx50534_)))
          (begin
            (let ((_g51176_
                   (if (##values? _g51175_) (##vector-length _g51175_) 1)))
              (if (not (##fx= _g51176_ 2))
                  (error "Context expects 2 values" _g51176_)))
            (let ((_ssi-code50539_ (##vector-ref _g51175_ 0))
                  (_phi-code50540_ (##vector-ref _g51175_ 1)))
              (begin
                (_compile-ssi50536_ _ssi-code50539_)
                (for-each _compile-phi50537_ _phi-code50540_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx50517_)
      (let* ((_path50519_ (gxc#compile-output-file _ctx50517_ '#f '".ssxi.ss"))
             (_code50521_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx50517_ '11 gx#module-context::t '#f)))
             (_idstr50523_
              (symbol->string
               (##structure-ref _ctx50517_ '1 gx#expander-context::t '#f)))
             (_pkg50530_
              (let ((_$e50525_ (string-rindex _idstr50523_ '#\/)))
                (if _$e50525_
                    ((lambda (_x50528_)
                       (string->symbol (substring _idstr50523_ '0 _x50528_)))
                     _$e50525_)
                    '#f))))
        (gxc#verbose '"compile " _path50519_)
        (with-output-to-file
         (cons 'path: (cons _path50519_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (displayln '"prelude: :gerbil/compiler/ssxi")
           (if _pkg50530_ (displayln '"package: " _pkg50530_) '#!void)
           (newline)
           (pretty-print _code50521_))))))
  (define gxc#generate-meta-code
    (lambda (_ctx50510_)
      (let* ((_state50512_
              (let ((__obj51168 (make-object gxc#meta-state::t '4)))
                (gxc#meta-state:::init! __obj51168 _ctx50510_)
                __obj51168))
             (_ssi-code50514_
              (gxc#apply-generate-meta
               (##structure-ref _ctx50510_ '11 gx#module-context::t '#f)
               _state50512_)))
        (values _ssi-code50514_ (gxc#meta-state-end! _state50512_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx50503_)
      (let ((_lifts50505_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code50508_ (gxc#apply-generate-runtime-phi _stx50503_)))
             (if (null? (unbox _lifts50505_))
                 _code50508_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code50508_ '())
                               (reverse (unbox _lifts50505_)))))))
         gxc#current-compile-lift
         _lifts50505_
         gxc#current-compile-marks
         (make-table 'test: eq?)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx50499_)
      (let ((_modules50501_ (box '())))
        (gxc#apply-lift-modules
         (##structure-ref _ctx50499_ '11 gx#module-context::t '#f)
         _modules50501_)
        (reverse (unbox _modules50501_)))))
  (define gxc#compile-scm-file__%
    (lambda (_path50482_ _code50483_ _phi?50484_)
      (gxc#verbose '"compile " _path50482_)
      (with-output-to-file
       (cons 'path: (cons _path50482_ (cons 'permissions: (cons '420 '()))))
       (lambda ()
         (pretty-print
          (cons 'declare
                (cons (cons 'block '())
                      (cons (cons 'standard-bindings '())
                            (cons (cons 'extended-bindings '())
                                  (foldr1 cons
                                          '()
                                          (if _phi?50484_
                                              '((inlining-limit 200))
                                              '())))))))
         (pretty-print _code50483_)))
      (if (gxc#current-compile-invoke-gsc)
          (gxc#gsc-compile-file _path50482_ _phi?50484_)
          '#!void)
      (if (gxc#current-compile-keep-scm) '#!void (delete-file _path50482_))))
  (define gxc#compile-scm-file__0
    (lambda (_path50490_ _code50491_)
      (let ((_phi?50493_ '#f))
        (gxc#compile-scm-file__% _path50490_ _code50491_ _phi?50493_))))
  (define gxc#compile-scm-file
    (lambda _g51178_
      (let ((_g51177_ (length _g51178_)))
        (cond ((##fx= _g51177_ 2) (apply gxc#compile-scm-file__0 _g51178_))
              ((##fx= _g51177_ 3) (apply gxc#compile-scm-file__% _g51178_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#compile-scm-file
                _g51178_))))))
  (define gxc#gsc-debug-options__%
    (lambda (_phi?50389_)
      (let ((_$e50462_ (gxc#current-compile-debug)))
        (if _$e50462_
            ((lambda (_debug50465_)
               (let ((_$e50467_ _debug50465_))
                 (if (eq? 'env _$e50467_)
                     (if _phi?50389_ '() (cons '"-debug-environments" '()))
                     (if (eq? 'env/phi _$e50467_)
                         (cons '"-debug-environments" '())
                         (if (eq? 'src _$e50467_)
                             (if _phi?50389_
                                 '()
                                 (cons '"-debug-environments"
                                       (cons '"-debug-source" '())))
                             (if (eq? 'src/phi _$e50467_)
                                 (cons '"-debug-environments"
                                       (cons '"-debug-source" '()))
                                 (if (eq? 'all _$e50467_)
                                     (if _phi?50389_ '() (cons '"-debug" '()))
                                     (if (or (eq? 'all/phi _$e50467_)
                                             (eq? '#t _$e50467_))
                                         (cons '"-debug" '())
                                         (gxc#raise-compile-error
                                          '"unknown debug option"
                                          _debug50465_)))))))))
             _$e50462_)
            '()))))
  (define gxc#gsc-debug-options__0
    (lambda ()
      (let ((_phi?50477_ '#f)) (gxc#gsc-debug-options__% _phi?50477_))))
  (define gxc#gsc-debug-options
    (lambda _g51180_
      (let ((_g51179_ (length _g51180_)))
        (cond ((##fx= _g51179_ 0) (apply gxc#gsc-debug-options__0 _g51180_))
              ((##fx= _g51179_ 1) (apply gxc#gsc-debug-options__% _g51180_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#gsc-debug-options
                _g51180_))))))
  (define gxc#gsc-compile-file
    (lambda (_path50370_ _phi?50371_)
      (let* ((_gsc-args50378_
              (let ((_$e50373_ (gxc#current-compile-gsc-options)))
                (if _$e50373_
                    ((lambda (_opts50376_)
                       (foldr1 cons (cons _path50370_ '()) _opts50376_))
                     _$e50373_)
                    (cons _path50370_ '()))))
             (_gsc-args50380_
              (foldr1 cons
                      _gsc-args50378_
                      (gxc#gsc-debug-options__% _phi?50371_)))
             (_g51181_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args50380_)))
             (_proc50383_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args50380_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status50385_ (process-status _proc50383_)))
        (if (zero? _status50385_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path50370_
             _status50385_)))))
  (define gxc#compile-output-file
    (lambda (_ctx50342_ _n50343_ _ext50344_)
      (letrec ((_module-relative-path50346_
                (lambda (_ctx50368_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx50368_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory50347_
                (lambda (_ctx50364_)
                  (path-directory
                   (let ((_mpath50366_
                          (##structure-ref
                           _ctx50364_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath50366_)
                         _mpath50366_
                         (last _mpath50366_))))))
               (_section-string50348_
                (lambda (_n50362_)
                  (if (number? _n50362_)
                      (number->string _n50362_)
                      (if (symbol? _n50362_)
                          (symbol->string _n50362_)
                          (if (string? _n50362_)
                              _n50362_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n50362_))))))
               (_file-name50349_
                (lambda (_path50360_)
                  (if _n50343_
                      (string-append
                       _path50360_
                       '"__"
                       (_section-string50348_ _n50343_)
                       _ext50344_)
                      (string-append _path50360_ _ext50344_))))
               (_file-path50350_
                (lambda ()
                  (let ((_$e50355_ (gxc#current-compile-output-dir)))
                    (if _$e50355_
                        ((lambda (_outdir50358_)
                           (path-expand
                            (_file-name50349_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx50342_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir50358_))
                         _$e50355_)
                        (path-expand
                         (_file-name50349_
                          (_module-relative-path50346_ _ctx50342_))
                         (_module-source-directory50347_ _ctx50342_)))))))
        (let ((_path50352_ (_file-path50350_)))
          (create-directory* (path-directory _path50352_))
          _path50352_))))
  (define gxc#compile-static-output-file
    (lambda (_ctx50325_)
      (letrec ((_file-name50327_
                (lambda (_id50340_)
                  (string-append (gxc#static-module-name _id50340_) '".scm")))
               (_file-path50328_
                (lambda ()
                  (let* ((_file50333_
                          (_file-name50327_
                           (##structure-ref
                            _ctx50325_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e50335_ (gxc#current-compile-output-dir)))
                    (if _$e50335_
                        ((lambda (_outdir50338_)
                           (path-expand
                            _file50333_
                            (path-expand '"static" _outdir50338_)))
                         _$e50335_)
                        (path-expand _file50333_ '"static"))))))
        (let ((_path50330_ (_file-path50328_)))
          (create-directory* (path-directory _path50330_))
          _path50330_))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx50312_ _opts50313_)
      (let ((_$e50315_ (pgetq 'output-file: _opts50313_)))
        (if _$e50315_
            (values _$e50315_)
            (let* ((_mod-str50318_
                    (symbol->string
                     (##structure-ref
                      _ctx50312_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e50320_ (string-rindex _mod-str50318_ '#\/)))
              (if _$e50320_
                  ((lambda (_ix50323_)
                     (substring
                      _mod-str50318_
                      (fx+ _ix50323_ '1)
                      (string-length _mod-str50318_)))
                   _$e50320_)
                  _mod-str50318_))))))
  (define gxc#static-module-name
    (lambda (_idstr50305_)
      (if (string? _idstr50305_)
          (let* ((_str50307_ (gxc#module-id->path-string _idstr50305_))
                 (_strs50309_ (string-split _str50307_ '#\/)))
            (string-join _strs50309_ '"__"))
          (if (symbol? _idstr50305_)
              (gxc#static-module-name (symbol->string _idstr50305_))
              (error '"Bad module id" _idstr50305_))))))
