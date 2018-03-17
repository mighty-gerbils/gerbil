(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath36467_ _opts36468_)
        (begin
          (if (string? _srcpath36467_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath36467_))
          (let ((_outdir36470_ (pgetq 'output-dir: _opts36468_))
                (_invoke-gsc?36471_ (pgetq 'invoke-gsc: _opts36468_))
                (_gsc-options36472_ (pgetq 'gsc-options: _opts36468_))
                (_keep-scm?36473_ (pgetq 'keep-scm: _opts36468_))
                (_verbosity36474_ (pgetq 'verbose: _opts36468_))
                (_optimize36475_ (pgetq 'optimize: _opts36468_))
                (_debug36476_ (pgetq 'debug: _opts36468_))
                (_gen-ssxi36477_ (pgetq 'generate-ssxi: _opts36468_))
                (_static36478_ (pgetq 'static: _opts36468_)))
            (begin
              (if _outdir36470_ (create-directory* _outdir36470_) '#!void)
              (if _optimize36475_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath36467_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath36467_))))
               gxc#current-compile-output-dir
               _outdir36470_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?36471_
               gxc#current-compile-gsc-options
               _gsc-options36472_
               gxc#current-compile-keep-scm
               _keep-scm?36473_
               gxc#current-compile-verbose
               _verbosity36474_
               gxc#current-compile-optimize
               _optimize36475_
               gxc#current-compile-debug
               _debug36476_
               gxc#current-compile-generate-ssxi
               _gen-ssxi36477_
               gxc#current-compile-static
               _static36478_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath36484_)
          (let ((_opts36486_ '()))
            (gxc#compile-file__% _srcpath36484_ _opts36486_))))
      (define gxc#compile-file
        (lambda _g36499_
          (let ((_g36498_ (length _g36499_)))
            (cond ((##fx= _g36498_ 1) (apply gxc#compile-file__0 _g36499_))
                  ((##fx= _g36498_ 2) (apply gxc#compile-file__% _g36499_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g36499_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath36453_ _opts36454_)
        (gxc#do-compile-exe
         _srcpath36453_
         _opts36454_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath36459_)
          (let ((_opts36461_ '()))
            (gxc#compile-exe-stub__% _srcpath36459_ _opts36461_))))
      (define gxc#compile-exe-stub
        (lambda _g36501_
          (let ((_g36500_ (length _g36501_)))
            (cond ((##fx= _g36500_ 1) (apply gxc#compile-exe-stub__0 _g36501_))
                  ((##fx= _g36500_ 2) (apply gxc#compile-exe-stub__% _g36501_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g36501_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath36439_ _opts36440_)
        (gxc#do-compile-exe
         _srcpath36439_
         _opts36440_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath36445_)
          (let ((_opts36447_ '()))
            (gxc#compile-static-exe__% _srcpath36445_ _opts36447_))))
      (define gxc#compile-static-exe
        (lambda _g36503_
          (let ((_g36502_ (length _g36503_)))
            (cond ((##fx= _g36502_ 1)
                   (apply gxc#compile-static-exe__0 _g36503_))
                  ((##fx= _g36502_ 2)
                   (apply gxc#compile-static-exe__% _g36503_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g36503_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath36427_ _opts36428_ _compile-e36429_)
      (begin
        (if (string? _srcpath36427_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath36427_))
        (let ((_outdir36431_ (pgetq 'output-dir: _opts36428_))
              (_invoke-gsc?36432_ (pgetq 'invoke-gsc: _opts36428_))
              (_gsc-options36433_ (pgetq 'gsc-options: _opts36428_))
              (_keep-scm?36434_ (pgetq 'keep-scm: _opts36428_))
              (_verbosity36435_ (pgetq 'verbose: _opts36428_)))
          (begin
            (if _outdir36431_ (create-directory* _outdir36431_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath36427_)
                 (_compile-e36429_
                  (gx#import-module__0 _srcpath36427_)
                  _opts36428_)))
             gxc#current-compile-output-dir
             _outdir36431_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?36432_
             gxc#current-compile-gsc-options
             _gsc-options36433_
             gxc#current-compile-keep-scm
             _keep-scm?36434_
             gxc#current-compile-verbose
             _verbosity36435_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx36393_ _opts36394_)
      (letrec ((_generate-stub36396_
                (lambda (_gx-init-stub36418_)
                  (let* ((_mod-str36420_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx36393_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt36422_ (string-append _mod-str36420_ '"__rt"))
                         (_mod-main36424_
                          (gxc#find-runtime-symbol _ctx36393_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub36418_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt36422_
                                         (cons (cons 'quote
                                                     (cons _mod-main36424_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub36397_
                (lambda (_output-scm36404_ _output-bin36405_)
                  (let* ((_init-stub36407_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args36409_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin36405_
                                            (cons _output-scm36404_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm36404_
                       (lambda () (_generate-stub36396_ _init-stub36407_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args36409_))
                            (let* ((_proc36413_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args36409_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status36415_
                                    (process-status _proc36413_)))
                              (if (zero? _status36415_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm36404_
                                   _output-bin36405_
                                   _status36415_))))
                          '#!void))))))
        (let* ((_output-bin36399_
                (gxc#compile-exe-output-file _ctx36393_ _opts36394_))
               (_output-scm36401_ (string-append _output-bin36399_ '".scm")))
          (begin
            (_compile-stub36397_ _output-scm36401_ _output-bin36399_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm36401_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx36254_ _opts36255_)
      (letrec ((_reset-declare36257_
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
               (_user-declare36258_
                (lambda ()
                  (let* ((_gsc-opts36336_ (pgetq 'gsc-options: _opts36255_))
                         (_gsc-prelude36338_
                          (if _gsc-opts36336_
                              (member '"-prelude" _gsc-opts36336_)
                              '#f))
                         (_gsc-prelude36340_
                          (if _gsc-prelude36338_
                              (read (open-input-string
                                     (cadr _gsc-prelude36338_)))
                              '#f)))
                    (let _lift36343_ ((_expr36345_ _gsc-prelude36340_))
                      (let* ((_expr3634636358_ _expr36345_)
                             (_else3634936366_ (lambda () '#f)))
                        (let ((_K3635436386_ (lambda () _expr36345_))
                              (_K3635136372_
                               (lambda (_exprs36370_)
                                 (ormap1 _lift36343_ _exprs36370_))))
                          (if (##pair? _expr3634636358_)
                              (let ((_hd3635536389_ (##car _expr3634636358_)))
                                (if (##eq? _hd3635536389_ 'declare)
                                    (let () (_K3635436386_))
                                    (let ((_tl3635336377_
                                           (##cdr _expr3634636358_)))
                                      (if (##eq? _hd3635536389_ 'begin)
                                          (let ((_exprs36380_ _tl3635336377_))
                                            (_K3635136372_ _exprs36380_))
                                          (_else3634936366_)))))
                              (_else3634936366_))))))))
               (_generate-stub36259_
                (lambda (_deps36327_)
                  (let ((_mod-main36329_
                         (gxc#find-runtime-symbol _ctx36254_ 'main))
                        (_reset-decl36330_ (_reset-declare36257_))
                        (_user-decl36331_ (_user-declare36258_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep36333_)
                         (begin
                           (write (cons 'include (cons _dep36333_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl36330_)
                           (if _user-decl36331_
                               (write _user-decl36331_)
                               '#!void)
                           (newline)))
                       _deps36327_)
                      (write (cons 'apply
                                   (cons _mod-main36329_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include36260_
                (lambda (_gsc-opts36310_ _home36311_)
                  (letrec* ((_static-dir36313_
                             (path-expand '"lib/static" _home36311_))
                            (_user-static-dir36314_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags36315_
                             (string-append
                              '"-I "
                              _static-dir36313_
                              '" -I "
                              _user-static-dir36314_)))
                    (let ((_$e36317_ (member '"-cc-options" _gsc-opts36310_)))
                      (if _$e36317_
                          ((lambda (_rest36320_)
                             (let* ((_cell36322_ (cdr _rest36320_))
                                    (_opt36324_ (car _cell36322_)))
                               (begin
                                 (set-car!
                                  _cell36322_
                                  (string-append
                                   _opt36324_
                                   '" "
                                   _cppflags36315_))
                                 _gsc-opts36310_)))
                           _$e36317_)
                          (cons '"-cc-options"
                                (cons _cppflags36315_ _gsc-opts36310_)))))))
               (_compile-stub36261_
                (lambda (_output-scm36268_ _output-bin36269_)
                  (let* ((_gerbil-home36271_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc036273_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home36271_))
                         (_gx-gambc-init36275_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home36271_))
                         (_gx-gambc-macros36277_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home36271_))
                         (_include-gx-gambc-macros36279_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros36277_
                           '"\")"))
                         (_bin-scm36281_
                          (gxc#find-static-module-file _ctx36254_))
                         (_deps36283_
                          (gxc#find-runtime-module-deps _ctx36254_))
                         (_deps36285_
                          (map gxc#find-static-module-file _deps36283_))
                         (_deps36290_
                          (filter (lambda (_$obj36287_)
                                    (not (gxc#file-empty? _$obj36287_)))
                                  _deps36285_))
                         (_gsc-opts36295_
                          (let ((_$e36292_ (pgetq 'gsc-options: _opts36255_)))
                            (if _$e36292_ _$e36292_ '())))
                         (_gsc-opts36297_
                          (_static-include36260_
                           _gsc-opts36295_
                           _gerbil-home36271_))
                         (_gsc-gx-macros36299_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros36279_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros36279_
                                          '()))))
                         (_gsc-args36301_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin36269_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm36268_ '())
                            _gsc-gx-macros36299_)
                    _gsc-opts36297_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm36268_
                       (lambda ()
                         (_generate-stub36259_
                          (cons _gx-gambc036273_
                                (cons _gx-gambc-init36275_
                                      (foldr1 cons
                                              (cons _bin-scm36281_ '())
                                              _deps36290_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args36301_))
                            (let* ((_proc36305_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args36301_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status36307_
                                    (process-status _proc36305_)))
                              (if (zero? _status36307_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm36268_
                                   _output-bin36269_
                                   _status36307_))))
                          '#!void))))))
        (let* ((_output-bin36263_
                (gxc#compile-exe-output-file _ctx36254_ _opts36255_))
               (_output-scm36265_ (string-append _output-bin36263_ '".scm")))
          (begin
            (_compile-stub36261_ _output-scm36265_ _output-bin36263_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm36265_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx36204_ _id36205_)
      (let ((_$e36251_
             (find (lambda (_e3620636208_)
                     (let* ((_g3621036220_ _e3620636208_)
                            (_else3621236228_ (lambda () '#f))
                            (_K3621436232_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g3621036220_
                            'gx#module-export::t)
                           (let* ((_e3621536235_
                                   (##vector-ref _g3621036220_ '1))
                                  (_e3621636238_
                                   (##vector-ref _g3621036220_ '2))
                                  (_e3621736241_
                                   (##vector-ref _g3621036220_ '3)))
                             (if (##eq? _e3621736241_ '0)
                                 (let ((_e3621836244_
                                        (##vector-ref _g3621036220_ '4)))
                                   (if ((lambda (_g3624636248_)
                                          (eq? _g3624636248_ _id36205_))
                                        _e3621836244_)
                                       (_K3621436232_)
                                       (_else3621236228_)))
                                 (_else3621236228_)))
                           (_else3621236228_))))
                   (##structure-ref _ctx36204_ '9 gx#module-context::t '#f))))
        (if _$e36251_ (gx#core-resolve-module-export _$e36251_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx36196_ _id36197_)
      (let ((_$e36199_ (gxc#find-export-binding _ctx36196_ _id36197_)))
        (if _$e36199_
            ((lambda (_bind36202_)
               (begin
                 (if (##structure-instance-of?
                      _bind36202_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id36197_))
                 (##structure-ref _bind36202_ '1 gx#binding::t '#f)))
             _$e36199_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx36196_ '1 gx#expander-context::t '#f)
             _id36197_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx36083_)
      (letrec* ((_ht36085_ (make-hash-table-eq))
                (_import-set-template36086_
                 (lambda (_in36148_ _phi36149_)
                   (let ((_iphi36151_
                          (fx+ _phi36149_
                               (##direct-structure-ref
                                _in36148_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports36152_
                          (##structure-ref
                           (##direct-structure-ref
                            _in36148_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp36154_ ((_rest36156_ _imports36152_)
                                     (_r36157_ '()))
                       (let* ((_rest3615836166_ _rest36156_)
                              (_else3616036174_ (lambda () _r36157_))
                              (_K3616236184_
                               (lambda (_rest36177_ _in36178_)
                                 (if (##structure-instance-of?
                                      _in36178_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi36151_)
                                         (_lp36154_
                                          _rest36177_
                                          (cons _in36178_ _r36157_))
                                         (_lp36154_ _rest36177_ _r36157_))
                                     (if (##structure-direct-instance-of?
                                          _in36178_
                                          'gx#module-import::t)
                                         (let ((_iphi36180_
                                                (fx+ _phi36149_
                                                     (##direct-structure-ref
                                                      _in36178_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi36180_)
                                               (_lp36154_
                                                _rest36177_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in36178_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r36157_))
                                               (_lp36154_
                                                _rest36177_
                                                _r36157_)))
                                         (if (##structure-direct-instance-of?
                                              _in36178_
                                              'gx#import-set::t)
                                             (let ((_xphi36182_
                                                    (fx+ _iphi36151_
                                                         (##direct-structure-ref
                                                          _in36178_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi36182_)
                                                   (_lp36154_
                                                    _rest36177_
                                                    (cons (##direct-structure-ref
                                                           _in36178_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r36157_))
                                                   (if (fxpositive?
                                                        _xphi36182_)
                                                       (_lp36154_
                                                        _rest36177_
                                                        (foldl1 cons
                                                                _r36157_
                                                                (_import-set-template36086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in36178_
                         _iphi36151_)))
               (_lp36154_ _rest36177_ _r36157_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp36154_
                                              _rest36177_
                                              _r36157_)))))))
                         (if (##pair? _rest3615836166_)
                             (let ((_hd3616336187_ (##car _rest3615836166_))
                                   (_tl3616436189_ (##cdr _rest3615836166_)))
                               (let* ((_in36192_ _hd3616336187_)
                                      (_rest36194_ _tl3616436189_))
                                 (_K3616236184_ _rest36194_ _in36192_)))
                             (_else3616036174_)))))))
                (_find-deps36087_
                 (lambda (_rest36094_ _deps36095_)
                   (let* ((_rest3609636104_ _rest36094_)
                          (_else3609836112_ (lambda () _deps36095_))
                          (_K3610036136_
                           (lambda (_rest36115_ _hd36116_)
                             (if (##structure-instance-of?
                                  _hd36116_
                                  'gx#module-context::t)
                                 (let ((_id36118_
                                        (##structure-ref
                                         _hd36116_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports36119_
                                        (##structure-ref
                                         _hd36116_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht36085_ _id36118_ '#f)
                                       (_find-deps36087_
                                        _rest36115_
                                        _deps36095_)
                                       (let ((_$e36121_
                                              (gx#core-context-prelude__%
                                               _hd36116_)))
                                         (if _$e36121_
                                             ((lambda (_pre36124_)
                                                (let ((_xdeps36126_
                                                       (_find-deps36087_
                                                        (cons _pre36124_
                                                              _imports36119_)
                                                        _deps36095_)))
                                                  (begin
                                                    (table-set!
                                                     _ht36085_
                                                     _id36118_
                                                     _hd36116_)
                                                    (_find-deps36087_
                                                     _rest36115_
                                                     (cons _hd36116_
                                                           _xdeps36126_)))))
                                              _$e36121_)
                                             (let ((_xdeps36128_
                                                    (_find-deps36087_
                                                     _imports36119_
                                                     _deps36095_)))
                                               (begin
                                                 (table-set!
                                                  _ht36085_
                                                  _id36118_
                                                  _hd36116_)
                                                 (_find-deps36087_
                                                  _rest36115_
                                                  (cons _hd36116_
                                                        _xdeps36128_))))))))
                                 (if (##structure-instance-of?
                                      _hd36116_
                                      'gx#prelude-context::t)
                                     (let ((_id36130_
                                            (##structure-ref
                                             _hd36116_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht36085_ _id36130_ '#f)
                                           (_find-deps36087_
                                            _rest36115_
                                            _deps36095_)
                                           (let ((_xdeps36132_
                                                  (_find-deps36087_
                                                   (##structure-ref
                                                    _hd36116_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps36095_)))
                                             (if (table-ref
                                                  _ht36085_
                                                  _id36130_
                                                  '#f)
                                                 (_find-deps36087_
                                                  _rest36115_
                                                  _xdeps36132_)
                                                 (begin
                                                   (table-set!
                                                    _ht36085_
                                                    _id36130_
                                                    _hd36116_)
                                                   (_find-deps36087_
                                                    _rest36115_
                                                    (cons _hd36116_
                                                          _xdeps36132_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd36116_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd36116_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps36087_
                                              (cons (##direct-structure-ref
                                                     _hd36116_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest36115_)
                                              _deps36095_)
                                             (_find-deps36087_
                                              _rest36115_
                                              _deps36095_))
                                         (if (##structure-direct-instance-of?
                                              _hd36116_
                                              'gx#module-export::t)
                                             (_find-deps36087_
                                              (cons (##direct-structure-ref
                                                     _hd36116_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest36115_)
                                              _deps36095_)
                                             (if (##structure-direct-instance-of?
                                                  _hd36116_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd36116_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps36087_
                                                      (cons (##direct-structure-ref
                                                             _hd36116_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest36115_)
                                                      _deps36095_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd36116_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps36134_
                                                                (_import-set-template36086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd36116_
                         '0)))
                   (_find-deps36087_
                    (foldl1 cons _rest36115_ _xdeps36134_)
                    _deps36095_))
                 (_find-deps36087_ _rest36115_ _deps36095_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd36116_)))))))))
                     (if (##pair? _rest3609636104_)
                         (let ((_hd3610136139_ (##car _rest3609636104_))
                               (_tl3610236141_ (##cdr _rest3609636104_)))
                           (let* ((_hd36144_ _hd3610136139_)
                                  (_rest36146_ _tl3610236141_))
                             (_K3610036136_ _rest36146_ _hd36144_)))
                         (_else3609836112_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps36087_
                          (let ((_$e36089_
                                 (gx#core-context-prelude__% _ctx36083_)))
                            (if _$e36089_
                                ((lambda (_pre36092_)
                                   (cons _pre36092_
                                         (##structure-ref
                                          _ctx36083_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e36089_)
                                (##structure-ref
                                 _ctx36083_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx36022_)
      (let* ((_scm36024_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx36022_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs36026_ (gx#current-expander-module-library-path))
             (_dirs36035_
              (let ((_$e36028_ (gxc#current-compile-output-dir)))
                (if _$e36028_
                    ((lambda (_g3603036032_) (cons _g3603036032_ _dirs36026_))
                     _$e36028_)
                    _dirs36026_)))
             (_dirs36041_
              (map (lambda (_g3603636038_)
                     (path-expand '"static" _g3603636038_))
                   _dirs36035_)))
        (let _lp36044_ ((_rest36046_ _dirs36041_))
          (let* ((_rest3604736055_ _rest36046_)
                 (_else3604936063_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx36022_ '1 gx#expander-context::t '#f)
                     _scm36024_)))
                 (_K3605136071_
                  (lambda (_rest36066_ _dir36067_)
                    (let ((_path36069_ (path-expand _scm36024_ _dir36067_)))
                      (if (file-exists? _path36069_)
                          _path36069_
                          (_lp36044_ _rest36066_))))))
            (if (##pair? _rest3604736055_)
                (let ((_hd3605236074_ (##car _rest3604736055_))
                      (_tl3605336076_ (##cdr _rest3604736055_)))
                  (let* ((_dir36079_ _hd3605236074_)
                         (_rest36081_ _tl3605336076_))
                    (_K3605136071_ _rest36081_ _dir36079_)))
                (_else3604936063_)))))))
  (define gxc#file-empty?
    (lambda (_path36020_)
      (zero? (file-info-size (file-info _path36020_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx36017_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx36017_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx36017_)
               '#!void)
           (gxc#collect-bindings _ctx36017_)
           (gxc#compile-runtime-code _ctx36017_)
           (gxc#compile-meta-code _ctx36017_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx36017_)
               '#!void)))
       gx#current-expander-context
       _ctx36017_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj36496 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj36496) __obj36496))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx36015_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx36015_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx35969_)
      (letrec ((_compile135971_
                (lambda (_ctx36004_)
                  (let* ((_code36006_
                          (##structure-ref
                           _ctx36004_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt36010_
                          (if (gxc#apply-find-runtime-code _code36006_)
                              (let ((_idstr36008_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx36004_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr36008_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt36010_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx36004_
                             _rt36010_)
                            (_generate-runtime-code35972_
                             _ctx36004_
                             _code36006_))
                          (if (gxc#current-compile-static)
                              (let ((_path36013_
                                     (gxc#compile-static-output-file
                                      _ctx36004_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path36013_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code35973_
                       _ctx36004_
                       _code36006_
                       _rt36010_)))))
               (_generate-runtime-code35972_
                (lambda (_ctx35988_ _code35989_)
                  (let* ((_lifts35991_ (box '()))
                         (_runtime-code35994_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code35989_))
                           gx#current-expander-context
                           _ctx35988_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts35991_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code35996_
                          (if (null? (unbox _lifts35991_))
                              _runtime-code35994_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code35994_ '())
                                            (reverse (unbox _lifts35991_))))))
                         (_scm035998_
                          (gxc#compile-output-file _ctx35988_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms36001_
                               (gxc#compile-static-output-file _ctx35988_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm035998_
                                _runtime-code35996_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms36001_)
                                (delete-file _scms36001_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm035998_
                             '" => "
                             _scms36001_)
                            (copy-file _scm035998_ _scms36001_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm035998_))))
                        (gxc#compile-scm-file
                         _scm035998_
                         _runtime-code35996_)))))
               (_generate-loader-code35973_
                (lambda (_ctx35977_ _code35978_ _rt35979_)
                  (let* ((_loader-code35982_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code35978_))
                           gx#current-expander-context
                           _ctx35977_))
                         (_loader-code35984_
                          (if _rt35979_
                              (cons 'begin
                                    (cons _loader-code35982_
                                          (cons (cons 'load-module
                                                      (cons _rt35979_ '()))
                                                '())))
                              _loader-code35982_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx35977_ 'rt '".scm")
                        _loader-code35984_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules35975_
               (cons _ctx35969_ (gxc#lift-nested-modules _ctx35969_))))
          (for-each _compile135971_ _all-modules35975_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx35871_)
      (letrec ((_compile-ssi35873_
                (lambda (_code35939_)
                  (let* ((_path35941_
                          (gxc#compile-output-file _ctx35871_ '#f '".ssi"))
                         (_prelude35952_
                          (let* ((_super35943_
                                  (##structure-ref
                                   _ctx35871_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e35945_
                                  (##structure-ref
                                   _super35943_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e35945_
                                ((lambda (_g3594735949_)
                                   (make-symbol '":" _g3594735949_))
                                 _$e35945_)
                                ':<root>)))
                         (_ns35954_
                          (##structure-ref
                           _ctx35871_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr35956_
                          (symbol->string
                           (##structure-ref
                            _ctx35871_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg35963_
                          (let ((_$e35958_ (string-rindex _idstr35956_ '#\/)))
                            (if _$e35958_
                                ((lambda (_x35961_)
                                   (string->symbol
                                    (substring _idstr35956_ '0 _x35961_)))
                                 _$e35958_)
                                '#f)))
                         (_rt35965_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx35871_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path35941_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path35941_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude35952_)
                           (if _pkg35963_
                               (displayln '"package:" '" " _pkg35963_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns35954_)
                           (newline)
                           (pretty-print _code35939_)
                           (if _rt35965_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt35965_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi35874_
                (lambda (_part35879_)
                  (let* ((_part3588035893_ _part35879_)
                         (_E3588235897_
                          (lambda ()
                            (error '"No clause matching" _part3588035893_)))
                         (_K3588335908_
                          (lambda (_code35900_
                                   _n35901_
                                   _phi35902_
                                   _phi-ctx35903_)
                            (let ((_code35906_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code35900_))
                                    gx#current-expander-context
                                    _phi-ctx35903_
                                    gx#current-expander-phi
                                    _phi35902_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx35871_
                                _n35901_
                                '".scm")
                               _code35906_)))))
                    (if (##pair? _part3588035893_)
                        (let ((_hd3588435911_ (##car _part3588035893_))
                              (_tl3588535913_ (##cdr _part3588035893_)))
                          (let ((_phi-ctx35916_ _hd3588435911_))
                            (if (##pair? _tl3588535913_)
                                (let ((_hd3588635918_ (##car _tl3588535913_))
                                      (_tl3588735920_ (##cdr _tl3588535913_)))
                                  (let ((_phi35923_ _hd3588635918_))
                                    (if (##pair? _tl3588735920_)
                                        (let ((_hd3588835925_
                                               (##car _tl3588735920_))
                                              (_tl3588935927_
                                               (##cdr _tl3588735920_)))
                                          (let ((_n35930_ _hd3588835925_))
                                            (if (##pair? _tl3588935927_)
                                                (let ((_hd3589035932_
                                                       (##car _tl3588935927_))
                                                      (_tl3589135934_
                                                       (##cdr _tl3588935927_)))
                                                  (let ((_code35937_
                                                         _hd3589035932_))
                                                    (if (##null? _tl3589135934_)
                                                        (_K3588335908_
                                                         _code35937_
                                                         _n35930_
                                                         _phi35923_
                                                         _phi-ctx35916_)
                                                        (_E3588235897_))))
                                                (_E3588235897_))))
                                        (_E3588235897_))))
                                (_E3588235897_))))
                        (_E3588235897_))))))
        (let ((_g36504_ (gxc#generate-meta-code _ctx35871_)))
          (begin
            (let ((_g36505_
                   (if (##values? _g36504_) (##vector-length _g36504_) 1)))
              (if (not (##fx= _g36505_ 2))
                  (error "Context expects 2 values" _g36505_)))
            (let ((_ssi-code35876_ (##vector-ref _g36504_ 0))
                  (_phi-code35877_ (##vector-ref _g36504_ 1)))
              (begin
                (_compile-ssi35873_ _ssi-code35876_)
                (for-each _compile-phi35874_ _phi-code35877_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx35854_)
      (let* ((_path35856_ (gxc#compile-output-file _ctx35854_ '#f '".ssxi.ss"))
             (_code35858_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx35854_ '11 gx#module-context::t '#f)))
             (_idstr35860_
              (symbol->string
               (##structure-ref _ctx35854_ '1 gx#expander-context::t '#f)))
             (_pkg35867_
              (let ((_$e35862_ (string-rindex _idstr35860_ '#\/)))
                (if _$e35862_
                    ((lambda (_x35865_)
                       (string->symbol (substring _idstr35860_ '0 _x35865_)))
                     _$e35862_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path35856_)
          (with-output-to-file
           (cons 'path:
                 (cons _path35856_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg35867_ (displayln '"package: " _pkg35867_) '#!void)
               (newline)
               (pretty-print _code35858_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx35847_)
      (let* ((_state35849_
              (let ((__obj36497 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj36497 _ctx35847_)
                  __obj36497)))
             (_ssi-code35851_
              (gxc#apply-generate-meta
               (##structure-ref _ctx35847_ '11 gx#module-context::t '#f)
               _state35849_)))
        (values _ssi-code35851_ (gxc#meta-state-end! _state35849_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx35840_)
      (let ((_lifts35842_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code35845_ (gxc#apply-generate-runtime-phi _stx35840_)))
             (if (null? (unbox _lifts35842_))
                 _code35845_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code35845_ '())
                               (reverse (unbox _lifts35842_)))))))
         gxc#current-compile-lift
         _lifts35842_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx35836_)
      (let ((_modules35838_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx35836_ '11 gx#module-context::t '#f)
           _modules35838_)
          (reverse (unbox _modules35838_))))))
  (define gxc#compile-scm-file
    (lambda (_path35832_ _code35833_)
      (begin
        (gxc#verbose '"compile " _path35832_)
        (with-output-to-file
         (cons 'path: (cons _path35832_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code35833_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path35832_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path35832_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e35821_ (gxc#current-compile-debug)))
        (if _$e35821_
            ((lambda (_debug35824_)
               (let ((_$e35826_ _debug35824_))
                 (if (eq? 'env _$e35826_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e35826_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e35829_ (eq? 'all _$e35826_)))
                               (if _$e35829_ _$e35829_ (eq? '#t _$e35826_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug35824_))))))
             _$e35821_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path35803_)
      (let* ((_gsc-args35810_
              (let ((_$e35805_ (gxc#current-compile-gsc-options)))
                (if _$e35805_
                    ((lambda (_opts35808_)
                       (foldr1 cons (cons _path35803_ '()) _opts35808_))
                     _$e35805_)
                    (cons _path35803_ '()))))
             (_gsc-args35812_
              (foldr1 cons _gsc-args35810_ (gxc#gsc-debug-options)))
             (_g36506_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args35812_)))
             (_proc35815_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args35812_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status35817_ (process-status _proc35815_)))
        (if (zero? _status35817_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path35803_
             _status35817_)))))
  (define gxc#compile-output-file
    (lambda (_ctx35775_ _n35776_ _ext35777_)
      (letrec ((_module-relative-path35779_
                (lambda (_ctx35801_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx35801_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory35780_
                (lambda (_ctx35797_)
                  (path-directory
                   (let ((_mpath35799_
                          (##structure-ref
                           _ctx35797_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath35799_)
                         _mpath35799_
                         (last _mpath35799_))))))
               (_section-string35781_
                (lambda (_n35795_)
                  (if (number? _n35795_)
                      (number->string _n35795_)
                      (if (symbol? _n35795_)
                          (symbol->string _n35795_)
                          (if (string? _n35795_)
                              _n35795_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n35795_))))))
               (_file-name35782_
                (lambda (_path35793_)
                  (if _n35776_
                      (string-append
                       _path35793_
                       '"__"
                       (_section-string35781_ _n35776_)
                       _ext35777_)
                      (string-append _path35793_ _ext35777_))))
               (_file-path35783_
                (lambda ()
                  (let ((_$e35788_ (gxc#current-compile-output-dir)))
                    (if _$e35788_
                        ((lambda (_outdir35791_)
                           (path-expand
                            (_file-name35782_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx35775_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir35791_))
                         _$e35788_)
                        (path-expand
                         (_file-name35782_
                          (_module-relative-path35779_ _ctx35775_))
                         (_module-source-directory35780_ _ctx35775_)))))))
        (let ((_path35785_ (_file-path35783_)))
          (begin
            (create-directory* (path-directory _path35785_))
            _path35785_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx35758_)
      (letrec ((_file-name35760_
                (lambda (_id35773_)
                  (string-append (gxc#static-module-name _id35773_) '".scm")))
               (_file-path35761_
                (lambda ()
                  (let* ((_file35766_
                          (_file-name35760_
                           (##structure-ref
                            _ctx35758_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e35768_ (gxc#current-compile-output-dir)))
                    (if _$e35768_
                        ((lambda (_outdir35771_)
                           (path-expand
                            _file35766_
                            (path-expand '"static" _outdir35771_)))
                         _$e35768_)
                        (path-expand _file35766_ '"static"))))))
        (let ((_path35763_ (_file-path35761_)))
          (begin
            (create-directory* (path-directory _path35763_))
            _path35763_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx35745_ _opts35746_)
      (let ((_$e35748_ (pgetq 'output-file: _opts35746_)))
        (if _$e35748_
            (values _$e35748_)
            (let* ((_mod-str35751_
                    (symbol->string
                     (##structure-ref
                      _ctx35745_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e35753_ (string-rindex _mod-str35751_ '#\/)))
              (if _$e35753_
                  ((lambda (_ix35756_)
                     (substring
                      _mod-str35751_
                      (fx+ _ix35756_ '1)
                      (string-length _mod-str35751_)))
                   _$e35753_)
                  _mod-str35751_))))))
  (define gxc#static-module-name
    (lambda (_idstr35738_)
      (if (string? _idstr35738_)
          (let* ((_str35740_ (gxc#module-id->path-string _idstr35738_))
                 (_strs35742_ (string-split _str35740_ '#\/)))
            (string-join _strs35742_ '"__"))
          (if (symbol? _idstr35738_)
              (gxc#static-module-name (symbol->string _idstr35738_))
              (error '"Bad module id" _idstr35738_))))))
