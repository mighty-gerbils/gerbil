(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath49145_ _opts49146_)
        (begin
          (if (string? _srcpath49145_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath49145_))
          (let ((_outdir49148_ (pgetq 'output-dir: _opts49146_))
                (_invoke-gsc?49149_ (pgetq 'invoke-gsc: _opts49146_))
                (_gsc-options49150_ (pgetq 'gsc-options: _opts49146_))
                (_keep-scm?49151_ (pgetq 'keep-scm: _opts49146_))
                (_verbosity49152_ (pgetq 'verbose: _opts49146_))
                (_optimize49153_ (pgetq 'optimize: _opts49146_))
                (_debug49154_ (pgetq 'debug: _opts49146_))
                (_gen-ssxi49155_ (pgetq 'generate-ssxi: _opts49146_))
                (_static49156_ (pgetq 'static: _opts49146_)))
            (begin
              (if _outdir49148_ (create-directory* _outdir49148_) '#!void)
              (if _optimize49153_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath49145_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath49145_))))
               gxc#current-compile-output-dir
               _outdir49148_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?49149_
               gxc#current-compile-gsc-options
               _gsc-options49150_
               gxc#current-compile-keep-scm
               _keep-scm?49151_
               gxc#current-compile-verbose
               _verbosity49152_
               gxc#current-compile-optimize
               _optimize49153_
               gxc#current-compile-debug
               _debug49154_
               gxc#current-compile-generate-ssxi
               _gen-ssxi49155_
               gxc#current-compile-static
               _static49156_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath49162_)
          (let ((_opts49164_ '()))
            (gxc#compile-file__% _srcpath49162_ _opts49164_))))
      (define gxc#compile-file
        (lambda _g49185_
          (let ((_g49184_ (length _g49185_)))
            (cond ((##fx= _g49184_ 1) (apply gxc#compile-file__0 _g49185_))
                  ((##fx= _g49184_ 2) (apply gxc#compile-file__% _g49185_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g49185_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath49131_ _opts49132_)
        (gxc#do-compile-exe
         _srcpath49131_
         _opts49132_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath49137_)
          (let ((_opts49139_ '()))
            (gxc#compile-exe-stub__% _srcpath49137_ _opts49139_))))
      (define gxc#compile-exe-stub
        (lambda _g49187_
          (let ((_g49186_ (length _g49187_)))
            (cond ((##fx= _g49186_ 1) (apply gxc#compile-exe-stub__0 _g49187_))
                  ((##fx= _g49186_ 2) (apply gxc#compile-exe-stub__% _g49187_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g49187_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath49117_ _opts49118_)
        (gxc#do-compile-exe
         _srcpath49117_
         _opts49118_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath49123_)
          (let ((_opts49125_ '()))
            (gxc#compile-static-exe__% _srcpath49123_ _opts49125_))))
      (define gxc#compile-static-exe
        (lambda _g49189_
          (let ((_g49188_ (length _g49189_)))
            (cond ((##fx= _g49188_ 1)
                   (apply gxc#compile-static-exe__0 _g49189_))
                  ((##fx= _g49188_ 2)
                   (apply gxc#compile-static-exe__% _g49189_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g49189_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath49105_ _opts49106_ _compile-e49107_)
      (begin
        (if (string? _srcpath49105_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath49105_))
        (let ((_outdir49109_ (pgetq 'output-dir: _opts49106_))
              (_invoke-gsc?49110_ (pgetq 'invoke-gsc: _opts49106_))
              (_gsc-options49111_ (pgetq 'gsc-options: _opts49106_))
              (_keep-scm?49112_ (pgetq 'keep-scm: _opts49106_))
              (_verbosity49113_ (pgetq 'verbose: _opts49106_)))
          (begin
            (if _outdir49109_ (create-directory* _outdir49109_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath49105_)
                 (_compile-e49107_
                  (gx#import-module__0 _srcpath49105_)
                  _opts49106_)))
             gxc#current-compile-output-dir
             _outdir49109_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?49110_
             gxc#current-compile-gsc-options
             _gsc-options49111_
             gxc#current-compile-keep-scm
             _keep-scm?49112_
             gxc#current-compile-verbose
             _verbosity49113_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx49071_ _opts49072_)
      (letrec ((_generate-stub49074_
                (lambda (_gx-init-stub49096_)
                  (let* ((_mod-str49098_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx49071_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt49100_ (string-append _mod-str49098_ '"__rt"))
                         (_mod-main49102_
                          (gxc#find-runtime-symbol _ctx49071_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub49096_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt49100_
                                         (cons (cons 'quote
                                                     (cons _mod-main49102_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub49075_
                (lambda (_output-scm49082_ _output-bin49083_)
                  (let* ((_init-stub49085_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args49087_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin49083_
                                            (cons _output-scm49082_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm49082_
                       (lambda () (_generate-stub49074_ _init-stub49085_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args49087_))
                            (let* ((_proc49091_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args49087_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status49093_
                                    (process-status _proc49091_)))
                              (if (zero? _status49093_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm49082_
                                   _output-bin49083_
                                   _status49093_))))
                          '#!void))))))
        (let* ((_output-bin49077_
                (gxc#compile-exe-output-file _ctx49071_ _opts49072_))
               (_output-scm49079_ (string-append _output-bin49077_ '".scm")))
          (begin
            (_compile-stub49075_ _output-scm49079_ _output-bin49077_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm49079_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48932_ _opts48933_)
      (letrec ((_reset-declare48935_
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
               (_user-declare48936_
                (lambda ()
                  (let* ((_gsc-opts49014_ (pgetq 'gsc-options: _opts48933_))
                         (_gsc-prelude49016_
                          (if _gsc-opts49014_
                              (member '"-prelude" _gsc-opts49014_)
                              '#f))
                         (_gsc-prelude49018_
                          (if _gsc-prelude49016_
                              (read (open-input-string
                                     (cadr _gsc-prelude49016_)))
                              '#f)))
                    (let _lift49021_ ((_expr49023_ _gsc-prelude49018_))
                      (let* ((_expr4902449036_ _expr49023_)
                             (_else4902749044_ (lambda () '#f)))
                        (let ((_K4903249064_ (lambda () _expr49023_))
                              (_K4902949050_
                               (lambda (_exprs49048_)
                                 (ormap1 _lift49021_ _exprs49048_))))
                          (if (##pair? _expr4902449036_)
                              (let ((_hd4903349067_ (##car _expr4902449036_)))
                                (if (##eq? _hd4903349067_ 'declare)
                                    (_K4903249064_)
                                    (let ((_tl4903149055_
                                           (##cdr _expr4902449036_)))
                                      (if (##eq? _hd4903349067_ 'begin)
                                          (let ((_exprs49058_ _tl4903149055_))
                                            (_K4902949050_ _exprs49058_))
                                          (_else4902749044_)))))
                              (_else4902749044_))))))))
               (_generate-stub48937_
                (lambda (_deps49005_)
                  (let ((_mod-main49007_
                         (gxc#find-runtime-symbol _ctx48932_ 'main))
                        (_reset-decl49008_ (_reset-declare48935_))
                        (_user-decl49009_ (_user-declare48936_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep49011_)
                         (begin
                           (write (cons 'include (cons _dep49011_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl49008_)
                           (if _user-decl49009_
                               (write _user-decl49009_)
                               '#!void)
                           (newline)))
                       _deps49005_)
                      (write (cons 'apply
                                   (cons _mod-main49007_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48938_
                (lambda (_gsc-opts48988_ _home48989_)
                  (letrec* ((_static-dir48991_
                             (path-expand '"lib/static" _home48989_))
                            (_user-static-dir48992_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48993_
                             (string-append
                              '"-I "
                              _static-dir48991_
                              '" -I "
                              _user-static-dir48992_)))
                    (let ((_$e48995_ (member '"-cc-options" _gsc-opts48988_)))
                      (if _$e48995_
                          ((lambda (_rest48998_)
                             (let* ((_cell49000_ (cdr _rest48998_))
                                    (_opt49002_ (car _cell49000_)))
                               (begin
                                 (set-car!
                                  _cell49000_
                                  (string-append
                                   _opt49002_
                                   '" "
                                   _cppflags48993_))
                                 _gsc-opts48988_)))
                           _$e48995_)
                          (cons '"-cc-options"
                                (cons _cppflags48993_ _gsc-opts48988_)))))))
               (_compile-stub48939_
                (lambda (_output-scm48946_ _output-bin48947_)
                  (let* ((_gerbil-home48949_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048951_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48949_))
                         (_gx-gambc-init48953_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48949_))
                         (_gx-gambc-macros48955_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48949_))
                         (_include-gx-gambc-macros48957_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48955_
                           '"\")"))
                         (_bin-scm48959_
                          (gxc#find-static-module-file _ctx48932_))
                         (_deps48961_
                          (gxc#find-runtime-module-deps _ctx48932_))
                         (_deps48963_
                          (map gxc#find-static-module-file _deps48961_))
                         (_deps48968_
                          (filter (lambda (_$obj48965_)
                                    (not (gxc#file-empty? _$obj48965_)))
                                  _deps48963_))
                         (_gsc-opts48973_
                          (let ((_$e48970_ (pgetq 'gsc-options: _opts48933_)))
                            (if _$e48970_ _$e48970_ '())))
                         (_gsc-opts48975_
                          (_static-include48938_
                           _gsc-opts48973_
                           _gerbil-home48949_))
                         (_gsc-gx-macros48977_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48957_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48957_
                                          '()))))
                         (_gsc-args48979_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48947_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48946_ '())
                            _gsc-gx-macros48977_)
                    _gsc-opts48975_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48946_
                       (lambda ()
                         (_generate-stub48937_
                          (cons _gx-gambc048951_
                                (cons _gx-gambc-init48953_
                                      (foldr1 cons
                                              (cons _bin-scm48959_ '())
                                              _deps48968_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48979_))
                            (let* ((_proc48983_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48979_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48985_
                                    (process-status _proc48983_)))
                              (if (zero? _status48985_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48946_
                                   _output-bin48947_
                                   _status48985_))))
                          '#!void))))))
        (let* ((_output-bin48941_
                (gxc#compile-exe-output-file _ctx48932_ _opts48933_))
               (_output-scm48943_ (string-append _output-bin48941_ '".scm")))
          (begin
            (_compile-stub48939_ _output-scm48943_ _output-bin48941_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48943_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48882_ _id48883_)
      (let ((_$e48929_
             (find (lambda (_e4888448886_)
                     (let* ((_g4888848898_ _e4888448886_)
                            (_else4889048906_ (lambda () '#f))
                            (_K4889248910_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4888848898_
                            'gx#module-export::t)
                           (let* ((_e4889348913_
                                   (##vector-ref _g4888848898_ '1))
                                  (_e4889448916_
                                   (##vector-ref _g4888848898_ '2))
                                  (_e4889548919_
                                   (##vector-ref _g4888848898_ '3)))
                             (if (##eq? _e4889548919_ '0)
                                 (let ((_e4889648922_
                                        (##vector-ref _g4888848898_ '4)))
                                   (if ((lambda (_g4892448926_)
                                          (eq? _g4892448926_ _id48883_))
                                        _e4889648922_)
                                       (_K4889248910_)
                                       (_else4889048906_)))
                                 (_else4889048906_)))
                           (_else4889048906_))))
                   (##structure-ref _ctx48882_ '9 gx#module-context::t '#f))))
        (if _$e48929_ (gx#core-resolve-module-export _$e48929_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48874_ _id48875_)
      (let ((_$e48877_ (gxc#find-export-binding _ctx48874_ _id48875_)))
        (if _$e48877_
            ((lambda (_bind48880_)
               (begin
                 (if (##structure-instance-of?
                      _bind48880_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48875_))
                 (##structure-ref _bind48880_ '1 gx#binding::t '#f)))
             _$e48877_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48874_ '1 gx#expander-context::t '#f)
             _id48875_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48761_)
      (letrec* ((_ht48763_ (make-hash-table-eq))
                (_import-set-template48764_
                 (lambda (_in48826_ _phi48827_)
                   (let ((_iphi48829_
                          (fx+ _phi48827_
                               (##direct-structure-ref
                                _in48826_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48830_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48826_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48832_ ((_rest48834_ _imports48830_)
                                     (_r48835_ '()))
                       (let* ((_rest4883648844_ _rest48834_)
                              (_else4883848852_ (lambda () _r48835_))
                              (_K4884048862_
                               (lambda (_rest48855_ _in48856_)
                                 (if (##structure-instance-of?
                                      _in48856_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48829_)
                                         (_lp48832_
                                          _rest48855_
                                          (cons _in48856_ _r48835_))
                                         (_lp48832_ _rest48855_ _r48835_))
                                     (if (##structure-direct-instance-of?
                                          _in48856_
                                          'gx#module-import::t)
                                         (let ((_iphi48858_
                                                (fx+ _phi48827_
                                                     (##direct-structure-ref
                                                      _in48856_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48858_)
                                               (_lp48832_
                                                _rest48855_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48856_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48835_))
                                               (_lp48832_
                                                _rest48855_
                                                _r48835_)))
                                         (if (##structure-direct-instance-of?
                                              _in48856_
                                              'gx#import-set::t)
                                             (let ((_xphi48860_
                                                    (fx+ _iphi48829_
                                                         (##direct-structure-ref
                                                          _in48856_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48860_)
                                                   (_lp48832_
                                                    _rest48855_
                                                    (cons (##direct-structure-ref
                                                           _in48856_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48835_))
                                                   (if (fxpositive?
                                                        _xphi48860_)
                                                       (_lp48832_
                                                        _rest48855_
                                                        (foldl1 cons
                                                                _r48835_
                                                                (_import-set-template48764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48856_
                         _iphi48829_)))
               (_lp48832_ _rest48855_ _r48835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48832_
                                              _rest48855_
                                              _r48835_)))))))
                         (if (##pair? _rest4883648844_)
                             (let ((_hd4884148865_ (##car _rest4883648844_))
                                   (_tl4884248867_ (##cdr _rest4883648844_)))
                               (let* ((_in48870_ _hd4884148865_)
                                      (_rest48872_ _tl4884248867_))
                                 (_K4884048862_ _rest48872_ _in48870_)))
                             (_else4883848852_)))))))
                (_find-deps48765_
                 (lambda (_rest48772_ _deps48773_)
                   (let* ((_rest4877448782_ _rest48772_)
                          (_else4877648790_ (lambda () _deps48773_))
                          (_K4877848814_
                           (lambda (_rest48793_ _hd48794_)
                             (if (##structure-instance-of?
                                  _hd48794_
                                  'gx#module-context::t)
                                 (let ((_id48796_
                                        (##structure-ref
                                         _hd48794_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48797_
                                        (##structure-ref
                                         _hd48794_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48763_ _id48796_ '#f)
                                       (_find-deps48765_
                                        _rest48793_
                                        _deps48773_)
                                       (let ((_$e48799_
                                              (gx#core-context-prelude__%
                                               _hd48794_)))
                                         (if _$e48799_
                                             ((lambda (_pre48802_)
                                                (let ((_xdeps48804_
                                                       (_find-deps48765_
                                                        (cons _pre48802_
                                                              _imports48797_)
                                                        _deps48773_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48763_
                                                     _id48796_
                                                     _hd48794_)
                                                    (_find-deps48765_
                                                     _rest48793_
                                                     (cons _hd48794_
                                                           _xdeps48804_)))))
                                              _$e48799_)
                                             (let ((_xdeps48806_
                                                    (_find-deps48765_
                                                     _imports48797_
                                                     _deps48773_)))
                                               (begin
                                                 (table-set!
                                                  _ht48763_
                                                  _id48796_
                                                  _hd48794_)
                                                 (_find-deps48765_
                                                  _rest48793_
                                                  (cons _hd48794_
                                                        _xdeps48806_))))))))
                                 (if (##structure-instance-of?
                                      _hd48794_
                                      'gx#prelude-context::t)
                                     (let ((_id48808_
                                            (##structure-ref
                                             _hd48794_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48763_ _id48808_ '#f)
                                           (_find-deps48765_
                                            _rest48793_
                                            _deps48773_)
                                           (let ((_xdeps48810_
                                                  (_find-deps48765_
                                                   (##structure-ref
                                                    _hd48794_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48773_)))
                                             (if (table-ref
                                                  _ht48763_
                                                  _id48808_
                                                  '#f)
                                                 (_find-deps48765_
                                                  _rest48793_
                                                  _xdeps48810_)
                                                 (begin
                                                   (table-set!
                                                    _ht48763_
                                                    _id48808_
                                                    _hd48794_)
                                                   (_find-deps48765_
                                                    _rest48793_
                                                    (cons _hd48794_
                                                          _xdeps48810_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48794_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48794_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48765_
                                              (cons (##direct-structure-ref
                                                     _hd48794_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48793_)
                                              _deps48773_)
                                             (_find-deps48765_
                                              _rest48793_
                                              _deps48773_))
                                         (if (##structure-direct-instance-of?
                                              _hd48794_
                                              'gx#module-export::t)
                                             (_find-deps48765_
                                              (cons (##direct-structure-ref
                                                     _hd48794_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48793_)
                                              _deps48773_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48794_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48794_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48765_
                                                      (cons (##direct-structure-ref
                                                             _hd48794_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48793_)
                                                      _deps48773_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48794_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48812_
                                                                (_import-set-template48764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48794_
                         '0)))
                   (_find-deps48765_
                    (foldl1 cons _rest48793_ _xdeps48812_)
                    _deps48773_))
                 (_find-deps48765_ _rest48793_ _deps48773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48794_)))))))))
                     (if (##pair? _rest4877448782_)
                         (let ((_hd4877948817_ (##car _rest4877448782_))
                               (_tl4878048819_ (##cdr _rest4877448782_)))
                           (let* ((_hd48822_ _hd4877948817_)
                                  (_rest48824_ _tl4878048819_))
                             (_K4877848814_ _rest48824_ _hd48822_)))
                         (_else4877648790_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48765_
                          (let ((_$e48767_
                                 (gx#core-context-prelude__% _ctx48761_)))
                            (if _$e48767_
                                ((lambda (_pre48770_)
                                   (cons _pre48770_
                                         (##structure-ref
                                          _ctx48761_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48767_)
                                (##structure-ref
                                 _ctx48761_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48700_)
      (let* ((_scm48702_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48700_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48704_ (gx#current-expander-module-library-path))
             (_dirs48713_
              (let ((_$e48706_ (gxc#current-compile-output-dir)))
                (if _$e48706_
                    ((lambda (_g4870848710_) (cons _g4870848710_ _dirs48704_))
                     _$e48706_)
                    _dirs48704_)))
             (_dirs48719_
              (map (lambda (_g4871448716_)
                     (path-expand '"static" _g4871448716_))
                   _dirs48713_)))
        (let _lp48722_ ((_rest48724_ _dirs48719_))
          (let* ((_rest4872548733_ _rest48724_)
                 (_else4872748741_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48700_ '1 gx#expander-context::t '#f)
                     _scm48702_)))
                 (_K4872948749_
                  (lambda (_rest48744_ _dir48745_)
                    (let ((_path48747_ (path-expand _scm48702_ _dir48745_)))
                      (if (file-exists? _path48747_)
                          _path48747_
                          (_lp48722_ _rest48744_))))))
            (if (##pair? _rest4872548733_)
                (let ((_hd4873048752_ (##car _rest4872548733_))
                      (_tl4873148754_ (##cdr _rest4872548733_)))
                  (let* ((_dir48757_ _hd4873048752_)
                         (_rest48759_ _tl4873148754_))
                    (_K4872948749_ _rest48759_ _dir48757_)))
                (_else4872748741_)))))))
  (define gxc#file-empty?
    (lambda (_path48698_)
      (zero? (file-info-size (file-info _path48698_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48695_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48695_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48695_)
               '#!void)
           (gxc#collect-bindings _ctx48695_)
           (gxc#compile-runtime-code _ctx48695_)
           (gxc#compile-meta-code _ctx48695_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48695_)
               '#!void)))
       gx#current-expander-context
       _ctx48695_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj49182 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj49182) __obj49182))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48693_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48693_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48647_)
      (letrec ((_compile148649_
                (lambda (_ctx48682_)
                  (let* ((_code48684_
                          (##structure-ref
                           _ctx48682_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48688_
                          (if (gxc#apply-find-runtime-code _code48684_)
                              (let ((_idstr48686_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48682_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48686_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48688_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48682_
                             _rt48688_)
                            (_generate-runtime-code48650_
                             _ctx48682_
                             _code48684_))
                          (if (gxc#current-compile-static)
                              (let ((_path48691_
                                     (gxc#compile-static-output-file
                                      _ctx48682_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48691_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48651_
                       _ctx48682_
                       _code48684_
                       _rt48688_)))))
               (_generate-runtime-code48650_
                (lambda (_ctx48666_ _code48667_)
                  (let* ((_lifts48669_ (box '()))
                         (_runtime-code48672_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48667_))
                           gx#current-expander-context
                           _ctx48666_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48669_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code48674_
                          (if (null? (unbox _lifts48669_))
                              _runtime-code48672_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48672_ '())
                                            (reverse (unbox _lifts48669_))))))
                         (_scm048676_
                          (gxc#compile-output-file _ctx48666_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48679_
                               (gxc#compile-static-output-file _ctx48666_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm048676_
                                _runtime-code48674_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48679_)
                                (delete-file _scms48679_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048676_
                             '" => "
                             _scms48679_)
                            (copy-file _scm048676_ _scms48679_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048676_))))
                        (gxc#compile-scm-file__0
                         _scm048676_
                         _runtime-code48674_)))))
               (_generate-loader-code48651_
                (lambda (_ctx48655_ _code48656_ _rt48657_)
                  (let* ((_loader-code48660_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48656_))
                           gx#current-expander-context
                           _ctx48655_))
                         (_loader-code48662_
                          (if _rt48657_
                              (cons 'begin
                                    (cons _loader-code48660_
                                          (cons (cons 'load-module
                                                      (cons _rt48657_ '()))
                                                '())))
                              _loader-code48660_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx48655_ 'rt '".scm")
                        _loader-code48662_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48653_
               (cons _ctx48647_ (gxc#lift-nested-modules _ctx48647_))))
          (for-each _compile148649_ _all-modules48653_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48549_)
      (letrec ((_compile-ssi48551_
                (lambda (_code48617_)
                  (let* ((_path48619_
                          (gxc#compile-output-file _ctx48549_ '#f '".ssi"))
                         (_prelude48630_
                          (let* ((_super48621_
                                  (##structure-ref
                                   _ctx48549_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48623_
                                  (##structure-ref
                                   _super48621_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48623_
                                ((lambda (_g4862548627_)
                                   (make-symbol '":" _g4862548627_))
                                 _$e48623_)
                                ':<root>)))
                         (_ns48632_
                          (##structure-ref
                           _ctx48549_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48634_
                          (symbol->string
                           (##structure-ref
                            _ctx48549_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48641_
                          (let ((_$e48636_ (string-rindex _idstr48634_ '#\/)))
                            (if _$e48636_
                                ((lambda (_x48639_)
                                   (string->symbol
                                    (substring _idstr48634_ '0 _x48639_)))
                                 _$e48636_)
                                '#f)))
                         (_rt48643_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48549_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48619_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48619_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48630_)
                           (if _pkg48641_
                               (displayln '"package:" '" " _pkg48641_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48632_)
                           (newline)
                           (pretty-print _code48617_)
                           (if _rt48643_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48643_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48552_
                (lambda (_part48557_)
                  (let* ((_part4855848571_ _part48557_)
                         (_E4856048575_
                          (lambda ()
                            (error '"No clause matching" _part4855848571_)))
                         (_K4856148586_
                          (lambda (_code48578_
                                   _n48579_
                                   _phi48580_
                                   _phi-ctx48581_)
                            (let ((_code48584_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48578_))
                                    gx#current-expander-context
                                    _phi-ctx48581_
                                    gx#current-expander-phi
                                    _phi48580_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx48549_
                                _n48579_
                                '".scm")
                               _code48584_
                               '#t)))))
                    (if (##pair? _part4855848571_)
                        (let ((_hd4856248589_ (##car _part4855848571_))
                              (_tl4856348591_ (##cdr _part4855848571_)))
                          (let ((_phi-ctx48594_ _hd4856248589_))
                            (if (##pair? _tl4856348591_)
                                (let ((_hd4856448596_ (##car _tl4856348591_))
                                      (_tl4856548598_ (##cdr _tl4856348591_)))
                                  (let ((_phi48601_ _hd4856448596_))
                                    (if (##pair? _tl4856548598_)
                                        (let ((_hd4856648603_
                                               (##car _tl4856548598_))
                                              (_tl4856748605_
                                               (##cdr _tl4856548598_)))
                                          (let ((_n48608_ _hd4856648603_))
                                            (if (##pair? _tl4856748605_)
                                                (let ((_hd4856848610_
                                                       (##car _tl4856748605_))
                                                      (_tl4856948612_
                                                       (##cdr _tl4856748605_)))
                                                  (let ((_code48615_
                                                         _hd4856848610_))
                                                    (if (##null? _tl4856948612_)
                                                        (_K4856148586_
                                                         _code48615_
                                                         _n48608_
                                                         _phi48601_
                                                         _phi-ctx48594_)
                                                        (_E4856048575_))))
                                                (_E4856048575_))))
                                        (_E4856048575_))))
                                (_E4856048575_))))
                        (_E4856048575_))))))
        (let ((_g49190_ (gxc#generate-meta-code _ctx48549_)))
          (begin
            (let ((_g49191_
                   (if (##values? _g49190_) (##vector-length _g49190_) 1)))
              (if (not (##fx= _g49191_ 2))
                  (error "Context expects 2 values" _g49191_)))
            (let ((_ssi-code48554_ (##vector-ref _g49190_ 0))
                  (_phi-code48555_ (##vector-ref _g49190_ 1)))
              (begin
                (_compile-ssi48551_ _ssi-code48554_)
                (for-each _compile-phi48552_ _phi-code48555_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48532_)
      (let* ((_path48534_ (gxc#compile-output-file _ctx48532_ '#f '".ssxi.ss"))
             (_code48536_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48532_ '11 gx#module-context::t '#f)))
             (_idstr48538_
              (symbol->string
               (##structure-ref _ctx48532_ '1 gx#expander-context::t '#f)))
             (_pkg48545_
              (let ((_$e48540_ (string-rindex _idstr48538_ '#\/)))
                (if _$e48540_
                    ((lambda (_x48543_)
                       (string->symbol (substring _idstr48538_ '0 _x48543_)))
                     _$e48540_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48534_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48534_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48545_ (displayln '"package: " _pkg48545_) '#!void)
               (newline)
               (pretty-print _code48536_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48525_)
      (let* ((_state48527_
              (let ((__obj49183 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj49183 _ctx48525_)
                  __obj49183)))
             (_ssi-code48529_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48525_ '11 gx#module-context::t '#f)
               _state48527_)))
        (values _ssi-code48529_ (gxc#meta-state-end! _state48527_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48518_)
      (let ((_lifts48520_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48523_ (gxc#apply-generate-runtime-phi _stx48518_)))
             (if (null? (unbox _lifts48520_))
                 _code48523_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48523_ '())
                               (reverse (unbox _lifts48520_)))))))
         gxc#current-compile-lift
         _lifts48520_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48514_)
      (let ((_modules48516_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48514_ '11 gx#module-context::t '#f)
           _modules48516_)
          (reverse (unbox _modules48516_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path48497_ _code48498_ _phi?48499_)
        (begin
          (gxc#verbose '"compile " _path48497_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48497_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?48499_
                                                    '((inlining-limit 100))
                                                    '())))))))
               (pretty-print _code48498_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path48497_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path48497_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path48505_ _code48506_)
          (let ((_phi?48508_ '#f))
            (gxc#compile-scm-file__% _path48505_ _code48506_ _phi?48508_))))
      (define gxc#compile-scm-file
        (lambda _g49193_
          (let ((_g49192_ (length _g49193_)))
            (cond ((##fx= _g49192_ 2) (apply gxc#compile-scm-file__0 _g49193_))
                  ((##fx= _g49192_ 3) (apply gxc#compile-scm-file__% _g49193_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g49193_))))))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e48485_ (gxc#current-compile-debug)))
        (if _$e48485_
            ((lambda (_debug48488_)
               (let ((_$e48490_ _debug48488_))
                 (if (eq? 'env _$e48490_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e48490_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (if (eq? 'all _$e48490_) '#t (eq? '#t _$e48490_))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug48488_))))))
             _$e48485_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path48467_)
      (let* ((_gsc-args48474_
              (let ((_$e48469_ (gxc#current-compile-gsc-options)))
                (if _$e48469_
                    ((lambda (_opts48472_)
                       (foldr1 cons (cons _path48467_ '()) _opts48472_))
                     _$e48469_)
                    (cons _path48467_ '()))))
             (_gsc-args48476_
              (foldr1 cons _gsc-args48474_ (gxc#gsc-debug-options)))
             (_g49194_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args48476_)))
             (_proc48479_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args48476_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status48481_ (process-status _proc48479_)))
        (if (zero? _status48481_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path48467_
             _status48481_)))))
  (define gxc#compile-output-file
    (lambda (_ctx48439_ _n48440_ _ext48441_)
      (letrec ((_module-relative-path48443_
                (lambda (_ctx48465_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx48465_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory48444_
                (lambda (_ctx48461_)
                  (path-directory
                   (let ((_mpath48463_
                          (##structure-ref
                           _ctx48461_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath48463_)
                         _mpath48463_
                         (last _mpath48463_))))))
               (_section-string48445_
                (lambda (_n48459_)
                  (if (number? _n48459_)
                      (number->string _n48459_)
                      (if (symbol? _n48459_)
                          (symbol->string _n48459_)
                          (if (string? _n48459_)
                              _n48459_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n48459_))))))
               (_file-name48446_
                (lambda (_path48457_)
                  (if _n48440_
                      (string-append
                       _path48457_
                       '"__"
                       (_section-string48445_ _n48440_)
                       _ext48441_)
                      (string-append _path48457_ _ext48441_))))
               (_file-path48447_
                (lambda ()
                  (let ((_$e48452_ (gxc#current-compile-output-dir)))
                    (if _$e48452_
                        ((lambda (_outdir48455_)
                           (path-expand
                            (_file-name48446_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx48439_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir48455_))
                         _$e48452_)
                        (path-expand
                         (_file-name48446_
                          (_module-relative-path48443_ _ctx48439_))
                         (_module-source-directory48444_ _ctx48439_)))))))
        (let ((_path48449_ (_file-path48447_)))
          (begin
            (create-directory* (path-directory _path48449_))
            _path48449_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx48422_)
      (letrec ((_file-name48424_
                (lambda (_id48437_)
                  (string-append (gxc#static-module-name _id48437_) '".scm")))
               (_file-path48425_
                (lambda ()
                  (let* ((_file48430_
                          (_file-name48424_
                           (##structure-ref
                            _ctx48422_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e48432_ (gxc#current-compile-output-dir)))
                    (if _$e48432_
                        ((lambda (_outdir48435_)
                           (path-expand
                            _file48430_
                            (path-expand '"static" _outdir48435_)))
                         _$e48432_)
                        (path-expand _file48430_ '"static"))))))
        (let ((_path48427_ (_file-path48425_)))
          (begin
            (create-directory* (path-directory _path48427_))
            _path48427_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx48409_ _opts48410_)
      (let ((_$e48412_ (pgetq 'output-file: _opts48410_)))
        (if _$e48412_
            (values _$e48412_)
            (let* ((_mod-str48415_
                    (symbol->string
                     (##structure-ref
                      _ctx48409_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e48417_ (string-rindex _mod-str48415_ '#\/)))
              (if _$e48417_
                  ((lambda (_ix48420_)
                     (substring
                      _mod-str48415_
                      (fx+ _ix48420_ '1)
                      (string-length _mod-str48415_)))
                   _$e48417_)
                  _mod-str48415_))))))
  (define gxc#static-module-name
    (lambda (_idstr48402_)
      (if (string? _idstr48402_)
          (let* ((_str48404_ (gxc#module-id->path-string _idstr48402_))
                 (_strs48406_ (string-split _str48404_ '#\/)))
            (string-join _strs48406_ '"__"))
          (if (symbol? _idstr48402_)
              (gxc#static-module-name (symbol->string _idstr48402_))
              (error '"Bad module id" _idstr48402_))))))
