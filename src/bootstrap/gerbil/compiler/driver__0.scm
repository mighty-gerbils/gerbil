(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath48729_ _opts48730_)
        (begin
          (if (string? _srcpath48729_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath48729_))
          (let ((_outdir48732_ (pgetq 'output-dir: _opts48730_))
                (_invoke-gsc?48733_ (pgetq 'invoke-gsc: _opts48730_))
                (_gsc-options48734_ (pgetq 'gsc-options: _opts48730_))
                (_keep-scm?48735_ (pgetq 'keep-scm: _opts48730_))
                (_verbosity48736_ (pgetq 'verbose: _opts48730_))
                (_optimize48737_ (pgetq 'optimize: _opts48730_))
                (_debug48738_ (pgetq 'debug: _opts48730_))
                (_gen-ssxi48739_ (pgetq 'generate-ssxi: _opts48730_))
                (_static48740_ (pgetq 'static: _opts48730_)))
            (begin
              (if _outdir48732_ (create-directory* _outdir48732_) '#!void)
              (if _optimize48737_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath48729_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath48729_))))
               gxc#current-compile-output-dir
               _outdir48732_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?48733_
               gxc#current-compile-gsc-options
               _gsc-options48734_
               gxc#current-compile-keep-scm
               _keep-scm?48735_
               gxc#current-compile-verbose
               _verbosity48736_
               gxc#current-compile-optimize
               _optimize48737_
               gxc#current-compile-debug
               _debug48738_
               gxc#current-compile-generate-ssxi
               _gen-ssxi48739_
               gxc#current-compile-static
               _static48740_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath48746_)
          (let ((_opts48748_ '()))
            (gxc#compile-file__% _srcpath48746_ _opts48748_))))
      (define gxc#compile-file
        (lambda _g48769_
          (let ((_g48768_ (length _g48769_)))
            (cond ((##fx= _g48768_ 1) (apply gxc#compile-file__0 _g48769_))
                  ((##fx= _g48768_ 2) (apply gxc#compile-file__% _g48769_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g48769_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath48715_ _opts48716_)
        (gxc#do-compile-exe
         _srcpath48715_
         _opts48716_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath48721_)
          (let ((_opts48723_ '()))
            (gxc#compile-exe-stub__% _srcpath48721_ _opts48723_))))
      (define gxc#compile-exe-stub
        (lambda _g48771_
          (let ((_g48770_ (length _g48771_)))
            (cond ((##fx= _g48770_ 1) (apply gxc#compile-exe-stub__0 _g48771_))
                  ((##fx= _g48770_ 2) (apply gxc#compile-exe-stub__% _g48771_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g48771_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath48701_ _opts48702_)
        (gxc#do-compile-exe
         _srcpath48701_
         _opts48702_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath48707_)
          (let ((_opts48709_ '()))
            (gxc#compile-static-exe__% _srcpath48707_ _opts48709_))))
      (define gxc#compile-static-exe
        (lambda _g48773_
          (let ((_g48772_ (length _g48773_)))
            (cond ((##fx= _g48772_ 1)
                   (apply gxc#compile-static-exe__0 _g48773_))
                  ((##fx= _g48772_ 2)
                   (apply gxc#compile-static-exe__% _g48773_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g48773_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath48689_ _opts48690_ _compile-e48691_)
      (begin
        (if (string? _srcpath48689_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath48689_))
        (let ((_outdir48693_ (pgetq 'output-dir: _opts48690_))
              (_invoke-gsc?48694_ (pgetq 'invoke-gsc: _opts48690_))
              (_gsc-options48695_ (pgetq 'gsc-options: _opts48690_))
              (_keep-scm?48696_ (pgetq 'keep-scm: _opts48690_))
              (_verbosity48697_ (pgetq 'verbose: _opts48690_)))
          (begin
            (if _outdir48693_ (create-directory* _outdir48693_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath48689_)
                 (_compile-e48691_
                  (gx#import-module__0 _srcpath48689_)
                  _opts48690_)))
             gxc#current-compile-output-dir
             _outdir48693_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?48694_
             gxc#current-compile-gsc-options
             _gsc-options48695_
             gxc#current-compile-keep-scm
             _keep-scm?48696_
             gxc#current-compile-verbose
             _verbosity48697_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx48655_ _opts48656_)
      (letrec ((_generate-stub48658_
                (lambda (_gx-init-stub48680_)
                  (let* ((_mod-str48682_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx48655_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt48684_ (string-append _mod-str48682_ '"__rt"))
                         (_mod-main48686_
                          (gxc#find-runtime-symbol _ctx48655_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub48680_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt48684_
                                         (cons (cons 'quote
                                                     (cons _mod-main48686_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub48659_
                (lambda (_output-scm48666_ _output-bin48667_)
                  (let* ((_init-stub48669_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args48671_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48667_
                                            (cons _output-scm48666_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm48666_
                       (lambda () (_generate-stub48658_ _init-stub48669_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48671_))
                            (let* ((_proc48675_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48671_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48677_
                                    (process-status _proc48675_)))
                              (if (zero? _status48677_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48666_
                                   _output-bin48667_
                                   _status48677_))))
                          '#!void))))))
        (let* ((_output-bin48661_
                (gxc#compile-exe-output-file _ctx48655_ _opts48656_))
               (_output-scm48663_ (string-append _output-bin48661_ '".scm")))
          (begin
            (_compile-stub48659_ _output-scm48663_ _output-bin48661_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48663_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48516_ _opts48517_)
      (letrec ((_reset-declare48519_
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
               (_user-declare48520_
                (lambda ()
                  (let* ((_gsc-opts48598_ (pgetq 'gsc-options: _opts48517_))
                         (_gsc-prelude48600_
                          (if _gsc-opts48598_
                              (member '"-prelude" _gsc-opts48598_)
                              '#f))
                         (_gsc-prelude48602_
                          (if _gsc-prelude48600_
                              (read (open-input-string
                                     (cadr _gsc-prelude48600_)))
                              '#f)))
                    (let _lift48605_ ((_expr48607_ _gsc-prelude48602_))
                      (let* ((_expr4860848620_ _expr48607_)
                             (_else4861148628_ (lambda () '#f)))
                        (let ((_K4861648648_ (lambda () _expr48607_))
                              (_K4861348634_
                               (lambda (_exprs48632_)
                                 (ormap1 _lift48605_ _exprs48632_))))
                          (if (##pair? _expr4860848620_)
                              (let ((_hd4861748651_ (##car _expr4860848620_)))
                                (if (##eq? _hd4861748651_ 'declare)
                                    (_K4861648648_)
                                    (let ((_tl4861548639_
                                           (##cdr _expr4860848620_)))
                                      (if (##eq? _hd4861748651_ 'begin)
                                          (let ((_exprs48642_ _tl4861548639_))
                                            (_K4861348634_ _exprs48642_))
                                          (_else4861148628_)))))
                              (_else4861148628_))))))))
               (_generate-stub48521_
                (lambda (_deps48589_)
                  (let ((_mod-main48591_
                         (gxc#find-runtime-symbol _ctx48516_ 'main))
                        (_reset-decl48592_ (_reset-declare48519_))
                        (_user-decl48593_ (_user-declare48520_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep48595_)
                         (begin
                           (write (cons 'include (cons _dep48595_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl48592_)
                           (if _user-decl48593_
                               (write _user-decl48593_)
                               '#!void)
                           (newline)))
                       _deps48589_)
                      (write (cons 'apply
                                   (cons _mod-main48591_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48522_
                (lambda (_gsc-opts48572_ _home48573_)
                  (letrec* ((_static-dir48575_
                             (path-expand '"lib/static" _home48573_))
                            (_user-static-dir48576_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48577_
                             (string-append
                              '"-I "
                              _static-dir48575_
                              '" -I "
                              _user-static-dir48576_)))
                    (let ((_$e48579_ (member '"-cc-options" _gsc-opts48572_)))
                      (if _$e48579_
                          ((lambda (_rest48582_)
                             (let* ((_cell48584_ (cdr _rest48582_))
                                    (_opt48586_ (car _cell48584_)))
                               (begin
                                 (set-car!
                                  _cell48584_
                                  (string-append
                                   _opt48586_
                                   '" "
                                   _cppflags48577_))
                                 _gsc-opts48572_)))
                           _$e48579_)
                          (cons '"-cc-options"
                                (cons _cppflags48577_ _gsc-opts48572_)))))))
               (_compile-stub48523_
                (lambda (_output-scm48530_ _output-bin48531_)
                  (let* ((_gerbil-home48533_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048535_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48533_))
                         (_gx-gambc-init48537_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48533_))
                         (_gx-gambc-macros48539_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48533_))
                         (_include-gx-gambc-macros48541_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48539_
                           '"\")"))
                         (_bin-scm48543_
                          (gxc#find-static-module-file _ctx48516_))
                         (_deps48545_
                          (gxc#find-runtime-module-deps _ctx48516_))
                         (_deps48547_
                          (map gxc#find-static-module-file _deps48545_))
                         (_deps48552_
                          (filter (lambda (_$obj48549_)
                                    (not (gxc#file-empty? _$obj48549_)))
                                  _deps48547_))
                         (_gsc-opts48557_
                          (let ((_$e48554_ (pgetq 'gsc-options: _opts48517_)))
                            (if _$e48554_ _$e48554_ '())))
                         (_gsc-opts48559_
                          (_static-include48522_
                           _gsc-opts48557_
                           _gerbil-home48533_))
                         (_gsc-gx-macros48561_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48541_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48541_
                                          '()))))
                         (_gsc-args48563_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48531_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48530_ '())
                            _gsc-gx-macros48561_)
                    _gsc-opts48559_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48530_
                       (lambda ()
                         (_generate-stub48521_
                          (cons _gx-gambc048535_
                                (cons _gx-gambc-init48537_
                                      (foldr1 cons
                                              (cons _bin-scm48543_ '())
                                              _deps48552_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48563_))
                            (let* ((_proc48567_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48563_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48569_
                                    (process-status _proc48567_)))
                              (if (zero? _status48569_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48530_
                                   _output-bin48531_
                                   _status48569_))))
                          '#!void))))))
        (let* ((_output-bin48525_
                (gxc#compile-exe-output-file _ctx48516_ _opts48517_))
               (_output-scm48527_ (string-append _output-bin48525_ '".scm")))
          (begin
            (_compile-stub48523_ _output-scm48527_ _output-bin48525_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48527_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48466_ _id48467_)
      (let ((_$e48513_
             (find (lambda (_e4846848470_)
                     (let* ((_g4847248482_ _e4846848470_)
                            (_else4847448490_ (lambda () '#f))
                            (_K4847648494_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4847248482_
                            'gx#module-export::t)
                           (let* ((_e4847748497_
                                   (##vector-ref _g4847248482_ '1))
                                  (_e4847848500_
                                   (##vector-ref _g4847248482_ '2))
                                  (_e4847948503_
                                   (##vector-ref _g4847248482_ '3)))
                             (if (##eq? _e4847948503_ '0)
                                 (let ((_e4848048506_
                                        (##vector-ref _g4847248482_ '4)))
                                   (if ((lambda (_g4850848510_)
                                          (eq? _g4850848510_ _id48467_))
                                        _e4848048506_)
                                       (_K4847648494_)
                                       (_else4847448490_)))
                                 (_else4847448490_)))
                           (_else4847448490_))))
                   (##structure-ref _ctx48466_ '9 gx#module-context::t '#f))))
        (if _$e48513_ (gx#core-resolve-module-export _$e48513_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48458_ _id48459_)
      (let ((_$e48461_ (gxc#find-export-binding _ctx48458_ _id48459_)))
        (if _$e48461_
            ((lambda (_bind48464_)
               (begin
                 (if (##structure-instance-of?
                      _bind48464_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48459_))
                 (##structure-ref _bind48464_ '1 gx#binding::t '#f)))
             _$e48461_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48458_ '1 gx#expander-context::t '#f)
             _id48459_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48345_)
      (letrec* ((_ht48347_ (make-hash-table-eq))
                (_import-set-template48348_
                 (lambda (_in48410_ _phi48411_)
                   (let ((_iphi48413_
                          (fx+ _phi48411_
                               (##direct-structure-ref
                                _in48410_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48414_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48410_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48416_ ((_rest48418_ _imports48414_)
                                     (_r48419_ '()))
                       (let* ((_rest4842048428_ _rest48418_)
                              (_else4842248436_ (lambda () _r48419_))
                              (_K4842448446_
                               (lambda (_rest48439_ _in48440_)
                                 (if (##structure-instance-of?
                                      _in48440_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48413_)
                                         (_lp48416_
                                          _rest48439_
                                          (cons _in48440_ _r48419_))
                                         (_lp48416_ _rest48439_ _r48419_))
                                     (if (##structure-direct-instance-of?
                                          _in48440_
                                          'gx#module-import::t)
                                         (let ((_iphi48442_
                                                (fx+ _phi48411_
                                                     (##direct-structure-ref
                                                      _in48440_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48442_)
                                               (_lp48416_
                                                _rest48439_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48440_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48419_))
                                               (_lp48416_
                                                _rest48439_
                                                _r48419_)))
                                         (if (##structure-direct-instance-of?
                                              _in48440_
                                              'gx#import-set::t)
                                             (let ((_xphi48444_
                                                    (fx+ _iphi48413_
                                                         (##direct-structure-ref
                                                          _in48440_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48444_)
                                                   (_lp48416_
                                                    _rest48439_
                                                    (cons (##direct-structure-ref
                                                           _in48440_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48419_))
                                                   (if (fxpositive?
                                                        _xphi48444_)
                                                       (_lp48416_
                                                        _rest48439_
                                                        (foldl1 cons
                                                                _r48419_
                                                                (_import-set-template48348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48440_
                         _iphi48413_)))
               (_lp48416_ _rest48439_ _r48419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48416_
                                              _rest48439_
                                              _r48419_)))))))
                         (if (##pair? _rest4842048428_)
                             (let ((_hd4842548449_ (##car _rest4842048428_))
                                   (_tl4842648451_ (##cdr _rest4842048428_)))
                               (let* ((_in48454_ _hd4842548449_)
                                      (_rest48456_ _tl4842648451_))
                                 (_K4842448446_ _rest48456_ _in48454_)))
                             (_else4842248436_)))))))
                (_find-deps48349_
                 (lambda (_rest48356_ _deps48357_)
                   (let* ((_rest4835848366_ _rest48356_)
                          (_else4836048374_ (lambda () _deps48357_))
                          (_K4836248398_
                           (lambda (_rest48377_ _hd48378_)
                             (if (##structure-instance-of?
                                  _hd48378_
                                  'gx#module-context::t)
                                 (let ((_id48380_
                                        (##structure-ref
                                         _hd48378_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48381_
                                        (##structure-ref
                                         _hd48378_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48347_ _id48380_ '#f)
                                       (_find-deps48349_
                                        _rest48377_
                                        _deps48357_)
                                       (let ((_$e48383_
                                              (gx#core-context-prelude__%
                                               _hd48378_)))
                                         (if _$e48383_
                                             ((lambda (_pre48386_)
                                                (let ((_xdeps48388_
                                                       (_find-deps48349_
                                                        (cons _pre48386_
                                                              _imports48381_)
                                                        _deps48357_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48347_
                                                     _id48380_
                                                     _hd48378_)
                                                    (_find-deps48349_
                                                     _rest48377_
                                                     (cons _hd48378_
                                                           _xdeps48388_)))))
                                              _$e48383_)
                                             (let ((_xdeps48390_
                                                    (_find-deps48349_
                                                     _imports48381_
                                                     _deps48357_)))
                                               (begin
                                                 (table-set!
                                                  _ht48347_
                                                  _id48380_
                                                  _hd48378_)
                                                 (_find-deps48349_
                                                  _rest48377_
                                                  (cons _hd48378_
                                                        _xdeps48390_))))))))
                                 (if (##structure-instance-of?
                                      _hd48378_
                                      'gx#prelude-context::t)
                                     (let ((_id48392_
                                            (##structure-ref
                                             _hd48378_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48347_ _id48392_ '#f)
                                           (_find-deps48349_
                                            _rest48377_
                                            _deps48357_)
                                           (let ((_xdeps48394_
                                                  (_find-deps48349_
                                                   (##structure-ref
                                                    _hd48378_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48357_)))
                                             (if (table-ref
                                                  _ht48347_
                                                  _id48392_
                                                  '#f)
                                                 (_find-deps48349_
                                                  _rest48377_
                                                  _xdeps48394_)
                                                 (begin
                                                   (table-set!
                                                    _ht48347_
                                                    _id48392_
                                                    _hd48378_)
                                                   (_find-deps48349_
                                                    _rest48377_
                                                    (cons _hd48378_
                                                          _xdeps48394_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48378_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48378_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48349_
                                              (cons (##direct-structure-ref
                                                     _hd48378_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48377_)
                                              _deps48357_)
                                             (_find-deps48349_
                                              _rest48377_
                                              _deps48357_))
                                         (if (##structure-direct-instance-of?
                                              _hd48378_
                                              'gx#module-export::t)
                                             (_find-deps48349_
                                              (cons (##direct-structure-ref
                                                     _hd48378_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48377_)
                                              _deps48357_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48378_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48378_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48349_
                                                      (cons (##direct-structure-ref
                                                             _hd48378_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48377_)
                                                      _deps48357_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48378_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48396_
                                                                (_import-set-template48348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48378_
                         '0)))
                   (_find-deps48349_
                    (foldl1 cons _rest48377_ _xdeps48396_)
                    _deps48357_))
                 (_find-deps48349_ _rest48377_ _deps48357_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48378_)))))))))
                     (if (##pair? _rest4835848366_)
                         (let ((_hd4836348401_ (##car _rest4835848366_))
                               (_tl4836448403_ (##cdr _rest4835848366_)))
                           (let* ((_hd48406_ _hd4836348401_)
                                  (_rest48408_ _tl4836448403_))
                             (_K4836248398_ _rest48408_ _hd48406_)))
                         (_else4836048374_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48349_
                          (let ((_$e48351_
                                 (gx#core-context-prelude__% _ctx48345_)))
                            (if _$e48351_
                                ((lambda (_pre48354_)
                                   (cons _pre48354_
                                         (##structure-ref
                                          _ctx48345_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48351_)
                                (##structure-ref
                                 _ctx48345_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48284_)
      (let* ((_scm48286_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48284_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48288_ (gx#current-expander-module-library-path))
             (_dirs48297_
              (let ((_$e48290_ (gxc#current-compile-output-dir)))
                (if _$e48290_
                    ((lambda (_g4829248294_) (cons _g4829248294_ _dirs48288_))
                     _$e48290_)
                    _dirs48288_)))
             (_dirs48303_
              (map (lambda (_g4829848300_)
                     (path-expand '"static" _g4829848300_))
                   _dirs48297_)))
        (let _lp48306_ ((_rest48308_ _dirs48303_))
          (let* ((_rest4830948317_ _rest48308_)
                 (_else4831148325_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48284_ '1 gx#expander-context::t '#f)
                     _scm48286_)))
                 (_K4831348333_
                  (lambda (_rest48328_ _dir48329_)
                    (let ((_path48331_ (path-expand _scm48286_ _dir48329_)))
                      (if (file-exists? _path48331_)
                          _path48331_
                          (_lp48306_ _rest48328_))))))
            (if (##pair? _rest4830948317_)
                (let ((_hd4831448336_ (##car _rest4830948317_))
                      (_tl4831548338_ (##cdr _rest4830948317_)))
                  (let* ((_dir48341_ _hd4831448336_)
                         (_rest48343_ _tl4831548338_))
                    (_K4831348333_ _rest48343_ _dir48341_)))
                (_else4831148325_)))))))
  (define gxc#file-empty?
    (lambda (_path48282_)
      (zero? (file-info-size (file-info _path48282_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48279_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48279_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48279_)
               '#!void)
           (gxc#collect-bindings _ctx48279_)
           (gxc#compile-runtime-code _ctx48279_)
           (gxc#compile-meta-code _ctx48279_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48279_)
               '#!void)))
       gx#current-expander-context
       _ctx48279_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj48766 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj48766) __obj48766))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48277_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48277_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48231_)
      (letrec ((_compile148233_
                (lambda (_ctx48266_)
                  (let* ((_code48268_
                          (##structure-ref
                           _ctx48266_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48272_
                          (if (gxc#apply-find-runtime-code _code48268_)
                              (let ((_idstr48270_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48266_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48270_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48272_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48266_
                             _rt48272_)
                            (_generate-runtime-code48234_
                             _ctx48266_
                             _code48268_))
                          (if (gxc#current-compile-static)
                              (let ((_path48275_
                                     (gxc#compile-static-output-file
                                      _ctx48266_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48275_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48235_
                       _ctx48266_
                       _code48268_
                       _rt48272_)))))
               (_generate-runtime-code48234_
                (lambda (_ctx48250_ _code48251_)
                  (let* ((_lifts48253_ (box '()))
                         (_runtime-code48256_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48251_))
                           gx#current-expander-context
                           _ctx48250_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48253_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code48258_
                          (if (null? (unbox _lifts48253_))
                              _runtime-code48256_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48256_ '())
                                            (reverse (unbox _lifts48253_))))))
                         (_scm048260_
                          (gxc#compile-output-file _ctx48250_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48263_
                               (gxc#compile-static-output-file _ctx48250_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm048260_
                                _runtime-code48258_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48263_)
                                (delete-file _scms48263_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048260_
                             '" => "
                             _scms48263_)
                            (copy-file _scm048260_ _scms48263_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048260_))))
                        (gxc#compile-scm-file__0
                         _scm048260_
                         _runtime-code48258_)))))
               (_generate-loader-code48235_
                (lambda (_ctx48239_ _code48240_ _rt48241_)
                  (let* ((_loader-code48244_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48240_))
                           gx#current-expander-context
                           _ctx48239_))
                         (_loader-code48246_
                          (if _rt48241_
                              (cons 'begin
                                    (cons _loader-code48244_
                                          (cons (cons 'load-module
                                                      (cons _rt48241_ '()))
                                                '())))
                              _loader-code48244_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx48239_ 'rt '".scm")
                        _loader-code48246_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48237_
               (cons _ctx48231_ (gxc#lift-nested-modules _ctx48231_))))
          (for-each _compile148233_ _all-modules48237_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48133_)
      (letrec ((_compile-ssi48135_
                (lambda (_code48201_)
                  (let* ((_path48203_
                          (gxc#compile-output-file _ctx48133_ '#f '".ssi"))
                         (_prelude48214_
                          (let* ((_super48205_
                                  (##structure-ref
                                   _ctx48133_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48207_
                                  (##structure-ref
                                   _super48205_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48207_
                                ((lambda (_g4820948211_)
                                   (make-symbol '":" _g4820948211_))
                                 _$e48207_)
                                ':<root>)))
                         (_ns48216_
                          (##structure-ref
                           _ctx48133_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48218_
                          (symbol->string
                           (##structure-ref
                            _ctx48133_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48225_
                          (let ((_$e48220_ (string-rindex _idstr48218_ '#\/)))
                            (if _$e48220_
                                ((lambda (_x48223_)
                                   (string->symbol
                                    (substring _idstr48218_ '0 _x48223_)))
                                 _$e48220_)
                                '#f)))
                         (_rt48227_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48133_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48203_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48203_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48214_)
                           (if _pkg48225_
                               (displayln '"package:" '" " _pkg48225_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48216_)
                           (newline)
                           (pretty-print _code48201_)
                           (if _rt48227_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48227_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48136_
                (lambda (_part48141_)
                  (let* ((_part4814248155_ _part48141_)
                         (_E4814448159_
                          (lambda ()
                            (error '"No clause matching" _part4814248155_)))
                         (_K4814548170_
                          (lambda (_code48162_
                                   _n48163_
                                   _phi48164_
                                   _phi-ctx48165_)
                            (let ((_code48168_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48162_))
                                    gx#current-expander-context
                                    _phi-ctx48165_
                                    gx#current-expander-phi
                                    _phi48164_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx48133_
                                _n48163_
                                '".scm")
                               _code48168_
                               '#t)))))
                    (if (##pair? _part4814248155_)
                        (let ((_hd4814648173_ (##car _part4814248155_))
                              (_tl4814748175_ (##cdr _part4814248155_)))
                          (let ((_phi-ctx48178_ _hd4814648173_))
                            (if (##pair? _tl4814748175_)
                                (let ((_hd4814848180_ (##car _tl4814748175_))
                                      (_tl4814948182_ (##cdr _tl4814748175_)))
                                  (let ((_phi48185_ _hd4814848180_))
                                    (if (##pair? _tl4814948182_)
                                        (let ((_hd4815048187_
                                               (##car _tl4814948182_))
                                              (_tl4815148189_
                                               (##cdr _tl4814948182_)))
                                          (let ((_n48192_ _hd4815048187_))
                                            (if (##pair? _tl4815148189_)
                                                (let ((_hd4815248194_
                                                       (##car _tl4815148189_))
                                                      (_tl4815348196_
                                                       (##cdr _tl4815148189_)))
                                                  (let ((_code48199_
                                                         _hd4815248194_))
                                                    (if (##null? _tl4815348196_)
                                                        (_K4814548170_
                                                         _code48199_
                                                         _n48192_
                                                         _phi48185_
                                                         _phi-ctx48178_)
                                                        (_E4814448159_))))
                                                (_E4814448159_))))
                                        (_E4814448159_))))
                                (_E4814448159_))))
                        (_E4814448159_))))))
        (let ((_g48774_ (gxc#generate-meta-code _ctx48133_)))
          (begin
            (let ((_g48775_
                   (if (##values? _g48774_) (##vector-length _g48774_) 1)))
              (if (not (##fx= _g48775_ 2))
                  (error "Context expects 2 values" _g48775_)))
            (let ((_ssi-code48138_ (##vector-ref _g48774_ 0))
                  (_phi-code48139_ (##vector-ref _g48774_ 1)))
              (begin
                (_compile-ssi48135_ _ssi-code48138_)
                (for-each _compile-phi48136_ _phi-code48139_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48116_)
      (let* ((_path48118_ (gxc#compile-output-file _ctx48116_ '#f '".ssxi.ss"))
             (_code48120_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48116_ '11 gx#module-context::t '#f)))
             (_idstr48122_
              (symbol->string
               (##structure-ref _ctx48116_ '1 gx#expander-context::t '#f)))
             (_pkg48129_
              (let ((_$e48124_ (string-rindex _idstr48122_ '#\/)))
                (if _$e48124_
                    ((lambda (_x48127_)
                       (string->symbol (substring _idstr48122_ '0 _x48127_)))
                     _$e48124_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48118_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48118_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48129_ (displayln '"package: " _pkg48129_) '#!void)
               (newline)
               (pretty-print _code48120_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48109_)
      (let* ((_state48111_
              (let ((__obj48767 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj48767 _ctx48109_)
                  __obj48767)))
             (_ssi-code48113_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48109_ '11 gx#module-context::t '#f)
               _state48111_)))
        (values _ssi-code48113_ (gxc#meta-state-end! _state48111_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48102_)
      (let ((_lifts48104_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48107_ (gxc#apply-generate-runtime-phi _stx48102_)))
             (if (null? (unbox _lifts48104_))
                 _code48107_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48107_ '())
                               (reverse (unbox _lifts48104_)))))))
         gxc#current-compile-lift
         _lifts48104_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48098_)
      (let ((_modules48100_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48098_ '11 gx#module-context::t '#f)
           _modules48100_)
          (reverse (unbox _modules48100_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path48081_ _code48082_ _phi?48083_)
        (begin
          (gxc#verbose '"compile " _path48081_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48081_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?48083_
                                                    '((inlining-limit 100))
                                                    '())))))))
               (pretty-print _code48082_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path48081_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path48081_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path48089_ _code48090_)
          (let ((_phi?48092_ '#f))
            (gxc#compile-scm-file__% _path48089_ _code48090_ _phi?48092_))))
      (define gxc#compile-scm-file
        (lambda _g48777_
          (let ((_g48776_ (length _g48777_)))
            (cond ((##fx= _g48776_ 2) (apply gxc#compile-scm-file__0 _g48777_))
                  ((##fx= _g48776_ 3) (apply gxc#compile-scm-file__% _g48777_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g48777_))))))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e48069_ (gxc#current-compile-debug)))
        (if _$e48069_
            ((lambda (_debug48072_)
               (let ((_$e48074_ _debug48072_))
                 (if (eq? 'env _$e48074_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e48074_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e48077_ (eq? 'all _$e48074_)))
                               (if _$e48077_ _$e48077_ (eq? '#t _$e48074_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug48072_))))))
             _$e48069_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path48051_)
      (let* ((_gsc-args48058_
              (let ((_$e48053_ (gxc#current-compile-gsc-options)))
                (if _$e48053_
                    ((lambda (_opts48056_)
                       (foldr1 cons (cons _path48051_ '()) _opts48056_))
                     _$e48053_)
                    (cons _path48051_ '()))))
             (_gsc-args48060_
              (foldr1 cons _gsc-args48058_ (gxc#gsc-debug-options)))
             (_g48778_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args48060_)))
             (_proc48063_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args48060_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status48065_ (process-status _proc48063_)))
        (if (zero? _status48065_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path48051_
             _status48065_)))))
  (define gxc#compile-output-file
    (lambda (_ctx48023_ _n48024_ _ext48025_)
      (letrec ((_module-relative-path48027_
                (lambda (_ctx48049_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx48049_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory48028_
                (lambda (_ctx48045_)
                  (path-directory
                   (let ((_mpath48047_
                          (##structure-ref
                           _ctx48045_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath48047_)
                         _mpath48047_
                         (last _mpath48047_))))))
               (_section-string48029_
                (lambda (_n48043_)
                  (if (number? _n48043_)
                      (number->string _n48043_)
                      (if (symbol? _n48043_)
                          (symbol->string _n48043_)
                          (if (string? _n48043_)
                              _n48043_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n48043_))))))
               (_file-name48030_
                (lambda (_path48041_)
                  (if _n48024_
                      (string-append
                       _path48041_
                       '"__"
                       (_section-string48029_ _n48024_)
                       _ext48025_)
                      (string-append _path48041_ _ext48025_))))
               (_file-path48031_
                (lambda ()
                  (let ((_$e48036_ (gxc#current-compile-output-dir)))
                    (if _$e48036_
                        ((lambda (_outdir48039_)
                           (path-expand
                            (_file-name48030_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx48023_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir48039_))
                         _$e48036_)
                        (path-expand
                         (_file-name48030_
                          (_module-relative-path48027_ _ctx48023_))
                         (_module-source-directory48028_ _ctx48023_)))))))
        (let ((_path48033_ (_file-path48031_)))
          (begin
            (create-directory* (path-directory _path48033_))
            _path48033_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx48006_)
      (letrec ((_file-name48008_
                (lambda (_id48021_)
                  (string-append (gxc#static-module-name _id48021_) '".scm")))
               (_file-path48009_
                (lambda ()
                  (let* ((_file48014_
                          (_file-name48008_
                           (##structure-ref
                            _ctx48006_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e48016_ (gxc#current-compile-output-dir)))
                    (if _$e48016_
                        ((lambda (_outdir48019_)
                           (path-expand
                            _file48014_
                            (path-expand '"static" _outdir48019_)))
                         _$e48016_)
                        (path-expand _file48014_ '"static"))))))
        (let ((_path48011_ (_file-path48009_)))
          (begin
            (create-directory* (path-directory _path48011_))
            _path48011_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx47993_ _opts47994_)
      (let ((_$e47996_ (pgetq 'output-file: _opts47994_)))
        (if _$e47996_
            (values _$e47996_)
            (let* ((_mod-str47999_
                    (symbol->string
                     (##structure-ref
                      _ctx47993_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e48001_ (string-rindex _mod-str47999_ '#\/)))
              (if _$e48001_
                  ((lambda (_ix48004_)
                     (substring
                      _mod-str47999_
                      (fx+ _ix48004_ '1)
                      (string-length _mod-str47999_)))
                   _$e48001_)
                  _mod-str47999_))))))
  (define gxc#static-module-name
    (lambda (_idstr47986_)
      (if (string? _idstr47986_)
          (let* ((_str47988_ (gxc#module-id->path-string _idstr47986_))
                 (_strs47990_ (string-split _str47988_ '#\/)))
            (string-join _strs47990_ '"__"))
          (if (symbol? _idstr47986_)
              (gxc#static-module-name (symbol->string _idstr47986_))
              (error '"Bad module id" _idstr47986_))))))
