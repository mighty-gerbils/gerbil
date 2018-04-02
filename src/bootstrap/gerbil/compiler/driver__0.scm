(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath48920_ _opts48921_)
        (begin
          (if (string? _srcpath48920_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath48920_))
          (let ((_outdir48923_ (pgetq 'output-dir: _opts48921_))
                (_invoke-gsc?48924_ (pgetq 'invoke-gsc: _opts48921_))
                (_gsc-options48925_ (pgetq 'gsc-options: _opts48921_))
                (_keep-scm?48926_ (pgetq 'keep-scm: _opts48921_))
                (_verbosity48927_ (pgetq 'verbose: _opts48921_))
                (_optimize48928_ (pgetq 'optimize: _opts48921_))
                (_debug48929_ (pgetq 'debug: _opts48921_))
                (_gen-ssxi48930_ (pgetq 'generate-ssxi: _opts48921_))
                (_static48931_ (pgetq 'static: _opts48921_)))
            (begin
              (if _outdir48923_ (create-directory* _outdir48923_) '#!void)
              (if _optimize48928_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath48920_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath48920_))))
               gxc#current-compile-output-dir
               _outdir48923_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?48924_
               gxc#current-compile-gsc-options
               _gsc-options48925_
               gxc#current-compile-keep-scm
               _keep-scm?48926_
               gxc#current-compile-verbose
               _verbosity48927_
               gxc#current-compile-optimize
               _optimize48928_
               gxc#current-compile-debug
               _debug48929_
               gxc#current-compile-generate-ssxi
               _gen-ssxi48930_
               gxc#current-compile-static
               _static48931_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath48937_)
          (let ((_opts48939_ '()))
            (gxc#compile-file__% _srcpath48937_ _opts48939_))))
      (define gxc#compile-file
        (lambda _g48960_
          (let ((_g48959_ (length _g48960_)))
            (cond ((##fx= _g48959_ 1) (apply gxc#compile-file__0 _g48960_))
                  ((##fx= _g48959_ 2) (apply gxc#compile-file__% _g48960_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g48960_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath48906_ _opts48907_)
        (gxc#do-compile-exe
         _srcpath48906_
         _opts48907_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath48912_)
          (let ((_opts48914_ '()))
            (gxc#compile-exe-stub__% _srcpath48912_ _opts48914_))))
      (define gxc#compile-exe-stub
        (lambda _g48962_
          (let ((_g48961_ (length _g48962_)))
            (cond ((##fx= _g48961_ 1) (apply gxc#compile-exe-stub__0 _g48962_))
                  ((##fx= _g48961_ 2) (apply gxc#compile-exe-stub__% _g48962_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g48962_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath48892_ _opts48893_)
        (gxc#do-compile-exe
         _srcpath48892_
         _opts48893_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath48898_)
          (let ((_opts48900_ '()))
            (gxc#compile-static-exe__% _srcpath48898_ _opts48900_))))
      (define gxc#compile-static-exe
        (lambda _g48964_
          (let ((_g48963_ (length _g48964_)))
            (cond ((##fx= _g48963_ 1)
                   (apply gxc#compile-static-exe__0 _g48964_))
                  ((##fx= _g48963_ 2)
                   (apply gxc#compile-static-exe__% _g48964_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g48964_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath48880_ _opts48881_ _compile-e48882_)
      (begin
        (if (string? _srcpath48880_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath48880_))
        (let ((_outdir48884_ (pgetq 'output-dir: _opts48881_))
              (_invoke-gsc?48885_ (pgetq 'invoke-gsc: _opts48881_))
              (_gsc-options48886_ (pgetq 'gsc-options: _opts48881_))
              (_keep-scm?48887_ (pgetq 'keep-scm: _opts48881_))
              (_verbosity48888_ (pgetq 'verbose: _opts48881_)))
          (begin
            (if _outdir48884_ (create-directory* _outdir48884_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath48880_)
                 (_compile-e48882_
                  (gx#import-module__0 _srcpath48880_)
                  _opts48881_)))
             gxc#current-compile-output-dir
             _outdir48884_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?48885_
             gxc#current-compile-gsc-options
             _gsc-options48886_
             gxc#current-compile-keep-scm
             _keep-scm?48887_
             gxc#current-compile-verbose
             _verbosity48888_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx48846_ _opts48847_)
      (letrec ((_generate-stub48849_
                (lambda (_gx-init-stub48871_)
                  (let* ((_mod-str48873_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx48846_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt48875_ (string-append _mod-str48873_ '"__rt"))
                         (_mod-main48877_
                          (gxc#find-runtime-symbol _ctx48846_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub48871_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt48875_
                                         (cons (cons 'quote
                                                     (cons _mod-main48877_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub48850_
                (lambda (_output-scm48857_ _output-bin48858_)
                  (let* ((_init-stub48860_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args48862_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48858_
                                            (cons _output-scm48857_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm48857_
                       (lambda () (_generate-stub48849_ _init-stub48860_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48862_))
                            (let* ((_proc48866_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48862_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48868_
                                    (process-status _proc48866_)))
                              (if (zero? _status48868_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48857_
                                   _output-bin48858_
                                   _status48868_))))
                          '#!void))))))
        (let* ((_output-bin48852_
                (gxc#compile-exe-output-file _ctx48846_ _opts48847_))
               (_output-scm48854_ (string-append _output-bin48852_ '".scm")))
          (begin
            (_compile-stub48850_ _output-scm48854_ _output-bin48852_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48854_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx48707_ _opts48708_)
      (letrec ((_reset-declare48710_
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
               (_user-declare48711_
                (lambda ()
                  (let* ((_gsc-opts48789_ (pgetq 'gsc-options: _opts48708_))
                         (_gsc-prelude48791_
                          (if _gsc-opts48789_
                              (member '"-prelude" _gsc-opts48789_)
                              '#f))
                         (_gsc-prelude48793_
                          (if _gsc-prelude48791_
                              (read (open-input-string
                                     (cadr _gsc-prelude48791_)))
                              '#f)))
                    (let _lift48796_ ((_expr48798_ _gsc-prelude48793_))
                      (let* ((_expr4879948811_ _expr48798_)
                             (_else4880248819_ (lambda () '#f)))
                        (let ((_K4880748839_ (lambda () _expr48798_))
                              (_K4880448825_
                               (lambda (_exprs48823_)
                                 (ormap1 _lift48796_ _exprs48823_))))
                          (if (##pair? _expr4879948811_)
                              (let ((_hd4880848842_ (##car _expr4879948811_)))
                                (if (##eq? _hd4880848842_ 'declare)
                                    (_K4880748839_)
                                    (let ((_tl4880648830_
                                           (##cdr _expr4879948811_)))
                                      (if (##eq? _hd4880848842_ 'begin)
                                          (let ((_exprs48833_ _tl4880648830_))
                                            (_K4880448825_ _exprs48833_))
                                          (_else4880248819_)))))
                              (_else4880248819_))))))))
               (_generate-stub48712_
                (lambda (_deps48780_)
                  (let ((_mod-main48782_
                         (gxc#find-runtime-symbol _ctx48707_ 'main))
                        (_reset-decl48783_ (_reset-declare48710_))
                        (_user-decl48784_ (_user-declare48711_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep48786_)
                         (begin
                           (write (cons 'include (cons _dep48786_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl48783_)
                           (if _user-decl48784_
                               (write _user-decl48784_)
                               '#!void)
                           (newline)))
                       _deps48780_)
                      (write (cons 'apply
                                   (cons _mod-main48782_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include48713_
                (lambda (_gsc-opts48763_ _home48764_)
                  (letrec* ((_static-dir48766_
                             (path-expand '"lib/static" _home48764_))
                            (_user-static-dir48767_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags48768_
                             (string-append
                              '"-I "
                              _static-dir48766_
                              '" -I "
                              _user-static-dir48767_)))
                    (let ((_$e48770_ (member '"-cc-options" _gsc-opts48763_)))
                      (if _$e48770_
                          ((lambda (_rest48773_)
                             (let* ((_cell48775_ (cdr _rest48773_))
                                    (_opt48777_ (car _cell48775_)))
                               (begin
                                 (set-car!
                                  _cell48775_
                                  (string-append
                                   _opt48777_
                                   '" "
                                   _cppflags48768_))
                                 _gsc-opts48763_)))
                           _$e48770_)
                          (cons '"-cc-options"
                                (cons _cppflags48768_ _gsc-opts48763_)))))))
               (_compile-stub48714_
                (lambda (_output-scm48721_ _output-bin48722_)
                  (let* ((_gerbil-home48724_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc048726_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home48724_))
                         (_gx-gambc-init48728_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home48724_))
                         (_gx-gambc-macros48730_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home48724_))
                         (_include-gx-gambc-macros48732_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros48730_
                           '"\")"))
                         (_bin-scm48734_
                          (gxc#find-static-module-file _ctx48707_))
                         (_deps48736_
                          (gxc#find-runtime-module-deps _ctx48707_))
                         (_deps48738_
                          (map gxc#find-static-module-file _deps48736_))
                         (_deps48743_
                          (filter (lambda (_$obj48740_)
                                    (not (gxc#file-empty? _$obj48740_)))
                                  _deps48738_))
                         (_gsc-opts48748_
                          (let ((_$e48745_ (pgetq 'gsc-options: _opts48708_)))
                            (if _$e48745_ _$e48745_ '())))
                         (_gsc-opts48750_
                          (_static-include48713_
                           _gsc-opts48748_
                           _gerbil-home48724_))
                         (_gsc-gx-macros48752_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros48732_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros48732_
                                          '()))))
                         (_gsc-args48754_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin48722_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm48721_ '())
                            _gsc-gx-macros48752_)
                    _gsc-opts48750_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options__0)))))))
                    (begin
                      (with-output-to-file
                       _output-scm48721_
                       (lambda ()
                         (_generate-stub48712_
                          (cons _gx-gambc048726_
                                (cons _gx-gambc-init48728_
                                      (foldr1 cons
                                              (cons _bin-scm48734_ '())
                                              _deps48743_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args48754_))
                            (let* ((_proc48758_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args48754_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status48760_
                                    (process-status _proc48758_)))
                              (if (zero? _status48760_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm48721_
                                   _output-bin48722_
                                   _status48760_))))
                          '#!void))))))
        (let* ((_output-bin48716_
                (gxc#compile-exe-output-file _ctx48707_ _opts48708_))
               (_output-scm48718_ (string-append _output-bin48716_ '".scm")))
          (begin
            (_compile-stub48714_ _output-scm48718_ _output-bin48716_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm48718_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx48657_ _id48658_)
      (let ((_$e48704_
             (find (lambda (_e4865948661_)
                     (let* ((_g4866348673_ _e4865948661_)
                            (_else4866548681_ (lambda () '#f))
                            (_K4866748685_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g4866348673_
                            'gx#module-export::t)
                           (let* ((_e4866848688_
                                   (##vector-ref _g4866348673_ '1))
                                  (_e4866948691_
                                   (##vector-ref _g4866348673_ '2))
                                  (_e4867048694_
                                   (##vector-ref _g4866348673_ '3)))
                             (if (##eq? _e4867048694_ '0)
                                 (let ((_e4867148697_
                                        (##vector-ref _g4866348673_ '4)))
                                   (if ((lambda (_g4869948701_)
                                          (eq? _g4869948701_ _id48658_))
                                        _e4867148697_)
                                       (_K4866748685_)
                                       (_else4866548681_)))
                                 (_else4866548681_)))
                           (_else4866548681_))))
                   (##structure-ref _ctx48657_ '9 gx#module-context::t '#f))))
        (if _$e48704_ (gx#core-resolve-module-export _$e48704_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx48649_ _id48650_)
      (let ((_$e48652_ (gxc#find-export-binding _ctx48649_ _id48650_)))
        (if _$e48652_
            ((lambda (_bind48655_)
               (begin
                 (if (##structure-instance-of?
                      _bind48655_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id48650_))
                 (##structure-ref _bind48655_ '1 gx#binding::t '#f)))
             _$e48652_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx48649_ '1 gx#expander-context::t '#f)
             _id48650_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx48536_)
      (letrec* ((_ht48538_ (make-hash-table-eq))
                (_import-set-template48539_
                 (lambda (_in48601_ _phi48602_)
                   (let ((_iphi48604_
                          (fx+ _phi48602_
                               (##direct-structure-ref
                                _in48601_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports48605_
                          (##structure-ref
                           (##direct-structure-ref
                            _in48601_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp48607_ ((_rest48609_ _imports48605_)
                                     (_r48610_ '()))
                       (let* ((_rest4861148619_ _rest48609_)
                              (_else4861348627_ (lambda () _r48610_))
                              (_K4861548637_
                               (lambda (_rest48630_ _in48631_)
                                 (if (##structure-instance-of?
                                      _in48631_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi48604_)
                                         (_lp48607_
                                          _rest48630_
                                          (cons _in48631_ _r48610_))
                                         (_lp48607_ _rest48630_ _r48610_))
                                     (if (##structure-direct-instance-of?
                                          _in48631_
                                          'gx#module-import::t)
                                         (let ((_iphi48633_
                                                (fx+ _phi48602_
                                                     (##direct-structure-ref
                                                      _in48631_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi48633_)
                                               (_lp48607_
                                                _rest48630_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in48631_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r48610_))
                                               (_lp48607_
                                                _rest48630_
                                                _r48610_)))
                                         (if (##structure-direct-instance-of?
                                              _in48631_
                                              'gx#import-set::t)
                                             (let ((_xphi48635_
                                                    (fx+ _iphi48604_
                                                         (##direct-structure-ref
                                                          _in48631_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi48635_)
                                                   (_lp48607_
                                                    _rest48630_
                                                    (cons (##direct-structure-ref
                                                           _in48631_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r48610_))
                                                   (if (fxpositive?
                                                        _xphi48635_)
                                                       (_lp48607_
                                                        _rest48630_
                                                        (foldl1 cons
                                                                _r48610_
                                                                (_import-set-template48539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in48631_
                         _iphi48604_)))
               (_lp48607_ _rest48630_ _r48610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp48607_
                                              _rest48630_
                                              _r48610_)))))))
                         (if (##pair? _rest4861148619_)
                             (let ((_hd4861648640_ (##car _rest4861148619_))
                                   (_tl4861748642_ (##cdr _rest4861148619_)))
                               (let* ((_in48645_ _hd4861648640_)
                                      (_rest48647_ _tl4861748642_))
                                 (_K4861548637_ _rest48647_ _in48645_)))
                             (_else4861348627_)))))))
                (_find-deps48540_
                 (lambda (_rest48547_ _deps48548_)
                   (let* ((_rest4854948557_ _rest48547_)
                          (_else4855148565_ (lambda () _deps48548_))
                          (_K4855348589_
                           (lambda (_rest48568_ _hd48569_)
                             (if (##structure-instance-of?
                                  _hd48569_
                                  'gx#module-context::t)
                                 (let ((_id48571_
                                        (##structure-ref
                                         _hd48569_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports48572_
                                        (##structure-ref
                                         _hd48569_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht48538_ _id48571_ '#f)
                                       (_find-deps48540_
                                        _rest48568_
                                        _deps48548_)
                                       (let ((_$e48574_
                                              (gx#core-context-prelude__%
                                               _hd48569_)))
                                         (if _$e48574_
                                             ((lambda (_pre48577_)
                                                (let ((_xdeps48579_
                                                       (_find-deps48540_
                                                        (cons _pre48577_
                                                              _imports48572_)
                                                        _deps48548_)))
                                                  (begin
                                                    (table-set!
                                                     _ht48538_
                                                     _id48571_
                                                     _hd48569_)
                                                    (_find-deps48540_
                                                     _rest48568_
                                                     (cons _hd48569_
                                                           _xdeps48579_)))))
                                              _$e48574_)
                                             (let ((_xdeps48581_
                                                    (_find-deps48540_
                                                     _imports48572_
                                                     _deps48548_)))
                                               (begin
                                                 (table-set!
                                                  _ht48538_
                                                  _id48571_
                                                  _hd48569_)
                                                 (_find-deps48540_
                                                  _rest48568_
                                                  (cons _hd48569_
                                                        _xdeps48581_))))))))
                                 (if (##structure-instance-of?
                                      _hd48569_
                                      'gx#prelude-context::t)
                                     (let ((_id48583_
                                            (##structure-ref
                                             _hd48569_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht48538_ _id48583_ '#f)
                                           (_find-deps48540_
                                            _rest48568_
                                            _deps48548_)
                                           (let ((_xdeps48585_
                                                  (_find-deps48540_
                                                   (##structure-ref
                                                    _hd48569_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps48548_)))
                                             (if (table-ref
                                                  _ht48538_
                                                  _id48583_
                                                  '#f)
                                                 (_find-deps48540_
                                                  _rest48568_
                                                  _xdeps48585_)
                                                 (begin
                                                   (table-set!
                                                    _ht48538_
                                                    _id48583_
                                                    _hd48569_)
                                                   (_find-deps48540_
                                                    _rest48568_
                                                    (cons _hd48569_
                                                          _xdeps48585_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd48569_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd48569_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps48540_
                                              (cons (##direct-structure-ref
                                                     _hd48569_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest48568_)
                                              _deps48548_)
                                             (_find-deps48540_
                                              _rest48568_
                                              _deps48548_))
                                         (if (##structure-direct-instance-of?
                                              _hd48569_
                                              'gx#module-export::t)
                                             (_find-deps48540_
                                              (cons (##direct-structure-ref
                                                     _hd48569_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest48568_)
                                              _deps48548_)
                                             (if (##structure-direct-instance-of?
                                                  _hd48569_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd48569_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps48540_
                                                      (cons (##direct-structure-ref
                                                             _hd48569_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest48568_)
                                                      _deps48548_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd48569_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps48587_
                                                                (_import-set-template48539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd48569_
                         '0)))
                   (_find-deps48540_
                    (foldl1 cons _rest48568_ _xdeps48587_)
                    _deps48548_))
                 (_find-deps48540_ _rest48568_ _deps48548_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd48569_)))))))))
                     (if (##pair? _rest4854948557_)
                         (let ((_hd4855448592_ (##car _rest4854948557_))
                               (_tl4855548594_ (##cdr _rest4854948557_)))
                           (let* ((_hd48597_ _hd4855448592_)
                                  (_rest48599_ _tl4855548594_))
                             (_K4855348589_ _rest48599_ _hd48597_)))
                         (_else4855148565_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps48540_
                          (let ((_$e48542_
                                 (gx#core-context-prelude__% _ctx48536_)))
                            (if _$e48542_
                                ((lambda (_pre48545_)
                                   (cons _pre48545_
                                         (##structure-ref
                                          _ctx48536_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e48542_)
                                (##structure-ref
                                 _ctx48536_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx48475_)
      (let* ((_scm48477_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx48475_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs48479_ (gx#current-expander-module-library-path))
             (_dirs48488_
              (let ((_$e48481_ (gxc#current-compile-output-dir)))
                (if _$e48481_
                    ((lambda (_g4848348485_) (cons _g4848348485_ _dirs48479_))
                     _$e48481_)
                    _dirs48479_)))
             (_dirs48494_
              (map (lambda (_g4848948491_)
                     (path-expand '"static" _g4848948491_))
                   _dirs48488_)))
        (let _lp48497_ ((_rest48499_ _dirs48494_))
          (let* ((_rest4850048508_ _rest48499_)
                 (_else4850248516_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx48475_ '1 gx#expander-context::t '#f)
                     _scm48477_)))
                 (_K4850448524_
                  (lambda (_rest48519_ _dir48520_)
                    (let ((_path48522_ (path-expand _scm48477_ _dir48520_)))
                      (if (file-exists? _path48522_)
                          _path48522_
                          (_lp48497_ _rest48519_))))))
            (if (##pair? _rest4850048508_)
                (let ((_hd4850548527_ (##car _rest4850048508_))
                      (_tl4850648529_ (##cdr _rest4850048508_)))
                  (let* ((_dir48532_ _hd4850548527_)
                         (_rest48534_ _tl4850648529_))
                    (_K4850448524_ _rest48534_ _dir48532_)))
                (_else4850248516_)))))))
  (define gxc#file-empty?
    (lambda (_path48473_)
      (zero? (file-info-size (file-info _path48473_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx48470_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx48470_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx48470_)
               '#!void)
           (gxc#collect-bindings _ctx48470_)
           (gxc#compile-runtime-code _ctx48470_)
           (gxc#compile-meta-code _ctx48470_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx48470_)
               '#!void)))
       gx#current-expander-context
       _ctx48470_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj48957 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj48957) __obj48957))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx48468_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx48468_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx48422_)
      (letrec ((_compile148424_
                (lambda (_ctx48457_)
                  (let* ((_code48459_
                          (##structure-ref
                           _ctx48457_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt48463_
                          (if (gxc#apply-find-runtime-code _code48459_)
                              (let ((_idstr48461_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx48457_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr48461_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt48463_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx48457_
                             _rt48463_)
                            (_generate-runtime-code48425_
                             _ctx48457_
                             _code48459_))
                          (if (gxc#current-compile-static)
                              (let ((_path48466_
                                     (gxc#compile-static-output-file
                                      _ctx48457_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path48466_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code48426_
                       _ctx48457_
                       _code48459_
                       _rt48463_)))))
               (_generate-runtime-code48425_
                (lambda (_ctx48441_ _code48442_)
                  (let* ((_lifts48444_ (box '()))
                         (_runtime-code48447_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code48442_))
                           gx#current-expander-context
                           _ctx48441_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts48444_
                           gxc#current-compile-marks
                           (make-hash-table-eq)
                           gxc#current-compile-identifiers
                           (gxc#make-bound-identifier-table)))
                         (_runtime-code48449_
                          (if (null? (unbox _lifts48444_))
                              _runtime-code48447_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code48447_ '())
                                            (reverse (unbox _lifts48444_))))))
                         (_scm048451_
                          (gxc#compile-output-file _ctx48441_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms48454_
                               (gxc#compile-static-output-file _ctx48441_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _scm048451_
                                _runtime-code48449_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms48454_)
                                (delete-file _scms48454_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm048451_
                             '" => "
                             _scms48454_)
                            (copy-file _scm048451_ _scms48454_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm048451_))))
                        (gxc#compile-scm-file__0
                         _scm048451_
                         _runtime-code48449_)))))
               (_generate-loader-code48426_
                (lambda (_ctx48430_ _code48431_ _rt48432_)
                  (let* ((_loader-code48435_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code48431_))
                           gx#current-expander-context
                           _ctx48430_))
                         (_loader-code48437_
                          (if _rt48432_
                              (cons 'begin
                                    (cons _loader-code48435_
                                          (cons (cons 'load-module
                                                      (cons _rt48432_ '()))
                                                '())))
                              _loader-code48435_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file__0
                        (gxc#compile-output-file _ctx48430_ 'rt '".scm")
                        _loader-code48437_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules48428_
               (cons _ctx48422_ (gxc#lift-nested-modules _ctx48422_))))
          (for-each _compile148424_ _all-modules48428_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx48324_)
      (letrec ((_compile-ssi48326_
                (lambda (_code48392_)
                  (let* ((_path48394_
                          (gxc#compile-output-file _ctx48324_ '#f '".ssi"))
                         (_prelude48405_
                          (let* ((_super48396_
                                  (##structure-ref
                                   _ctx48324_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e48398_
                                  (##structure-ref
                                   _super48396_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e48398_
                                ((lambda (_g4840048402_)
                                   (make-symbol '":" _g4840048402_))
                                 _$e48398_)
                                ':<root>)))
                         (_ns48407_
                          (##structure-ref
                           _ctx48324_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr48409_
                          (symbol->string
                           (##structure-ref
                            _ctx48324_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg48416_
                          (let ((_$e48411_ (string-rindex _idstr48409_ '#\/)))
                            (if _$e48411_
                                ((lambda (_x48414_)
                                   (string->symbol
                                    (substring _idstr48409_ '0 _x48414_)))
                                 _$e48411_)
                                '#f)))
                         (_rt48418_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx48324_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path48394_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path48394_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude48405_)
                           (if _pkg48416_
                               (displayln '"package:" '" " _pkg48416_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns48407_)
                           (newline)
                           (pretty-print _code48392_)
                           (if _rt48418_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt48418_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi48327_
                (lambda (_part48332_)
                  (let* ((_part4833348346_ _part48332_)
                         (_E4833548350_
                          (lambda ()
                            (error '"No clause matching" _part4833348346_)))
                         (_K4833648361_
                          (lambda (_code48353_
                                   _n48354_
                                   _phi48355_
                                   _phi-ctx48356_)
                            (let ((_code48359_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code48353_))
                                    gx#current-expander-context
                                    _phi-ctx48356_
                                    gx#current-expander-phi
                                    _phi48355_)))
                              (gxc#compile-scm-file__%
                               (gxc#compile-output-file
                                _ctx48324_
                                _n48354_
                                '".scm")
                               _code48359_
                               '#t)))))
                    (if (##pair? _part4833348346_)
                        (let ((_hd4833748364_ (##car _part4833348346_))
                              (_tl4833848366_ (##cdr _part4833348346_)))
                          (let ((_phi-ctx48369_ _hd4833748364_))
                            (if (##pair? _tl4833848366_)
                                (let ((_hd4833948371_ (##car _tl4833848366_))
                                      (_tl4834048373_ (##cdr _tl4833848366_)))
                                  (let ((_phi48376_ _hd4833948371_))
                                    (if (##pair? _tl4834048373_)
                                        (let ((_hd4834148378_
                                               (##car _tl4834048373_))
                                              (_tl4834248380_
                                               (##cdr _tl4834048373_)))
                                          (let ((_n48383_ _hd4834148378_))
                                            (if (##pair? _tl4834248380_)
                                                (let ((_hd4834348385_
                                                       (##car _tl4834248380_))
                                                      (_tl4834448387_
                                                       (##cdr _tl4834248380_)))
                                                  (let ((_code48390_
                                                         _hd4834348385_))
                                                    (if (##null? _tl4834448387_)
                                                        (_K4833648361_
                                                         _code48390_
                                                         _n48383_
                                                         _phi48376_
                                                         _phi-ctx48369_)
                                                        (_E4833548350_))))
                                                (_E4833548350_))))
                                        (_E4833548350_))))
                                (_E4833548350_))))
                        (_E4833548350_))))))
        (let ((_g48965_ (gxc#generate-meta-code _ctx48324_)))
          (begin
            (let ((_g48966_
                   (if (##values? _g48965_) (##vector-length _g48965_) 1)))
              (if (not (##fx= _g48966_ 2))
                  (error "Context expects 2 values" _g48966_)))
            (let ((_ssi-code48329_ (##vector-ref _g48965_ 0))
                  (_phi-code48330_ (##vector-ref _g48965_ 1)))
              (begin
                (_compile-ssi48326_ _ssi-code48329_)
                (for-each _compile-phi48327_ _phi-code48330_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx48307_)
      (let* ((_path48309_ (gxc#compile-output-file _ctx48307_ '#f '".ssxi.ss"))
             (_code48311_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx48307_ '11 gx#module-context::t '#f)))
             (_idstr48313_
              (symbol->string
               (##structure-ref _ctx48307_ '1 gx#expander-context::t '#f)))
             (_pkg48320_
              (let ((_$e48315_ (string-rindex _idstr48313_ '#\/)))
                (if _$e48315_
                    ((lambda (_x48318_)
                       (string->symbol (substring _idstr48313_ '0 _x48318_)))
                     _$e48315_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path48309_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48309_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg48320_ (displayln '"package: " _pkg48320_) '#!void)
               (newline)
               (pretty-print _code48311_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx48300_)
      (let* ((_state48302_
              (let ((__obj48958 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj48958 _ctx48300_)
                  __obj48958)))
             (_ssi-code48304_
              (gxc#apply-generate-meta
               (##structure-ref _ctx48300_ '11 gx#module-context::t '#f)
               _state48302_)))
        (values _ssi-code48304_ (gxc#meta-state-end! _state48302_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx48293_)
      (let ((_lifts48295_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code48298_ (gxc#apply-generate-runtime-phi _stx48293_)))
             (if (null? (unbox _lifts48295_))
                 _code48298_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code48298_ '())
                               (reverse (unbox _lifts48295_)))))))
         gxc#current-compile-lift
         _lifts48295_
         gxc#current-compile-marks
         (make-hash-table-eq)
         gxc#current-compile-identifiers
         (gxc#make-bound-identifier-table)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx48289_)
      (let ((_modules48291_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx48289_ '11 gx#module-context::t '#f)
           _modules48291_)
          (reverse (unbox _modules48291_))))))
  (begin
    (define gxc#compile-scm-file__%
      (lambda (_path48272_ _code48273_ _phi?48274_)
        (begin
          (gxc#verbose '"compile " _path48272_)
          (with-output-to-file
           (cons 'path:
                 (cons _path48272_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (pretty-print
                (cons 'declare
                      (cons (cons 'block '())
                            (cons (cons 'standard-bindings '())
                                  (cons (cons 'extended-bindings '())
                                        (foldr1 cons
                                                '()
                                                (if _phi?48274_
                                                    '((inlining-limit 200))
                                                    '())))))))
               (pretty-print _code48273_))))
          (if (gxc#current-compile-invoke-gsc)
              (gxc#gsc-compile-file _path48272_ _phi?48274_)
              '#!void)
          (if (gxc#current-compile-keep-scm)
              '#!void
              (delete-file _path48272_)))))
    (begin
      (define gxc#compile-scm-file__0
        (lambda (_path48280_ _code48281_)
          (let ((_phi?48283_ '#f))
            (gxc#compile-scm-file__% _path48280_ _code48281_ _phi?48283_))))
      (define gxc#compile-scm-file
        (lambda _g48968_
          (let ((_g48967_ (length _g48968_)))
            (cond ((##fx= _g48967_ 2) (apply gxc#compile-scm-file__0 _g48968_))
                  ((##fx= _g48967_ 3) (apply gxc#compile-scm-file__% _g48968_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-scm-file
                    _g48968_))))))))
  (begin
    (define gxc#gsc-debug-options__%
      (lambda (_phi?48179_)
        (let ((_$e48252_ (gxc#current-compile-debug)))
          (if _$e48252_
              ((lambda (_debug48255_)
                 (let ((_$e48257_ _debug48255_))
                   (if (eq? 'env _$e48257_)
                       (if _phi?48179_ '() (cons '"-debug-environments" '()))
                       (if (eq? 'env/phi _$e48257_)
                           (cons '"-debug-environments" '())
                           (if (eq? 'src _$e48257_)
                               (if _phi?48179_
                                   '()
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '())))
                               (if (eq? 'src/phi _$e48257_)
                                   (cons '"-debug-environments"
                                         (cons '"-debug-source" '()))
                                   (if (eq? 'all _$e48257_)
                                       (if _phi?48179_
                                           '()
                                           (cons '"-debug" '()))
                                       (if (let ((_$e48260_
                                                  (eq? 'all/phi _$e48257_)))
                                             (if _$e48260_
                                                 _$e48260_
                                                 (eq? '#t _$e48257_)))
                                           (cons '"-debug" '())
                                           (gxc#raise-compile-error
                                            '"unknown debug option"
                                            _debug48255_)))))))))
               _$e48252_)
              '()))))
    (begin
      (define gxc#gsc-debug-options__0
        (lambda ()
          (let ((_phi?48267_ '#f)) (gxc#gsc-debug-options__% _phi?48267_))))
      (define gxc#gsc-debug-options
        (lambda _g48970_
          (let ((_g48969_ (length _g48970_)))
            (cond ((##fx= _g48969_ 0)
                   (apply gxc#gsc-debug-options__0 _g48970_))
                  ((##fx= _g48969_ 1)
                   (apply gxc#gsc-debug-options__% _g48970_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#gsc-debug-options
                    _g48970_))))))))
  (define gxc#gsc-compile-file
    (lambda (_path48160_ _phi?48161_)
      (let* ((_gsc-args48168_
              (let ((_$e48163_ (gxc#current-compile-gsc-options)))
                (if _$e48163_
                    ((lambda (_opts48166_)
                       (foldr1 cons (cons _path48160_ '()) _opts48166_))
                     _$e48163_)
                    (cons _path48160_ '()))))
             (_gsc-args48170_
              (foldr1 cons
                      _gsc-args48168_
                      (gxc#gsc-debug-options__% _phi?48161_)))
             (_g48971_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args48170_)))
             (_proc48173_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args48170_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status48175_ (process-status _proc48173_)))
        (if (zero? _status48175_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path48160_
             _status48175_)))))
  (define gxc#compile-output-file
    (lambda (_ctx48132_ _n48133_ _ext48134_)
      (letrec ((_module-relative-path48136_
                (lambda (_ctx48158_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx48158_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory48137_
                (lambda (_ctx48154_)
                  (path-directory
                   (let ((_mpath48156_
                          (##structure-ref
                           _ctx48154_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath48156_)
                         _mpath48156_
                         (last _mpath48156_))))))
               (_section-string48138_
                (lambda (_n48152_)
                  (if (number? _n48152_)
                      (number->string _n48152_)
                      (if (symbol? _n48152_)
                          (symbol->string _n48152_)
                          (if (string? _n48152_)
                              _n48152_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n48152_))))))
               (_file-name48139_
                (lambda (_path48150_)
                  (if _n48133_
                      (string-append
                       _path48150_
                       '"__"
                       (_section-string48138_ _n48133_)
                       _ext48134_)
                      (string-append _path48150_ _ext48134_))))
               (_file-path48140_
                (lambda ()
                  (let ((_$e48145_ (gxc#current-compile-output-dir)))
                    (if _$e48145_
                        ((lambda (_outdir48148_)
                           (path-expand
                            (_file-name48139_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx48132_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir48148_))
                         _$e48145_)
                        (path-expand
                         (_file-name48139_
                          (_module-relative-path48136_ _ctx48132_))
                         (_module-source-directory48137_ _ctx48132_)))))))
        (let ((_path48142_ (_file-path48140_)))
          (begin
            (create-directory* (path-directory _path48142_))
            _path48142_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx48115_)
      (letrec ((_file-name48117_
                (lambda (_id48130_)
                  (string-append (gxc#static-module-name _id48130_) '".scm")))
               (_file-path48118_
                (lambda ()
                  (let* ((_file48123_
                          (_file-name48117_
                           (##structure-ref
                            _ctx48115_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e48125_ (gxc#current-compile-output-dir)))
                    (if _$e48125_
                        ((lambda (_outdir48128_)
                           (path-expand
                            _file48123_
                            (path-expand '"static" _outdir48128_)))
                         _$e48125_)
                        (path-expand _file48123_ '"static"))))))
        (let ((_path48120_ (_file-path48118_)))
          (begin
            (create-directory* (path-directory _path48120_))
            _path48120_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx48102_ _opts48103_)
      (let ((_$e48105_ (pgetq 'output-file: _opts48103_)))
        (if _$e48105_
            (values _$e48105_)
            (let* ((_mod-str48108_
                    (symbol->string
                     (##structure-ref
                      _ctx48102_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e48110_ (string-rindex _mod-str48108_ '#\/)))
              (if _$e48110_
                  ((lambda (_ix48113_)
                     (substring
                      _mod-str48108_
                      (fx+ _ix48113_ '1)
                      (string-length _mod-str48108_)))
                   _$e48110_)
                  _mod-str48108_))))))
  (define gxc#static-module-name
    (lambda (_idstr48095_)
      (if (string? _idstr48095_)
          (let* ((_str48097_ (gxc#module-id->path-string _idstr48095_))
                 (_strs48099_ (string-split _str48097_ '#\/)))
            (string-join _strs48099_ '"__"))
          (if (symbol? _idstr48095_)
              (gxc#static-module-name (symbol->string _idstr48095_))
              (error '"Bad module id" _idstr48095_))))))
