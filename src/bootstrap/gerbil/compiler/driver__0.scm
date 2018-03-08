(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath24776_ _opts24777_)
        (begin
          (if (string? _srcpath24776_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath24776_))
          (let ((_outdir24779_ (pgetq 'output-dir: _opts24777_))
                (_invoke-gsc?24780_ (pgetq 'invoke-gsc: _opts24777_))
                (_gsc-options24781_ (pgetq 'gsc-options: _opts24777_))
                (_keep-scm?24782_ (pgetq 'keep-scm: _opts24777_))
                (_verbosity24783_ (pgetq 'verbose: _opts24777_))
                (_optimize24784_ (pgetq 'optimize: _opts24777_))
                (_debug24785_ (pgetq 'debug: _opts24777_))
                (_gen-ssxi24786_ (pgetq 'generate-ssxi: _opts24777_))
                (_static24787_ (pgetq 'static: _opts24777_)))
            (begin
              (if _outdir24779_ (create-directory* _outdir24779_) '#!void)
              (if _optimize24784_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath24776_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath24776_))))
               gxc#current-compile-output-dir
               _outdir24779_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?24780_
               gxc#current-compile-gsc-options
               _gsc-options24781_
               gxc#current-compile-keep-scm
               _keep-scm?24782_
               gxc#current-compile-verbose
               _verbosity24783_
               gxc#current-compile-optimize
               _optimize24784_
               gxc#current-compile-debug
               _debug24785_
               gxc#current-compile-generate-ssxi
               _gen-ssxi24786_
               gxc#current-compile-static
               _static24787_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath24793_)
          (let ((_opts24795_ '()))
            (gxc#compile-file__% _srcpath24793_ _opts24795_))))
      (define gxc#compile-file
        (lambda _g24803_
          (let ((_g24802_ (length _g24803_)))
            (cond ((fx= _g24802_ 1) (apply gxc#compile-file__0 _g24803_))
                  ((fx= _g24802_ 2) (apply gxc#compile-file__% _g24803_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g24803_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath24762_ _opts24763_)
        (gxc#do-compile-exe
         _srcpath24762_
         _opts24763_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath24768_)
          (let ((_opts24770_ '()))
            (gxc#compile-exe-stub__% _srcpath24768_ _opts24770_))))
      (define gxc#compile-exe-stub
        (lambda _g24805_
          (let ((_g24804_ (length _g24805_)))
            (cond ((fx= _g24804_ 1) (apply gxc#compile-exe-stub__0 _g24805_))
                  ((fx= _g24804_ 2) (apply gxc#compile-exe-stub__% _g24805_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g24805_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath24748_ _opts24749_)
        (gxc#do-compile-exe
         _srcpath24748_
         _opts24749_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath24754_)
          (let ((_opts24756_ '()))
            (gxc#compile-static-exe__% _srcpath24754_ _opts24756_))))
      (define gxc#compile-static-exe
        (lambda _g24807_
          (let ((_g24806_ (length _g24807_)))
            (cond ((fx= _g24806_ 1) (apply gxc#compile-static-exe__0 _g24807_))
                  ((fx= _g24806_ 2) (apply gxc#compile-static-exe__% _g24807_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g24807_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath24736_ _opts24737_ _compile-e24738_)
      (begin
        (if (string? _srcpath24736_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath24736_))
        (let ((_outdir24740_ (pgetq 'output-dir: _opts24737_))
              (_invoke-gsc?24741_ (pgetq 'invoke-gsc: _opts24737_))
              (_gsc-options24742_ (pgetq 'gsc-options: _opts24737_))
              (_keep-scm?24743_ (pgetq 'keep-scm: _opts24737_))
              (_verbosity24744_ (pgetq 'verbose: _opts24737_)))
          (begin
            (if _outdir24740_ (create-directory* _outdir24740_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath24736_)
                 (_compile-e24738_
                  (gx#import-module__0 _srcpath24736_)
                  _opts24737_)))
             gxc#current-compile-output-dir
             _outdir24740_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?24741_
             gxc#current-compile-gsc-options
             _gsc-options24742_
             gxc#current-compile-keep-scm
             _keep-scm?24743_
             gxc#current-compile-verbose
             _verbosity24744_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx24702_ _opts24703_)
      (letrec ((_generate-stub24705_
                (lambda (_gx-init-stub24727_)
                  (let* ((_mod-str24729_
                          (symbol->string
                           (##structure-ref
                            _ctx24702_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt24731_ (string-append _mod-str24729_ '"__rt"))
                         (_mod-main24733_
                          (gxc#find-runtime-symbol _ctx24702_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub24727_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt24731_
                                         (cons (cons 'quote
                                                     (cons _mod-main24733_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub24706_
                (lambda (_output-scm24713_ _output-bin24714_)
                  (let* ((_init-stub24716_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args24718_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24714_
                                            (cons _output-scm24713_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm24713_
                       (lambda () (_generate-stub24705_ _init-stub24716_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args24718_))
                            (let* ((_proc24722_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args24718_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status24724_
                                    (process-status _proc24722_)))
                              (if (zero? _status24724_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm24713_
                                   _output-bin24714_
                                   _status24724_))))
                          '#!void))))))
        (let* ((_output-bin24708_
                (gxc#compile-exe-output-file _ctx24702_ _opts24703_))
               (_output-scm24710_ (string-append _output-bin24708_ '".scm")))
          (begin
            (_compile-stub24706_ _output-scm24710_ _output-bin24708_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24710_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx24561_ _opts24562_)
      (letrec ((_reset-declare24564_
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
               (_user-declare24565_
                (lambda ()
                  (let* ((_gsc-opts24643_ (pgetq 'gsc-options: _opts24562_))
                         (_gsc-prelude24645_
                          (if _gsc-opts24643_
                              (member '"-prelude" _gsc-opts24643_)
                              '#f))
                         (_gsc-prelude24647_
                          (if _gsc-prelude24645_
                              (read (open-input-string
                                     (cadr _gsc-prelude24645_)))
                              '#f)))
                    (let _lift24650_ ((_expr24652_ _gsc-prelude24647_))
                      (let* ((_expr2465324665_ _expr24652_)
                             (_E2465724669_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2465324665_)))
                             (_else2465624673_ (lambda () '#f))
                             (_try-match2465524689_
                              (lambda ()
                                (let ((_K2465824679_
                                       (lambda (_exprs24677_)
                                         (ormap1 _lift24650_ _exprs24677_))))
                                  (if (##pair? _expr2465324665_)
                                      (let ((_hd2465924682_
                                             (##car _expr2465324665_))
                                            (_tl2466024684_
                                             (##cdr _expr2465324665_)))
                                        (if (##eq? _hd2465924682_ 'begin)
                                            (let ((_exprs24687_
                                                   _tl2466024684_))
                                              (_K2465824679_ _exprs24687_))
                                            (_else2465624673_)))
                                      (_else2465624673_)))))
                             (_K2466124693_ (lambda () _expr24652_)))
                        (if (##pair? _expr2465324665_)
                            (let ((_hd2466224696_ (##car _expr2465324665_))
                                  (_tl2466324698_ (##cdr _expr2465324665_)))
                              (if (##eq? _hd2466224696_ 'declare)
                                  (_K2466124693_)
                                  (_try-match2465524689_)))
                            (_try-match2465524689_)))))))
               (_generate-stub24566_
                (lambda (_deps24634_)
                  (let ((_mod-main24636_
                         (gxc#find-runtime-symbol _ctx24561_ 'main))
                        (_reset-decl24637_ (_reset-declare24564_))
                        (_user-decl24638_ (_user-declare24565_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep24640_)
                         (begin
                           (write (cons 'include (cons _dep24640_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl24637_)
                           (if _user-decl24638_
                               (write _user-decl24638_)
                               '#!void)
                           (newline)))
                       _deps24634_)
                      (write (cons 'apply
                                   (cons _mod-main24636_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include24567_
                (lambda (_gsc-opts24617_ _home24618_)
                  (letrec* ((_static-dir24620_
                             (path-expand '"lib/static" _home24618_))
                            (_user-static-dir24621_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags24622_
                             (string-append
                              '"-I "
                              _static-dir24620_
                              '" -I "
                              _user-static-dir24621_)))
                    (let ((_$e24624_ (member '"-cc-options" _gsc-opts24617_)))
                      (if _$e24624_
                          ((lambda (_rest24627_)
                             (let* ((_cell24629_ (cdr _rest24627_))
                                    (_opt24631_ (car _cell24629_)))
                               (begin
                                 (set-car!
                                  _cell24629_
                                  (string-append
                                   _opt24631_
                                   '" "
                                   _cppflags24622_))
                                 _gsc-opts24617_)))
                           _$e24624_)
                          (cons '"-cc-options"
                                (cons _cppflags24622_ _gsc-opts24617_)))))))
               (_compile-stub24568_
                (lambda (_output-scm24575_ _output-bin24576_)
                  (let* ((_gerbil-home24578_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc024580_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home24578_))
                         (_gx-gambc-init24582_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home24578_))
                         (_gx-gambc-macros24584_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home24578_))
                         (_include-gx-gambc-macros24586_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros24584_
                           '"\")"))
                         (_bin-scm24588_
                          (gxc#find-static-module-file _ctx24561_))
                         (_deps24590_
                          (gxc#find-runtime-module-deps _ctx24561_))
                         (_deps24592_
                          (map gxc#find-static-module-file _deps24590_))
                         (_deps24597_
                          (filter (lambda (_$obj24594_)
                                    (not (gxc#file-empty? _$obj24594_)))
                                  _deps24592_))
                         (_gsc-opts24602_
                          (let ((_$e24599_ (pgetq 'gsc-options: _opts24562_)))
                            (if _$e24599_ _$e24599_ '())))
                         (_gsc-opts24604_
                          (_static-include24567_
                           _gsc-opts24602_
                           _gerbil-home24578_))
                         (_gsc-gx-macros24606_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros24586_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros24586_
                                          '()))))
                         (_gsc-args24608_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin24576_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm24575_ '())
                            _gsc-gx-macros24606_)
                    _gsc-opts24604_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm24575_
                       (lambda ()
                         (_generate-stub24566_
                          (cons _gx-gambc024580_
                                (cons _gx-gambc-init24582_
                                      (foldr1 cons
                                              (cons _bin-scm24588_ '())
                                              _deps24597_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args24608_))
                            (let* ((_proc24612_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args24608_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status24614_
                                    (process-status _proc24612_)))
                              (if (zero? _status24614_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm24575_
                                   _output-bin24576_
                                   _status24614_))))
                          '#!void))))))
        (let* ((_output-bin24570_
                (gxc#compile-exe-output-file _ctx24561_ _opts24562_))
               (_output-scm24572_ (string-append _output-bin24570_ '".scm")))
          (begin
            (_compile-stub24568_ _output-scm24572_ _output-bin24570_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm24572_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx24511_ _id24512_)
      (let ((_$e24558_
             (find (lambda (_e2451324515_)
                     (let* ((_g2451724527_ _e2451324515_)
                            (_E2452024531_
                             (lambda ()
                               (error '"No clause matching" _g2451724527_)))
                            (_else2451924535_ (lambda () '#f))
                            (_K2452124539_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2451724527_
                            (##type-id gx#module-export::t))
                           (let* ((_e2452224542_
                                   (##vector-ref _g2451724527_ '1))
                                  (_e2452324545_
                                   (##vector-ref _g2451724527_ '2))
                                  (_e2452424548_
                                   (##vector-ref _g2451724527_ '3)))
                             (if (##eq? _e2452424548_ '0)
                                 (let ((_e2452524551_
                                        (##vector-ref _g2451724527_ '4)))
                                   (if ((lambda (_g2455324555_)
                                          (eq? _g2455324555_ _id24512_))
                                        _e2452524551_)
                                       (_K2452124539_)
                                       (_else2451924535_)))
                                 (_else2451924535_)))
                           (_else2451924535_))))
                   (##structure-ref _ctx24511_ '9 gx#module-context::t '#f))))
        (if _$e24558_ (gx#core-resolve-module-export _$e24558_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx24503_ _id24504_)
      (let ((_$e24506_ (gxc#find-export-binding _ctx24503_ _id24504_)))
        (if _$e24506_
            ((lambda (_bind24509_)
               (begin
                 (if (##structure-instance-of?
                      _bind24509_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id24504_))
                 (##structure-ref _bind24509_ '1 gx#binding::t '#f)))
             _$e24506_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx24503_ '1 gx#expander-context::t '#f)
             _id24504_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx24390_)
      (letrec* ((_ht24392_ (make-hash-table-eq))
                (_import-set-template24393_
                 (lambda (_in24455_ _phi24456_)
                   (let ((_iphi24458_
                          (fx+ _phi24456_
                               (##direct-structure-ref
                                _in24455_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports24459_
                          (##structure-ref
                           (##direct-structure-ref
                            _in24455_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp24461_ ((_rest24463_ _imports24459_)
                                     (_r24464_ '()))
                       (let* ((_rest2446524473_ _rest24463_)
                              (_E2446824477_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2446524473_)))
                              (_else2446724481_ (lambda () _r24464_))
                              (_K2446924491_
                               (lambda (_rest24484_ _in24485_)
                                 (if (##structure-instance-of?
                                      _in24485_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi24458_)
                                         (_lp24461_
                                          _rest24484_
                                          (cons _in24485_ _r24464_))
                                         (_lp24461_ _rest24484_ _r24464_))
                                     (if (##structure-direct-instance-of?
                                          _in24485_
                                          'gx#module-import::t)
                                         (let ((_iphi24487_
                                                (fx+ _phi24456_
                                                     (##direct-structure-ref
                                                      _in24485_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi24487_)
                                               (_lp24461_
                                                _rest24484_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in24485_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r24464_))
                                               (_lp24461_
                                                _rest24484_
                                                _r24464_)))
                                         (if (##structure-direct-instance-of?
                                              _in24485_
                                              'gx#import-set::t)
                                             (let ((_xphi24489_
                                                    (fx+ _iphi24458_
                                                         (##direct-structure-ref
                                                          _in24485_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi24489_)
                                                   (_lp24461_
                                                    _rest24484_
                                                    (cons (##direct-structure-ref
                                                           _in24485_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r24464_))
                                                   (if (fxpositive?
                                                        _xphi24489_)
                                                       (_lp24461_
                                                        _rest24484_
                                                        (foldl1 cons
                                                                _r24464_
                                                                (_import-set-template24393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in24485_
                         _iphi24458_)))
               (_lp24461_ _rest24484_ _r24464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp24461_
                                              _rest24484_
                                              _r24464_)))))))
                         (if (##pair? _rest2446524473_)
                             (let ((_hd2447024494_ (##car _rest2446524473_))
                                   (_tl2447124496_ (##cdr _rest2446524473_)))
                               (let* ((_in24499_ _hd2447024494_)
                                      (_rest24501_ _tl2447124496_))
                                 (_K2446924491_ _rest24501_ _in24499_)))
                             (_else2446724481_)))))))
                (_find-deps24394_
                 (lambda (_rest24401_ _deps24402_)
                   (let* ((_rest2440324411_ _rest24401_)
                          (_E2440624415_
                           (lambda ()
                             (error '"No clause matching" _rest2440324411_)))
                          (_else2440524419_ (lambda () _deps24402_))
                          (_K2440724443_
                           (lambda (_rest24422_ _hd24423_)
                             (if (##structure-instance-of?
                                  _hd24423_
                                  'gx#module-context::t)
                                 (let ((_id24425_
                                        (##structure-ref
                                         _hd24423_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports24426_
                                        (##structure-ref
                                         _hd24423_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht24392_ _id24425_ '#f)
                                       (_find-deps24394_
                                        _rest24422_
                                        _deps24402_)
                                       (let ((_$e24428_
                                              (gx#core-context-prelude__%
                                               _hd24423_)))
                                         (if _$e24428_
                                             ((lambda (_pre24431_)
                                                (let ((_xdeps24433_
                                                       (_find-deps24394_
                                                        (cons _pre24431_
                                                              _imports24426_)
                                                        _deps24402_)))
                                                  (begin
                                                    (table-set!
                                                     _ht24392_
                                                     _id24425_
                                                     _hd24423_)
                                                    (_find-deps24394_
                                                     _rest24422_
                                                     (cons _hd24423_
                                                           _xdeps24433_)))))
                                              _$e24428_)
                                             (let ((_xdeps24435_
                                                    (_find-deps24394_
                                                     _imports24426_
                                                     _deps24402_)))
                                               (begin
                                                 (table-set!
                                                  _ht24392_
                                                  _id24425_
                                                  _hd24423_)
                                                 (_find-deps24394_
                                                  _rest24422_
                                                  (cons _hd24423_
                                                        _xdeps24435_))))))))
                                 (if (##structure-instance-of?
                                      _hd24423_
                                      'gx#prelude-context::t)
                                     (let ((_id24437_
                                            (##structure-ref
                                             _hd24423_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht24392_ _id24437_ '#f)
                                           (_find-deps24394_
                                            _rest24422_
                                            _deps24402_)
                                           (let ((_xdeps24439_
                                                  (_find-deps24394_
                                                   (##structure-ref
                                                    _hd24423_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps24402_)))
                                             (if (table-ref
                                                  _ht24392_
                                                  _id24437_
                                                  '#f)
                                                 (_find-deps24394_
                                                  _rest24422_
                                                  _xdeps24439_)
                                                 (begin
                                                   (table-set!
                                                    _ht24392_
                                                    _id24437_
                                                    _hd24423_)
                                                   (_find-deps24394_
                                                    _rest24422_
                                                    (cons _hd24423_
                                                          _xdeps24439_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd24423_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd24423_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps24394_
                                              (cons (##direct-structure-ref
                                                     _hd24423_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest24422_)
                                              _deps24402_)
                                             (_find-deps24394_
                                              _rest24422_
                                              _deps24402_))
                                         (if (##structure-direct-instance-of?
                                              _hd24423_
                                              'gx#module-export::t)
                                             (_find-deps24394_
                                              (cons (##direct-structure-ref
                                                     _hd24423_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest24422_)
                                              _deps24402_)
                                             (if (##structure-direct-instance-of?
                                                  _hd24423_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd24423_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps24394_
                                                      (cons (##direct-structure-ref
                                                             _hd24423_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest24422_)
                                                      _deps24402_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd24423_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps24441_
                                                                (_import-set-template24393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd24423_
                         '0)))
                   (_find-deps24394_
                    (foldl1 cons _rest24422_ _xdeps24441_)
                    _deps24402_))
                 (_find-deps24394_ _rest24422_ _deps24402_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd24423_)))))))))
                     (if (##pair? _rest2440324411_)
                         (let ((_hd2440824446_ (##car _rest2440324411_))
                               (_tl2440924448_ (##cdr _rest2440324411_)))
                           (let* ((_hd24451_ _hd2440824446_)
                                  (_rest24453_ _tl2440924448_))
                             (_K2440724443_ _rest24453_ _hd24451_)))
                         (_else2440524419_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps24394_
                          (let ((_$e24396_
                                 (gx#core-context-prelude__% _ctx24390_)))
                            (if _$e24396_
                                ((lambda (_pre24399_)
                                   (cons _pre24399_
                                         (##structure-ref
                                          _ctx24390_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e24396_)
                                (##structure-ref
                                 _ctx24390_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx24329_)
      (let* ((_scm24331_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx24329_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs24333_ (gx#current-expander-module-library-path))
             (_dirs24342_
              (let ((_$e24335_ (gxc#current-compile-output-dir)))
                (if _$e24335_
                    ((lambda (_g2433724339_) (cons _g2433724339_ _dirs24333_))
                     _$e24335_)
                    _dirs24333_)))
             (_dirs24348_
              (map (lambda (_g2434324345_)
                     (path-expand '"static" _g2434324345_))
                   _dirs24342_)))
        (let _lp24351_ ((_rest24353_ _dirs24348_))
          (let* ((_rest2435424362_ _rest24353_)
                 (_E2435724366_
                  (lambda () (error '"No clause matching" _rest2435424362_)))
                 (_else2435624370_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx24329_ '1 gx#expander-context::t '#f)
                     _scm24331_)))
                 (_K2435824378_
                  (lambda (_rest24373_ _dir24374_)
                    (let ((_path24376_ (path-expand _scm24331_ _dir24374_)))
                      (if (file-exists? _path24376_)
                          _path24376_
                          (_lp24351_ _rest24373_))))))
            (if (##pair? _rest2435424362_)
                (let ((_hd2435924381_ (##car _rest2435424362_))
                      (_tl2436024383_ (##cdr _rest2435424362_)))
                  (let* ((_dir24386_ _hd2435924381_)
                         (_rest24388_ _tl2436024383_))
                    (_K2435824378_ _rest24388_ _dir24386_)))
                (_else2435624370_)))))))
  (define gxc#file-empty?
    (lambda (_path24327_)
      (zero? (file-info-size (file-info _path24327_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx24324_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx24324_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx24324_)
               '#!void)
           (gxc#collect-bindings _ctx24324_)
           (gxc#compile-runtime-code _ctx24324_)
           (gxc#compile-meta-code _ctx24324_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx24324_)
               '#!void)))
       gx#current-expander-context
       _ctx24324_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj24800 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj24800) __obj24800))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx24322_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx24322_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx24276_)
      (letrec ((_compile124278_
                (lambda (_ctx24311_)
                  (let* ((_code24313_
                          (##structure-ref
                           _ctx24311_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt24317_
                          (if (gxc#apply-find-runtime-code _code24313_)
                              (let ((_idstr24315_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx24311_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr24315_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt24317_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx24311_
                             _rt24317_)
                            (_generate-runtime-code24279_
                             _ctx24311_
                             _code24313_))
                          (if (gxc#current-compile-static)
                              (let ((_path24320_
                                     (gxc#compile-static-output-file
                                      _ctx24311_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path24320_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code24280_
                       _ctx24311_
                       _code24313_
                       _rt24317_)))))
               (_generate-runtime-code24279_
                (lambda (_ctx24295_ _code24296_)
                  (let* ((_lifts24298_ (box '()))
                         (_runtime-code24301_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code24296_))
                           gx#current-expander-context
                           _ctx24295_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts24298_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code24303_
                          (if (null? (unbox _lifts24298_))
                              _runtime-code24301_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code24301_ '())
                                            (reverse (unbox _lifts24298_))))))
                         (_scm024305_
                          (gxc#compile-output-file _ctx24295_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms24308_
                               (gxc#compile-static-output-file _ctx24295_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm024305_
                                _runtime-code24303_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms24308_)
                                (delete-file _scms24308_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm024305_
                             '" => "
                             _scms24308_)
                            (copy-file _scm024305_ _scms24308_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm024305_))))
                        (gxc#compile-scm-file
                         _scm024305_
                         _runtime-code24303_)))))
               (_generate-loader-code24280_
                (lambda (_ctx24284_ _code24285_ _rt24286_)
                  (let* ((_loader-code24289_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code24285_))
                           gx#current-expander-context
                           _ctx24284_))
                         (_loader-code24291_
                          (if _rt24286_
                              (cons 'begin
                                    (cons _loader-code24289_
                                          (cons (cons 'load-module
                                                      (cons _rt24286_ '()))
                                                '())))
                              _loader-code24289_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx24284_ 'rt '".scm")
                        _loader-code24291_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules24282_
               (cons _ctx24276_ (gxc#lift-nested-modules _ctx24276_))))
          (for-each _compile124278_ _all-modules24282_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx24178_)
      (letrec ((_compile-ssi24180_
                (lambda (_code24246_)
                  (let* ((_path24248_
                          (gxc#compile-output-file _ctx24178_ '#f '".ssi"))
                         (_prelude24259_
                          (let* ((_super24250_
                                  (##structure-ref
                                   _ctx24178_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e24252_
                                  (##structure-ref
                                   _super24250_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e24252_
                                ((lambda (_g2425424256_)
                                   (make-symbol '":" _g2425424256_))
                                 _$e24252_)
                                ':<root>)))
                         (_ns24261_
                          (##structure-ref
                           _ctx24178_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr24263_
                          (symbol->string
                           (##structure-ref
                            _ctx24178_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg24270_
                          (let ((_$e24265_ (string-rindex _idstr24263_ '#\/)))
                            (if _$e24265_
                                ((lambda (_x24268_)
                                   (string->symbol
                                    (substring _idstr24263_ '0 _x24268_)))
                                 _$e24265_)
                                '#f)))
                         (_rt24272_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx24178_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path24248_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path24248_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude24259_)
                           (if _pkg24270_
                               (displayln '"package:" '" " _pkg24270_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns24261_)
                           (newline)
                           (pretty-print _code24246_)
                           (if _rt24272_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt24272_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi24181_
                (lambda (_part24186_)
                  (let* ((_part2418724200_ _part24186_)
                         (_E2418924204_
                          (lambda ()
                            (error '"No clause matching" _part2418724200_)))
                         (_K2419024215_
                          (lambda (_code24207_
                                   _n24208_
                                   _phi24209_
                                   _phi-ctx24210_)
                            (let ((_code24213_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code24207_))
                                    gx#current-expander-context
                                    _phi-ctx24210_
                                    gx#current-expander-phi
                                    _phi24209_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx24178_
                                _n24208_
                                '".scm")
                               _code24213_)))))
                    (if (##pair? _part2418724200_)
                        (let ((_hd2419124218_ (##car _part2418724200_))
                              (_tl2419224220_ (##cdr _part2418724200_)))
                          (let ((_phi-ctx24223_ _hd2419124218_))
                            (if (##pair? _tl2419224220_)
                                (let ((_hd2419324225_ (##car _tl2419224220_))
                                      (_tl2419424227_ (##cdr _tl2419224220_)))
                                  (let ((_phi24230_ _hd2419324225_))
                                    (if (##pair? _tl2419424227_)
                                        (let ((_hd2419524232_
                                               (##car _tl2419424227_))
                                              (_tl2419624234_
                                               (##cdr _tl2419424227_)))
                                          (let ((_n24237_ _hd2419524232_))
                                            (if (##pair? _tl2419624234_)
                                                (let ((_hd2419724239_
                                                       (##car _tl2419624234_))
                                                      (_tl2419824241_
                                                       (##cdr _tl2419624234_)))
                                                  (let ((_code24244_
                                                         _hd2419724239_))
                                                    (if (##null? _tl2419824241_)
                                                        (_K2419024215_
                                                         _code24244_
                                                         _n24237_
                                                         _phi24230_
                                                         _phi-ctx24223_)
                                                        (_E2418924204_))))
                                                (_E2418924204_))))
                                        (_E2418924204_))))
                                (_E2418924204_))))
                        (_E2418924204_))))))
        (let ((_g24808_ (gxc#generate-meta-code _ctx24178_)))
          (begin
            (let ((_g24809_ (values-count _g24808_)))
              (if (not (fx= _g24809_ 2))
                  (error "Context expects 2 values" _g24809_)))
            (let ((_ssi-code24183_ (values-ref _g24808_ 0))
                  (_phi-code24184_ (values-ref _g24808_ 1)))
              (begin
                (_compile-ssi24180_ _ssi-code24183_)
                (for-each _compile-phi24181_ _phi-code24184_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx24161_)
      (let* ((_path24163_ (gxc#compile-output-file _ctx24161_ '#f '".ssxi.ss"))
             (_code24165_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx24161_ '11 gx#module-context::t '#f)))
             (_idstr24167_
              (symbol->string
               (##structure-ref _ctx24161_ '1 gx#expander-context::t '#f)))
             (_pkg24174_
              (let ((_$e24169_ (string-rindex _idstr24167_ '#\/)))
                (if _$e24169_
                    ((lambda (_x24172_)
                       (string->symbol (substring _idstr24167_ '0 _x24172_)))
                     _$e24169_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path24163_)
          (with-output-to-file
           (cons 'path:
                 (cons _path24163_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg24174_ (displayln '"package: " _pkg24174_) '#!void)
               (newline)
               (pretty-print _code24165_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx24154_)
      (let* ((_state24156_
              (let ((__obj24801 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj24801 _ctx24154_)
                  __obj24801)))
             (_ssi-code24158_
              (gxc#apply-generate-meta
               (##structure-ref _ctx24154_ '11 gx#module-context::t '#f)
               _state24156_)))
        (values _ssi-code24158_ (gxc#meta-state-end! _state24156_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx24147_)
      (let ((_lifts24149_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code24152_ (gxc#apply-generate-runtime-phi _stx24147_)))
             (if (null? (unbox _lifts24149_))
                 _code24152_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code24152_ '())
                               (reverse (unbox _lifts24149_)))))))
         gxc#current-compile-lift
         _lifts24149_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx24143_)
      (let ((_modules24145_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx24143_ '11 gx#module-context::t '#f)
           _modules24145_)
          (reverse (unbox _modules24145_))))))
  (define gxc#compile-scm-file
    (lambda (_path24139_ _code24140_)
      (begin
        (gxc#verbose '"compile " _path24139_)
        (with-output-to-file
         (cons 'path: (cons _path24139_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code24140_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path24139_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path24139_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e24128_ (gxc#current-compile-debug)))
        (if _$e24128_
            ((lambda (_debug24131_)
               (let ((_$e24133_ _debug24131_))
                 (if (eq? 'env _$e24133_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e24133_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e24136_ (eq? 'all _$e24133_)))
                               (if _$e24136_ _$e24136_ (eq? '#t _$e24133_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug24131_))))))
             _$e24128_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path24110_)
      (let* ((_gsc-args24117_
              (let ((_$e24112_ (gxc#current-compile-gsc-options)))
                (if _$e24112_
                    ((lambda (_opts24115_)
                       (foldr1 cons (cons _path24110_ '()) _opts24115_))
                     _$e24112_)
                    (cons _path24110_ '()))))
             (_gsc-args24119_
              (foldr1 cons _gsc-args24117_ (gxc#gsc-debug-options)))
             (_g24810_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args24119_)))
             (_proc24122_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args24119_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status24124_ (process-status _proc24122_)))
        (if (zero? _status24124_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path24110_
             _status24124_)))))
  (define gxc#compile-output-file
    (lambda (_ctx24082_ _n24083_ _ext24084_)
      (letrec ((_module-relative-path24086_
                (lambda (_ctx24108_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx24108_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory24087_
                (lambda (_ctx24104_)
                  (path-directory
                   (let ((_mpath24106_
                          (##structure-ref
                           _ctx24104_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath24106_)
                         _mpath24106_
                         (last _mpath24106_))))))
               (_section-string24088_
                (lambda (_n24102_)
                  (if (number? _n24102_)
                      (number->string _n24102_)
                      (if (symbol? _n24102_)
                          (symbol->string _n24102_)
                          (if (string? _n24102_)
                              _n24102_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n24102_))))))
               (_file-name24089_
                (lambda (_path24100_)
                  (if _n24083_
                      (string-append
                       _path24100_
                       '"__"
                       (_section-string24088_ _n24083_)
                       _ext24084_)
                      (string-append _path24100_ _ext24084_))))
               (_file-path24090_
                (lambda ()
                  (let ((_$e24095_ (gxc#current-compile-output-dir)))
                    (if _$e24095_
                        ((lambda (_outdir24098_)
                           (path-expand
                            (_file-name24089_
                             (symbol->string
                              (##structure-ref
                               _ctx24082_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir24098_))
                         _$e24095_)
                        (path-expand
                         (_file-name24089_
                          (_module-relative-path24086_ _ctx24082_))
                         (_module-source-directory24087_ _ctx24082_)))))))
        (let ((_path24092_ (_file-path24090_)))
          (begin
            (create-directory* (path-directory _path24092_))
            _path24092_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx24065_)
      (letrec ((_file-name24067_
                (lambda (_idstr24080_)
                  (string-append
                   (gxc#static-module-name _idstr24080_)
                   '".scm")))
               (_file-path24068_
                (lambda ()
                  (let* ((_file24073_
                          (_file-name24067_
                           (symbol->string
                            (##structure-ref
                             _ctx24065_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e24075_ (gxc#current-compile-output-dir)))
                    (if _$e24075_
                        ((lambda (_outdir24078_)
                           (path-expand
                            _file24073_
                            (path-expand '"static" _outdir24078_)))
                         _$e24075_)
                        (path-expand _file24073_ '"static"))))))
        (let ((_path24070_ (_file-path24068_)))
          (begin
            (create-directory* (path-directory _path24070_))
            _path24070_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx24052_ _opts24053_)
      (let ((_$e24055_ (pgetq 'output-file: _opts24053_)))
        (if _$e24055_
            (values _$e24055_)
            (let* ((_mod-str24058_
                    (symbol->string
                     (##structure-ref
                      _ctx24052_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e24060_ (string-rindex _mod-str24058_ '#\/)))
              (if _$e24060_
                  ((lambda (_ix24063_)
                     (substring
                      _mod-str24058_
                      (fx+ _ix24063_ '1)
                      (string-length _mod-str24058_)))
                   _$e24060_)
                  _mod-str24058_))))))
  (define gxc#static-module-name
    (lambda (_idstr24048_)
      (if (string? _idstr24048_)
          (let ((_strs24050_ (string-split _idstr24048_ '#\/)))
            (string-join _strs24050_ '"__"))
          (if (symbol? _idstr24048_)
              (gxc#static-module-name (symbol->string _idstr24048_))
              (error '"Bad module id" _idstr24048_))))))
