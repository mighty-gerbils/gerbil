(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#compile-timestamp
    (lambda () (inexact->exact (floor (time->seconds (current-time))))))
  (begin
    (define gxc#compile-file__opt-lambda21613
      (lambda (_srcpath21615_ _opts21616_)
        (begin
          (if (string? _srcpath21615_)
              '#!void
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath21615_))
          (let ((_outdir21618_ (pgetq 'output-dir: _opts21616_))
                (_invoke-gsc?21619_ (pgetq 'invoke-gsc: _opts21616_))
                (_gsc-options21620_ (pgetq 'gsc-options: _opts21616_))
                (_keep-scm?21621_ (pgetq 'keep-scm: _opts21616_))
                (_verbosity21622_ (pgetq 'verbose: _opts21616_))
                (_optimize21623_ (pgetq 'optimize: _opts21616_))
                (_debug21624_ (pgetq 'debug: _opts21616_))
                (_gen-ssxi21625_ (pgetq 'generate-ssxi: _opts21616_))
                (_static21626_ (pgetq 'static: _opts21616_)))
            (begin
              (if _outdir21618_ (create-directory* _outdir21618_) '#!void)
              (if _optimize21623_ (gxc#optimizer-info-init!) '#!void)
              (call-with-parameters
               (lambda ()
                 (begin
                   (gxc#verbose '"compile " _srcpath21615_)
                   (gxc#compile-top-module
                    (gx#import-module__0 _srcpath21615_))))
               gxc#current-compile-output-dir
               _outdir21618_
               gxc#current-compile-invoke-gsc
               _invoke-gsc?21619_
               gxc#current-compile-gsc-options
               _gsc-options21620_
               gxc#current-compile-keep-scm
               _keep-scm?21621_
               gxc#current-compile-verbose
               _verbosity21622_
               gxc#current-compile-optimize
               _optimize21623_
               gxc#current-compile-debug
               _debug21624_
               gxc#current-compile-generate-ssxi
               _gen-ssxi21625_
               gxc#current-compile-static
               _static21626_
               gxc#current-compile-timestamp
               (gxc#compile-timestamp)))))))
    (begin
      (define gxc#compile-file__0
        (lambda (_srcpath21632_)
          (let ((_opts21634_ '()))
            (gxc#compile-file__opt-lambda21613 _srcpath21632_ _opts21634_))))
      (define gxc#compile-file
        (lambda _g21642_
          (let ((_g21641_ (length _g21642_)))
            (cond ((fx= _g21641_ 1) (apply gxc#compile-file__0 _g21642_))
                  ((fx= _g21641_ 2)
                   (apply gxc#compile-file__opt-lambda21613 _g21642_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-file
                    _g21642_))))))))
  (begin
    (define gxc#compile-exe-stub__opt-lambda21599
      (lambda (_srcpath21601_ _opts21602_)
        (gxc#do-compile-exe
         _srcpath21601_
         _opts21602_
         gxc#compile-exe-stub-module)))
    (begin
      (define gxc#compile-exe-stub__0
        (lambda (_srcpath21607_)
          (let ((_opts21609_ '()))
            (gxc#compile-exe-stub__opt-lambda21599
             _srcpath21607_
             _opts21609_))))
      (define gxc#compile-exe-stub
        (lambda _g21644_
          (let ((_g21643_ (length _g21644_)))
            (cond ((fx= _g21643_ 1) (apply gxc#compile-exe-stub__0 _g21644_))
                  ((fx= _g21643_ 2)
                   (apply gxc#compile-exe-stub__opt-lambda21599 _g21644_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-exe-stub
                    _g21644_))))))))
  (begin
    (define gxc#compile-static-exe__opt-lambda21585
      (lambda (_srcpath21587_ _opts21588_)
        (gxc#do-compile-exe
         _srcpath21587_
         _opts21588_
         gxc#compile-exe-static-module)))
    (begin
      (define gxc#compile-static-exe__0
        (lambda (_srcpath21593_)
          (let ((_opts21595_ '()))
            (gxc#compile-static-exe__opt-lambda21585
             _srcpath21593_
             _opts21595_))))
      (define gxc#compile-static-exe
        (lambda _g21646_
          (let ((_g21645_ (length _g21646_)))
            (cond ((fx= _g21645_ 1) (apply gxc#compile-static-exe__0 _g21646_))
                  ((fx= _g21645_ 2)
                   (apply gxc#compile-static-exe__opt-lambda21585 _g21646_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#compile-static-exe
                    _g21646_))))))))
  (define gxc#do-compile-exe
    (lambda (_srcpath21575_ _opts21576_ _compile-e21577_)
      (begin
        (if (string? _srcpath21575_)
            '#!void
            (gxc#raise-compile-error
             '"Invalid module source path"
             _srcpath21575_))
        (let ((_outdir21579_ (pgetq 'output-dir: _opts21576_))
              (_invoke-gsc?21580_ (pgetq 'invoke-gsc: _opts21576_))
              (_gsc-options21581_ (pgetq 'gsc-options: _opts21576_))
              (_keep-scm?21582_ (pgetq 'keep-scm: _opts21576_))
              (_verbosity21583_ (pgetq 'verbose: _opts21576_)))
          (begin
            (if _outdir21579_ (create-directory* _outdir21579_) '#!void)
            (call-with-parameters
             (lambda ()
               (begin
                 (gxc#verbose '"compile exe " _srcpath21575_)
                 (_compile-e21577_
                  (gx#import-module__0 _srcpath21575_)
                  _opts21576_)))
             gxc#current-compile-output-dir
             _outdir21579_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?21580_
             gxc#current-compile-gsc-options
             _gsc-options21581_
             gxc#current-compile-keep-scm
             _keep-scm?21582_
             gxc#current-compile-verbose
             _verbosity21583_
             gxc#current-compile-timestamp
             (gxc#compile-timestamp)))))))
  (define gxc#compile-exe-stub-module
    (lambda (_ctx21539_ _opts21540_)
      (letrec ((_generate-stub21542_
                (lambda ()
                  (let* ((_mod-str21568_
                          (symbol->string
                           (##structure-ref
                            _ctx21539_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_mod-rt21570_ (string-append _mod-str21568_ '"__rt"))
                         (_mod-main21572_
                          (gxc#find-runtime-symbol _ctx21539_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons '_gx#start!
                                   (cons _mod-rt21570_
                                         (cons (cons 'quote
                                                     (cons _mod-main21572_
                                                           '()))
                                               '()))))
                      (newline)))))
               (_compile-stub21543_
                (lambda (_output-scm21550_ _output-bin21551_)
                  (let* ((_init-stub21553_
                          (path-expand
                           '"lib/gx-init-exe.scm"
                           (getenv '"GERBIL_HOME")))
                         (_gxc-cache21555_ (gxc#compile-cache-directory))
                         (_init-stub21557_
                          (gxc#compile-cache
                           _init-stub21553_
                           _gxc-cache21555_))
                         (_gsc-args21559_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21551_
                                            (cons _init-stub21557_
                                                  (cons _output-scm21550_
                                                        '()))))))
                         (_g21647_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21559_)))
                         (_proc21562_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21559_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status21564_ (process-status _proc21562_)))
                    (if (zero? _status21564_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21550_
                         _output-bin21551_
                         _status21564_))))))
        (let* ((_output-bin21545_
                (gxc#compile-exe-output-file _ctx21539_ _opts21540_))
               (_output-scm21547_ (string-append _output-bin21545_ '".scm")))
          (begin
            (with-output-to-file _output-scm21547_ _generate-stub21542_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21543_ _output-scm21547_ _output-bin21545_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21547_)))))))
  (define gxc#compile-exe-static-module
    (lambda (_ctx21471_ _opts21472_)
      (letrec ((_generate-stub21474_
                (lambda ()
                  (let ((_mod-main21537_
                         (gxc#find-runtime-symbol _ctx21471_ 'main)))
                    (begin
                      (write '(##namespace ("")))
                      (newline)
                      (write (cons 'apply
                                   (cons _mod-main21537_
                                         (cons (cons 'cdr
                                                     (cons (cons 'command-line
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                      (newline)))))
               (_compile-stub21475_
                (lambda (_output-scm21482_ _output-bin21483_)
                  (let* ((_gerbil-home21485_ (getenv '"GERBIL_HOME"))
                         (_gx-version21487_
                          (path-expand
                           '"lib/static/gx-version.scm"
                           _gerbil-home21485_))
                         (_gx-gambc021489_
                          (path-expand
                           '"lib/static/gx-gambc0.scm"
                           _gerbil-home21485_))
                         (_gx-gambc-init21491_
                          (path-expand
                           '"lib/gx-init-static-exe.scm"
                           _gerbil-home21485_))
                         (_gx-gambc-macros21493_
                          (path-expand
                           '"lib/static/gx-gambc#.scm"
                           _gerbil-home21485_))
                         (_include-gx-gambc-macros21495_
                          (string-append
                           '"(include \""
                           _gx-gambc-macros21493_
                           '"\")"))
                         (_bin-scm21497_
                          (gxc#find-static-module-file _ctx21471_))
                         (_deps21499_
                          (gxc#find-runtime-module-deps _ctx21471_))
                         (_deps21501_
                          (map gxc#find-static-module-file _deps21499_))
                         (_deps21506_
                          (filter (lambda (_$obj21503_)
                                    (not (gxc#file-empty? _$obj21503_)))
                                  _deps21501_))
                         (_gxc-cache21508_ (gxc#compile-cache-directory))
                         (_g21648_
                          (gxc#compile-cache
                           _gx-version21487_
                           _gxc-cache21508_))
                         (_gx-gambc021511_
                          (gxc#compile-cache
                           _gx-gambc021489_
                           _gxc-cache21508_))
                         (_gx-gambc-init21513_
                          (gxc#compile-cache
                           _gx-gambc-init21491_
                           _gxc-cache21508_))
                         (_deps21519_
                          (map (lambda (_g2151421516_)
                                 (gxc#compile-cache
                                  _g2151421516_
                                  _gxc-cache21508_))
                               _deps21506_))
                         (_bin-scm21521_
                          (gxc#compile-cache _bin-scm21497_ _gxc-cache21508_))
                         (_gsc-opts21526_
                          (let ((_$e21523_ (pgetq 'gsc-options: _opts21472_)))
                            (if _$e21523_ _$e21523_ '())))
                         (_gsc-args21528_
                          (cons '"-exe"
                                (cons '"-o"
                                      (cons _output-bin21483_
                                            (foldr1 cons
                                                    (foldr1 cons
                                                            (cons '"-e"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _include-gx-gambc-macros21495_
                                (cons _gx-gambc021511_
                                      (cons _gx-gambc-init21513_
                                            (foldr1 cons
                                                    (cons _bin-scm21521_
                                                          (cons _output-scm21482_
                                                                '()))
                                                    _deps21519_)))))
                    _gsc-opts21526_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gxc#gsc-debug-options))))))
                         (_g21649_
                          (gxc#verbose
                           '"invoke gsc "
                           (cons 'gsc _gsc-args21528_)))
                         (_proc21531_
                          (open-process
                           (cons 'path:
                                 (cons '"gsc"
                                       (cons 'arguments:
                                             (cons _gsc-args21528_
                                                   (cons 'stdout-redirection:
                                                         (cons '#f '()))))))))
                         (_status21533_ (process-status _proc21531_)))
                    (if (zero? _status21533_)
                        '#!void
                        (gxc#raise-compile-error
                         '"Compilation error; gsc exit with nonzero status"
                         _output-scm21482_
                         _output-bin21483_
                         _status21533_))))))
        (let* ((_output-bin21477_
                (gxc#compile-exe-output-file _ctx21471_ _opts21472_))
               (_output-scm21479_ (string-append _output-bin21477_ '".scm")))
          (begin
            (with-output-to-file _output-scm21479_ _generate-stub21474_)
            (if (gxc#current-compile-invoke-gsc)
                (_compile-stub21475_ _output-scm21479_ _output-bin21477_)
                '#!void)
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm21479_)))))))
  (define gxc#compile-cache-directory
    (lambda ()
      (let* ((_cachedir21466_ (getenv '"GERBIL_CACHE" '"~/.cache/gerbil"))
             (_gxc-cache21468_ (path-expand '"gxc" _cachedir21466_)))
        (begin
          (create-directory* _gxc-cache21468_)
          (path-normalize _gxc-cache21468_)))))
  (define gxc#compile-cache
    (lambda (_file21460_ _gxc-cache21461_)
      (let ((_cachefile21463_
             (path-expand
              (path-strip-directory _file21460_)
              _gxc-cache21461_)))
        (begin
          (if (file-exists? _cachefile21463_)
              (if (file-newer? _file21460_ _cachefile21463_)
                  (begin
                    (delete-file _cachefile21463_)
                    (copy-file _file21460_ _cachefile21463_))
                  '#!void)
              (copy-file _file21460_ _cachefile21463_))
          _cachefile21463_))))
  (define gxc#find-export-binding
    (lambda (_ctx21410_ _id21411_)
      (let ((_$e21457_
             (find (lambda (_e2141221414_)
                     (let* ((_g2141621426_ _e2141221414_)
                            (_E2141921430_
                             (lambda ()
                               (error '"No clause matching" _g2141621426_)))
                            (_else2141821434_ (lambda () '#f))
                            (_K2142021438_ (lambda () '#t)))
                       (if (##structure-direct-instance-of?
                            _g2141621426_
                            (##type-id gx#module-export::t))
                           (let* ((_e2142121441_
                                   (##vector-ref _g2141621426_ '1))
                                  (_e2142221444_
                                   (##vector-ref _g2141621426_ '2))
                                  (_e2142321447_
                                   (##vector-ref _g2141621426_ '3)))
                             (if (##eq? _e2142321447_ '0)
                                 (let ((_e2142421450_
                                        (##vector-ref _g2141621426_ '4)))
                                   (if ((lambda (_g2145221454_)
                                          (eq? _g2145221454_ _id21411_))
                                        _e2142421450_)
                                       (_K2142021438_)
                                       (_else2141821434_)))
                                 (_else2141821434_)))
                           (_else2141821434_))))
                   (##structure-ref _ctx21410_ '9 gx#module-context::t '#f))))
        (if _$e21457_ (gx#core-resolve-module-export _$e21457_) '#f))))
  (define gxc#find-runtime-symbol
    (lambda (_ctx21402_ _id21403_)
      (let ((_$e21405_ (gxc#find-export-binding _ctx21402_ _id21403_)))
        (if _$e21405_
            ((lambda (_bind21408_)
               (begin
                 (if (##structure-instance-of?
                      _bind21408_
                      'gx#runtime-binding::t)
                     '#!void
                     (gxc#raise-compile-error
                      '"export is not a runtime binding"
                      _id21403_))
                 (##structure-ref _bind21408_ '1 gx#binding::t '#f)))
             _$e21405_)
            (gxc#raise-compile-error
             '"module does not export symbol"
             (##structure-ref _ctx21402_ '1 gx#expander-context::t '#f)
             _id21403_)))))
  (define gxc#find-runtime-module-deps
    (lambda (_ctx21340_)
      (letrec* ((_ht21342_ (make-hash-table-eq))
                (_find-deps21343_
                 (lambda (_rest21350_ _deps21351_)
                   (let* ((_rest2135221360_ _rest21350_)
                          (_E2135521364_
                           (lambda ()
                             (error '"No clause matching" _rest2135221360_)))
                          (_else2135421368_ (lambda () _deps21351_))
                          (_K2135621390_
                           (lambda (_rest21371_ _hd21372_)
                             (if (##structure-instance-of?
                                  _hd21372_
                                  'gx#module-context::t)
                                 (let ((_id21374_
                                        (##structure-ref
                                         _hd21372_
                                         '1
                                         gx#expander-context::t
                                         '#f))
                                       (_imports21375_
                                        (##structure-ref
                                         _hd21372_
                                         '8
                                         gx#module-context::t
                                         '#f)))
                                   (if (table-ref _ht21342_ _id21374_ '#f)
                                       (_find-deps21343_
                                        _rest21371_
                                        _deps21351_)
                                       (let ((_$e21377_
                                              (gx#core-context-prelude__opt-lambda11555
                                               _hd21372_)))
                                         (if _$e21377_
                                             ((lambda (_pre21380_)
                                                (let ((_xdeps21382_
                                                       (_find-deps21343_
                                                        (cons _pre21380_
                                                              _imports21375_)
                                                        _deps21351_)))
                                                  (begin
                                                    (table-set!
                                                     _ht21342_
                                                     _id21374_
                                                     _hd21372_)
                                                    (_find-deps21343_
                                                     _rest21371_
                                                     (cons _hd21372_
                                                           _xdeps21382_)))))
                                              _$e21377_)
                                             (let ((_xdeps21384_
                                                    (_find-deps21343_
                                                     _imports21375_
                                                     _deps21351_)))
                                               (begin
                                                 (table-set!
                                                  _ht21342_
                                                  _id21374_
                                                  _hd21372_)
                                                 (_find-deps21343_
                                                  _rest21371_
                                                  (cons _hd21372_
                                                        _xdeps21384_))))))))
                                 (if (##structure-instance-of?
                                      _hd21372_
                                      'gx#prelude-context::t)
                                     (let ((_id21386_
                                            (##structure-ref
                                             _hd21372_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (if (table-ref _ht21342_ _id21386_ '#f)
                                           (_find-deps21343_
                                            _rest21371_
                                            _deps21351_)
                                           (let ((_xdeps21388_
                                                  (_find-deps21343_
                                                   (##structure-ref
                                                    _hd21372_
                                                    '7
                                                    gx#prelude-context::t
                                                    '#f)
                                                   _deps21351_)))
                                             (if (table-ref
                                                  _ht21342_
                                                  _id21386_
                                                  '#f)
                                                 (_find-deps21343_
                                                  _rest21371_
                                                  _xdeps21388_)
                                                 (begin
                                                   (table-set!
                                                    _ht21342_
                                                    _id21386_
                                                    _hd21372_)
                                                   (_find-deps21343_
                                                    _rest21371_
                                                    (cons _hd21372_
                                                          _xdeps21388_)))))))
                                     (if (##structure-direct-instance-of?
                                          _hd21372_
                                          'gx#module-import::t)
                                         (if (fxzero? (##direct-structure-ref
                                                       _hd21372_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))
                                             (_find-deps21343_
                                              (cons (##direct-structure-ref
                                                     _hd21372_
                                                     '1
                                                     gx#module-import::t
                                                     '#f)
                                                    _rest21371_)
                                              _deps21351_)
                                             (_find-deps21343_
                                              _rest21371_
                                              _deps21351_))
                                         (if (##structure-direct-instance-of?
                                              _hd21372_
                                              'gx#module-export::t)
                                             (_find-deps21343_
                                              (cons (##direct-structure-ref
                                                     _hd21372_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)
                                                    _rest21371_)
                                              _deps21351_)
                                             (if (##structure-direct-instance-of?
                                                  _hd21372_
                                                  'gx#import-set::t)
                                                 (if (fxzero? (##direct-structure-ref
                                                               _hd21372_
                                                               '3
                                                               gx#module-import::t
                                                               '#f))
                                                     (_find-deps21343_
                                                      (cons (##direct-structure-ref
                                                             _hd21372_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _rest21371_)
                                                      _deps21351_)
                                                     (_find-deps21343_
                                                      _rest21371_
                                                      _deps21351_))
                                                 (error '"Unexpected module import"
                                                        _hd21372_)))))))))
                     (if (##pair? _rest2135221360_)
                         (let ((_hd2135721393_ (##car _rest2135221360_))
                               (_tl2135821395_ (##cdr _rest2135221360_)))
                           (let* ((_hd21398_ _hd2135721393_)
                                  (_rest21400_ _tl2135821395_))
                             (_K2135621390_ _rest21400_ _hd21398_)))
                         (_else2135421368_))))))
        (reverse (filter gx#expander-context-id
                         (_find-deps21343_
                          (let ((_$e21345_
                                 (gx#core-context-prelude__opt-lambda11555
                                  _ctx21340_)))
                            (if _$e21345_
                                ((lambda (_pre21348_)
                                   (cons _pre21348_
                                         (##structure-ref
                                          _ctx21340_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _$e21345_)
                                (##structure-ref
                                 _ctx21340_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))))
  (define gxc#find-static-module-file
    (lambda (_ctx21279_)
      (let* ((_scm21281_
              (string-append
               (gxc#static-module-name
                (##structure-ref _ctx21279_ '1 gx#expander-context::t '#f))
               '".scm"))
             (_dirs21283_ (gx#current-expander-module-library-path))
             (_dirs21292_
              (let ((_$e21285_ (gxc#current-compile-output-dir)))
                (if _$e21285_
                    ((lambda (_g2128721289_) (cons _g2128721289_ _dirs21283_))
                     _$e21285_)
                    _dirs21283_)))
             (_dirs21298_
              (map (lambda (_g2129321295_)
                     (path-expand '"static" _g2129321295_))
                   _dirs21292_)))
        (let _lp21301_ ((_rest21303_ _dirs21298_))
          (let* ((_rest2130421312_ _rest21303_)
                 (_E2130721316_
                  (lambda () (error '"No clause matching" _rest2130421312_)))
                 (_else2130621320_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"cannot find static module"
                     (##structure-ref _ctx21279_ '1 gx#expander-context::t '#f)
                     _scm21281_)))
                 (_K2130821328_
                  (lambda (_rest21323_ _dir21324_)
                    (let ((_path21326_ (path-expand _scm21281_ _dir21324_)))
                      (if (file-exists? _path21326_)
                          _path21326_
                          (_lp21301_ _rest21323_))))))
            (if (##pair? _rest2130421312_)
                (let ((_hd2130921331_ (##car _rest2130421312_))
                      (_tl2131021333_ (##cdr _rest2130421312_)))
                  (let* ((_dir21336_ _hd2130921331_)
                         (_rest21338_ _tl2131021333_))
                    (_K2130821328_ _rest21338_ _dir21336_)))
                (_else2130621320_)))))))
  (define gxc#file-empty?
    (lambda (_path21277_)
      (zero? (file-info-size (file-info _path21277_ '#t)))))
  (define gxc#compile-top-module
    (lambda (_ctx21274_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#verbose
            '"compile "
            (##structure-ref _ctx21274_ '1 gx#expander-context::t '#f))
           (if (gxc#current-compile-optimize)
               (gxc#optimize! _ctx21274_)
               '#!void)
           (gxc#collect-bindings _ctx21274_)
           (gxc#compile-runtime-code _ctx21274_)
           (gxc#compile-meta-code _ctx21274_)
           (if (if (gxc#current-compile-optimize)
                   (gxc#current-compile-generate-ssxi)
                   '#f)
               (gxc#compile-ssxi-code _ctx21274_)
               '#!void)))
       gx#current-expander-context
       _ctx21274_
       gx#current-expander-phi
       '0
       gx#current-expander-marks
       '()
       gxc#current-compile-symbol-table
       (let ((__obj21639 (make-object gxc#symbol-table::t '2)))
         (begin (gxc#symbol-table:::init! __obj21639) __obj21639))
       gxc#current-compile-runtime-sections
       (make-hash-table-eq)
       gxc#current-compile-runtime-names
       (make-table))))
  (define gxc#collect-bindings
    (lambda (_ctx21272_)
      (gxc#apply-collect-bindings
       (##structure-ref _ctx21272_ '11 gx#module-context::t '#f))))
  (define gxc#compile-runtime-code
    (lambda (_ctx21231_)
      (letrec ((_compile121233_
                (lambda (_ctx21261_)
                  (let* ((_code21263_
                          (##structure-ref
                           _ctx21261_
                           '11
                           gx#module-context::t
                           '#f))
                         (_rt21267_
                          (if (gxc#apply-find-runtime-code _code21263_)
                              (let ((_idstr21265_
                                     (symbol->string
                                      (##structure-ref
                                       _ctx21261_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                (string-append _idstr21265_ '"__0"))
                              '#f)))
                    (begin
                      (if _rt21267_
                          (begin
                            (table-set!
                             (gxc#current-compile-runtime-sections)
                             _ctx21261_
                             _rt21267_)
                            (_generate-runtime-code21234_
                             _ctx21261_
                             _code21263_))
                          (if (gxc#current-compile-static)
                              (let ((_path21270_
                                     (gxc#compile-static-output-file
                                      _ctx21261_)))
                                (with-output-to-file
                                 (cons 'path:
                                       (cons _path21270_
                                             (cons 'permissions:
                                                   (cons '420 '()))))
                                 void))
                              '#!void))
                      (_generate-loader-code21235_
                       _ctx21261_
                       _code21263_
                       _rt21267_)))))
               (_generate-runtime-code21234_
                (lambda (_ctx21249_ _code21250_)
                  (let* ((_runtime-code21253_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-runtime _code21250_))
                           gx#current-expander-context
                           _ctx21249_))
                         (_scm021255_
                          (gxc#compile-output-file _ctx21249_ '0 '".scm")))
                    (if (gxc#current-compile-static)
                        (let ((_scms21258_
                               (gxc#compile-static-output-file _ctx21249_)))
                          (begin
                            (call-with-parameters
                             (lambda ()
                               (gxc#compile-scm-file
                                _scm021255_
                                _runtime-code21253_))
                             gxc#current-compile-keep-scm
                             '#t)
                            (if (file-exists? _scms21258_)
                                (delete-file _scms21258_)
                                '#!void)
                            (gxc#verbose
                             '"copy static module "
                             _scm021255_
                             '" => "
                             _scms21258_)
                            (copy-file _scm021255_ _scms21258_)
                            (if (gxc#current-compile-keep-scm)
                                '#!void
                                (delete-file _scm021255_))))
                        (gxc#compile-scm-file
                         _scm021255_
                         _runtime-code21253_)))))
               (_generate-loader-code21235_
                (lambda (_ctx21239_ _code21240_ _rt21241_)
                  (let* ((_loader-code21244_
                          (call-with-parameters
                           (lambda () (gxc#apply-generate-loader _code21240_))
                           gx#current-expander-context
                           _ctx21239_))
                         (_loader-code21246_
                          (if _rt21241_
                              (cons 'begin
                                    (cons _loader-code21244_
                                          (cons (cons 'load-module
                                                      (cons _rt21241_ '()))
                                                '())))
                              _loader-code21244_)))
                    (gxc#compile-scm-file
                     (gxc#compile-output-file _ctx21239_ 'rt '".scm")
                     _loader-code21246_)))))
        (let ((_all-modules21237_
               (cons _ctx21231_ (gxc#lift-nested-modules _ctx21231_))))
          (for-each _compile121233_ _all-modules21237_)))))
  (define gxc#compile-meta-code
    (lambda (_ctx21133_)
      (letrec ((_compile-ssi21135_
                (lambda (_code21201_)
                  (let* ((_path21203_
                          (gxc#compile-output-file _ctx21133_ '#f '".ssi"))
                         (_prelude21214_
                          (let* ((_super21205_
                                  (##structure-ref
                                   _ctx21133_
                                   '3
                                   gx#phi-context::t
                                   '#f))
                                 (_$e21207_
                                  (##structure-ref
                                   _super21205_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                            (if _$e21207_
                                ((lambda (_g2120921211_)
                                   (make-symbol '":" _g2120921211_))
                                 _$e21207_)
                                ':<root>)))
                         (_ns21216_
                          (##structure-ref
                           _ctx21133_
                           '6
                           gx#module-context::t
                           '#f))
                         (_idstr21218_
                          (symbol->string
                           (##structure-ref
                            _ctx21133_
                            '1
                            gx#expander-context::t
                            '#f)))
                         (_pkg21225_
                          (let ((_$e21220_ (string-rindex _idstr21218_ '#\/)))
                            (if _$e21220_
                                ((lambda (_x21223_)
                                   (string->symbol
                                    (substring _idstr21218_ '0 _x21223_)))
                                 _$e21220_)
                                '#f)))
                         (_rt21227_
                          (table-ref
                           (gxc#current-compile-runtime-sections)
                           _ctx21133_
                           '#f)))
                    (begin
                      (gxc#verbose '"compile " _path21203_)
                      (with-output-to-file
                       (cons 'path:
                             (cons _path21203_
                                   (cons 'permissions: (cons '420 '()))))
                       (lambda ()
                         (begin
                           (displayln '"prelude:" '" " _prelude21214_)
                           (if _pkg21225_
                               (displayln '"package:" '" " _pkg21225_)
                               '#!void)
                           (displayln '"namespace:" '" " _ns21216_)
                           (newline)
                           (pretty-print _code21201_)
                           (if _rt21227_
                               (pretty-print
                                (cons '%#call
                                      (cons (cons '%#ref
                                                  (cons '_gx#load-module '()))
                                            (cons (cons '%#quote
                                                        (cons _rt21227_ '()))
                                                  '()))))
                               '#!void))))))))
               (_compile-phi21136_
                (lambda (_part21141_)
                  (let* ((_part2114221155_ _part21141_)
                         (_E2114421159_
                          (lambda ()
                            (error '"No clause matching" _part2114221155_)))
                         (_K2114521170_
                          (lambda (_code21162_
                                   _n21163_
                                   _phi21164_
                                   _phi-ctx21165_)
                            (let ((_code21168_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#generate-runtime-phi _code21162_))
                                    gx#current-expander-context
                                    _phi-ctx21165_
                                    gx#current-expander-phi
                                    _phi21164_)))
                              (gxc#compile-scm-file
                               (gxc#compile-output-file
                                _ctx21133_
                                _n21163_
                                '".scm")
                               _code21168_)))))
                    (if (##pair? _part2114221155_)
                        (let ((_hd2114621173_ (##car _part2114221155_))
                              (_tl2114721175_ (##cdr _part2114221155_)))
                          (let ((_phi-ctx21178_ _hd2114621173_))
                            (if (##pair? _tl2114721175_)
                                (let ((_hd2114821180_ (##car _tl2114721175_))
                                      (_tl2114921182_ (##cdr _tl2114721175_)))
                                  (let ((_phi21185_ _hd2114821180_))
                                    (if (##pair? _tl2114921182_)
                                        (let ((_hd2115021187_
                                               (##car _tl2114921182_))
                                              (_tl2115121189_
                                               (##cdr _tl2114921182_)))
                                          (let ((_n21192_ _hd2115021187_))
                                            (if (##pair? _tl2115121189_)
                                                (let ((_hd2115221194_
                                                       (##car _tl2115121189_))
                                                      (_tl2115321196_
                                                       (##cdr _tl2115121189_)))
                                                  (let ((_code21199_
                                                         _hd2115221194_))
                                                    (if (##null? _tl2115321196_)
                                                        (_K2114521170_
                                                         _code21199_
                                                         _n21192_
                                                         _phi21185_
                                                         _phi-ctx21178_)
                                                        (_E2114421159_))))
                                                (_E2114421159_))))
                                        (_E2114421159_))))
                                (_E2114421159_))))
                        (_E2114421159_))))))
        (let ((_g21650_ (gxc#generate-meta-code _ctx21133_)))
          (begin
            (let ((_g21651_ (values-count _g21650_)))
              (if (not (fx= _g21651_ 2))
                  (error "Context expects 2 values" _g21651_)))
            (let ((_ssi-code21138_ (values-ref _g21650_ 0))
                  (_phi-code21139_ (values-ref _g21650_ 1)))
              (begin
                (_compile-ssi21135_ _ssi-code21138_)
                (for-each _compile-phi21136_ _phi-code21139_))))))))
  (define gxc#compile-ssxi-code
    (lambda (_ctx21116_)
      (let* ((_path21118_ (gxc#compile-output-file _ctx21116_ '#f '".ssxi.ss"))
             (_code21120_
              (gxc#apply-generate-ssxi
               (##structure-ref _ctx21116_ '11 gx#module-context::t '#f)))
             (_idstr21122_
              (symbol->string
               (##structure-ref _ctx21116_ '1 gx#expander-context::t '#f)))
             (_pkg21129_
              (let ((_$e21124_ (string-rindex _idstr21122_ '#\/)))
                (if _$e21124_
                    ((lambda (_x21127_)
                       (string->symbol (substring _idstr21122_ '0 _x21127_)))
                     _$e21124_)
                    '#f))))
        (begin
          (gxc#verbose '"compile " _path21118_)
          (with-output-to-file
           (cons 'path:
                 (cons _path21118_ (cons 'permissions: (cons '420 '()))))
           (lambda ()
             (begin
               (displayln '"prelude: :gerbil/compiler/ssxi")
               (if _pkg21129_ (displayln '"package: " _pkg21129_) '#!void)
               (newline)
               (pretty-print _code21120_))))))))
  (define gxc#generate-meta-code
    (lambda (_ctx21109_)
      (let* ((_state21111_
              (let ((__obj21640 (make-object gxc#meta-state::t '4)))
                (begin
                  (gxc#meta-state:::init! __obj21640 _ctx21109_)
                  __obj21640)))
             (_ssi-code21113_
              (gxc#apply-generate-meta
               (##structure-ref _ctx21109_ '11 gx#module-context::t '#f)
               _state21111_)))
        (values _ssi-code21113_ (gxc#meta-state-end! _state21111_)))))
  (define gxc#generate-runtime-phi
    (lambda (_stx21102_)
      (let ((_lifts21104_ (box '())))
        (call-with-parameters
         (lambda ()
           (let ((_code21107_ (gxc#apply-generate-runtime-phi _stx21102_)))
             (if (null? (unbox _lifts21104_))
                 _code21107_
                 (cons 'begin
                       (foldr1 cons
                               (cons _code21107_ '())
                               (reverse (unbox _lifts21104_)))))))
         gxc#current-compile-lift
         _lifts21104_
         gxc#current-compile-marks
         (make-hash-table-eq)))))
  (define gxc#lift-nested-modules
    (lambda (_ctx21098_)
      (let ((_modules21100_ (box '())))
        (begin
          (gxc#apply-lift-modules
           (##structure-ref _ctx21098_ '11 gx#module-context::t '#f)
           _modules21100_)
          (reverse (unbox _modules21100_))))))
  (define gxc#compile-scm-file
    (lambda (_path21094_ _code21095_)
      (begin
        (gxc#verbose '"compile " _path21094_)
        (with-output-to-file
         (cons 'path: (cons _path21094_ (cons 'permissions: (cons '420 '()))))
         (lambda ()
           (begin
             (pretty-print
              '(declare (block) (standard-bindings) (extended-bindings)))
             (pretty-print _code21095_))))
        (if (gxc#current-compile-invoke-gsc)
            (gxc#gsc-compile-file _path21094_)
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path21094_)))))
  (define gxc#gsc-debug-options
    (lambda ()
      (let ((_$e21086_ (gxc#current-compile-debug)))
        (if _$e21086_
            ((lambda (_debug21089_)
               (let ((_$e21091_ _debug21089_))
                 (if (eq? _$e21091_ 'env)
                     (cons '"-debug-environments" '())
                     (if (eq? _$e21091_ 'src)
                         (cons '"-debug-environments"
                               (cons '"-debug-source" '()))
                         (if (memq _$e21091_ '(all #t))
                             (cons '"-debug" '())
                             (gxc#raise-compile-error
                              '"unknown debug option"
                              _debug21089_))))))
             _$e21086_)
            '()))))
  (define gxc#gsc-compile-file
    (lambda (_path21068_)
      (let* ((_gsc-args21075_
              (let ((_$e21070_ (gxc#current-compile-gsc-options)))
                (if _$e21070_
                    ((lambda (_opts21073_)
                       (foldr1 cons (cons _path21068_ '()) _opts21073_))
                     _$e21070_)
                    (cons _path21068_ '()))))
             (_gsc-args21077_
              (foldr1 cons _gsc-args21075_ (gxc#gsc-debug-options)))
             (_g21652_
              (gxc#verbose '"invoke gsc " (cons 'gsc _gsc-args21077_)))
             (_proc21080_
              (open-process
               (cons 'path:
                     (cons '"gsc"
                           (cons 'arguments:
                                 (cons _gsc-args21077_
                                       (cons 'stdout-redirection:
                                             (cons '#f '()))))))))
             (_status21082_ (process-status _proc21080_)))
        (if (zero? _status21082_)
            '#!void
            (gxc#raise-compile-error
             '"Compilation error; gsc exit with nonzero status"
             _path21068_
             _status21082_)))))
  (define gxc#compile-output-file
    (lambda (_ctx21040_ _n21041_ _ext21042_)
      (letrec ((_module-relative-path21044_
                (lambda (_ctx21066_)
                  (path-strip-directory
                   (symbol->string
                    (##structure-ref
                     _ctx21066_
                     '1
                     gx#expander-context::t
                     '#f)))))
               (_module-source-directory21045_
                (lambda (_ctx21062_)
                  (path-directory
                   (let ((_mpath21064_
                          (##structure-ref
                           _ctx21062_
                           '7
                           gx#module-context::t
                           '#f)))
                     (if (string? _mpath21064_)
                         _mpath21064_
                         (last _mpath21064_))))))
               (_section-string21046_
                (lambda (_n21060_)
                  (if (number? _n21060_)
                      (number->string _n21060_)
                      (if (symbol? _n21060_)
                          (symbol->string _n21060_)
                          (if (string? _n21060_)
                              _n21060_
                              (gxc#raise-compile-error
                               '"Unexpected section"
                               _n21060_))))))
               (_file-name21047_
                (lambda (_path21058_)
                  (if _n21041_
                      (string-append
                       _path21058_
                       '"__"
                       (_section-string21046_ _n21041_)
                       _ext21042_)
                      (string-append _path21058_ _ext21042_))))
               (_file-path21048_
                (lambda ()
                  (let ((_$e21053_ (gxc#current-compile-output-dir)))
                    (if _$e21053_
                        ((lambda (_outdir21056_)
                           (path-expand
                            (_file-name21047_
                             (symbol->string
                              (##structure-ref
                               _ctx21040_
                               '1
                               gx#expander-context::t
                               '#f)))
                            _outdir21056_))
                         _$e21053_)
                        (path-expand
                         (_file-name21047_
                          (_module-relative-path21044_ _ctx21040_))
                         (_module-source-directory21045_ _ctx21040_)))))))
        (let ((_path21050_ (_file-path21048_)))
          (begin
            (create-directory* (path-directory _path21050_))
            _path21050_)))))
  (define gxc#compile-static-output-file
    (lambda (_ctx21023_)
      (letrec ((_file-name21025_
                (lambda (_idstr21038_)
                  (string-append
                   (gxc#static-module-name _idstr21038_)
                   '".scm")))
               (_file-path21026_
                (lambda ()
                  (let* ((_file21031_
                          (_file-name21025_
                           (symbol->string
                            (##structure-ref
                             _ctx21023_
                             '1
                             gx#expander-context::t
                             '#f))))
                         (_$e21033_ (gxc#current-compile-output-dir)))
                    (if _$e21033_
                        ((lambda (_outdir21036_)
                           (path-expand
                            _file21031_
                            (path-expand '"static" _outdir21036_)))
                         _$e21033_)
                        (path-expand _file21031_ '"static"))))))
        (let ((_path21028_ (_file-path21026_)))
          (begin
            (create-directory* (path-directory _path21028_))
            _path21028_)))))
  (define gxc#compile-exe-output-file
    (lambda (_ctx21010_ _opts21011_)
      (let ((_$e21013_ (pgetq 'output-file: _opts21011_)))
        (if _$e21013_
            (values _$e21013_)
            (let* ((_mod-str21016_
                    (symbol->string
                     (##structure-ref
                      _ctx21010_
                      '1
                      gx#expander-context::t
                      '#f)))
                   (_$e21018_ (string-rindex _mod-str21016_ '#\/)))
              (if _$e21018_
                  ((lambda (_ix21021_)
                     (substring
                      _mod-str21016_
                      (fx+ _ix21021_ '1)
                      (string-length _mod-str21016_)))
                   _$e21018_)
                  _mod-str21016_))))))
  (define gxc#static-module-name
    (lambda (_idstr21006_)
      (if (string? _idstr21006_)
          (let ((_strs21008_ (string-split _idstr21006_ '#\/)))
            (string-join _strs21008_ '"__"))
          (if (symbol? _idstr21006_)
              (gxc#static-module-name (symbol->string _idstr21006_))
              (error '"Bad module id" _idstr21006_))))))
