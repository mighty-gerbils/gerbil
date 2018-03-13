(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__%
      (lambda (_srcpath28801_ _opts28802_)
        (begin
          (if (string? _srcpath28801_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath28801_))
          (let ((_outdir28804_ (pgetq 'output-dir: _opts28802_))
                (_invoke-gsc?28805_ (pgetq 'invoke-gsc: _opts28802_))
                (_gsc-options28806_ (pgetq 'gsc-options: _opts28802_))
                (_keep-scm?28807_ (pgetq 'keep-scm: _opts28802_))
                (_verbosity28808_ (pgetq 'verbose: _opts28802_))
                (_optimize28809_ (pgetq 'optimize: _opts28802_))
                (_debug28810_ (pgetq 'debug: _opts28802_))
                (_gen-ssxi28811_ (pgetq 'generate-ssxi: _opts28802_))
                (_static28812_ (pgetq 'static: _opts28802_)))
            (begin
              (if _outdir28804_ (create-directory* _outdir28804_) '#!void)
              (if _optimize28809_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath28801_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath28801_))))
               gxc#current-compile-output-dir
               _outdir28804_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?28805_
               gxc#current-compile-gsc-options
               _gsc-options28806_
               gxc#current-compile-keep-scm
               _keep-scm?28807_
               gxc#current-compile-verbose
               _verbosity28808_
               gxc#current-compile-optimize
               _optimize28809_
               gxc#current-compile-debug
               _debug28810_
               gxc#current-compile-generate-ssxi
               _gen-ssxi28811_
               gxc#current-compile-static
               _static28812_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath28818_)
          (let ((_opts28820_ '()))
            (gxc#compile-file__% _srcpath28818_ _opts28820_))))
      (define gxc#compile-file
        (lambda _g28828_
          (let ((_g28827_ (length _g28828_)))
            (cond ((##fx= _g28827_ 1) (apply gxc#compile-file__0 _g28828_))
                  ((##fx= _g28827_ 2) (apply gxc#compile-file__% _g28828_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g28828_))))))))
  (begin
    (define gxc#compile-exe-stub__%
      (lambda (_srcpath28787_ _opts28788_)
        (gxc#do-compile-exe
         _srcpath28787_
         _opts28788_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath28793_)
          (let ((_opts28795_ '()))
            (gxc#compile-exe-stub__% _srcpath28793_ _opts28795_))))
      (define gxc#compile-exe-stub
        (lambda _g28830_
          (let ((_g28829_ (length _g28830_)))
            (cond ((##fx= _g28829_ 1) (apply gxc#compile-exe-stub__0 _g28830_))
                  ((##fx= _g28829_ 2) (apply gxc#compile-exe-stub__% _g28830_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g28830_))))))))
  (begin
    (define gxc#compile-static-exe__%
      (lambda (_srcpath28773_ _opts28774_)
        (gxc#do-compile-exe
         _srcpath28773_
         _opts28774_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath28779_)
          (let ((_opts28781_ '()))
            (gxc#compile-static-exe__% _srcpath28779_ _opts28781_))))
      (define gxc#compile-static-exe
        (lambda _g28832_
          (let ((_g28831_ (length _g28832_)))
            (cond ((##fx= _g28831_ 1)
                   (apply gxc#compile-static-exe__0 _g28832_))
                  ((##fx= _g28831_ 2)
                   (apply gxc#compile-static-exe__% _g28832_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g28832_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath28761_ _opts28762_ _compile-e28763_)
      (begin
        (if (string? _srcpath28761_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath28761_))
        (let ((_outdir28765_ (pgetq 'output-dir: _opts28762_))
              (_invoke-gsc?28766_ (pgetq 'invoke-gsc: _opts28762_))
              (_gsc-options28767_ (pgetq 'gsc-options: _opts28762_))
              (_keep-scm?28768_ (pgetq 'keep-scm: _opts28762_))
              (_verbosity28769_ (pgetq 'verbose: _opts28762_)))
          (begin
            (if _outdir28765_ (create-directory* _outdir28765_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath28761_)
                 (_compile-e28763_
                  (gx#import-module__0 _srcpath28761_)
                  _opts28762_)))
             gxc#current-compile-output-dir
             _outdir28765_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?28766_
             gxc#current-compile-gsc-options
             _gsc-options28767_
             gxc#current-compile-keep-scm
             _keep-scm?28768_
             gxc#current-compile-verbose
             _verbosity28769_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx28727_ _opts28728_)
      (letrec ((_generate-stub28730_
                (lambda (_gx-init-stub28752_)
                  (let* ((_mod-str28754_
                          (gxc#module-id->path-string
                           (##structure-ref
                            _ctx28727_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt28756_ (string-append _mod-str28754_ '"__rt"))
                         (_mod-main28758_
                          (gxc#find-runtime-symbol _ctx28727_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'include (cons _gx-init-stub28752_ '())))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt28756_
                                         (cons (cons 'quote
                                                     (cons _mod-main28758_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub28731_
                (lambda (_output-scm28738_ _output-bin28739_)
                  (let* ((_init-stub28741_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gsc-args28743_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28739_
                                            (cons _output-scm28738_ '()))))))
                    (begin
                      (with-output-to-file
                       _output-scm28738_
                       (lambda () (_generate-stub28730_ _init-stub28741_)))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28743_))
                            (let* ((_proc28747_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28743_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28749_
                                    (process-status _proc28747_)))
                              (if (zero? _status28749_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28738_
                                   _output-bin28739_
                                   _status28749_))))
                          '#!void))))))
        (let* ((_output-bin28733_
                (gxc#compile-exe-output-file _ctx28727_ _opts28728_))
               (_output-scm28735_ (string-append _output-bin28733_ '".scm")))
          (begin
            (_compile-stub28731_ _output-scm28735_ _output-bin28733_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28735_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx28586_ _opts28587_)
      (letrec ((_reset-declare28589_
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
               (_user-declare28590_
                (lambda ()
                  (let* ((_gsc-opts28668_ (pgetq 'gsc-options: _opts28587_))
                         (_gsc-prelude28670_
                          (if _gsc-opts28668_
                              (member '"-prelude" _gsc-opts28668_)
                              '#f))
                         (_gsc-prelude28672_
                          (if _gsc-prelude28670_
                              (read (open-input-string
                                     (cadr _gsc-prelude28670_)))
                              '#f)))
                    (let _lift28675_ ((_expr28677_ _gsc-prelude28672_))
                      (let* ((_expr2867828690_ _expr28677_)
                             (_E2868228694_
                              (lambda ()
                                (error '"No clause matching"
                                       _expr2867828690_)))
                             (_else2868128698_ (lambda () '#f))
                             (_try-match2868028714_
                              (lambda ()
                                (let ((_K2868328704_
                                       (lambda (_exprs28702_)
                                         (ormap1 _lift28675_ _exprs28702_))))
                                  (if (##pair? _expr2867828690_)
                                      (let ((_hd2868428707_
                                             (##car _expr2867828690_))
                                            (_tl2868528709_
                                             (##cdr _expr2867828690_)))
                                        (if (##eq? _hd2868428707_ 'begin)
                                            (let ((_exprs28712_
                                                   _tl2868528709_))
                                              (_K2868328704_ _exprs28712_))
                                            (_else2868128698_)))
                                      (_else2868128698_)))))
                             (_K2868628718_ (lambda () _expr28677_)))
                        (if (##pair? _expr2867828690_)
                            (let ((_hd2868728721_ (##car _expr2867828690_))
                                  (_tl2868828723_ (##cdr _expr2867828690_)))
                              (if (##eq? _hd2868728721_ 'declare)
                                  (_K2868628718_)
                                  (_try-match2868028714_)))
                            (_try-match2868028714_)))))))
               (_generate-stub28591_
                (lambda (_deps28659_)
                  (let ((_mod-main28661_
                         (gxc#find-runtime-symbol _ctx28586_ 'main))
                        (_reset-decl28662_ (_reset-declare28589_))
                        (_user-decl28663_ (_user-declare28590_)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write '(declare (optimize-dead-definitions)))
                      (newline)
                      (for-each
                       (lambda (_dep28665_)
                         (begin
                           (write (cons 'include (cons _dep28665_ '())))
                           (newline)
                           (write '(##namespace ("")))
                           (write _reset-decl28662_)
                           (if _user-decl28663_
                               (write _user-decl28663_)
                               '#!void)
                           (newline)))
                       _deps28659_)
                      (write (cons 'apply
                                   (cons _mod-main28661_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_static-include28592_
                (lambda (_gsc-opts28642_ _home28643_)
                  (letrec* ((_static-dir28645_
                             (path-expand '"lib/static" _home28643_))
                            (_user-static-dir28646_
                             (path-expand
                              '"lib/static"
                              (getenv '"GERBIL_PATH" '"~/.gerbil")))
                            (_cppflags28647_
                             (string-append
                              '"-I "
                              _static-dir28645_
                              '" -I "
                              _user-static-dir28646_)))
                    (let ((_$e28649_ (member '"-cc-options" _gsc-opts28642_)))
                      (if _$e28649_
                          ((lambda (_rest28652_)
                             (let* ((_cell28654_ (cdr _rest28652_))
                                    (_opt28656_ (car _cell28654_)))
                               (begin
                                 (set-car!
                                  _cell28654_
                                  (string-append
                                   _opt28656_
                                   '" "
                                   _cppflags28647_))
                                 _gsc-opts28642_)))
                           _$e28649_)
                          (cons '"-cc-options"
                                (cons _cppflags28647_ _gsc-opts28642_)))))))
               (_compile-stub28593_
                (lambda (_output-scm28600_ _output-bin28601_)
                  (let* ((_gerbil-home28603_ (getenv '"GERBIL_HOME"))
                         (_gx-gambc028605_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home28603_))
                         (_gx-gambc-init28607_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home28603_))
                         (_gx-gambc-macros28609_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home28603_))
                         (_include-gx-gambc-macros28611_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros28609_
                           '"\")"))
                         (_bin-scm28613_
                          (gxc#find-static-module-file _ctx28586_))
                         (_deps28615_
                          (gxc#find-runtime-module-deps _ctx28586_))
                         (_deps28617_
                          (map gxc#find-static-module-file _deps28615_))
                         (_deps28622_
                          (filter (lambda (_$obj28619_)
                                    (not (gxc#file-empty? _$obj28619_)))
                                  _deps28617_))
                         (_gsc-opts28627_
                          (let ((_$e28624_ (pgetq 'gsc-options: _opts28587_)))
                            (if _$e28624_ _$e28624_ '())))
                         (_gsc-opts28629_
                          (_static-include28592_
                           _gsc-opts28627_
                           _gerbil-home28603_))
                         (_gsc-gx-macros28631_
                          (if (gerbil-runtime-smp?)
                              (cons '"-e"
                                    (cons '"(define-cond-expand-feature|enable-smp|)"
                                          (cons '"-e"
                                                (cons _include-gx-gambc-macros28611_
                                                      '()))))
                              (cons '"-e"
                                    (cons _include-gx-gambc-macros28611_
                                          '()))))
                         (_gsc-args28633_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin28601_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-scm28600_ '())
                            _gsc-gx-macros28631_)
                    _gsc-opts28629_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options)))))))
                    (begin
                      (with-output-to-file
                       _output-scm28600_
                       (lambda ()
                         (_generate-stub28591_
                          (cons _gx-gambc028605_
                                (cons _gx-gambc-init28607_
                                      (foldr1 cons
                                              (cons _bin-scm28613_ '())
                                              _deps28622_))))))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (gxc#verbose
                             '"invoke gsc "
                             (cons 'gsc _gsc-args28633_))
                            (let* ((_proc28637_
                                    (open-process
                                     (cons 'path:
                                           (cons '"gsc"
                                                 (cons 'arguments:
                                                       (cons _gsc-args28633_
                                                             (cons 'stdout-redirection:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_status28639_
                                    (process-status _proc28637_)))
                              (if (zero? _status28639_)
                                  '#!void
                                  (gxc#raise-compile-error
                                   '"Compilation error; gsc exit with nonzero status"
                                   _output-scm28600_
                                   _output-bin28601_
                                   _status28639_))))
                          '#!void))))))
        (let* ((_output-bin28595_
                (gxc#compile-exe-output-file _ctx28586_ _opts28587_))
               (_output-scm28597_ (string-append _output-bin28595_ '".scm")))
          (begin
            (_compile-stub28593_ _output-scm28597_ _output-bin28595_)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm28597_)))))))
  (define gxc#find-export-binding
    (lambda (_ctx28536_ _id28537_)
      (let ((_$e28583_
             (find (lambda (_e2853828540_)
                     (let* ((_g2854228552_ _e2853828540_)
                            (_E2854528556_
                             (lambda ()
                               (error '"No clause matching" _g2854228552_)))
                            (_else2854428560_ (lambda () '#f))
                            (_K2854628564_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2854228552_
                            (##type-id gx#module-export::t))
                           (let* ((_e2854728567_
                                   (##vector-ref _g2854228552_ '1))
                                  (_e2854828570_
                                   (##vector-ref _g2854228552_ '2))
                                  (_e2854928573_
                                   (##vector-ref _g2854228552_ '3)))
                             (if (##eq? _e2854928573_ '0)
                                 (let ((_e2855028576_
                                        (##vector-ref _g2854228552_ '4)))
                                   (if ((lambda (_g2857828580_)
                                          (eq? _g2857828580_ _id28537_))
                                        _e2855028576_)
                                       (_K2854628564_)
                                       (_else2854428560_)))
                                 (_else2854428560_)))
                           (_else2854428560_))))
                   (##structure-ref _ctx28536_ '9 gx#module-context::t '#f))))
        (if _$e28583_ (gx#core-resolve-module-export _$e28583_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx28528_ _id28529_)
      (let ((_$e28531_ (gxc#find-export-binding _ctx28528_ _id28529_)))
        (if _$e28531_
            ((lambda (_bind28534_)
               (begin
                 (if (##structure-instance-of?
                      _bind28534_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id28529_))
                 (##structure-ref _bind28534_ '1 gx#binding::t '#f)))
             _$e28531_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx28528_ '1 gx#expander-context::t '#f)
             _id28529_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx28415_)
      (letrec* ((_ht28417_ (make-hash-table-eq))
                (_import-set-template28418_
                 (lambda (_in28480_ _phi28481_)
                   (let ((_iphi28483_
                          (fx+ _phi28481_
                               (##direct-structure-ref
                                _in28480_
                                '2
                                gx#import-set::t
                                '#f)))
                         (_imports28484_
                          (##structure-ref
                           (##direct-structure-ref
                            _in28480_
                            '1
                            gx#import-set::t
                            '#f)
                           '8
                           gx#module-context::t
                           '#f)))
                     (let _lp28486_ ((_rest28488_ _imports28484_)
                                     (_r28489_ '()))
                       (let* ((_rest2849028498_ _rest28488_)
                              (_E2849328502_
                               (lambda ()
                                 (error '"No clause matching"
                                        _rest2849028498_)))
                              (_else2849228506_ (lambda () _r28489_))
                              (_K2849428516_
                               (lambda (_rest28509_ _in28510_)
                                 (if (##structure-instance-of?
                                      _in28510_
                                      'gx#module-context::t)
                                     (if (fxzero? _iphi28483_)
                                         (_lp28486_
                                          _rest28509_
                                          (cons _in28510_ _r28489_))
                                         (_lp28486_ _rest28509_ _r28489_))
                                     (if (##structure-direct-instance-of?
                                          _in28510_
                                          'gx#module-import::t)
                                         (let ((_iphi28512_
                                                (fx+ _phi28481_
                                                     (##direct-structure-ref
                                                      _in28510_
                                                      '3
                                                      gx#module-import::t
                                                      '#f))))
                                           (if (fxzero? _iphi28512_)
                                               (_lp28486_
                                                _rest28509_
                                                (cons (##direct-structure-ref
                                                       (##direct-structure-ref
                                                        _in28510_
                                                        '1
                                                        gx#module-import::t
                                                        '#f)
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _r28489_))
                                               (_lp28486_
                                                _rest28509_
                                                _r28489_)))
                                         (if (##structure-direct-instance-of?
                                              _in28510_
                                              'gx#import-set::t)
                                             (let ((_xphi28514_
                                                    (fx+ _iphi28483_
                                                         (##direct-structure-ref
                                                          _in28510_
                                                          '2
                                                          gx#import-set::t
                                                          '#f))))
                                               (if (fxzero? _xphi28514_)
                                                   (_lp28486_
                                                    _rest28509_
                                                    (cons (##direct-structure-ref
                                                           _in28510_
                                                           '1
                                                           gx#import-set::t
                                                           '#f)
                                                          _r28489_))
                                                   (if (fxpositive?
                                                        _xphi28514_)
                                                       (_lp28486_
                                                        _rest28509_
                                                        (foldl1 cons
                                                                _r28489_
                                                                (_import-set-template28418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in28510_
                         _iphi28483_)))
               (_lp28486_ _rest28509_ _r28489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp28486_
                                              _rest28509_
                                              _r28489_)))))))
                         (if (##pair? _rest2849028498_)
                             (let ((_hd2849528519_ (##car _rest2849028498_))
                                   (_tl2849628521_ (##cdr _rest2849028498_)))
                               (let* ((_in28524_ _hd2849528519_)
                                      (_rest28526_ _tl2849628521_))
                                 (_K2849428516_ _rest28526_ _in28524_)))
                             (_else2849228506_)))))))
                (_find-deps28419_
                 (lambda (_rest28426_ _deps28427_)
                   (let* ((_rest2842828436_ _rest28426_)
                          (_E2843128440_
                           (lambda ()
                             (error '"No clause matching" _rest2842828436_)))
                          (_else2843028444_ (lambda () _deps28427_))
                          (_K2843228468_
                           (lambda (_rest28447_ _hd28448_)
                             (if (##structure-instance-of?
                                  _hd28448_
                                  'gx#module-context::t)
                                 (let ((_id28450_
                                        (##structure-ref
                                         _hd28448_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports28451_
                                        (##structure-ref
                                         _hd28448_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht28417_ _id28450_ '#f)
                                       (_find-deps28419_
                                        _rest28447_
                                        _deps28427_)
                                       (let ((_$e28453_
                                              (gx#core-context-prelude__%
                                               _hd28448_)))
                                         (if _$e28453_
                                             ((lambda (_pre28456_)
                                                (let ((_xdeps28458_
                                                       (_find-deps28419_
                                                        (cons _pre28456_
                                                              _imports28451_)
                                                        _deps28427_)))
                                                  (begin
                                                    (table-set!
                                                     _ht28417_
                                                     _id28450_
                                                     _hd28448_)
                                                    (_find-deps28419_
                                                     _rest28447_
                                                     (cons _hd28448_
                                                           _xdeps28458_)))))
                                              _$e28453_)
                                             (let ((_xdeps28460_
                                                    (_find-deps28419_
                                                     _imports28451_
                                                     _deps28427_)))
                                               (begin
                                                 (table-set!
                                                  _ht28417_
                                                  _id28450_
                                                  _hd28448_)
                                                 (_find-deps28419_
                                                  _rest28447_
                                                  (cons _hd28448_
                                                        _xdeps28460_))))))))
                                 (if (##structure-instance-of?
                                      _hd28448_
                                      'gx#prelude-context::t)
                                     (let ((_id28462_
                                            (##structure-ref
                                             _hd28448_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht28417_ _id28462_ '#f)
                                           (_find-deps28419_
                                            _rest28447_
                                            _deps28427_)
                                           (let ((_xdeps28464_
                                                  (_find-deps28419_
                                                   (##structure-ref
                                                    _hd28448_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps28427_)))
                                             (if (table-ref
                                                  _ht28417_
                                                  _id28462_
                                                  '#f)
                                                 (_find-deps28419_
                                                  _rest28447_
                                                  _xdeps28464_)
                                                 (begin
                                                   (table-set!
                                                    _ht28417_
                                                    _id28462_
                                                    _hd28448_)
                                                   (_find-deps28419_
                                                    _rest28447_
                                                    (cons _hd28448_
                                                          _xdeps28464_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd28448_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd28448_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps28419_
                                              (cons (##direct-structure-ref
                                                     _hd28448_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest28447_)
                                              _deps28427_)
                                             (_find-deps28419_
                                              _rest28447_
                                              _deps28427_))
                                         (if (##structure-direct-instance-of?
                                              _hd28448_
                                              'gx#module-export::t)
                                             (_find-deps28419_
                                              (cons (##direct-structure-ref
                                                     _hd28448_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest28447_)
                                              _deps28427_)
                                             (if (##structure-direct-instance-of?
                                                  _hd28448_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd28448_
                                                               '2
                                                               gx#import-set::t
                                                               '#f))
                                                     (_find-deps28419_
                                                      (cons (##direct-structure-ref
                                                             _hd28448_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest28447_)
                                                      _deps28427_)
                                                     (if (fxpositive?
                                                          (##direct-structure-ref
                                                           _hd28448_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))
                                                         (let ((_xdeps28466_
                                                                (_import-set-template28418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd28448_
                         '0)))
                   (_find-deps28419_
                    (foldl1 cons _rest28447_ _xdeps28466_)
                    _deps28427_))
                 (_find-deps28419_ _rest28447_ _deps28427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (error '"Unexpected module import"
                                                        _hd28448_)))))))))
                     (if (##pair? _rest2842828436_)
                         (let ((_hd2843328471_ (##car _rest2842828436_))
                               (_tl2843428473_ (##cdr _rest2842828436_)))
                           (let* ((_hd28476_ _hd2843328471_)
                                  (_rest28478_ _tl2843428473_))
                             (_K2843228468_ _rest28478_ _hd28476_)))
                         (_else2843028444_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps28419_
                          (let ((_$e28421_
                                 (gx#core-context-prelude__% _ctx28415_)))
                            (if _$e28421_
                                ((lambda (_pre28424_)
                                   (cons _pre28424_
                                         (##structure-ref
                                          _ctx28415_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e28421_)
                                (##structure-ref
                                 _ctx28415_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx28354_)
      (let* ((_scm28356_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx28354_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs28358_ (gx#current-expander-module-library-path))
             (_dirs28367_
              (let ((_$e28360_ (gxc#current-compile-output-dir)))
                (if _$e28360_
                    ((lambda (_g2836228364_) (cons _g2836228364_ _dirs28358_))
                     _$e28360_)
                    _dirs28358_)))
             (_dirs28373_
              (map (lambda (_g2836828370_)
                     (path-expand '"static" _g2836828370_))
                   _dirs28367_)))
        (let _lp28376_ ((_rest28378_ _dirs28373_))
          (let* ((_rest2837928387_ _rest28378_)
                 (_E2838228391_
                  (lambda () (error '"No clause matching" _rest2837928387_)))
                 (_else2838128395_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx28354_ '1 gx#expander-context::t '#f)
                     _scm28356_)))
                 (_K2838328403_
                  (lambda (_rest28398_ _dir28399_)
                    (let ((_path28401_ (path-expand _scm28356_ _dir28399_)))
                      (if (file-exists? _path28401_)
                          _path28401_
                          (_lp28376_ _rest28398_))))))
            (if (##pair? _rest2837928387_)
                (let ((_hd2838428406_ (##car _rest2837928387_))
                      (_tl2838528408_ (##cdr _rest2837928387_)))
                  (let* ((_dir28411_ _hd2838428406_)
                         (_rest28413_ _tl2838528408_))
                    (_K2838328403_ _rest28413_ _dir28411_)))
                (_else2838128395_)))))))
  (define gxc#file-empty?
    (lambda (_path28352_)
      (zero? (file-info-size (file-info _path28352_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx28349_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx28349_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx28349_)
               '#!void)
           (gxc#collect-bindings _ctx28349_)
           (gxc#compile-runtime-code _ctx28349_)
           (gxc#compile-meta-code _ctx28349_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx28349_)
               '#!void)))
       gx#current-expander-context
       _ctx28349_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj28825 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj28825) __obj28825))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx28347_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx28347_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx28301_)
      (letrec ((_compile128303_
                (lambda (_ctx28336_)
                  (let* ((_code28338_
                          (##structure-ref
                           _ctx28336_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt28342_
                          (if (gxc#apply-find-runtime-code _code28338_)
                              (let ((_idstr28340_
                                     (gxc#module-id->path-string
                                      (##structure-ref
                                       _ctx28336_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr28340_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt28342_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx28336_
                             _rt28342_)
                            (_generate-runtime-code28304_
                             _ctx28336_
                             _code28338_))
                          (if (gxc#current-compile-static)
                              (let ((_path28345_
                                     (gxc#compile-static-output-file
                                      _ctx28336_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path28345_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code28305_
                       _ctx28336_
                       _code28338_
                       _rt28342_)))))
               (_generate-runtime-code28304_
                (lambda (_ctx28320_ _code28321_)
                  (let* ((_lifts28323_ (box '()))
                         (_runtime-code28326_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code28321_))
                           gx#current-expander-context
                           _ctx28320_
                           gx#current-expander-phi
                           '0
                           gxc#current-compile-lift
                           _lifts28323_
                           gxc#current-compile-marks
                           (make-hash-table-eq)))
                         (_runtime-code28328_
                          (if (null? (unbox _lifts28323_))
                              _runtime-code28326_
                              (cons 'begin
                                    (foldr1 cons
                                            (cons _runtime-code28326_ '())
                                            (reverse (unbox _lifts28323_))))))
                         (_scm028330_
                          (gxc#compile-output-file _ctx28320_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms28333_
                               (gxc#compile-static-output-file _ctx28320_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm028330_
                                _runtime-code28328_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms28333_)
                                (delete-file _scms28333_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm028330_
                             '" => "
                             _scms28333_)
                            (copy-file _scm028330_ _scms28333_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm028330_))))
                        (gxc#compile-scm-file
                         _scm028330_
                         _runtime-code28328_)))))
               (_generate-loader-code28305_
                (lambda (_ctx28309_ _code28310_ _rt28311_)
                  (let* ((_loader-code28314_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code28310_))
                           gx#current-expander-context
                           _ctx28309_))
                         (_loader-code28316_
                          (if _rt28311_
                              (cons 'begin
                                    (cons _loader-code28314_
                                          (cons (cons 'load-module
                                                      (cons _rt28311_ '()))
                                                '())))
                              _loader-code28314_)))
                    (call-with-parameters
                     (lambda ()
                       (gxc#compile-scm-file
                        (gxc#compile-output-file _ctx28309_ 'rt '".scm")
                        _loader-code28316_))
                     gxc#current-compile-gsc-options
                     '#f)))))
        (let ((_all-modules28307_
               (cons _ctx28301_ (gxc#lift-nested-modules _ctx28301_))))
          (for-each _compile128303_ _all-modules28307_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx28203_)
      (letrec ((_compile-ssi28205_
                (lambda (_code28271_)
                  (let* ((_path28273_
                          (gxc#compile-output-file _ctx28203_ '#f '".ssi"))
                         (_prelude28284_
                          (let* ((_super28275_
                                  (##structure-ref
                                   _ctx28203_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e28277_
                                  (##structure-ref
                                   _super28275_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e28277_
                                ((lambda (_g2827928281_)
                                   (make-symbol '":" _g2827928281_))
                                 _$e28277_)
                                ':<root>)))
                         (_ns28286_
                          (##structure-ref
                           _ctx28203_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr28288_
                          (symbol->string
                           (##structure-ref
                            _ctx28203_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg28295_
                          (let ((_$e28290_ (string-rindex _idstr28288_ '#\/)))
                            (if _$e28290_
                                ((lambda (_x28293_)
                                   (string->symbol
                                    (substring _idstr28288_ '0 _x28293_)))
                                 _$e28290_)
                                '#f)))
                         (_rt28297_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx28203_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path28273_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path28273_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude28284_)
                           (if _pkg28295_
                               (displayln '"package:" '" " _pkg28295_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns28286_)
                           (newline)
                           (pretty-print _code28271_)
                           (if _rt28297_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt28297_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi28206_
                (lambda (_part28211_)
                  (let* ((_part2821228225_ _part28211_)
                         (_E2821428229_
                          (lambda ()
                            (error '"No clause matching" _part2821228225_)))
                         (_K2821528240_
                          (lambda (_code28232_
                                   _n28233_
                                   _phi28234_
                                   _phi-ctx28235_)
                            (let ((_code28238_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code28232_))
                                    gx#current-expander-context
                                    _phi-ctx28235_
                                    gx#current-expander-phi
                                    _phi28234_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx28203_
                                _n28233_
                                '".scm")
                               _code28238_)))))
                    (if (##pair? _part2821228225_)
                        (let ((_hd2821628243_ (##car _part2821228225_))
                              (_tl2821728245_ (##cdr _part2821228225_)))
                          (let ((_phi-ctx28248_ _hd2821628243_))
                            (if (##pair? _tl2821728245_)
                                (let ((_hd2821828250_ (##car _tl2821728245_))
                                      (_tl2821928252_ (##cdr _tl2821728245_)))
                                  (let ((_phi28255_ _hd2821828250_))
                                    (if (##pair? _tl2821928252_)
                                        (let ((_hd2822028257_
                                               (##car _tl2821928252_))
                                              (_tl2822128259_
                                               (##cdr _tl2821928252_)))
                                          (let ((_n28262_ _hd2822028257_))
                                            (if (##pair? _tl2822128259_)
                                                (let ((_hd2822228264_
                                                       (##car _tl2822128259_))
                                                      (_tl2822328266_
                                                       (##cdr _tl2822128259_)))
                                                  (let ((_code28269_
                                                         _hd2822228264_))
                                                    (if (##null? _tl2822328266_)
                                                        (_K2821528240_
                                                         _code28269_
                                                         _n28262_
                                                         _phi28255_
                                                         _phi-ctx28248_)
                                                        (_E2821428229_))))
                                                (_E2821428229_))))
                                        (_E2821428229_))))
                                (_E2821428229_))))
                        (_E2821428229_))))))
        (let ((_g28833_ (gxc#generate-meta-code _ctx28203_)))
          (begin
            (let ((_g28834_
                   (if (##values? _g28833_) (##vector-length _g28833_) 1)))
              (if (not (##fx= _g28834_ 2))
                  (error "Context expects 2 values" _g28834_)))
            (let ((_ssi-code28208_ (##vector-ref _g28833_ 0))
                  (_phi-code28209_ (##vector-ref _g28833_ 1)))
              (begin
                (_compile-ssi28205_ _ssi-code28208_)
                (for-each _compile-phi28206_ _phi-code28209_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx28186_)
      (let* ((_path28188_ (gxc#compile-output-file _ctx28186_ '#f '".ssxi.ss"))
             (_code28190_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx28186_ '11 gx#module-context::t '#f)))
             (_idstr28192_
              (symbol->string
               (##structure-ref _ctx28186_ '1 gx#expander-context::t '#f)))
             (_pkg28199_
              (let ((_$e28194_ (string-rindex _idstr28192_ '#\/)))
                (if _$e28194_
                    ((lambda (_x28197_)
                       (string->symbol (substring _idstr28192_ '0 _x28197_)))
                     _$e28194_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path28188_)
          (with-output-to-file
           (cons 'path:
                 (cons _path28188_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg28199_ (displayln '"package: " _pkg28199_) '#!void)
               (newline)
               (pretty-print _code28190_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx28179_)
      (let* ((_state28181_
              (let ((__obj28826 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj28826 _ctx28179_)
                  __obj28826)))
             (_ssi-code28183_
              (gxc#apply-generate-meta
               (##structure-ref _ctx28179_ '11 gx#module-context::t '#f)
               _state28181_)))
        (values _ssi-code28183_ (gxc#meta-state-end! _state28181_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx28172_)
      (let ((_lifts28174_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code28177_ (gxc#apply-generate-runtime-phi _stx28172_)))
             (if (null? (unbox _lifts28174_))
                 _code28177_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code28177_ '())
                               (reverse (unbox _lifts28174_)))))))
         gxc#current-compile-lift
         _lifts28174_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx28168_)
      (let ((_modules28170_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx28168_ '11 gx#module-context::t '#f)
           _modules28170_)
          (reverse (unbox _modules28170_))))))
  (define gxc#compile-scm-file
    (lambda (_path28164_ _code28165_)
      (begin
        (gxc#verbose '"compile " _path28164_)
        (with-output-to-file
         (cons 'path: (cons _path28164_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code28165_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path28164_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path28164_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e28153_ (gxc#current-compile-debug)))
        (if _$e28153_
            ((lambda (_debug28156_)
               (let ((_$e28158_ _debug28156_))
                 (if (eq? 'env _$e28158_)
                     (cons '"-debug-environments" '())
                     (if (eq? 'src _$e28158_)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (let ((_$e28161_ (eq? 'all _$e28158_)))
                               (if _$e28161_ _$e28161_ (eq? '#t _$e28158_)))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug28156_))))))
             _$e28153_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path28135_)
      (let* ((_gsc-args28142_
              (let ((_$e28137_ (gxc#current-compile-gsc-options)))
                (if _$e28137_
                    ((lambda (_opts28140_)
                       (foldr1 cons (cons _path28135_ '()) _opts28140_))
                     _$e28137_)
                    (cons _path28135_ '()))))
             (_gsc-args28144_
              (foldr1 cons _gsc-args28142_ (gxc#gsc-debug-options)))
             (_g28835_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args28144_)))
             (_proc28147_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args28144_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status28149_ (process-status _proc28147_)))
        (if (zero? _status28149_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path28135_
             _status28149_)))))
  (define gxc#compile-output-file
    (lambda (_ctx28107_ _n28108_ _ext28109_)
      (letrec ((_module-relative-path28111_
                (lambda (_ctx28133_)
                  (path-strip-directory
                   (gxc#module-id->path-string
                    (##structure-ref
                     _ctx28133_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory28112_
                (lambda (_ctx28129_)
                  (path-directory
                   (let ((_mpath28131_
                          (##structure-ref
                           _ctx28129_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath28131_)
                         _mpath28131_
                         (last _mpath28131_))))))
               (_section-string28113_
                (lambda (_n28127_)
                  (if (number? _n28127_)
                      (number->string _n28127_)
                      (if (symbol? _n28127_)
                          (symbol->string _n28127_)
                          (if (string? _n28127_)
                              _n28127_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n28127_))))))
               (_file-name28114_
                (lambda (_path28125_)
                  (if _n28108_
                      (string-append
                       _path28125_
                       '"__"
                       (_section-string28113_ _n28108_)
                       _ext28109_)
                      (string-append _path28125_ _ext28109_))))
               (_file-path28115_
                (lambda ()
                  (let ((_$e28120_ (gxc#current-compile-output-dir)))
                    (if _$e28120_
                        ((lambda (_outdir28123_)
                           (path-expand
                            (_file-name28114_
                             (gxc#module-id->path-string
                              (##structure-ref
                               _ctx28107_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir28123_))
                         _$e28120_)
                        (path-expand
                         (_file-name28114_
                          (_module-relative-path28111_ _ctx28107_))
                         (_module-source-directory28112_ _ctx28107_)))))))
        (let ((_path28117_ (_file-path28115_)))
          (begin
            (create-directory* (path-directory _path28117_))
            _path28117_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx28090_)
      (letrec ((_file-name28092_
                (lambda (_id28105_)
                  (string-append (gxc#static-module-name _id28105_) '".scm")))
               (_file-path28093_
                (lambda ()
                  (let* ((_file28098_
                          (_file-name28092_
                           (##structure-ref
                            _ctx28090_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_$e28100_ (gxc#current-compile-output-dir)))
                    (if _$e28100_
                        ((lambda (_outdir28103_)
                           (path-expand
                            _file28098_
                            (path-expand '"static" _outdir28103_)))
                         _$e28100_)
                        (path-expand _file28098_ '"static"))))))
        (let ((_path28095_ (_file-path28093_)))
          (begin
            (create-directory* (path-directory _path28095_))
            _path28095_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx28077_ _opts28078_)
      (let ((_$e28080_ (pgetq 'output-file: _opts28078_)))
        (if _$e28080_
            (values _$e28080_)
            (let* ((_mod-str28083_
                    (symbol->string
                     (##structure-ref
                      _ctx28077_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e28085_ (string-rindex _mod-str28083_ '#\/)))
              (if _$e28085_
                  ((lambda (_ix28088_)
                     (substring
                      _mod-str28083_
                      (fx+ _ix28088_ '1)
                      (string-length _mod-str28083_)))
                   _$e28085_)
                  _mod-str28083_))))))
  (define gxc#static-module-name
    (lambda (_idstr28070_)
      (if (string? _idstr28070_)
          (let* ((_str28072_ (gxc#module-id->path-string _idstr28070_))
                 (_strs28074_ (string-split _str28072_ '#\/)))
            (string-join _strs28074_ '"__"))
          (if (symbol? _idstr28070_)
              (gxc#static-module-name (symbol->string _idstr28070_))
              (error '"Bad module id" _idstr28070_))))))
