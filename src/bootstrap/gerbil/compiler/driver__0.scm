(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath24573_ _opts24574_)
        (begin
          (if (string? _srcpath24573_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24573_))
          (let ((_outdir24576_ (pgetq 'output-dir: _opts24574_))
                (_invoke-gsc?24577_ (pgetq 'invoke-gsc: _opts24574_))
                (_gsc-options24578_ (pgetq 'gsc-options: _opts24574_))
                (_keep-scm?24579_ (pgetq 'keep-scm: _opts24574_))
                (_verbosity24580_ (pgetq 'verbose: _opts24574_))
                (_optimize24581_ (pgetq 'optimize: _opts24574_))
                (_debug24582_ (pgetq 'debug: _opts24574_))
                (_gen-ssxi24583_ (pgetq 'generate-ssxi: _opts24574_))
                (_static24584_ (pgetq 'static: _opts24574_)))
            (begin
              (if _outdir24576_ (create-directory* _outdir24576_) '#!void)
              (if _optimize24581_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24573_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24573_))))
               gxc#current-compile-output-dir
               _outdir24576_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24577_
               gxc#current-compile-gsc-options
               _gsc-options24578_
               gxc#current-compile-keep-scm
               _keep-scm?24579_
               gxc#current-compile-verbose
               _verbosity24580_
               gxc#current-compile-optimize
               _optimize24581_
               gxc#current-compile-debug
               _debug24582_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24583_
               gxc#current-compile-static
               _static24584_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24590_)
          (let ((_opts24592_ '()))
            (gxc#compile-file__% _srcpath24590_ _opts24592_))))
      (define gxc#compile-file
        (lambda _g24600_
          (let ((_g24599_ (length _g24600_)))
            (cond ((fx= _g24599_ 1) (apply gxc#compile-file__0 _g24600_))
                  ((fx= _g24599_ 2) (apply gxc#compile-file__% _g24600_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24600_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath24559_ _opts24560_)
        (gxc#do-compile-exe
         _srcpath24559_
         _opts24560_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24565_)
          (let ((_opts24567_ '()))
            (gxc#compile-exe-stub__% _srcpath24565_ _opts24567_))))
      (define gxc#compile-exe-stub
        (lambda _g24602_
          (let ((_g24601_ (length _g24602_)))
            (cond ((fx= _g24601_ 1) (apply gxc#compile-exe-stub__0 _g24602_))
                  ((fx= _g24601_ 2) (apply gxc#compile-exe-stub__% _g24602_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24602_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath24545_ _opts24546_)
        (gxc#do-compile-exe
         _srcpath24545_
         _opts24546_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24551_)
          (let ((_opts24553_ '()))
            (gxc#compile-static-exe__% _srcpath24551_ _opts24553_))))
      (define gxc#compile-static-exe
        (lambda _g24604_
          (let ((_g24603_ (length _g24604_)))
            (cond ((fx= _g24603_ 1) (apply gxc#compile-static-exe__0 _g24604_))
                  ((fx= _g24603_ 2) (apply gxc#compile-static-exe__% _g24604_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24604_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24533_ _opts24534_ _compile-e24535_)
      (begin
        (if (string? _srcpath24533_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24533_))
        (let ((_outdir24537_ (pgetq 'output-dir: _opts24534_))
              (_invoke-gsc?24538_ (pgetq 'invoke-gsc: _opts24534_))
              (_gsc-options24539_ (pgetq 'gsc-options: _opts24534_))
              (_keep-scm?24540_ (pgetq 'keep-scm: _opts24534_))
              (_verbosity24541_ (pgetq 'verbose: _opts24534_)))
          (begin
            (if _outdir24537_ (create-directory* _outdir24537_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24533_)
                 (_compile-e24535_
                  (gx#import-module__0 _srcpath24533_)
                  _opts24534_)))
             gxc#current-compile-output-dir
             _outdir24537_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24538_
             gxc#current-compile-gsc-options
             _gsc-options24539_
             gxc#current-compile-keep-scm
             _keep-scm?24540_
             gxc#current-compile-verbose
             _verbosity24541_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24497_ _opts24498_)
      (letrec ((_generate-stub24500_
                (lambda ()
                  (let* ((_mod-str24526_
                          (symbol->string
                           (##structure-ref
                            _ctx24497_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24528_ (string-append _mod-str24526_ '"__rt"))
                         (_mod-main24530_
                          (gxc#find-runtime-symbol _ctx24497_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24528_
                                         (cons (cons 'quote
                                                     (cons _mod-main24530_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24501_
                (lambda (_output-scm24508_ _output-bin24509_)
                  (let* ((_init-stub24511_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache24513_ (gxc#compile-cache-directory))
                         (_init-stub24515_
                          (gxc#compile-cache
                           _init-stub24511_
                           _gxc-cache24513_))
                         (_gsc-args24517_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24509_
                                            (cons _init-stub24515_
                                                  (cons _output-scm24508_
                                                        '()))))))
                         (_g24605_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24517_)))
                         (_proc24520_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24517_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24522_ (process-status _proc24520_)))
                    (if (zero? _status24522_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24508_
                         _output-bin24509_
                         _status24522_))))))
        (let* ((_output-bin24503_
                (gxc#compile-exe-output-file _ctx24497_ _opts24498_))
               (_output-scm24505_ (string-append _output-bin24503_ '".scm")))
          (begin
            (with-output-to-file _output-scm24505_ _generate-stub24500_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub24501_ _output-scm24505_ _output-bin24503_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24505_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24338_ _opts24339_)
      (letrec ((_reset-declare24341_
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
               (_user-declare24342_
                (lambda ()
                  (let* ((_gsc-opts24438_ (pgetq 'gsc-options: _opts24339_))
                         (_gsc-prelude24440_
                          (if _gsc-opts24438_
                              (member '"-prelude" _gsc-opts24438_)
                              '#f))
                         (_gsc-prelude24442_
                          (if _gsc-prelude24440_
                              (read (open-input-string
                                     (cadr _gsc-prelude24440_)))
                              '#f)))
                    (let _lift24445_ ((_expr24447_ _gsc-prelude24442_))
                      (let* ((_expr2444824460_ _expr24447_)
                             (_E2445224464_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2444824460_)))
                             (_else2445124468_ (lambda () '#f))
                             (_try-match2445024484_
                              (lambda ()
                                (let ((_K2445324474_
                                       (lambda (_exprs24472_)
                                         (ormap1 _lift24445_ _exprs24472_))))
                                  (if (##pair? _expr2444824460_)
                                      (let ((_hd2445424477_
                                             (##car _expr2444824460_))
                                            (_tl2445524479_
                                             (##cdr _expr2444824460_)))
                                        (if (##eq? _hd2445424477_ 'begin)
                                            (let ((_exprs24482_
                                                   _tl2445524479_))
                                              (_K2445324474_ _exprs24482_))
                                            (_else2445124468_)))
                                      (_else2445124468_)))))
                             (_K2445624488_ (lambda () _expr24447_)))
                        (if (##pair? _expr2444824460_)
                            (let ((_hd2445724491_ (##car _expr2444824460_))
                                  (_tl2445824493_ (##cdr _expr2444824460_)))
                              (if (##eq? _hd2445724491_ 'declare)
                                  (_K2445624488_)
                                  (_try-match2445024484_)))
                            (_try-match2445024484_)))))))
               (_generate-stub24343_
                (lambda (_deps24429_)
                  (let ((_mod-main24431_
                         (gxc#find-runtime-symbol _ctx24338_ 'main))
                        (_reset-decl24432_ (_reset-declare24341_))
                        (_user-decl24433_ (_user-declare24342_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep24435_)
                         (begin
                           (write (cons 'include (cons _dep24435_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl24432_)
                           (if _user-decl24433_
                               (write _user-decl24433_)
                               '#!void)
                           (newline)))
                       _deps24429_)
                      (write (cons 'apply
                                   (cons _mod-main24431_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include24344_
                (lambda (_gsc-opts24412_ _home24413_)
                  (letrec* ((_static-dir24415_
                             (path-expand '"lib/static" _home24413_))
                            (_user-static-dir24416_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags24417_
                             (string-append
                              '"-I "
                              _static-dir24415_
                              '" -I "
                              _user-static-dir24416_)))
                    (let ((_$e24419_ (member '"-cc-options" _gsc-opts24412_)))
                      (if _$e24419_
                          ((lambda (_rest24422_)
                             (let* ((_cell24424_ (cdr _rest24422_))
                                    (_opt24426_ (car _cell24424_)))
                               (begin
                                 (set-car!
                                  _cell24424_
                                  (string-append
                                   _opt24426_
                                   '" "
                                   _cppflags24417_))
                                 _gsc-opts24412_)))
                           _$e24419_)
                          (cons* '"-cc-options"
                                 _cppflags24417_
                                 _gsc-opts24412_))))))
               (_compile-stub24345_
                (lambda (_output-scm24352_ _output-bin24353_)
                  (let* ((_gerbil-home24355_ (getenv '"GERBIL_HOME"))
                         (_gx-version24357_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home24355_))
                         (_gx-gambc024359_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24355_))
                         (_gx-gambc-init24361_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24355_))
                         (_gx-gambc-macros24363_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24355_))
                         (_include-gx-gambc-macros24365_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24363_
                           '"\")"))
                         (_bin-scm24367_
                          (gxc#find-static-module-file _ctx24338_))
                         (_deps24369_
                          (gxc#find-runtime-module-deps _ctx24338_))
                         (_deps24371_
                          (map gxc#find-static-module-file _deps24369_))
                         (_deps24376_
                          (filter (lambda (_$obj24373_)
                                    (not (gxc#file-empty? _$obj24373_)))
                                  _deps24371_))
                         (_gxc-cache24378_ (gxc#compile-cache-directory))
                         (_g24606_
                          (gxc#compile-cache
                           _gx-version24357_
                           _gxc-cache24378_))
                         (_gx-gambc024381_
                          (gxc#compile-cache
                           _gx-gambc024359_
                           _gxc-cache24378_))
                         (_gx-gambc-init24383_
                          (gxc#compile-cache
                           _gx-gambc-init24361_
                           _gxc-cache24378_))
                         (_deps24389_
                          (map (lambda (_g2438424386_)
                                 (gxc#compile-cache
                                  _g2438424386_
                                  _gxc-cache24378_))
                               _deps24376_))
                         (_bin-scm24391_
                          (gxc#compile-cache _bin-scm24367_ _gxc-cache24378_))
                         (_gsc-opts24396_
                          (let ((_$e24393_ (pgetq 'gsc-options: _opts24339_)))
                            (if _$e24393_ _$e24393_ '())))
                         (_gsc-opts24398_
                          (_static-include24344_
                           _gsc-opts24396_
                           _gerbil-home24355_))
                         (_gsc-gx-macros24400_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros24365_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros24365_
                                          '()))))
                         (_gsc-args24402_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24353_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm24352_ '())
                            _gsc-gx-macros24400_)
                    _gsc-opts24398_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g24607_
                          (with-output-to-file
                           _output-scm24352_
                           (lambda ()
                             (_generate-stub24343_
                              (cons _gx-gambc024381_
                                    (cons _gx-gambc-init24383_
                                          (foldr1 cons
                                                  (cons _bin-scm24391_ '())
                                                  _deps24389_)))))))
                         (_g24608_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args24402_)))
                         (_proc24407_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args24402_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status24409_ (process-status _proc24407_)))
                    (if (zero? _status24409_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm24352_
                         _output-bin24353_
                         _status24409_))))))
        (let* ((_output-bin24347_
                (gxc#compile-exe-output-file _ctx24338_ _opts24339_))
               (_output-scm24349_ (string-append _output-bin24347_ '".scm")))
          (if (gxc#current-compile-invoke-gsc)
              (begin
                (_compile-stub24345_ _output-scm24349_ _output-bin24347_)
                (if (gxc#current-compile-keep-scm)
                    '#!void
                    (delete-file _output-scm24349_)))
              '#!void)))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir24333_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache24335_ (path-expand '"gxc" _cachedir24333_)))
        (begin
          (create-directory* _gxc-cache24335_)
          (path-normalize _gxc-cache24335_)))))
  (define gxc#compile-cache
    (lambda (_file24327_ _gxc-cache24328_)
      (let ((_cachefile24330_
             (path-expand
              (path-strip-directory _file24327_)
              _gxc-cache24328_)))
        (begin
          (if (file-exists? _cachefile24330_)
              (if (file-newer? _file24327_ _cachefile24330_)
                  (begin
                    (delete-file _cachefile24330_)
                    (copy-file _file24327_ _cachefile24330_))
                  '#!void)
              (copy-file _file24327_ _cachefile24330_))
          _cachefile24330_))))
  (define gxc#find-export-binding
    (lambda (_ctx24277_ _id24278_)
      (let ((_$e24324_
             (find (lambda (_e2427924281_)
                     (let* ((_g2428324293_ _e2427924281_)
                            (_E2428624297_
                             (lambda ()
                               (error '"No clause matching" _g2428324293_)))
                            (_else2428524301_ (lambda () '#f))
                            (_K2428724305_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2428324293_
                            (##type-id gx#module-export::t))
                           (let* ((_e2428824308_
                                   (##vector-ref _g2428324293_ '1))
                                  (_e2428924311_
                                   (##vector-ref _g2428324293_ '2))
                                  (_e2429024314_
                                   (##vector-ref _g2428324293_ '3)))
                             (if (##eq? _e2429024314_ '0)
                                 (let ((_e2429124317_
                                        (##vector-ref _g2428324293_ '4)))
                                   (if ((lambda (_g2431924321_)
                                          (eq? _g2431924321_ _id24278_))
                                        _e2429124317_)
                                       (_K2428724305_)
                                       (_else2428524301_)))
                                 (_else2428524301_)))
                           (_else2428524301_))))
                   (##structure-ref _ctx24277_ '9 gx#module-context::t '#f))))
        (if _$e24324_ (gx#core-resolve-module-export _$e24324_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx24269_ _id24270_)
      (let ((_$e24272_ (gxc#find-export-binding _ctx24269_ _id24270_)))
        (if _$e24272_
            ((lambda (_bind24275_)
               (begin
                 (if (##structure-instance-of?
                      _bind24275_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id24270_))
                 (##structure-ref _bind24275_ '1 gx#binding::t '#f)))
             _$e24272_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx24269_ '1 gx#expander-context::t '#f)
             _id24270_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx24156_)
      (letrec* ((_ht24158_ (make-hash-table-eq))
                (_import-set-template24159_
                 (lambda (_in24221_ _phi24222_)
                   (let ((_iphi24224_
                          (fx+ _phi24222_
                               (##direct-structure-ref
                                _in24221_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports24225_
                          (##structure-ref
                           (##direct-structure-ref
                            _in24221_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp24227_ ((_rest24229_ _imports24225_)
                                     (_r24230_ '()))
                       (let* ((_rest2423124239_ _rest24229_)
                              (_E2423424243_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2423124239_)))
                              (_else2423324247_ (lambda () _r24230_))
                              (_K2423524257_
                               (lambda (_rest24250_ _in24251_)
                                 (if (##structure-instance-of?
                                      _in24251_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi24224_)
                                         (_lp24227_
                                          _rest24250_
                                          (cons _in24251_ _r24230_))
                                         (_lp24227_ _rest24250_ _r24230_))
                                     (if (##structure-direct-instance-of?
                                          _in24251_
                                          'gx#module-import::t)
                                         (let ((_iphi24253_
                                                (fx+ _phi24222_
                                                     (##direct-structure-ref
                                                      _in24251_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi24253_)
                                               (_lp24227_
                                                _rest24250_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in24251_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r24230_))
                                               (_lp24227_
                                                _rest24250_
                                                _r24230_)))
                                         (if (##structure-direct-instance-of?
                                              _in24251_
                                              'gx#import-set::t)
                                             (let ((_xphi24255_
                                                    (fx+ _iphi24224_
                                                         (##direct-structure-ref
                                                          _in24251_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi24255_)
                                                   (_lp24227_
                                                    _rest24250_
                                                    (cons (##direct-structure-ref
                                                           _in24251_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r24230_))
                                                   (if (fxpositive?
                                                        _xphi24255_)
                                                       (_lp24227_
                                                        _rest24250_
                                                        (foldl1 cons
                                                                _r24230_
                                                                (_import-set-template24159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in24251_
                         _iphi24224_)))
               (_lp24227_ _rest24250_ _r24230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp24227_
                                              _rest24250_
                                              _r24230_)))))))
                         (if (##pair? _rest2423124239_)
                             (let ((_hd2423624260_ (##car _rest2423124239_))
                                   (_tl2423724262_ (##cdr _rest2423124239_)))
                               (let* ((_in24265_ _hd2423624260_)
                                      (_rest24267_ _tl2423724262_))
                                 (_K2423524257_ _rest24267_ _in24265_)))
                             (_else2423324247_)))))))
                (_find-deps24160_
                 (lambda (_rest24167_ _deps24168_)
                   (let* ((_rest2416924177_ _rest24167_)
                          (_E2417224181_
                           (lambda ()
                             (error '"No clause matching" _rest2416924177_)))
                          (_else2417124185_ (lambda () _deps24168_))
                          (_K2417324209_
                           (lambda (_rest24188_ _hd24189_)
                             (if (##structure-instance-of?
                                  _hd24189_
                                  'gx#module-context::t)
                                 (let ((_id24191_
                                        (##structure-ref
                                         _hd24189_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports24192_
                                        (##structure-ref
                                         _hd24189_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht24158_ _id24191_ '#f)
                                       (_find-deps24160_
                                        _rest24188_
                                        _deps24168_)
                                       (let ((_$e24194_
                                              (gx#core-context-prelude__%
                                               _hd24189_)))
                                         (if _$e24194_
                                             ((lambda (_pre24197_)
                                                (let ((_xdeps24199_
                                                       (_find-deps24160_
                                                        (cons _pre24197_
                                                              _imports24192_)
                                                        _deps24168_)))
                                                  (begin
                                                    (table-set!
                                                     _ht24158_
                                                     _id24191_
                                                     _hd24189_)
                                                    (_find-deps24160_
                                                     _rest24188_
                                                     (cons _hd24189_
                                                           _xdeps24199_)))))
                                              _$e24194_)
                                             (let ((_xdeps24201_
                                                    (_find-deps24160_
                                                     _imports24192_
                                                     _deps24168_)))
                                               (begin
                                                 (table-set!
                                                  _ht24158_
                                                  _id24191_
                                                  _hd24189_)
                                                 (_find-deps24160_
                                                  _rest24188_
                                                  (cons _hd24189_
                                                        _xdeps24201_))))))))
                                 (if (##structure-instance-of?
                                      _hd24189_
                                      'gx#prelude-context::t)
                                     (let ((_id24203_
                                            (##structure-ref
                                             _hd24189_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht24158_ _id24203_ '#f)
                                           (_find-deps24160_
                                            _rest24188_
                                            _deps24168_)
                                           (let ((_xdeps24205_
                                                  (_find-deps24160_
                                                   (##structure-ref
                                                    _hd24189_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps24168_)))
                                             (if (table-ref
                                                  _ht24158_
                                                  _id24203_
                                                  '#f)
                                                 (_find-deps24160_
                                                  _rest24188_
                                                  _xdeps24205_)
                                                 (begin
                                                   (table-set!
                                                    _ht24158_
                                                    _id24203_
                                                    _hd24189_)
                                                   (_find-deps24160_
                                                    _rest24188_
                                                    (cons _hd24189_
                                                          _xdeps24205_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd24189_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd24189_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps24160_
                                              (cons (##direct-structure-ref
                                                     _hd24189_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest24188_)
                                              _deps24168_)
                                             (_find-deps24160_
                                              _rest24188_
                                              _deps24168_))
                                         (if (##structure-direct-instance-of?
                                              _hd24189_
                                              'gx#module-export::t)
                                             (_find-deps24160_
                                              (cons (##direct-structure-ref
                                                     _hd24189_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest24188_)
                                              _deps24168_)
                                             (if (##structure-direct-instance-of?
                                                  _hd24189_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd24189_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps24160_
                                                      (cons (##direct-structure-ref
                                                             _hd24189_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest24188_)
                                                      _deps24168_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd24189_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps24207_
                                                                (_import-set-template24159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd24189_
                         '0)))
                   (_find-deps24160_
                    (foldl1 cons _rest24188_ _xdeps24207_)
                    _deps24168_))
                 (_find-deps24160_ _rest24188_ _deps24168_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd24189_)))))))))
                     (if (##pair? _rest2416924177_)
                         (let ((_hd2417424212_ (##car _rest2416924177_))
                               (_tl2417524214_ (##cdr _rest2416924177_)))
                           (let* ((_hd24217_ _hd2417424212_)
                                  (_rest24219_ _tl2417524214_))
                             (_K2417324209_ _rest24219_ _hd24217_)))
                         (_else2417124185_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps24160_
                          (let ((_$e24162_
                                 (gx#core-context-prelude__% _ctx24156_)))
                            (if _$e24162_
                                ((lambda (_pre24165_)
                                   (cons _pre24165_
                                         (##structure-ref
                                          _ctx24156_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e24162_)
                                (##structure-ref
                                 _ctx24156_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx24095_)
      (let* ((_scm24097_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx24095_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs24099_ (gx#current-expander-module-library-path))
             (_dirs24108_
              (let ((_$e24101_ (gxc#current-compile-output-dir)))
                (if _$e24101_
                    ((lambda (_g2410324105_) (cons _g2410324105_ _dirs24099_))
                     _$e24101_)
                    _dirs24099_)))
             (_dirs24114_
              (map (lambda (_g2410924111_)
                     (path-expand '"static" _g2410924111_))
                   _dirs24108_)))
        (let _lp24117_ ((_rest24119_ _dirs24114_))
          (let* ((_rest2412024128_ _rest24119_)
                 (_E2412324132_
                  (lambda () (error '"No clause matching" _rest2412024128_)))
                 (_else2412224136_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx24095_ '1 gx#expander-context::t '#f)
                     _scm24097_)))
                 (_K2412424144_
                  (lambda (_rest24139_ _dir24140_)
                    (let ((_path24142_ (path-expand _scm24097_ _dir24140_)))
                      (if (file-exists? _path24142_)
                          _path24142_
                          (_lp24117_ _rest24139_))))))
            (if (##pair? _rest2412024128_)
                (let ((_hd2412524147_ (##car _rest2412024128_))
                      (_tl2412624149_ (##cdr _rest2412024128_)))
                  (let* ((_dir24152_ _hd2412524147_)
                         (_rest24154_ _tl2412624149_))
                    (_K2412424144_ _rest24154_ _dir24152_)))
                (_else2412224136_)))))))
  (define gxc#file-empty?
    (lambda (_path24093_)
      (zero? (file-info-size (file-info _path24093_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx24090_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx24090_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx24090_)
               '#!void)
           (gxc#collect-bindings _ctx24090_)
           (gxc#compile-runtime-code _ctx24090_)
           (gxc#compile-meta-code _ctx24090_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx24090_)
               '#!void)))
       gx#current-expander-context
       _ctx24090_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj24597 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24597) __obj24597))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx24088_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx24088_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx24042_)
      (letrec ((_compile124044_
                (lambda (_ctx24077_)
                  (let* ((_code24079_
                          (##structure-ref
                           _ctx24077_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt24083_
                          (if (gxc#apply-find-runtime-code _code24079_)
                              (let ((_idstr24081_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx24077_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr24081_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt24083_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx24077_
                             _rt24083_)
                            (_generate-runtime-code24045_
                             _ctx24077_
                             _code24079_))
                          (if (gxc#current-compile-static)
                              (let ((_path24086_
                                     (gxc#compile-static-output-file
                                      _ctx24077_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path24086_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code24046_
                       _ctx24077_
                       _code24079_
                       _rt24083_)))))
               (_generate-runtime-code24045_
                (lambda (_ctx24061_ _code24062_)
                  (let* ((_lifts24064_ (box '()))
                         (_runtime-code24067_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code24062_))
                           gx#current-expander-context
                           _ctx24061_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts24064_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code24069_
                          (if (null? (unbox _lifts24064_))
                              _runtime-code24067_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code24067_ '())
                                            (reverse (unbox _lifts24064_))))))
                         (_scm024071_
                          (gxc#compile-output-file _ctx24061_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms24074_
                               (gxc#compile-static-output-file _ctx24061_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm024071_
                                _runtime-code24069_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms24074_)
                                (delete-file _scms24074_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm024071_
                             '" => "
                             _scms24074_)
                            (copy-file _scm024071_ _scms24074_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm024071_))))
                        (gxc#compile-scm-file
                         _scm024071_
                         _runtime-code24069_)))))
               (_generate-loader-code24046_
                (lambda (_ctx24050_ _code24051_ _rt24052_)
                  (let* ((_loader-code24055_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code24051_))
                           gx#current-expander-context
                           _ctx24050_))
                         (_loader-code24057_
                          (if _rt24052_
                              (cons 'begin
                                    (cons _loader-code24055_
                                          (cons (cons 'load-module
                                                      (cons _rt24052_ '()))
                                                '())))
                              _loader-code24055_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx24050_ 'rt '".scm")
                        _loader-code24057_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules24048_
               (cons _ctx24042_ (gxc#lift-nested-modules _ctx24042_))))
          (for-each _compile124044_ _all-modules24048_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx23944_)
      (letrec ((_compile-ssi23946_
                (lambda (_code24012_)
                  (let* ((_path24014_
                          (gxc#compile-output-file _ctx23944_ '#f '".ssi"))
                         (_prelude24025_
                          (let* ((_super24016_
                                  (##structure-ref
                                   _ctx23944_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e24018_
                                  (##structure-ref
                                   _super24016_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e24018_
                                ((lambda (_g2402024022_)
                                   (make-symbol '":" _g2402024022_))
                                 _$e24018_)
                                ':<root>)))
                         (_ns24027_
                          (##structure-ref
                           _ctx23944_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr24029_
                          (symbol->string
                           (##structure-ref
                            _ctx23944_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg24036_
                          (let ((_$e24031_ (string-rindex _idstr24029_ '#\/)))
                            (if _$e24031_
                                ((lambda (_x24034_)
                                   (string->symbol
                                    (substring _idstr24029_ '0 _x24034_)))
                                 _$e24031_)
                                '#f)))
                         (_rt24038_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx23944_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path24014_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path24014_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude24025_)
                           (if _pkg24036_
                               (displayln '"package:" '" " _pkg24036_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns24027_)
                           (newline)
                           (pretty-print _code24012_)
                           (if _rt24038_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt24038_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi23947_
                (lambda (_part23952_)
                  (let* ((_part2395323966_ _part23952_)
                         (_E2395523970_
                          (lambda ()
                            (error '"No clause matching" _part2395323966_)))
                         (_K2395623981_
                          (lambda (_code23973_
                                   _n23974_
                                   _phi23975_
                                   _phi-ctx23976_)
                            (let ((_code23979_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code23973_))
                                    gx#current-expander-context
                                    _phi-ctx23976_
                                    gx#current-expander-phi
                                    _phi23975_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx23944_
                                _n23974_
                                '".scm")
                               _code23979_)))))
                    (if (##pair? _part2395323966_)
                        (let ((_hd2395723984_ (##car _part2395323966_))
                              (_tl2395823986_ (##cdr _part2395323966_)))
                          (let ((_phi-ctx23989_ _hd2395723984_))
                            (if (##pair? _tl2395823986_)
                                (let ((_hd2395923991_ (##car _tl2395823986_))
                                      (_tl2396023993_ (##cdr _tl2395823986_)))
                                  (let ((_phi23996_ _hd2395923991_))
                                    (if (##pair? _tl2396023993_)
                                        (let ((_hd2396123998_
                                               (##car _tl2396023993_))
                                              (_tl2396224000_
                                               (##cdr _tl2396023993_)))
                                          (let ((_n24003_ _hd2396123998_))
                                            (if (##pair? _tl2396224000_)
                                                (let ((_hd2396324005_
                                                       (##car _tl2396224000_))
                                                      (_tl2396424007_
                                                       (##cdr _tl2396224000_)))
                                                  (let ((_code24010_
                                                         _hd2396324005_))
                                                    (if (##null? _tl2396424007_)
                                                        (_K2395623981_
                                                         _code24010_
                                                         _n24003_
                                                         _phi23996_
                                                         _phi-ctx23989_)
                                                        (_E2395523970_))))
                                                (_E2395523970_))))
                                        (_E2395523970_))))
                                (_E2395523970_))))
                        (_E2395523970_))))))
        (let ((_g24609_ (gxc#generate-meta-code _ctx23944_)))
          (begin
            (let ((_g24610_ (values-count _g24609_)))
              (if (not (fx= _g24610_ 2))
                  (error "Context expects 2 values" _g24610_)))
            (let ((_ssi-code23949_ (values-ref _g24609_ 0))
                  (_phi-code23950_ (values-ref _g24609_ 1)))
              (begin
                (_compile-ssi23946_ _ssi-code23949_)
                (for-each _compile-phi23947_ _phi-code23950_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx23927_)
      (let* ((_path23929_ (gxc#compile-output-file _ctx23927_ '#f '".ssxi.ss"))
             (_code23931_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx23927_ '11 gx#module-context::t '#f)))
             (_idstr23933_
              (symbol->string
               (##structure-ref _ctx23927_ '1 gx#expander-context::t '#f)))
             (_pkg23940_
              (let ((_$e23935_ (string-rindex _idstr23933_ '#\/)))
                (if _$e23935_
                    ((lambda (_x23938_)
                       (string->symbol (substring _idstr23933_ '0 _x23938_)))
                     _$e23935_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path23929_)
          (with-output-to-file
           (cons 'path:
                 (cons _path23929_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg23940_ (displayln '"package: " _pkg23940_) '#!void)
               (newline)
               (pretty-print _code23931_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx23920_)
      (let* ((_state23922_
              (let ((__obj24598 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24598 _ctx23920_)
                  __obj24598)))
             (_ssi-code23924_
              (gxc#apply-generate-meta
               (##structure-ref _ctx23920_ '11 gx#module-context::t '#f)
               _state23922_)))
        (values _ssi-code23924_ (gxc#meta-state-end! _state23922_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx23913_)
      (let ((_lifts23915_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code23918_ (gxc#apply-generate-runtime-phi _stx23913_)))
             (if (null? (unbox _lifts23915_))
                 _code23918_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code23918_ '())
                               (reverse (unbox _lifts23915_)))))))
         gxc#current-compile-lift
         _lifts23915_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx23909_)
      (let ((_modules23911_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx23909_ '11 gx#module-context::t '#f)
           _modules23911_)
          (reverse (unbox _modules23911_))))))
  (define gxc#compile-scm-file
    (lambda (_path23905_ _code23906_)
      (begin
        (gxc#verbose '"compile " _path23905_)
        (with-output-to-file
         (cons 'path: (cons _path23905_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code23906_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path23905_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path23905_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e23894_ (gxc#current-compile-debug)))
        (if _$e23894_
            ((lambda (_debug23897_)
               (let ((_$e23899_ _debug23897_))
                 (if (eq? 'env _$e23899_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e23899_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e23902_ (eq? 'all _$e23899_)))
                               (if _$e23902_ _$e23902_ (eq? '#t _$e23899_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug23897_))))))
             _$e23894_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path23876_)
      (let* ((_gsc-args23883_
              (let ((_$e23878_ (gxc#current-compile-gsc-options)))
                (if _$e23878_
                    ((lambda (_opts23881_)
                       (foldr1 cons (cons _path23876_ '()) _opts23881_))
                     _$e23878_)
                    (cons _path23876_ '()))))
             (_gsc-args23885_
              (foldr1 cons _gsc-args23883_ (gxc#gsc-debug-options)))
             (_g24611_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args23885_)))
             (_proc23888_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args23885_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status23890_ (process-status _proc23888_)))
        (if (zero? _status23890_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path23876_
             _status23890_)))))
  (define gxc#compile-output-file
    (lambda (_ctx23848_ _n23849_ _ext23850_)
      (letrec ((_module-relative-path23852_
                (lambda (_ctx23874_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx23874_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory23853_
                (lambda (_ctx23870_)
                  (path-directory
                   (let ((_mpath23872_
                          (##structure-ref
                           _ctx23870_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath23872_)
                         _mpath23872_
                         (last _mpath23872_))))))
               (_section-string23854_
                (lambda (_n23868_)
                  (if (number? _n23868_)
                      (number->string _n23868_)
                      (if (symbol? _n23868_)
                          (symbol->string _n23868_)
                          (if (string? _n23868_)
                              _n23868_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n23868_))))))
               (_file-name23855_
                (lambda (_path23866_)
                  (if _n23849_
                      (string-append
                       _path23866_
                       '"__"
                       (_section-string23854_ _n23849_)
                       _ext23850_)
                      (string-append _path23866_ _ext23850_))))
               (_file-path23856_
                (lambda ()
                  (let ((_$e23861_ (gxc#current-compile-output-dir)))
                    (if _$e23861_
                        ((lambda (_outdir23864_)
                           (path-expand
                            (_file-name23855_
                             (symbol->string
                              (##structure-ref
                               _ctx23848_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir23864_))
                         _$e23861_)
                        (path-expand
                         (_file-name23855_
                          (_module-relative-path23852_ _ctx23848_))
                         (_module-source-directory23853_ _ctx23848_)))))))
        (let ((_path23858_ (_file-path23856_)))
          (begin
            (create-directory* (path-directory _path23858_))
            _path23858_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx23831_)
      (letrec ((_file-name23833_
                (lambda (_idstr23846_)
                  (string-append
                   (gxc#static-module-name _idstr23846_)
                   '".scm")))
               (_file-path23834_
                (lambda ()
                  (let* ((_file23839_
                          (_file-name23833_
                           (symbol->string
                            (##structure-ref
                             _ctx23831_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e23841_ (gxc#current-compile-output-dir)))
                    (if _$e23841_
                        ((lambda (_outdir23844_)
                           (path-expand
                            _file23839_
                            (path-expand '"static" _outdir23844_)))
                         _$e23841_)
                        (path-expand _file23839_ '"static"))))))
        (let ((_path23836_ (_file-path23834_)))
          (begin
            (create-directory* (path-directory _path23836_))
            _path23836_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx23818_ _opts23819_)
      (let ((_$e23821_ (pgetq 'output-file: _opts23819_)))
        (if _$e23821_
            (values _$e23821_)
            (let* ((_mod-str23824_
                    (symbol->string
                     (##structure-ref
                      _ctx23818_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e23826_ (string-rindex _mod-str23824_ '#\/)))
              (if _$e23826_
                  ((lambda (_ix23829_)
                     (substring
                      _mod-str23824_
                      (fx+ _ix23829_ '1)
                      (string-length _mod-str23824_)))
                   _$e23826_)
                  _mod-str23824_))))))
  (define gxc#static-module-name
    (lambda (_idstr23814_)
      (if (string? _idstr23814_)
          (let ((_strs23816_ (string-split _idstr23814_ '#\/)))
            (string-join _strs23816_ '"__"))
          (if (symbol? _idstr23814_)
              (gxc#static-module-name (symbol->string _idstr23814_))
              (error '"Bad module id" _idstr23814_))))))
