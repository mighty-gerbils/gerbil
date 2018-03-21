(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath49140_ _opts49141_)
        (begin
          (if (string? _srcpath49140_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath49140_))
          (let ((_outdir49143_ (pgetq 'output-dir: _opts49141_))
                (_invoke-gsc?49144_ (pgetq 'invoke-gsc: _opts49141_))
                (_gsc-options49145_ (pgetq 'gsc-options: _opts49141_))
                (_keep-scm?49146_ (pgetq 'keep-scm: _opts49141_))
                (_verbosity49147_ (pgetq 'verbose: _opts49141_))
                (_optimize49148_ (pgetq 'optimize: _opts49141_))
                (_debug49149_ (pgetq 'debug: _opts49141_))
                (_gen-ssxi49150_ (pgetq 'generate-ssxi: _opts49141_))
                (_static49151_ (pgetq 'static: _opts49141_)))
            (begin
              (if _outdir49143_ (create-directory* _outdir49143_) '#!void)
              (if _optimize49148_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath49140_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath49140_))))
               gxc#current-compile-output-dir
               _outdir49143_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?49144_
               gxc#current-compile-gsc-options
               _gsc-options49145_
               gxc#current-compile-keep-scm
               _keep-scm?49146_
               gxc#current-compile-verbose
               _verbosity49147_
               gxc#current-compile-optimize
               _optimize49148_
               gxc#current-compile-debug
               _debug49149_
               gxc#current-compile-generate-ssxi
               _gen-ssxi49150_
               gxc#current-compile-static
               _static49151_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath49157_)
          (let ((_opts49159_ '()))
            (gxc#compile-file__% _srcpath49157_ _opts49159_))))
      (define gxc#compile-file
        (lambda _g49180_
          (let ((_g49179_ (length _g49180_)))
            (cond ((##fx= _g49179_ 1) (apply gxc#compile-file__0 _g49180_))
                  ((##fx= _g49179_ 2) (apply gxc#compile-file__% _g49180_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g49180_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath49126_ _opts49127_)
        (gxc#do-compile-exe
         _srcpath49126_
         _opts49127_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath49132_)
          (let ((_opts49134_ '()))
            (gxc#compile-exe-stub__% _srcpath49132_ _opts49134_))))
      (define gxc#compile-exe-stub
        (lambda _g49182_
          (let ((_g49181_ (length _g49182_)))
            (cond ((##fx= _g49181_ 1) (apply gxc#compile-exe-stub__0 _g49182_))
                  ((##fx= _g49181_ 2) (apply gxc#compile-exe-stub__% _g49182_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g49182_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath49112_ _opts49113_)
        (gxc#do-compile-exe
         _srcpath49112_
         _opts49113_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath49118_)
          (let ((_opts49120_ '()))
            (gxc#compile-static-exe__% _srcpath49118_ _opts49120_))))
      (define gxc#compile-static-exe
        (lambda _g49184_
          (let ((_g49183_ (length _g49184_)))
            (cond ((##fx= _g49183_ 1)
                   (apply gxc#compile-static-exe__0 _g49184_))
                  ((##fx= _g49183_ 2)
                   (apply gxc#compile-static-exe__% _g49184_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g49184_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath49100_ _opts49101_ _compile-e49102_)
      (begin
        (if (string? _srcpath49100_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath49100_))
        (let ((_outdir49104_ (pgetq 'output-dir: _opts49101_))
              (_invoke-gsc?49105_ (pgetq 'invoke-gsc: _opts49101_))
              (_gsc-options49106_ (pgetq 'gsc-options: _opts49101_))
              (_keep-scm?49107_ (pgetq 'keep-scm: _opts49101_))
              (_verbosity49108_ (pgetq 'verbose: _opts49101_)))
          (begin
            (if _outdir49104_ (create-directory* _outdir49104_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath49100_)
                 (_compile-e49102_
                  (gx#import-module__0 _srcpath49100_)
                  _opts49101_)))
             gxc#current-compile-output-dir
             _outdir49104_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?49105_
             gxc#current-compile-gsc-options
             _gsc-options49106_
             gxc#current-compile-keep-scm
             _keep-scm?49107_
             gxc#current-compile-verbose
             _verbosity49108_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx49066_ _opts49067_)
      (letrec ((_generate-stub49069_
                (lambda (_gx-init-stub49091_)
                  (let* ((_mod-str49093_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx49066_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt49095_ (string-append _mod-str49093_ '"__rt"))
                         (_mod-main49097_
                          (gxc#find-runtime-symbol _ctx49066_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub49091_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt49095_
                                         (cons (cons 'quote
                                                     (cons _mod-main49097_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub49070_
                (lambda (_output-scm49077_ _output-bin49078_)
                  (let* ((_init-stub49080_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args49082_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin49078_
                                            (cons _output-scm49077_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm49077_
                       (lambda () (_generate-stub49069_ _init-stub49080_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args49082_))
                            (let* ((_proc49086_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args49082_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status49088_
                                    (process-status _proc49086_)))
                              (if (zero? _status49088_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm49077_
                                   _output-bin49078_
                                   _status49088_))))
                          '#!void))))))
        (let* ((_output-bin49072_
                (gxc#compile-exe-output-file _ctx49066_ _opts49067_))
               (_output-scm49074_ (string-append _output-bin49072_ '".scm")))
          (begin
            (_compile-stub49070_ _output-scm49074_ _output-bin49072_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm49074_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48927_ _opts48928_)
      (letrec ((_reset-declare48930_
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
               (_user-declare48931_
                (lambda ()
                  (let* ((_gsc-opts49009_ (pgetq 'gsc-options: _opts48928_))
                         (_gsc-prelude49011_
                          (if _gsc-opts49009_
                              (member '"-prelude" _gsc-opts49009_)
                              '#f))
                         (_gsc-prelude49013_
                          (if _gsc-prelude49011_
                              (read (open-input-string
                                     (cadr _gsc-prelude49011_)))
                              '#f)))
                    (let _lift49016_ ((_expr49018_ _gsc-prelude49013_))
                      (let* ((_expr4901949031_ _expr49018_)
                             (_else4902249039_ (lambda () '#f)))
                        (let ((_K4902749059_ (lambda () _expr49018_))
                              (_K4902449045_
                               (lambda (_exprs49043_)
                                 (ormap1 _lift49016_ _exprs49043_))))
                          (if (##pair? _expr4901949031_)
                              (let ((_hd4902849062_ (##car _expr4901949031_)))
                                (if (##eq? _hd4902849062_ 'declare)
                                    (_K4902749059_)
                                    (let ((_tl4902649050_
                                           (##cdr _expr4901949031_)))
                                      (if (##eq? _hd4902849062_ 'begin)
                                          (let ((_exprs49053_ _tl4902649050_))
                                            (_K4902449045_ _exprs49053_))
                                          (_else4902249039_)))))
                              (_else4902249039_))))))))
               (_generate-stub48932_
                (lambda (_deps49000_)
                  (let ((_mod-main49002_
                         (gxc#find-runtime-symbol _ctx48927_ 'main))
                        (_reset-decl49003_ (_reset-declare48930_))
                        (_user-decl49004_ (_user-declare48931_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep49006_)
                         (begin
                           (write (cons 'include (cons _dep49006_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl49003_)
                           (if _user-decl49004_
                               (write _user-decl49004_)
                               '#!void)
                           (newline)))
                       _deps49000_)
                      (write (cons 'apply
                                   (cons _mod-main49002_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48933_
                (lambda (_gsc-opts48983_ _home48984_)
                  (letrec* ((_static-dir48986_
                             (path-expand '"lib/static" _home48984_))
                            (_user-static-dir48987_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48988_
                             (string-append
                              '"-I "
                              _static-dir48986_
                              '" -I "
                              _user-static-dir48987_)))
                    (let ((_$e48990_ (member '"-cc-options" _gsc-opts48983_)))
                      (if _$e48990_
                          ((lambda (_rest48993_)
                             (let* ((_cell48995_ (cdr _rest48993_))
                                    (_opt48997_ (car _cell48995_)))
                               (begin
                                 (set-car!
                                  _cell48995_
                                  (string-append
                                   _opt48997_
                                   '" "
                                   _cppflags48988_))
                                 _gsc-opts48983_)))
                           _$e48990_)
                          (cons '"-cc-options"
                                (cons _cppflags48988_ _gsc-opts48983_)))))))
               (_compile-stub48934_
                (lambda (_output-scm48941_ _output-bin48942_)
                  (let* ((_gerbil-home48944_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048946_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48944_))
                         (_gx-gambc-init48948_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48944_))
                         (_gx-gambc-macros48950_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48944_))
                         (_include-gx-gambc-macros48952_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48950_
                           '"\")"))
                         (_bin-scm48954_
                          (gxc#find-static-module-file _ctx48927_))
                         (_deps48956_
                          (gxc#find-runtime-module-deps _ctx48927_))
                         (_deps48958_
                          (map gxc#find-static-module-file _deps48956_))
                         (_deps48963_
                          (filter (lambda (_$obj48960_)
                                    (not (gxc#file-empty? _$obj48960_)))
                                  _deps48958_))
                         (_gsc-opts48968_
                          (let ((_$e48965_ (pgetq 'gsc-options: _opts48928_)))
                            (if _$e48965_ _$e48965_ '())))
                         (_gsc-opts48970_
                          (_static-include48933_
                           _gsc-opts48968_
                           _gerbil-home48944_))
                         (_gsc-gx-macros48972_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48952_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48952_
                                          '()))))
                         (_gsc-args48974_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48942_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48941_ '())
                            _gsc-gx-macros48972_)
                    _gsc-opts48970_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48941_
                       (lambda ()
                         (_generate-stub48932_
                          (cons _gx-gambc048946_
                                (cons _gx-gambc-init48948_
                                      (foldr1 cons
                                              (cons _bin-scm48954_ '())
                                              _deps48963_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48974_))
                            (let* ((_proc48978_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48974_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48980_
                                    (process-status _proc48978_)))
                              (if (zero? _status48980_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48941_
                                   _output-bin48942_
                                   _status48980_))))
                          '#!void))))))
        (let* ((_output-bin48936_
                (gxc#compile-exe-output-file _ctx48927_ _opts48928_))
               (_output-scm48938_ (string-append _output-bin48936_ '".scm")))
          (begin
            (_compile-stub48934_ _output-scm48938_ _output-bin48936_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48938_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48877_ _id48878_)
      (let ((_$e48924_
             (find (lambda (_e4887948881_)
                     (let* ((_g4888348893_ _e4887948881_)
                            (_else4888548901_ (lambda () '#f))
                            (_K4888748905_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4888348893_
                            'gx#module-export::t)
                           (let* ((_e4888848908_
                                   (##vector-ref _g4888348893_ '1))
                                  (_e4888948911_
                                   (##vector-ref _g4888348893_ '2))
                                  (_e4889048914_
                                   (##vector-ref _g4888348893_ '3)))
                             (if (##eq? _e4889048914_ '0)
                                 (let ((_e4889148917_
                                        (##vector-ref _g4888348893_ '4)))
                                   (if ((lambda (_g4891948921_)
                                          (eq? _g4891948921_ _id48878_))
                                        _e4889148917_)
                                       (_K4888748905_)
                                       (_else4888548901_)))
                                 (_else4888548901_)))
                           (_else4888548901_))))
                   (##structure-ref _ctx48877_ '9 gx#module-context::t '#f))))
        (if _$e48924_ (gx#core-resolve-module-export _$e48924_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48869_ _id48870_)
      (let ((_$e48872_ (gxc#find-export-binding _ctx48869_ _id48870_)))
        (if _$e48872_
            ((lambda (_bind48875_)
               (begin
                 (if (##structure-instance-of?
                      _bind48875_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48870_))
                 (##structure-ref _bind48875_ '1 gx#binding::t '#f)))
             _$e48872_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48869_ '1 gx#expander-context::t '#f)
             _id48870_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48756_)
      (letrec* ((_ht48758_ (make-hash-table-eq))
                (_import-set-template48759_
                 (lambda (_in48821_ _phi48822_)
                   (let ((_iphi48824_
                          (fx+ _phi48822_
                               (##direct-structure-ref
                                _in48821_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48825_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48821_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48827_ ((_rest48829_ _imports48825_)
                                     (_r48830_ '()))
                       (let* ((_rest4883148839_ _rest48829_)
                              (_else4883348847_ (lambda () _r48830_))
                              (_K4883548857_
                               (lambda (_rest48850_ _in48851_)
                                 (if (##structure-instance-of?
                                      _in48851_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48824_)
                                         (_lp48827_
                                          _rest48850_
                                          (cons _in48851_ _r48830_))
                                         (_lp48827_ _rest48850_ _r48830_))
                                     (if (##structure-direct-instance-of?
                                          _in48851_
                                          'gx#module-import::t)
                                         (let ((_iphi48853_
                                                (fx+ _phi48822_
                                                     (##direct-structure-ref
                                                      _in48851_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48853_)
                                               (_lp48827_
                                                _rest48850_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48851_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48830_))
                                               (_lp48827_
                                                _rest48850_
                                                _r48830_)))
                                         (if (##structure-direct-instance-of?
                                              _in48851_
                                              'gx#import-set::t)
                                             (let ((_xphi48855_
                                                    (fx+ _iphi48824_
                                                         (##direct-structure-ref
                                                          _in48851_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48855_)
                                                   (_lp48827_
                                                    _rest48850_
                                                    (cons (##direct-structure-ref
                                                           _in48851_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48830_))
                                                   (if (fxpositive?
                                                        _xphi48855_)
                                                       (_lp48827_
                                                        _rest48850_
                                                        (foldl1 cons
                                                                _r48830_
                                                                (_import-set-template48759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48851_
                         _iphi48824_)))
               (_lp48827_ _rest48850_ _r48830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48827_
                                              _rest48850_
                                              _r48830_)))))))
                         (if (##pair? _rest4883148839_)
                             (let ((_hd4883648860_ (##car _rest4883148839_))
                                   (_tl4883748862_ (##cdr _rest4883148839_)))
                               (let* ((_in48865_ _hd4883648860_)
                                      (_rest48867_ _tl4883748862_))
                                 (_K4883548857_ _rest48867_ _in48865_)))
                             (_else4883348847_)))))))
                (_find-deps48760_
                 (lambda (_rest48767_ _deps48768_)
                   (let* ((_rest4876948777_ _rest48767_)
                          (_else4877148785_ (lambda () _deps48768_))
                          (_K4877348809_
                           (lambda (_rest48788_ _hd48789_)
                             (if (##structure-instance-of?
                                  _hd48789_
                                  'gx#module-context::t)
                                 (let ((_id48791_
                                        (##structure-ref
                                         _hd48789_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48792_
                                        (##structure-ref
                                         _hd48789_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48758_ _id48791_ '#f)
                                       (_find-deps48760_
                                        _rest48788_
                                        _deps48768_)
                                       (let ((_$e48794_
                                              (gx#core-context-prelude__%
                                               _hd48789_)))
                                         (if _$e48794_
                                             ((lambda (_pre48797_)
                                                (let ((_xdeps48799_
                                                       (_find-deps48760_
                                                        (cons _pre48797_
                                                              _imports48792_)
                                                        _deps48768_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48758_
                                                     _id48791_
                                                     _hd48789_)
                                                    (_find-deps48760_
                                                     _rest48788_
                                                     (cons _hd48789_
                                                           _xdeps48799_)))))
                                              _$e48794_)
                                             (let ((_xdeps48801_
                                                    (_find-deps48760_
                                                     _imports48792_
                                                     _deps48768_)))
                                               (begin
                                                 (table-set!
                                                  _ht48758_
                                                  _id48791_
                                                  _hd48789_)
                                                 (_find-deps48760_
                                                  _rest48788_
                                                  (cons _hd48789_
                                                        _xdeps48801_))))))))
                                 (if (##structure-instance-of?
                                      _hd48789_
                                      'gx#prelude-context::t)
                                     (let ((_id48803_
                                            (##structure-ref
                                             _hd48789_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48758_ _id48803_ '#f)
                                           (_find-deps48760_
                                            _rest48788_
                                            _deps48768_)
                                           (let ((_xdeps48805_
                                                  (_find-deps48760_
                                                   (##structure-ref
                                                    _hd48789_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48768_)))
                                             (if (table-ref
                                                  _ht48758_
                                                  _id48803_
                                                  '#f)
                                                 (_find-deps48760_
                                                  _rest48788_
                                                  _xdeps48805_)
                                                 (begin
                                                   (table-set!
                                                    _ht48758_
                                                    _id48803_
                                                    _hd48789_)
                                                   (_find-deps48760_
                                                    _rest48788_
                                                    (cons _hd48789_
                                                          _xdeps48805_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48789_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48789_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48760_
                                              (cons (##direct-structure-ref
                                                     _hd48789_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48788_)
                                              _deps48768_)
                                             (_find-deps48760_
                                              _rest48788_
                                              _deps48768_))
                                         (if (##structure-direct-instance-of?
                                              _hd48789_
                                              'gx#module-export::t)
                                             (_find-deps48760_
                                              (cons (##direct-structure-ref
                                                     _hd48789_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48788_)
                                              _deps48768_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48789_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48789_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48760_
                                                      (cons (##direct-structure-ref
                                                             _hd48789_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48788_)
                                                      _deps48768_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48789_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48807_
                                                                (_import-set-template48759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48789_
                         '0)))
                   (_find-deps48760_
                    (foldl1 cons _rest48788_ _xdeps48807_)
                    _deps48768_))
                 (_find-deps48760_ _rest48788_ _deps48768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48789_)))))))))
                     (if (##pair? _rest4876948777_)
                         (let ((_hd4877448812_ (##car _rest4876948777_))
                               (_tl4877548814_ (##cdr _rest4876948777_)))
                           (let* ((_hd48817_ _hd4877448812_)
                                  (_rest48819_ _tl4877548814_))
                             (_K4877348809_ _rest48819_ _hd48817_)))
                         (_else4877148785_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48760_
                          (let ((_$e48762_
                                 (gx#core-context-prelude__% _ctx48756_)))
                            (if _$e48762_
                                ((lambda (_pre48765_)
                                   (cons _pre48765_
                                         (##structure-ref
                                          _ctx48756_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48762_)
                                (##structure-ref
                                 _ctx48756_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48695_)
      (let* ((_scm48697_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48695_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48699_ (gx#current-expander-module-library-path))
             (_dirs48708_
              (let ((_$e48701_ (gxc#current-compile-output-dir)))
                (if _$e48701_
                    ((lambda (_g4870348705_) (cons _g4870348705_ _dirs48699_))
                     _$e48701_)
                    _dirs48699_)))
             (_dirs48714_
              (map (lambda (_g4870948711_)
                     (path-expand '"static" _g4870948711_))
                   _dirs48708_)))
        (let _lp48717_ ((_rest48719_ _dirs48714_))
          (let* ((_rest4872048728_ _rest48719_)
                 (_else4872248736_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48695_ '1 gx#expander-context::t '#f)
                     _scm48697_)))
                 (_K4872448744_
                  (lambda (_rest48739_ _dir48740_)
                    (let ((_path48742_ (path-expand _scm48697_ _dir48740_)))
                      (if (file-exists? _path48742_)
                          _path48742_
                          (_lp48717_ _rest48739_))))))
            (if (##pair? _rest4872048728_)
                (let ((_hd4872548747_ (##car _rest4872048728_))
                      (_tl4872648749_ (##cdr _rest4872048728_)))
                  (let* ((_dir48752_ _hd4872548747_)
                         (_rest48754_ _tl4872648749_))
                    (_K4872448744_ _rest48754_ _dir48752_)))
                (_else4872248736_)))))))
  (define gxc#file-empty?
    (lambda (_path48693_)
      (zero? (file-info-size (file-info _path48693_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48690_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48690_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48690_)
               '#!void)
           (gxc#collect-bindings _ctx48690_)
           (gxc#compile-runtime-code _ctx48690_)
           (gxc#compile-meta-code _ctx48690_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48690_)
               '#!void)))
       gx#current-expander-context
       _ctx48690_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj49177 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj49177) __obj49177))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48688_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48688_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48642_)
      (letrec ((_compile148644_
                (lambda (_ctx48677_)
                  (let* ((_code48679_
                          (##structure-ref
                           _ctx48677_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48683_
                          (if (gxc#apply-find-runtime-code _code48679_)
                              (let ((_idstr48681_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48677_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48681_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48683_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48677_
                             _rt48683_)
                            (_generate-runtime-code48645_
                             _ctx48677_
                             _code48679_))
                          (if (gxc#current-compile-static)
                              (let ((_path48686_
                                     (gxc#compile-static-output-file
                                      _ctx48677_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48686_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48646_
                       _ctx48677_
                       _code48679_
                       _rt48683_)))))
               (_generate-runtime-code48645_
                (lambda (_ctx48661_ _code48662_)
                  (let* ((_lifts48664_ (box '()))
                         (_runtime-code48667_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48662_))
                           gx#current-expander-context
                           _ctx48661_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48664_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code48669_
                          (if (null? (unbox _lifts48664_))
                              _runtime-code48667_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48667_ '())
                                            (reverse (unbox _lifts48664_))))))
                         (_scm048671_
                          (gxc#compile-output-file _ctx48661_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48674_
                               (gxc#compile-static-output-file _ctx48661_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm048671_
                                _runtime-code48669_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48674_)
                                (delete-file _scms48674_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048671_
                             '" => "
                             _scms48674_)
                            (copy-file _scm048671_ _scms48674_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048671_))))
                        (gxc#compile-scm-file__0
                         _scm048671_
                         _runtime-code48669_)))))
               (_generate-loader-code48646_
                (lambda (_ctx48650_ _code48651_ _rt48652_)
                  (let* ((_loader-code48655_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48651_))
                           gx#current-expander-context
                           _ctx48650_))
                         (_loader-code48657_
                          (if _rt48652_
                              (cons 'begin
                                    (cons _loader-code48655_
                                          (cons (cons 'load-module
                                                      (cons _rt48652_ '()))
                                                '())))
                              _loader-code48655_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx48650_ 'rt '".scm")
                        _loader-code48657_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48648_
               (cons _ctx48642_ (gxc#lift-nested-modules _ctx48642_))))
          (for-each _compile148644_ _all-modules48648_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48544_)
      (letrec ((_compile-ssi48546_
                (lambda (_code48612_)
                  (let* ((_path48614_
                          (gxc#compile-output-file _ctx48544_ '#f '".ssi"))
                         (_prelude48625_
                          (let* ((_super48616_
                                  (##structure-ref
                                   _ctx48544_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48618_
                                  (##structure-ref
                                   _super48616_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48618_
                                ((lambda (_g4862048622_)
                                   (make-symbol '":" _g4862048622_))
                                 _$e48618_)
                                ':<root>)))
                         (_ns48627_
                          (##structure-ref
                           _ctx48544_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48629_
                          (symbol->string
                           (##structure-ref
                            _ctx48544_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48636_
                          (let ((_$e48631_ (string-rindex _idstr48629_ '#\/)))
                            (if _$e48631_
                                ((lambda (_x48634_)
                                   (string->symbol
                                    (substring _idstr48629_ '0 _x48634_)))
                                 _$e48631_)
                                '#f)))
                         (_rt48638_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48544_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48614_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48614_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48625_)
                           (if _pkg48636_
                               (displayln '"package:" '" " _pkg48636_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48627_)
                           (newline)
                           (pretty-print _code48612_)
                           (if _rt48638_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48638_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48547_
                (lambda (_part48552_)
                  (let* ((_part4855348566_ _part48552_)
                         (_E4855548570_
                          (lambda ()
                            (error '"No clause matching" _part4855348566_)))
                         (_K4855648581_
                          (lambda (_code48573_
                                   _n48574_
                                   _phi48575_
                                   _phi-ctx48576_)
                            (let ((_code48579_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48573_))
                                    gx#current-expander-context
                                    _phi-ctx48576_
                                    gx#current-expander-phi
                                    _phi48575_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx48544_
                                _n48574_
                                '".scm")
                               _code48579_
                               '#t)))))
                    (if (##pair? _part4855348566_)
                        (let ((_hd4855748584_ (##car _part4855348566_))
                              (_tl4855848586_ (##cdr _part4855348566_)))
                          (let ((_phi-ctx48589_ _hd4855748584_))
                            (if (##pair? _tl4855848586_)
                                (let ((_hd4855948591_ (##car _tl4855848586_))
                                      (_tl4856048593_ (##cdr _tl4855848586_)))
                                  (let ((_phi48596_ _hd4855948591_))
                                    (if (##pair? _tl4856048593_)
                                        (let ((_hd4856148598_
                                               (##car _tl4856048593_))
                                              (_tl4856248600_
                                               (##cdr _tl4856048593_)))
                                          (let ((_n48603_ _hd4856148598_))
                                            (if (##pair? _tl4856248600_)
                                                (let ((_hd4856348605_
                                                       (##car _tl4856248600_))
                                                      (_tl4856448607_
                                                       (##cdr _tl4856248600_)))
                                                  (let ((_code48610_
                                                         _hd4856348605_))
                                                    (if (##null? _tl4856448607_)
                                                        (_K4855648581_
                                                         _code48610_
                                                         _n48603_
                                                         _phi48596_
                                                         _phi-ctx48589_)
                                                        (_E4855548570_))))
                                                (_E4855548570_))))
                                        (_E4855548570_))))
                                (_E4855548570_))))
                        (_E4855548570_))))))
        (let ((_g49185_ (gxc#generate-meta-code _ctx48544_)))
          (begin
            (let ((_g49186_
                   (if (##values? _g49185_) (##vector-length _g49185_) 1)))
              (if (not (##fx= _g49186_ 2))
                  (error "Context expects 2 values" _g49186_)))
            (let ((_ssi-code48549_ (##vector-ref _g49185_ 0))
                  (_phi-code48550_ (##vector-ref _g49185_ 1)))
              (begin
                (_compile-ssi48546_ _ssi-code48549_)
                (for-each _compile-phi48547_ _phi-code48550_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48527_)
      (let* ((_path48529_ (gxc#compile-output-file _ctx48527_ '#f '".ssxi.ss"))
             (_code48531_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48527_ '11 gx#module-context::t '#f)))
             (_idstr48533_
              (symbol->string
               (##structure-ref _ctx48527_ '1 gx#expander-context::t '#f)))
             (_pkg48540_
              (let ((_$e48535_ (string-rindex _idstr48533_ '#\/)))
                (if _$e48535_
                    ((lambda (_x48538_)
                       (string->symbol (substring _idstr48533_ '0 _x48538_)))
                     _$e48535_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48529_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48529_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48540_ (displayln '"package: " _pkg48540_) '#!void)
               (newline)
               (pretty-print _code48531_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48520_)
      (let* ((_state48522_
              (let ((__obj49178 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj49178 _ctx48520_)
                  __obj49178)))
             (_ssi-code48524_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48520_ '11 gx#module-context::t '#f)
               _state48522_)))
        (values _ssi-code48524_ (gxc#meta-state-end! _state48522_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48513_)
      (let ((_lifts48515_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48518_ (gxc#apply-generate-runtime-phi _stx48513_)))
             (if (null? (unbox _lifts48515_))
                 _code48518_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48518_ '())
                               (reverse (unbox _lifts48515_)))))))
         gxc#current-compile-lift
         _lifts48515_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48509_)
      (let ((_modules48511_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48509_ '11 gx#module-context::t '#f)
           _modules48511_)
          (reverse (unbox _modules48511_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path48492_ _code48493_ _phi?48494_)
        (begin
          (gxc#verbose '"compile " _path48492_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48492_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?48494_
                                                    '((inlining-limit 100))
                                                    '())))))))
               (pretty-print _code48493_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path48492_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path48492_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path48500_ _code48501_)
          (let ((_phi?48503_ '#f))
            (gxc#compile-scm-file__% _path48500_ _code48501_ _phi?48503_))))
      (define gxc#compile-scm-file
        (lambda _g49188_
          (let ((_g49187_ (length _g49188_)))
            (cond ((##fx= _g49187_ 2) (apply gxc#compile-scm-file__0 _g49188_))
                  ((##fx= _g49187_ 3) (apply gxc#compile-scm-file__% _g49188_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g49188_))))))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e48480_ (gxc#current-compile-debug)))
        (if _$e48480_
            ((lambda (_debug48483_)
               (let ((_$e48485_ _debug48483_))
                 (if (eq? 'env _$e48485_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e48485_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (if (eq? 'all _$e48485_) '#t (eq? '#t _$e48485_))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug48483_))))))
             _$e48480_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path48462_)
      (let* ((_gsc-args48469_
              (let ((_$e48464_ (gxc#current-compile-gsc-options)))
                (if _$e48464_
                    ((lambda (_opts48467_)
                       (foldr1 cons (cons _path48462_ '()) _opts48467_))
                     _$e48464_)
                    (cons _path48462_ '()))))
             (_gsc-args48471_
              (foldr1 cons _gsc-args48469_ (gxc#gsc-debug-options)))
             (_g49189_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args48471_)))
             (_proc48474_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args48471_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status48476_ (process-status _proc48474_)))
        (if (zero? _status48476_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path48462_
             _status48476_)))))
  (define gxc#compile-output-file
    (lambda (_ctx48434_ _n48435_ _ext48436_)
      (letrec ((_module-relative-path48438_
                (lambda (_ctx48460_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx48460_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory48439_
                (lambda (_ctx48456_)
                  (path-directory
                   (let ((_mpath48458_
                          (##structure-ref
                           _ctx48456_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath48458_)
                         _mpath48458_
                         (last _mpath48458_))))))
               (_section-string48440_
                (lambda (_n48454_)
                  (if (number? _n48454_)
                      (number->string _n48454_)
                      (if (symbol? _n48454_)
                          (symbol->string _n48454_)
                          (if (string? _n48454_)
                              _n48454_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n48454_))))))
               (_file-name48441_
                (lambda (_path48452_)
                  (if _n48435_
                      (string-append
                       _path48452_
                       '"__"
                       (_section-string48440_ _n48435_)
                       _ext48436_)
                      (string-append _path48452_ _ext48436_))))
               (_file-path48442_
                (lambda ()
                  (let ((_$e48447_ (gxc#current-compile-output-dir)))
                    (if _$e48447_
                        ((lambda (_outdir48450_)
                           (path-expand
                            (_file-name48441_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx48434_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir48450_))
                         _$e48447_)
                        (path-expand
                         (_file-name48441_
                          (_module-relative-path48438_ _ctx48434_))
                         (_module-source-directory48439_ _ctx48434_)))))))
        (let ((_path48444_ (_file-path48442_)))
          (begin
            (create-directory* (path-directory _path48444_))
            _path48444_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx48417_)
      (letrec ((_file-name48419_
                (lambda (_id48432_)
                  (string-append (gxc#static-module-name _id48432_) '".scm")))
               (_file-path48420_
                (lambda ()
                  (let* ((_file48425_
                          (_file-name48419_
                           (##structure-ref
                            _ctx48417_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e48427_ (gxc#current-compile-output-dir)))
                    (if _$e48427_
                        ((lambda (_outdir48430_)
                           (path-expand
                            _file48425_
                            (path-expand '"static" _outdir48430_)))
                         _$e48427_)
                        (path-expand _file48425_ '"static"))))))
        (let ((_path48422_ (_file-path48420_)))
          (begin
            (create-directory* (path-directory _path48422_))
            _path48422_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx48404_ _opts48405_)
      (let ((_$e48407_ (pgetq 'output-file: _opts48405_)))
        (if _$e48407_
            (values _$e48407_)
            (let* ((_mod-str48410_
                    (symbol->string
                     (##structure-ref
                      _ctx48404_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e48412_ (string-rindex _mod-str48410_ '#\/)))
              (if _$e48412_
                  ((lambda (_ix48415_)
                     (substring
                      _mod-str48410_
                      (fx+ _ix48415_ '1)
                      (string-length _mod-str48410_)))
                   _$e48412_)
                  _mod-str48410_))))))
  (define gxc#static-module-name
    (lambda (_idstr48397_)
      (if (string? _idstr48397_)
          (let* ((_str48399_ (gxc#module-id->path-string _idstr48397_))
                 (_strs48401_ (string-split _str48399_ '#\/)))
            (string-join _strs48401_ '"__"))
          (if (symbol? _idstr48397_)
              (gxc#static-module-name (symbol->string _idstr48397_))
              (error '"Bad module id" _idstr48397_))))))
