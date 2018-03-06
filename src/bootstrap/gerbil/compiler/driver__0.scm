(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath24542_ _opts24543_)
        (begin
          (if (string? _srcpath24542_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24542_))
          (let ((_outdir24545_ (pgetq 'output-dir: _opts24543_))
                (_invoke-gsc?24546_ (pgetq 'invoke-gsc: _opts24543_))
                (_gsc-options24547_ (pgetq 'gsc-options: _opts24543_))
                (_keep-scm?24548_ (pgetq 'keep-scm: _opts24543_))
                (_verbosity24549_ (pgetq 'verbose: _opts24543_))
                (_optimize24550_ (pgetq 'optimize: _opts24543_))
                (_debug24551_ (pgetq 'debug: _opts24543_))
                (_gen-ssxi24552_ (pgetq 'generate-ssxi: _opts24543_))
                (_static24553_ (pgetq 'static: _opts24543_)))
            (begin
              (if _outdir24545_ (create-directory* _outdir24545_) '#!void)
              (if _optimize24550_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24542_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24542_))))
               gxc#current-compile-output-dir
               _outdir24545_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24546_
               gxc#current-compile-gsc-options
               _gsc-options24547_
               gxc#current-compile-keep-scm
               _keep-scm?24548_
               gxc#current-compile-verbose
               _verbosity24549_
               gxc#current-compile-optimize
               _optimize24550_
               gxc#current-compile-debug
               _debug24551_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24552_
               gxc#current-compile-static
               _static24553_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24559_)
          (let ((_opts24561_ '()))
            (gxc#compile-file__% _srcpath24559_ _opts24561_))))
      (define gxc#compile-file
        (lambda _g24569_
          (let ((_g24568_ (length _g24569_)))
            (cond ((fx= _g24568_ 1) (apply gxc#compile-file__0 _g24569_))
                  ((fx= _g24568_ 2) (apply gxc#compile-file__% _g24569_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24569_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath24528_ _opts24529_)
        (gxc#do-compile-exe
         _srcpath24528_
         _opts24529_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24534_)
          (let ((_opts24536_ '()))
            (gxc#compile-exe-stub__% _srcpath24534_ _opts24536_))))
      (define gxc#compile-exe-stub
        (lambda _g24571_
          (let ((_g24570_ (length _g24571_)))
            (cond ((fx= _g24570_ 1) (apply gxc#compile-exe-stub__0 _g24571_))
                  ((fx= _g24570_ 2) (apply gxc#compile-exe-stub__% _g24571_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24571_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath24514_ _opts24515_)
        (gxc#do-compile-exe
         _srcpath24514_
         _opts24515_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24520_)
          (let ((_opts24522_ '()))
            (gxc#compile-static-exe__% _srcpath24520_ _opts24522_))))
      (define gxc#compile-static-exe
        (lambda _g24573_
          (let ((_g24572_ (length _g24573_)))
            (cond ((fx= _g24572_ 1) (apply gxc#compile-static-exe__0 _g24573_))
                  ((fx= _g24572_ 2) (apply gxc#compile-static-exe__% _g24573_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24573_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24502_ _opts24503_ _compile-e24504_)
      (begin
        (if (string? _srcpath24502_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24502_))
        (let ((_outdir24506_ (pgetq 'output-dir: _opts24503_))
              (_invoke-gsc?24507_ (pgetq 'invoke-gsc: _opts24503_))
              (_gsc-options24508_ (pgetq 'gsc-options: _opts24503_))
              (_keep-scm?24509_ (pgetq 'keep-scm: _opts24503_))
              (_verbosity24510_ (pgetq 'verbose: _opts24503_)))
          (begin
            (if _outdir24506_ (create-directory* _outdir24506_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24502_)
                 (_compile-e24504_
                  (gx#import-module__0 _srcpath24502_)
                  _opts24503_)))
             gxc#current-compile-output-dir
             _outdir24506_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24507_
             gxc#current-compile-gsc-options
             _gsc-options24508_
             gxc#current-compile-keep-scm
             _keep-scm?24509_
             gxc#current-compile-verbose
             _verbosity24510_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24468_ _opts24469_)
      (letrec ((_generate-stub24471_
                (lambda (_gx-init-stub24493_)
                  (let* ((_mod-str24495_
                          (symbol->string
                           (##structure-ref
                            _ctx24468_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24497_ (string-append _mod-str24495_ '"__rt"))
                         (_mod-main24499_
                          (gxc#find-runtime-symbol _ctx24468_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub24493_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24497_
                                         (cons (cons 'quote
                                                     (cons _mod-main24499_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24472_
                (lambda (_output-scm24479_ _output-bin24480_)
                  (let* ((_init-stub24482_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args24484_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24480_
                                            (cons _output-scm24479_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm24479_
                       (lambda () (_generate-stub24471_ _init-stub24482_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args24484_))
                            (let* ((_proc24488_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args24484_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status24490_
                                    (process-status _proc24488_)))
                              (if (zero? _status24490_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm24479_
                                   _output-bin24480_
                                   _status24490_))))
                          '#!void))))))
        (let* ((_output-bin24474_
                (gxc#compile-exe-output-file _ctx24468_ _opts24469_))
               (_output-scm24476_ (string-append _output-bin24474_ '".scm")))
          (begin
            (_compile-stub24472_ _output-scm24476_ _output-bin24474_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24476_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24327_ _opts24328_)
      (letrec ((_reset-declare24330_
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
               (_user-declare24331_
                (lambda ()
                  (let* ((_gsc-opts24409_ (pgetq 'gsc-options: _opts24328_))
                         (_gsc-prelude24411_
                          (if _gsc-opts24409_
                              (member '"-prelude" _gsc-opts24409_)
                              '#f))
                         (_gsc-prelude24413_
                          (if _gsc-prelude24411_
                              (read (open-input-string
                                     (cadr _gsc-prelude24411_)))
                              '#f)))
                    (let _lift24416_ ((_expr24418_ _gsc-prelude24413_))
                      (let* ((_expr2441924431_ _expr24418_)
                             (_E2442324435_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2441924431_)))
                             (_else2442224439_ (lambda () '#f))
                             (_try-match2442124455_
                              (lambda ()
                                (let ((_K2442424445_
                                       (lambda (_exprs24443_)
                                         (ormap1 _lift24416_ _exprs24443_))))
                                  (if (##pair? _expr2441924431_)
                                      (let ((_hd2442524448_
                                             (##car _expr2441924431_))
                                            (_tl2442624450_
                                             (##cdr _expr2441924431_)))
                                        (if (##eq? _hd2442524448_ 'begin)
                                            (let ((_exprs24453_
                                                   _tl2442624450_))
                                              (_K2442424445_ _exprs24453_))
                                            (_else2442224439_)))
                                      (_else2442224439_)))))
                             (_K2442724459_ (lambda () _expr24418_)))
                        (if (##pair? _expr2441924431_)
                            (let ((_hd2442824462_ (##car _expr2441924431_))
                                  (_tl2442924464_ (##cdr _expr2441924431_)))
                              (if (##eq? _hd2442824462_ 'declare)
                                  (_K2442724459_)
                                  (_try-match2442124455_)))
                            (_try-match2442124455_)))))))
               (_generate-stub24332_
                (lambda (_deps24400_)
                  (let ((_mod-main24402_
                         (gxc#find-runtime-symbol _ctx24327_ 'main))
                        (_reset-decl24403_ (_reset-declare24330_))
                        (_user-decl24404_ (_user-declare24331_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep24406_)
                         (begin
                           (write (cons 'include (cons _dep24406_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl24403_)
                           (if _user-decl24404_
                               (write _user-decl24404_)
                               '#!void)
                           (newline)))
                       _deps24400_)
                      (write (cons 'apply
                                   (cons _mod-main24402_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include24333_
                (lambda (_gsc-opts24383_ _home24384_)
                  (letrec* ((_static-dir24386_
                             (path-expand '"lib/static" _home24384_))
                            (_user-static-dir24387_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags24388_
                             (string-append
                              '"-I "
                              _static-dir24386_
                              '" -I "
                              _user-static-dir24387_)))
                    (let ((_$e24390_ (member '"-cc-options" _gsc-opts24383_)))
                      (if _$e24390_
                          ((lambda (_rest24393_)
                             (let* ((_cell24395_ (cdr _rest24393_))
                                    (_opt24397_ (car _cell24395_)))
                               (begin
                                 (set-car!
                                  _cell24395_
                                  (string-append
                                   _opt24397_
                                   '" "
                                   _cppflags24388_))
                                 _gsc-opts24383_)))
                           _$e24390_)
                          (cons* '"-cc-options"
                                 _cppflags24388_
                                 _gsc-opts24383_))))))
               (_compile-stub24334_
                (lambda (_output-scm24341_ _output-bin24342_)
                  (let* ((_gerbil-home24344_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc024346_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24344_))
                         (_gx-gambc-init24348_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24344_))
                         (_gx-gambc-macros24350_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24344_))
                         (_include-gx-gambc-macros24352_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24350_
                           '"\")"))
                         (_bin-scm24354_
                          (gxc#find-static-module-file _ctx24327_))
                         (_deps24356_
                          (gxc#find-runtime-module-deps _ctx24327_))
                         (_deps24358_
                          (map gxc#find-static-module-file _deps24356_))
                         (_deps24363_
                          (filter (lambda (_$obj24360_)
                                    (not (gxc#file-empty? _$obj24360_)))
                                  _deps24358_))
                         (_gsc-opts24368_
                          (let ((_$e24365_ (pgetq 'gsc-options: _opts24328_)))
                            (if _$e24365_ _$e24365_ '())))
                         (_gsc-opts24370_
                          (_static-include24333_
                           _gsc-opts24368_
                           _gerbil-home24344_))
                         (_gsc-gx-macros24372_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros24352_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros24352_
                                          '()))))
                         (_gsc-args24374_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24342_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm24341_ '())
                            _gsc-gx-macros24372_)
                    _gsc-opts24370_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm24341_
                       (lambda ()
                         (_generate-stub24332_
                          (cons _gx-gambc024346_
                                (cons _gx-gambc-init24348_
                                      (foldr1 cons
                                              (cons _bin-scm24354_ '())
                                              _deps24363_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args24374_))
                            (let* ((_proc24378_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args24374_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status24380_
                                    (process-status _proc24378_)))
                              (if (zero? _status24380_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm24341_
                                   _output-bin24342_
                                   _status24380_))))
                          '#!void))))))
        (let* ((_output-bin24336_
                (gxc#compile-exe-output-file _ctx24327_ _opts24328_))
               (_output-scm24338_ (string-append _output-bin24336_ '".scm")))
          (begin
            (_compile-stub24334_ _output-scm24338_ _output-bin24336_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24338_)))))))
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
       (let ((__obj24566 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24566) __obj24566))
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
        (let ((_g24574_ (gxc#generate-meta-code _ctx23944_)))
          (begin
            (let ((_g24575_ (values-count _g24574_)))
              (if (not (fx= _g24575_ 2))
                  (error "Context expects 2 values" _g24575_)))
            (let ((_ssi-code23949_ (values-ref _g24574_ 0))
                  (_phi-code23950_ (values-ref _g24574_ 1)))
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
              (let ((__obj24567 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24567 _ctx23920_)
                  __obj24567)))
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
             (_g24576_
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
