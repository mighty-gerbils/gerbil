(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707601722)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda () (inexact->exact (floor (time->seconds (current-time))))))
    (define gxc#compile-timestamp-nanos
      (lambda () (time->seconds (current-time))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_path288776_ _fun288777_)
        (with-output-to-file
         (let ((__tmp293338
                (let ()
                  (declare (not safe))
                  (cons _path288776_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp293338))
         _fun288777_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (getenv '"GERBIL_GSC" gxc#default-gerbil-gsc)))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (getenv '"GERBIL_GCC" gxc#default-gerbil-gcc)))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+ (getenv '"GERBIL_AR" gxc#default-gerbil-ar)))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-rpath
      (lambda (_gerbil-libdir288771_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir288771_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/system"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir288769_) (delete-file-or-directory _dir288769_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath288743_ _opts288744_)
        (if (let () (declare (not safe)) (string? _srcpath288743_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288743_)))
        (let ((_outdir288746_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288744_)))
              (_invoke-gsc?288747_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288744_)))
              (_gsc-options288748_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288744_)))
              (_keep-scm?288749_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288744_)))
              (_verbosity288750_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288744_)))
              (_optimize288751_
               (let () (declare (not safe)) (pgetq 'optimize: _opts288744_)))
              (_debug288752_
               (let () (declare (not safe)) (pgetq 'debug: _opts288744_)))
              (_gen-ssxi288753_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts288744_))))
          (if _outdir288746_
              (let ((__tmp293339
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288746_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293339))
              '#!void)
          (if _optimize288751_
              (let ((__tmp293340
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293340))
              '#!void)
          (let ((__tmp293344
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath288743_))
                   (let ((__tmp293345
                          (let ((__tmp293346
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288743_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293346))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp293345))))
                (__tmp293343
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293341
                 (let ((__tmp293342
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288743_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp293342))))
            (declare (not safe))
            (call-with-parameters
             __tmp293344
             gxc#current-compile-output-dir
             _outdir288746_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288747_
             gxc#current-compile-gsc-options
             _gsc-options288748_
             gxc#current-compile-keep-scm
             _keep-scm?288749_
             gxc#current-compile-verbose
             _verbosity288750_
             gxc#current-compile-optimize
             _optimize288751_
             gxc#current-compile-debug
             _debug288752_
             gxc#current-compile-generate-ssxi
             _gen-ssxi288753_
             gxc#current-compile-timestamp
             __tmp293343
             gxc#current-compile-context
             __tmp293341
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath288762_)
        (let ((_opts288764_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath288762_ _opts288764_))))
    (define gxc#compile-module
      (lambda _g293348_
        (let ((_g293347_ (let () (declare (not safe)) (##length _g293348_))))
          (cond ((let () (declare (not safe)) (##fx= _g293347_ 1))
                 (apply (lambda (_srcpath288762_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath288762_)))
                        _g293348_))
                ((let () (declare (not safe)) (##fx= _g293347_ 2))
                 (apply (lambda (_srcpath288766_ _opts288767_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath288766_
                             _opts288767_)))
                        _g293348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g293348_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath288719_ _opts288720_)
        (if (let () (declare (not safe)) (string? _srcpath288719_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288719_)))
        (let ((_outdir288722_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288720_)))
              (_invoke-gsc?288723_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288720_)))
              (_gsc-options288724_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288720_)))
              (_keep-scm?288725_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288720_)))
              (_verbosity288726_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288720_)))
              (_debug288727_
               (let () (declare (not safe)) (pgetq 'debug: _opts288720_))))
          (if _outdir288722_
              (let ((__tmp293349
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288722_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293349))
              '#!void)
          (let ((__tmp293353
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath288719_))
                   (let ((__tmp293354
                          (let ((__tmp293355
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288719_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293355))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp293354
                      _opts288720_))))
                (__tmp293352
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293350
                 (let ((__tmp293351
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288719_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp293351))))
            (declare (not safe))
            (call-with-parameters
             __tmp293353
             gxc#current-compile-output-dir
             _outdir288722_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288723_
             gxc#current-compile-gsc-options
             _gsc-options288724_
             gxc#current-compile-keep-scm
             _keep-scm?288725_
             gxc#current-compile-verbose
             _verbosity288726_
             gxc#current-compile-debug
             _debug288727_
             gxc#current-compile-timestamp
             __tmp293352
             gxc#current-compile-context
             __tmp293350
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath288735_)
        (let ((_opts288737_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath288735_ _opts288737_))))
    (define gxc#compile-exe
      (lambda _g293357_
        (let ((_g293356_ (let () (declare (not safe)) (##length _g293357_))))
          (cond ((let () (declare (not safe)) (##fx= _g293356_ 1))
                 (apply (lambda (_srcpath288735_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath288735_)))
                        _g293357_))
                ((let () (declare (not safe)) (##fx= _g293356_ 2))
                 (apply (lambda (_srcpath288739_ _opts288740_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath288739_ _opts288740_)))
                        _g293357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g293357_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx288715_ _opts288716_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts288716_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx288715_
               _opts288716_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx288715_
               _opts288716_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx288598_ _opts288599_)
        (letrec ((_generate-stub288601_
                  (lambda (_builtin-modules288711_)
                    (let ((_mod-main288713_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288598_ 'main))))
                      (write (let ((__tmp293358
                                    (let ((__tmp293359
                                           (let ((__tmp293360
                                                  (let ((__tmp293361
                                                         (let ((__tmp293363
                                                                (let ((__tmp293364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules288711_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293364)))
                       (__tmp293362
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp293363 __tmp293362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp293361))))
                                             (declare (not safe))
                                             (cons __tmp293360 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp293359))))
                               (declare (not safe))
                               (cons 'define __tmp293358)))
                      (write (let ((__tmp293365
                                    (let ((__tmp293404
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293366
                                           (let ((__tmp293367
                                                  (let ((__tmp293368
                                                         (let ((__tmp293392
                                                                (let ((__tmp293393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293394
                                      (let ((__tmp293402
                                             (let ((__tmp293403
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp293403)))
                                            (__tmp293395
                                             (let ((__tmp293396
                                                    (let ((__tmp293397
                                                           (let ((__tmp293398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293399
                                 (let ((__tmp293400
                                        (let ((__tmp293401
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp293401 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp293400))))
                            (declare (not safe))
                            (cons __tmp293399 '()))))
                     (declare (not safe))
                     (cons _mod-main288713_ __tmp293398))))
              (declare (not safe))
              (cons 'apply __tmp293397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293396 '()))))
                                        (declare (not safe))
                                        (cons __tmp293402 __tmp293395))))
                                 (declare (not safe))
                                 (cons '() __tmp293394))))
                          (declare (not safe))
                          (cons 'lambda __tmp293393)))
                       (__tmp293369
                        (let ((__tmp293370
                               (let ((__tmp293371
                                      (let ((__tmp293372
                                             (let ((__tmp293383
                                                    (let ((__tmp293384
                                                           (let ((__tmp293385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293386
                                 (let ((__tmp293387
                                        (let ((__tmp293388
                                               (let ((__tmp293389
                                                      (let ((__tmp293390
                                                             (let ((__tmp293391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp293391 '()))))
                (declare (not safe))
                (cons 'force-output __tmp293390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp293389 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp293388))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp293387))))
                            (declare (not safe))
                            (cons __tmp293386 '()))))
                     (declare (not safe))
                     (cons 'void __tmp293385))))
              (declare (not safe))
              (cons 'with-catch __tmp293384)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp293373
                                                    (let ((__tmp293374
                                                           (let ((__tmp293375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293376
                                 (let ((__tmp293377
                                        (let ((__tmp293378
                                               (let ((__tmp293379
                                                      (let ((__tmp293380
                                                             (let ((__tmp293381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp293382
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp293382 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp293381))))
                (declare (not safe))
                (cons __tmp293380 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp293379))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp293378))))
                                   (declare (not safe))
                                   (cons __tmp293377 '()))))
                            (declare (not safe))
                            (cons 'void __tmp293376))))
                     (declare (not safe))
                     (cons 'with-catch __tmp293375))))
              (declare (not safe))
              (cons __tmp293374 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293383
                                                     __tmp293373))))
                                        (declare (not safe))
                                        (cons '() __tmp293372))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp293371))))
                          (declare (not safe))
                          (cons __tmp293370 '()))))
                   (declare (not safe))
                   (cons __tmp293392 __tmp293369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp293368))))
                                             (declare (not safe))
                                             (cons __tmp293367 '()))))
                                      (declare (not safe))
                                      (cons __tmp293404 __tmp293366))))
                               (declare (not safe))
                               (cons 'define __tmp293365)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts288602_
                  (lambda (_libgerbil288709_)
                    (call-with-input-file
                     (string-append _libgerbil288709_ '".ldd")
                     read)))
                 (_replace-extension288603_
                  (lambda (_path288706_ _ext288707_)
                    (string-append
                     (path-strip-extension _path288706_)
                     _ext288707_)))
                 (_not-exclude-module?288604_
                  (lambda (_ctx288702_)
                    (let ((_id-str288704_
                           (symbol->string
                            (##structure-ref
                             _ctx288702_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp293406
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str288704_))))
                            (declare (not safe))
                            (not __tmp293406))
                          (let ((__tmp293405
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str288704_))))
                            (declare (not safe))
                            (not __tmp293405))
                          '#f))))
                 (_not-file-empty?288605_
                  (lambda (_path288700_)
                    (let ((__tmp293407
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path288700_))))
                      (declare (not safe))
                      (not __tmp293407))))
                 (_compile-stub288606_
                  (lambda (_output-scm288613_ _output-bin288614_)
                    (let* ((_gerbil-home288616_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288618_
                            (path-expand '"lib" _gerbil-home288616_))
                           (_gerbil-staticdir288620_
                            (path-expand '"static" _gerbil-libdir288618_))
                           (_gxlink288622_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir288618_))
                           (_tmp288624_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path288628_
                            (lambda (_f288626_)
                              (path-expand
                               (path-strip-directory _f288626_)
                               _tmp288624_)))
                           (_deps288630_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288598_)))
                           (_deps288632_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?288604_
                                      _deps288630_)))
                           (_src-deps-scm288634_
                            (map gxc#find-static-module-file _deps288632_))
                           (_src-deps-scm288636_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?288605_
                                      _src-deps-scm288634_)))
                           (_src-deps-scm288638_
                            (map path-expand _src-deps-scm288636_))
                           (_deps-scm288640_
                            (map _tmp-path288628_ _src-deps-scm288638_))
                           (_deps-c288646_
                            (map (lambda (_g288641288643_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288603_
                                      _g288641288643_
                                      '".c")))
                                 _deps-scm288640_))
                           (_deps-o288652_
                            (map (lambda (_g288647288649_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288603_
                                      _g288647288649_
                                      '".o")))
                                 _deps-scm288640_))
                           (_src-bin-scm288654_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288598_)))
                           (_src-bin-scm288656_
                            (path-expand _src-bin-scm288654_))
                           (_bin-scm288658_
                            (let ()
                              (declare (not safe))
                              (_tmp-path288628_ _src-bin-scm288656_)))
                           (_bin-c288660_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288603_
                               _bin-scm288658_
                               '".c")))
                           (_bin-o288662_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288603_
                               _bin-scm288658_
                               '".o")))
                           (_output-bin288664_
                            (path-expand _output-bin288614_))
                           (_output-scm288666_
                            (path-expand _output-scm288613_))
                           (_output-c288668_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288603_
                               _output-scm288666_
                               '".c")))
                           (_output-o288670_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288603_
                               _output-scm288666_
                               '".o")))
                           (_output_-c288672_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288603_
                               _output-scm288666_
                               '"_.c")))
                           (_output_-o288674_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288603_
                               _output-scm288666_
                               '"_.o")))
                           (_gsc-link-opts288676_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288678_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288680_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir288620_)))
                           (_output-ld-opts288682_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a288684_
                            (path-expand '"libgerbil.a" _gerbil-libdir288618_))
                           (_libgerbil.so288686_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir288618_))
                           (_libgerbil-ld-opts288688_
                            (if (file-exists? _libgerbil.so288686_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts288602_
                                   _libgerbil.so288686_))
                                (if (file-exists? _libgerbil.a288684_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts288602_
                                       _libgerbil.a288684_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a288684_
                                       _libgerbil.so288686_)))))
                           (_rpath288690_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288618_)))
                           (_builtin-modules288694_
                            (map (lambda (_mod288692_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod288692_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx288598_ _deps288632_)))))
                      (let ((__tmp293408
                             (lambda ()
                               (let ((__tmp293409
                                      (path-directory _output-bin288664_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293409)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293408))
                      (let ((__tmp293410
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub288601_
                                  _builtin-modules288694_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288666_
                         __tmp293410))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293411
                                   (lambda () (create-directory _tmp288624_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp293411))
                            (for-each
                             copy-file
                             _src-deps-scm288638_
                             _deps-scm288640_)
                            (copy-file _src-bin-scm288656_ _bin-scm288658_)
                            (let ((__tmp293419
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293412
                                   (let ((__tmp293413
                                          (let ((__tmp293414
                                                 (let ((__tmp293415
                                                        (let ((__tmp293416
                                                               (let ((__tmp293417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293418
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm288666_ '()))))
                                (declare (not safe))
                                (cons _bin-scm288658_ __tmp293418))))
                         (declare (not safe))
                         (foldr1 cons __tmp293417 _deps-scm288640_))))
                  (declare (not safe))
                  (foldr1 cons __tmp293416 _gsc-link-opts288676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink288622_
                                                         __tmp293415))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp293414))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293413))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293419
                               __tmp293412))
                            (let ((__tmp293427
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293420
                                   (let ((__tmp293421
                                          (let ((__tmp293422
                                                 (let ((__tmp293423
                                                        (let ((__tmp293424
                                                               (let ((__tmp293425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293426
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c288672_ '()))))
                                (declare (not safe))
                                (cons _output-c288668_ __tmp293426))))
                         (declare (not safe))
                         (cons _bin-c288660_ __tmp293425))))
                  (declare (not safe))
                  (foldr1 cons __tmp293424 _deps-c288646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293423
                                                           _gsc-static-opts288680_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293422
                                                    _gsc-cc-opts288678_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293421))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293427
                               __tmp293420))
                            (let ((__tmp293440
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293428
                                   (let ((__tmp293429
                                          (let ((__tmp293430
                                                 (let ((__tmp293431
                                                        (let ((__tmp293432
                                                               (let ((__tmp293433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293434
                                     (let ((__tmp293435
                                            (let ((__tmp293436
                                                   (let ((__tmp293437
                                                          (let ((__tmp293438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp293439
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts288688_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp293439))))
                    (declare (not safe))
                    (cons _gerbil-libdir288618_ __tmp293438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp293437))))
                                              (declare (not safe))
                                              (cons _rpath288690_
                                                    __tmp293436))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp293435
                                               _output-ld-opts288682_))))
                                (declare (not safe))
                                (cons _output_-o288674_ __tmp293434))))
                         (declare (not safe))
                         (cons _output-o288670_ __tmp293433))))
                  (declare (not safe))
                  (cons _bin-o288662_ __tmp293432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293431
                                                           _deps-o288652_))))
                                            (declare (not safe))
                                            (cons _output-bin288664_
                                                  __tmp293430))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293429))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293440
                               __tmp293428))
                            (for-each
                             delete-file
                             (let ((__tmp293441
                                    (let ((__tmp293442
                                           (let ((__tmp293443
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o288674_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o288670_
                                                   __tmp293443))))
                                      (declare (not safe))
                                      (cons _output_-c288672_ __tmp293442))))
                               (declare (not safe))
                               (cons _output-c288668_ __tmp293441)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp288624_)))
                          '#!void)))))
          (let* ((_output-bin288608_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288598_ _opts288599_)))
                 (_output-scm288610_
                  (string-append _output-bin288608_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288606_ _output-scm288610_ _output-bin288608_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288610_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx288423_ _opts288424_)
        (letrec ((_reset-declare288426_
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
                 (_generate-stub288427_
                  (lambda (_deps288589_)
                    (let ((_mod-main288591_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288423_ 'main)))
                          (_reset-decl288592_
                           (let ()
                             (declare (not safe))
                             (_reset-declare288426_)))
                          (_user-decl288593_
                           (let ()
                             (declare (not safe))
                             (_user-declare288428_))))
                      (for-each
                       (lambda (_dep288595_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl288592_)
                         (newline)
                         (if _user-decl288593_
                             (begin (write _user-decl288593_) (newline))
                             '#!void)
                         (write (let ((__tmp293444
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep288595_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp293444)))
                         (newline))
                       _deps288589_)
                      (write (let ((__tmp293445
                                    (let ((__tmp293458
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293446
                                           (let ((__tmp293454
                                                  (let ((__tmp293455
                                                         (let ((__tmp293456
                                                                (let ((__tmp293457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293457))))
                   (declare (not safe))
                   (cons __tmp293456 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp293455)))
                                                 (__tmp293447
                                                  (let ((__tmp293448
                                                         (let ((__tmp293449
                                                                (let ((__tmp293450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293451
                                      (let ((__tmp293452
                                             (let ((__tmp293453
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp293453 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp293452))))
                                 (declare (not safe))
                                 (cons __tmp293451 '()))))
                          (declare (not safe))
                          (cons _mod-main288591_ __tmp293450))))
                   (declare (not safe))
                   (cons 'apply __tmp293449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293448 '()))))
                                             (declare (not safe))
                                             (cons __tmp293454 __tmp293447))))
                                      (declare (not safe))
                                      (cons __tmp293458 __tmp293446))))
                               (declare (not safe))
                               (cons 'define __tmp293445)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare288428_
                  (lambda ()
                    (let* ((_gsc-opts288494_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts288424_)))
                           (_gsc-prelude288496_
                            (if _gsc-opts288494_
                                (member '"-prelude" _gsc-opts288494_)
                                '#f))
                           (_gsc-prelude288498_
                            (if _gsc-prelude288496_
                                (read (open-input-string
                                       (cadr _gsc-prelude288496_)))
                                '#f)))
                      (let _lp288501_ ((_rest288503_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude288498_ '())))
                                       (_user-decls288504_ '()))
                        (let* ((_rest288505288513_ _rest288503_)
                               (_else288507288521_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls288504_))
                                      '#f
                                      (let ((__tmp293459
                                             (reverse _user-decls288504_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp293459)))))
                               (_K288509288577_
                                (lambda (_rest288524_ _expr288525_)
                                  (let* ((_expr288526288538_ _expr288525_)
                                         (_else288529288546_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp288501_
                                               _rest288524_
                                               _user-decls288504_)))))
                                    (let ((_K288534288567_
                                           (lambda (_decls288565_)
                                             (let ((__tmp293460
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls288504_
                                                              _decls288565_))))
                                               (declare (not safe))
                                               (_lp288501_
                                                _rest288524_
                                                __tmp293460))))
                                          (_K288531288552_
                                           (lambda (_exprs288550_)
                                             (let ((__tmp293461
                                                    (append _exprs288550_
                                                            _rest288524_)))
                                               (declare (not safe))
                                               (_lp288501_
                                                __tmp293461
                                                _user-decls288504_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr288526288538_))
                                          (let ((_tl288536288572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr288526288538_)))
                                                (_hd288535288570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr288526288538_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd288535288570_
                                                         'declare))
                                                (let ((_decls288575_
                                                       _tl288536288572_))
                                                  (declare (not safe))
                                                  (_K288534288567_
                                                   _decls288575_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd288535288570_
                                                             'begin))
                                                    (let ((_exprs288560_
                                                           _tl288536288572_))
                                                      (declare (not safe))
                                                      (_K288531288552_
                                                       _exprs288560_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else288529288546_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else288529288546_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest288505288513_))
                              (let ((_hd288510288580_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest288505288513_)))
                                    (_tl288511288582_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest288505288513_))))
                                (let* ((_expr288585_ _hd288510288580_)
                                       (_rest288587_ _tl288511288582_))
                                  (declare (not safe))
                                  (_K288509288577_ _rest288587_ _expr288585_)))
                              (let ()
                                (declare (not safe))
                                (_else288507288521_))))))))
                 (_compile-stub288429_
                  (lambda (_output-scm288436_ _output-bin288437_)
                    (let* ((_gerbil-home288439_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288441_
                            (path-expand '"lib" _gerbil-home288439_))
                           (_runtime288443_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp288445_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home288439_))
                           (_include-gambit-sharp288447_
                            (string-append
                             '"(include \""
                             _gambit-sharp288445_
                             '"\")"))
                           (_bin-scm288449_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288423_)))
                           (_deps288451_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288423_)))
                           (_deps288453_
                            (map gxc#find-static-module-file _deps288451_))
                           (_deps288458_
                            (let ((__tmp293462
                                   (lambda (_$obj288455_)
                                     (let ((__tmp293463
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj288455_))))
                                       (declare (not safe))
                                       (not __tmp293463)))))
                              (declare (not safe))
                              (filter __tmp293462 _deps288453_)))
                           (_deps288462_
                            (let ((__tmp293464
                                   (lambda (_f288460_)
                                     (let ((__tmp293465
                                            (member _f288460_
                                                    _runtime288443_)))
                                       (declare (not safe))
                                       (not __tmp293465)))))
                              (declare (not safe))
                              (filter __tmp293464 _deps288458_)))
                           (_output-base288464_
                            (string-append
                             (path-strip-extension _output-scm288436_)))
                           (_output-c288466_
                            (string-append _output-base288464_ '".c"))
                           (_output-o288468_
                            (string-append _output-base288464_ '".o"))
                           (_output-c_288470_
                            (string-append _output-base288464_ '"_.c"))
                           (_output-o_288472_
                            (string-append _output-base288464_ '"_.o"))
                           (_gsc-link-opts288474_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288476_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288478_
                            (let ((__tmp293466
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir288441_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp293466)))
                           (_output-ld-opts288480_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros288482_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp293468
                                       (let ((__tmp293469
                                              (let ((__tmp293470
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp288447_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp293470))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp293469))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293468))
                                (let ((__tmp293467
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp288447_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293467))))
                           (_gsc-link-opts288484_
                            (append _gsc-link-opts288474_
                                    _gsc-gx-macros288482_))
                           (_rpath288486_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288441_)))
                           (_default-ld-options288488_
                            (let ((__tmp293471
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp293471))))
                      (let ((__tmp293472
                             (lambda ()
                               (let ((__tmp293473
                                      (path-directory _output-bin288437_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293473)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293472))
                      (let ((__tmp293474
                             (lambda ()
                               (let ((__tmp293475
                                      (let ((__tmp293476
                                             (let ((__tmp293477
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm288449_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp293477
                                                       _deps288462_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp293476
                                                _runtime288443_))))
                                 (declare (not safe))
                                 (_generate-stub288427_ __tmp293475)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288436_
                         __tmp293474))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293483
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293478
                                   (let ((__tmp293479
                                          (let ((__tmp293480
                                                 (let ((__tmp293481
                                                        (let ((__tmp293482
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm288436_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp293482 _gsc-link-opts288484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_288470_
                                                         __tmp293481))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp293480))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293479))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293483
                               __tmp293478))
                            (let ((__tmp293489
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293484
                                   (let ((__tmp293485
                                          (let ((__tmp293486
                                                 (let ((__tmp293487
                                                        (let ((__tmp293488
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_288470_ '()))))
                  (declare (not safe))
                  (cons _output-c288466_ __tmp293488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293487
                                                           _gsc-static-opts288478_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293486
                                                    _gsc-cc-opts288476_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293485))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293489
                               __tmp293484))
                            (let ((__tmp293499
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293490
                                   (let ((__tmp293491
                                          (let ((__tmp293492
                                                 (let ((__tmp293493
                                                        (let ((__tmp293494
                                                               (let ((__tmp293495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293496
                                     (let ((__tmp293497
                                            (let ((__tmp293498
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options288488_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir288441_
                                                    __tmp293498))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp293497))))
                                (declare (not safe))
                                (cons _rpath288486_ __tmp293496))))
                         (declare (not safe))
                         (foldr1 cons __tmp293495 _output-ld-opts288480_))))
                  (declare (not safe))
                  (cons _output-o_288472_ __tmp293494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o288468_
                                                         __tmp293493))))
                                            (declare (not safe))
                                            (cons _output-bin288437_
                                                  __tmp293492))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293491))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293499
                               __tmp293490)))
                          '#!void)))))
          (let* ((_output-bin288431_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288423_ _opts288424_)))
                 (_output-scm288433_
                  (string-append _output-bin288431_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288429_ _output-scm288433_ _output-bin288431_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288433_))))))
    (define gxc#find-export-binding
      (lambda (_ctx288373_ _id288374_)
        (let ((_$e288420_
               (let ((__tmp293501
                      (lambda (_e288375288377_)
                        (let* ((_g288379288389_ _e288375288377_)
                               (_else288381288397_ (lambda () '#f))
                               (_K288383288401_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g288379288389_
                                 'gx#module-export::t))
                              (let* ((_e288384288404_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288379288389_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e288385288407_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288379288389_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e288386288410_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288379288389_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e288386288410_ '0))
                                    (let ((_e288387288413_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g288379288389_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g288415288417_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g288415288417_
                                                    _id288374_)))
                                           _e288387288413_)
                                          (let ()
                                            (declare (not safe))
                                            (_K288383288401_))
                                          (let ()
                                            (declare (not safe))
                                            (_else288381288397_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else288381288397_))))
                              (let ()
                                (declare (not safe))
                                (_else288381288397_))))))
                     (__tmp293500
                      (##structure-ref
                       _ctx288373_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp293501 __tmp293500))))
          (if _$e288420_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e288420_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx288365_ _id288366_)
        (let ((_$e288368_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx288365_ _id288366_))))
          (if _$e288368_
              ((lambda (_bind288371_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind288371_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id288366_)))
                 (##structure-ref _bind288371_ '1 gx#binding::t '#f))
               _$e288368_)
              (let ((__tmp293502
                     (##structure-ref
                      _ctx288365_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp293502
                 _id288366_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx288252_)
        (letrec* ((_ht288254_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template288255_
                   (lambda (_in288317_ _phi288318_)
                     (let ((_iphi288320_
                            (fx+ _phi288318_
                                 (##direct-structure-ref
                                  _in288317_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports288321_
                            (##structure-ref
                             (##direct-structure-ref
                              _in288317_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp288323_ ((_rest288325_ _imports288321_)
                                        (_r288326_ '()))
                         (let* ((_rest288327288335_ _rest288325_)
                                (_else288329288343_ (lambda () _r288326_))
                                (_K288331288353_
                                 (lambda (_rest288346_ _in288347_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in288347_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi288320_))
                                           (let ((__tmp293509
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in288347_
                                                          _r288326_))))
                                             (declare (not safe))
                                             (_lp288323_
                                              _rest288346_
                                              __tmp293509))
                                           (let ()
                                             (declare (not safe))
                                             (_lp288323_
                                              _rest288346_
                                              _r288326_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in288347_
                                              'gx#module-import::t))
                                           (let ((_iphi288349_
                                                  (fx+ _phi288318_
                                                       (##direct-structure-ref
                                                        _in288347_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi288349_))
                                                 (let ((__tmp293507
                                                        (let ((__tmp293508
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in288347_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp293508 _r288326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp288323_
                                                    _rest288346_
                                                    __tmp293507))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp288323_
                                                    _rest288346_
                                                    _r288326_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in288347_
                                                  'gx#import-set::t))
                                               (let ((_xphi288351_
                                                      (fx+ _iphi288320_
                                                           (##direct-structure-ref
                                                            _in288347_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi288351_))
                                                     (let ((__tmp293505
                                                            (let ((__tmp293506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in288347_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp293506 _r288326_))))
               (declare (not safe))
               (_lp288323_ _rest288346_ __tmp293505))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi288351_)
                                                         (let ((__tmp293503
                                                                (let ((__tmp293504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template288255_
                                  _in288347_
                                  _iphi288320_))))
                          (declare (not safe))
                          (foldl1 cons _r288326_ __tmp293504))))
                   (declare (not safe))
                   (_lp288323_ _rest288346_ __tmp293503))
                 (let ()
                   (declare (not safe))
                   (_lp288323_ _rest288346_ _r288326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp288323_
                                                  _rest288346_
                                                  _r288326_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest288327288335_))
                               (let ((_hd288332288356_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest288327288335_)))
                                     (_tl288333288358_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest288327288335_))))
                                 (let* ((_in288361_ _hd288332288356_)
                                        (_rest288363_ _tl288333288358_))
                                   (declare (not safe))
                                   (_K288331288353_ _rest288363_ _in288361_)))
                               (let ()
                                 (declare (not safe))
                                 (_else288329288343_))))))))
                  (_find-deps288256_
                   (lambda (_rest288263_ _deps288264_)
                     (let* ((_rest288265288273_ _rest288263_)
                            (_else288267288281_ (lambda () _deps288264_))
                            (_K288269288305_
                             (lambda (_rest288284_ _hd288285_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd288285_
                                      'gx#module-context::t))
                                   (let ((_id288287_
                                          (##structure-ref
                                           _hd288285_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports288288_
                                          (##structure-ref
                                           _hd288285_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht288254_
                                            _id288287_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps288256_
                                            _rest288284_
                                            _deps288264_))
                                         (let ((_$e288290_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd288285_))))
                                           (if _$e288290_
                                               ((lambda (_pre288293_)
                                                  (let ((_xdeps288295_
                                                         (let ((__tmp293522
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre288293_ _imports288288_))))
                   (declare (not safe))
                   (_find-deps288256_ __tmp293522 _deps288264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht288254_
                                                       _id288287_
                                                       _hd288285_))
                                                    (let ((__tmp293523
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd288285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps288295_))))
              (declare (not safe))
              (_find-deps288256_ _rest288284_ __tmp293523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e288290_)
                                               (let ((_xdeps288297_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps288256_
                                                         _imports288288_
                                                         _deps288264_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht288254_
                                                    _id288287_
                                                    _hd288285_))
                                                 (let ((__tmp293521
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd288285_
                                                                _xdeps288297_))))
                                                   (declare (not safe))
                                                   (_find-deps288256_
                                                    _rest288284_
                                                    __tmp293521)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd288285_
                                          'gx#prelude-context::t))
                                       (let ((_id288299_
                                              (##structure-ref
                                               _hd288285_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht288254_
                                                _id288299_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps288256_
                                                _rest288284_
                                                _deps288264_))
                                             (let ((_xdeps288301_
                                                    (let ((__tmp293519
                                                           (##structure-ref
                                                            _hd288285_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps288256_
                                                       __tmp293519
                                                       _deps288264_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht288254_
                                                      _id288299_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps288256_
                                                      _rest288284_
                                                      _xdeps288301_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht288254_
                                                        _id288299_
                                                        _hd288285_))
                                                     (let ((__tmp293520
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd288285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps288301_))))
               (declare (not safe))
               (_find-deps288256_ _rest288284_ __tmp293520)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd288285_
                                              'gx#module-import::t))
                                           (if (let ((__tmp293518
                                                      (##direct-structure-ref
                                                       _hd288285_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp293518))
                                               (let ((__tmp293516
                                                      (let ((__tmp293517
                                                             (##direct-structure-ref
                                                              _hd288285_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293517
                                                              _rest288284_))))
                                                 (declare (not safe))
                                                 (_find-deps288256_
                                                  __tmp293516
                                                  _deps288264_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps288256_
                                                  _rest288284_
                                                  _deps288264_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd288285_
                                                  'gx#module-export::t))
                                               (let ((__tmp293514
                                                      (let ((__tmp293515
                                                             (##direct-structure-ref
                                                              _hd288285_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293515
                                                              _rest288284_))))
                                                 (declare (not safe))
                                                 (_find-deps288256_
                                                  __tmp293514
                                                  _deps288264_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd288285_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp293513
                                                              (##direct-structure-ref
                                                               _hd288285_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp293513))
                                                       (let ((__tmp293511
                                                              (let ((__tmp293512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd288285_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp293512 _rest288284_))))
                 (declare (not safe))
                 (_find-deps288256_ __tmp293511 _deps288264_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd288285_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps288303_
                           (let ()
                             (declare (not safe))
                             (_import-set-template288255_ _hd288285_ '0)))
                          (__tmp293510
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest288284_ _xdeps288303_))))
                     (declare (not safe))
                     (_find-deps288256_ __tmp293510 _deps288264_))
                   (let ()
                     (declare (not safe))
                     (_find-deps288256_ _rest288284_ _deps288264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd288285_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest288265288273_))
                           (let ((_hd288270288308_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest288265288273_)))
                                 (_tl288271288310_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest288265288273_))))
                             (let* ((_hd288313_ _hd288270288308_)
                                    (_rest288315_ _tl288271288310_))
                               (declare (not safe))
                               (_K288269288305_ _rest288315_ _hd288313_)))
                           (let ()
                             (declare (not safe))
                             (_else288267288281_)))))))
          (reverse (let ((__tmp293524
                          (let ((__tmp293525
                                 (let ((_$e288258_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx288252_))))
                                   (if _$e288258_
                                       ((lambda (_pre288261_)
                                          (let ((__tmp293526
                                                 (##structure-ref
                                                  _ctx288252_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre288261_ __tmp293526)))
                                        _$e288258_)
                                       (##structure-ref
                                        _ctx288252_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps288256_ __tmp293525 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp293524))))))
    (define gxc#find-static-module-file
      (lambda (_ctx288183_)
        (let* ((_context-id288185_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx288183_
                       'gx#module-context::t))
                    (##structure-ref _ctx288183_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx288183_)))
               (_scm288187_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id288185_))
                 '".scm"))
               (_dirs288189_ (gx#current-expander-module-library-path))
               (_dirs288195_
                (let ((_user-libpath288191_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath288191_
                      (let ((_user-libpath288193_
                             (path-expand '"lib" _user-libpath288191_)))
                        (if (member _user-libpath288193_ _dirs288189_)
                            _dirs288189_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath288193_ _dirs288189_))))
                      _dirs288189_)))
               (_dirs288204_
                (let ((_$e288197_ (gxc#current-compile-output-dir)))
                  (if _$e288197_
                      ((lambda (_g288199288201_)
                         (let ()
                           (declare (not safe))
                           (cons _g288199288201_ _dirs288195_)))
                       _$e288197_)
                      _dirs288195_)))
               (_dirs288210_
                (map (lambda (_g288205288207_)
                       (path-expand '"static" _g288205288207_))
                     _dirs288204_)))
          (let _lp288213_ ((_rest288215_ _dirs288210_))
            (let* ((_rest288216288224_ _rest288215_)
                   (_else288218288232_
                    (lambda ()
                      (let ((__tmp293527
                             (##structure-ref
                              _ctx288183_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp293527
                         _scm288187_))))
                   (_K288220288240_
                    (lambda (_rest288235_ _dir288236_)
                      (let ((_path288238_
                             (path-expand _scm288187_ _dir288236_)))
                        (if (file-exists? _path288238_)
                            _path288238_
                            (let ()
                              (declare (not safe))
                              (_lp288213_ _rest288235_)))))))
              (if (let () (declare (not safe)) (##pair? _rest288216288224_))
                  (let ((_hd288221288243_
                         (let ()
                           (declare (not safe))
                           (##car _rest288216288224_)))
                        (_tl288222288245_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest288216288224_))))
                    (let* ((_dir288248_ _hd288221288243_)
                           (_rest288250_ _tl288222288245_))
                      (declare (not safe))
                      (_K288220288240_ _rest288250_ _dir288248_)))
                  (let () (declare (not safe)) (_else288218288232_))))))))
    (define gxc#file-empty?
      (lambda (_path288181_)
        (let ((__tmp293528 (file-info-size (file-info _path288181_ '#t))))
          (declare (not safe))
          (zero? __tmp293528))))
    (define gxc#compile-top-module
      (lambda (_ctx288170_)
        (let ((__tmp293532
               (lambda ()
                 (let ((__tmp293533
                        (##structure-ref
                         _ctx288170_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp293533))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp293534
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx288170_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp293534))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx288170_))
                 (if (let ((__tmp293537
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx288170_))))
                       (declare (not safe))
                       (null? __tmp293537))
                     (let* ((_thr1288175_
                             (let ((__tmp293535
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx288170_)))))
                               (declare (not safe))
                               (spawn __tmp293535)))
                            (_thr2288178_
                             (let ((__tmp293536
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx288170_)))))
                               (declare (not safe))
                               (spawn __tmp293536))))
                       (let () (declare (not safe)) (gxc#join! _thr1288175_))
                       (let () (declare (not safe)) (gxc#join! _thr2288178_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx288170_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx288170_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx288170_))
                     '#!void)))
              (__tmp293531
               (let ((__obj293336
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj293336)
                 __obj293336))
              (__tmp293530
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp293529 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp293532
           gx#current-expander-context
           _ctx288170_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp293531
           gxc#current-compile-runtime-sections
           __tmp293530
           gxc#current-compile-runtime-names
           __tmp293529))))
    (define gxc#collect-bindings
      (lambda (_ctx288168_)
        (let ((__tmp293538
               (##structure-ref _ctx288168_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp293538))))
    (define gxc#compile-runtime-code
      (lambda (_ctx288114_)
        (letrec ((_compile1288116_
                  (lambda (_ctx288157_)
                    (let* ((_code288159_
                            (##structure-ref
                             _ctx288157_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt288163_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code288159_))
                                (let ((_idstr288161_
                                       (let ((__tmp293539
                                              (##structure-ref
                                               _ctx288157_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp293539))))
                                  (string-append _idstr288161_ '"__0"))
                                '#f)))
                      (if _rt288163_
                          (begin
                            (let ((__tmp293540
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp293540 _ctx288157_ _rt288163_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code288118_
                               _ctx288157_
                               _code288159_)))
                          (let ((_path288166_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx288157_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path288166_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code288119_
                         _ctx288157_
                         _code288159_
                         _rt288163_)))))
                 (_context-timestamp288117_
                  (lambda (_ctx288155_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx288155_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code288118_
                  (lambda (_ctx288137_ _code288138_)
                    (let* ((_lifts288140_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code288143_
                            (let ((__tmp293543
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code288138_))))
                                  (__tmp293542
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp293541
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293543
                               gx#current-expander-context
                               _ctx288137_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts288140_
                               gxc#current-compile-marks
                               __tmp293542
                               gxc#current-compile-identifiers
                               __tmp293541)))
                           (_runtime-code288145_
                            (if (let ((__tmp293547 (unbox _lifts288140_)))
                                  (declare (not safe))
                                  (null? __tmp293547))
                                _runtime-code288143_
                                (let ((__tmp293544
                                       (let ((__tmp293546
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code288143_
                                                      '())))
                                             (__tmp293545
                                              (reverse (unbox _lifts288140_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp293546
                                                 __tmp293545))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293544))))
                           (_runtime-code288147_
                            (let ((__tmp293548
                                   (let ((__tmp293550
                                          (let ((__tmp293551
                                                 (let ((__tmp293554
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp288117_
                                                           _ctx288137_)))
                                                       (__tmp293552
                                                        (let ((__tmp293553
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp293553
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp293554
                                                         __tmp293552))))
                                            (declare (not safe))
                                            (cons 'define __tmp293551)))
                                         (__tmp293549
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code288145_ '()))))
                                     (declare (not safe))
                                     (cons __tmp293550 __tmp293549))))
                              (declare (not safe))
                              (cons 'begin __tmp293548)))
                           (_scm0288149_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx288137_
                               '0
                               '".scm"))))
                      (let ((_scms288152_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx288137_))))
                        (let ((__tmp293555
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0288149_
                                    _runtime-code288147_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp293555
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms288152_)
                            (delete-file _scms288152_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0288149_
                           '" => "
                           _scms288152_))
                        (copy-file _scm0288149_ _scms288152_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0288149_))))))
                 (_generate-loader-code288119_
                  (lambda (_ctx288126_ _code288127_ _rt288128_)
                    (let* ((_loader-code288131_
                            (let ((__tmp293556
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code288127_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293556
                               gx#current-expander-context
                               _ctx288126_)))
                           (_loader-code288133_
                            (if _rt288128_
                                (let ((__tmp293557
                                       (let ((__tmp293558
                                              (let ((__tmp293559
                                                     (let ((__tmp293560
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt288128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp293560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293559 '()))))
                                         (declare (not safe))
                                         (cons _loader-code288131_
                                               __tmp293558))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293557))
                                _loader-code288131_)))
                      (let ((__tmp293561
                             (lambda ()
                               (let ((__tmp293562
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx288126_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp293562
                                  _loader-code288133_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp293561
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules288121_
                 (let ((__tmp293563
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx288114_))))
                   (declare (not safe))
                   (cons _ctx288114_ __tmp293563))))
            (for-each
             (lambda (_ctx288123_)
               (let ((__tmp293564
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1288116_ _ctx288123_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp293564
                  gxc#current-compile-decls
                  '())))
             _all-modules288121_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx288011_)
        (letrec ((_compile-ssi288013_
                  (lambda (_code288084_)
                    (let* ((_path288086_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx288011_
                               '#f
                               '".ssi")))
                           (_prelude288097_
                            (let* ((_super288088_
                                    (##structure-ref
                                     _ctx288011_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e288090_
                                    (##structure-ref
                                     _super288088_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e288090_
                                  ((lambda (_g288092288094_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g288092288094_)))
                                   _$e288090_)
                                  ':<root>)))
                           (_ns288099_
                            (##structure-ref
                             _ctx288011_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr288101_
                            (symbol->string
                             (##structure-ref
                              _ctx288011_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg288108_
                            (let ((_$e288103_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr288101_ '#\/))))
                              (if _$e288103_
                                  ((lambda (_x288106_)
                                     (string->symbol
                                      (substring _idstr288101_ '0 _x288106_)))
                                   _$e288103_)
                                  '#f)))
                           (_rt288110_
                            (let ((__tmp293565
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp293565 _ctx288011_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path288086_))
                      (let ((__tmp293566
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude288097_))
                               (if _pkg288108_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg288108_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns288099_))
                               (newline)
                               (pretty-print _code288084_)
                               (if _rt288110_
                                   (pretty-print
                                    (let ((__tmp293567
                                           (let ((__tmp293571
                                                  (let ((__tmp293572
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp293572)))
                                                 (__tmp293568
                                                  (let ((__tmp293569
                                                         (let ((__tmp293570
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt288110_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp293570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293569 '()))))
                                             (declare (not safe))
                                             (cons __tmp293571 __tmp293568))))
                                      (declare (not safe))
                                      (cons '%#call __tmp293567)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path288086_
                         __tmp293566)))))
                 (_compile-phi288014_
                  (lambda (_part288024_)
                    (let* ((_part288025288038_ _part288024_)
                           (_E288027288042_
                            (lambda ()
                              (error '"No clause matching"
                                     _part288025288038_)))
                           (_K288028288053_
                            (lambda (_code288045_
                                     _n288046_
                                     _phi288047_
                                     _phi-ctx288048_)
                              (let* ((_code288051_
                                      (let ((__tmp293573
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code288045_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp293573
                                         gx#current-expander-context
                                         _phi-ctx288048_
                                         gx#current-expander-phi
                                         _phi288047_)))
                                     (__tmp293574
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx288011_
                                         _n288046_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp293574
                                 _code288051_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part288025288038_))
                          (let ((_hd288029288056_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part288025288038_)))
                                (_tl288030288058_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part288025288038_))))
                            (let ((_phi-ctx288061_ _hd288029288056_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl288030288058_))
                                  (let ((_hd288031288063_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl288030288058_)))
                                        (_tl288032288065_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl288030288058_))))
                                    (let ((_phi288068_ _hd288031288063_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl288032288065_))
                                          (let ((_hd288033288070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl288032288065_)))
                                                (_tl288034288072_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl288032288065_))))
                                            (let ((_n288075_ _hd288033288070_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl288034288072_))
                                                  (let ((_hd288035288077_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl288034288072_)))
                                                        (_tl288036288079_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl288034288072_))))
                                                    (let ((_code288082_
                                                           _hd288035288077_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl288036288079_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K288028288053_
                                                             _code288082_
                                                             _n288075_
                                                             _phi288068_
                                                             _phi-ctx288061_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E288027288042_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E288027288042_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E288027288042_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E288027288042_)))))
                          (let () (declare (not safe)) (_E288027288042_)))))))
          (let ((_g293575_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx288011_))))
            (begin
              (let ((_g293576_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g293575_)
                           (##vector-length _g293575_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g293576_ 2)))
                    (error "Context expects 2 values" _g293576_)))
              (let ((_ssi-code288016_
                     (let () (declare (not safe)) (##vector-ref _g293575_ 0)))
                    (_phi-code288017_
                     (let () (declare (not safe)) (##vector-ref _g293575_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi288013_ _ssi-code288016_))
                  (let ((_threads288022_
                         (map (lambda (_code288019_)
                                (let ((__tmp293577
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi288014_
                                            _code288019_)))))
                                  (declare (not safe))
                                  (spawn __tmp293577)))
                              _phi-code288017_)))
                    (for-each gxc#join! _threads288022_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx287994_)
        (let* ((_path287996_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx287994_ '#f '".ssxi.ss")))
               (_code287998_
                (let ((__tmp293578
                       (##structure-ref
                        _ctx287994_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp293578)))
               (_idstr288000_
                (symbol->string
                 (##structure-ref _ctx287994_ '1 gx#expander-context::t '#f)))
               (_pkg288007_
                (let ((_$e288002_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr288000_ '#\/))))
                  (if _$e288002_
                      ((lambda (_x288005_)
                         (string->symbol
                          (substring _idstr288000_ '0 _x288005_)))
                       _$e288002_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path287996_))
          (let ((__tmp293579
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg288007_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg288007_))
                       '#!void)
                   (newline)
                   (pretty-print _code287998_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path287996_ __tmp293579)))))
    (define gxc#generate-meta-code
      (lambda (_ctx287987_)
        (let* ((_state287989_
                (let ((__obj293337
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj293337 _ctx287987_)
                  __obj293337))
               (_ssi-code287991_
                (let ((__tmp293580
                       (##structure-ref
                        _ctx287987_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp293580 _state287989_))))
          (values _ssi-code287991_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state287989_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx287980_)
        (let ((_lifts287982_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293583
                 (lambda ()
                   (let ((_code287985_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx287980_))))
                     (if (let ((__tmp293587 (unbox _lifts287982_)))
                           (declare (not safe))
                           (null? __tmp293587))
                         _code287985_
                         (let ((__tmp293584
                                (let ((__tmp293586
                                       (let ()
                                         (declare (not safe))
                                         (cons _code287985_ '())))
                                      (__tmp293585
                                       (reverse (unbox _lifts287982_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp293586 __tmp293585))))
                           (declare (not safe))
                           (cons 'begin __tmp293584))))))
                (__tmp293582
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp293581
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp293583
             gxc#current-compile-lift
             _lifts287982_
             gxc#current-compile-marks
             __tmp293582
             gxc#current-compile-identifiers
             __tmp293581)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx287976_)
        (let ((_modules287978_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293588
                 (##structure-ref _ctx287976_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp293588 _modules287978_))
          (reverse (unbox _modules287978_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path287959_ _code287960_ _phi?287961_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path287959_))
        (let ((__tmp293589
               (lambda ()
                 (pretty-print
                  (let ((__tmp293590
                         (let ((__tmp293597
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp293591
                                (let ((__tmp293596
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp293592
                                       (let ((__tmp293595
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp293593
                                              (let ((__tmp293594
                                                     (if _phi?287961_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp293594))))
                                         (declare (not safe))
                                         (cons __tmp293595 __tmp293593))))
                                  (declare (not safe))
                                  (cons __tmp293596 __tmp293592))))
                           (declare (not safe))
                           (cons __tmp293597 __tmp293591))))
                    (declare (not safe))
                    (cons 'declare __tmp293590)))
                 (pretty-print _code287960_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path287959_ __tmp293589))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path287959_ _phi?287961_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path287959_))))
    (define gxc#compile-scm-file__0
      (lambda (_path287967_ _code287968_)
        (let ((_phi?287970_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path287967_ _code287968_ _phi?287970_))))
    (define gxc#compile-scm-file
      (lambda _g293599_
        (let ((_g293598_ (let () (declare (not safe)) (##length _g293599_))))
          (cond ((let () (declare (not safe)) (##fx= _g293598_ 2))
                 (apply (lambda (_path287967_ _code287968_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path287967_
                             _code287968_)))
                        _g293599_))
                ((let () (declare (not safe)) (##fx= _g293598_ 3))
                 (apply (lambda (_path287972_ _code287973_ _phi?287974_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path287972_
                             _code287973_
                             _phi?287974_)))
                        _g293599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g293599_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?287860_)
        (let _lp287862_ ((_rest287864_ (gxc#current-compile-gsc-options))
                         (_opts287865_ '()))
          (let* ((_rest287866287886_ _rest287864_)
                 (_else287870287894_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287860_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293600
                               (let ((__tmp293601 (reverse _opts287865_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp293601))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp293600))
                        (reverse _opts287865_)))))
            (let ((_K287880287937_
                   (lambda (_rest287935_)
                     (let ()
                       (declare (not safe))
                       (_lp287862_ _rest287935_ _opts287865_))))
                  (_K287875287919_
                   (lambda (_rest287917_)
                     (let ()
                       (declare (not safe))
                       (_lp287862_ _rest287917_ _opts287865_))))
                  (_K287872287901_
                   (lambda (_rest287898_ _opt287899_)
                     (let ((__tmp293602
                            (let ()
                              (declare (not safe))
                              (cons _opt287899_ _opts287865_))))
                       (declare (not safe))
                       (_lp287862_ _rest287898_ __tmp293602)))))
              (if (let () (declare (not safe)) (##pair? _rest287866287886_))
                  (let ((_tl287882287942_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287866287886_)))
                        (_hd287881287940_
                         (let ()
                           (declare (not safe))
                           (##car _rest287866287886_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287881287940_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287882287942_))
                            (let* ((_tl287884287945_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287882287942_)))
                                   (_rest287948_ _tl287884287945_))
                              (declare (not safe))
                              (_K287880287937_ _rest287948_))
                            (let ((_opt287909_ _hd287881287940_)
                                  (_rest287911_ _tl287882287942_))
                              (let ()
                                (declare (not safe))
                                (_K287872287901_ _rest287911_ _opt287909_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287881287940_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287882287942_))
                                (let* ((_tl287879287927_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287882287942_)))
                                       (_rest287930_ _tl287879287927_))
                                  (declare (not safe))
                                  (_K287875287919_ _rest287930_))
                                (let ((_opt287909_ _hd287881287940_)
                                      (_rest287911_ _tl287882287942_))
                                  (let ()
                                    (declare (not safe))
                                    (_K287872287901_
                                     _rest287911_
                                     _opt287909_))))
                            (let ((_opt287909_ _hd287881287940_)
                                  (_rest287911_ _tl287882287942_))
                              (let ()
                                (declare (not safe))
                                (_K287872287901_ _rest287911_ _opt287909_))))))
                  (let () (declare (not safe)) (_else287870287894_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?287954_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?287954_))))
    (define gxc#gsc-link-options
      (lambda _g293604_
        (let ((_g293603_ (let () (declare (not safe)) (##length _g293604_))))
          (cond ((let () (declare (not safe)) (##fx= _g293603_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g293604_))
                ((let () (declare (not safe)) (##fx= _g293603_ 1))
                 (apply (lambda (_phi?287956_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?287956_)))
                        _g293604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g293604_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?287761_)
        (let _lp287763_ ((_rest287765_ (gxc#current-compile-gsc-options))
                         (_opts287766_ '()))
          (let* ((_rest287767287787_ _rest287765_)
                 (_else287771287795_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287761_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293605
                               (let ((__tmp293606 (reverse _opts287766_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp293606))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp293605))
                        (reverse _opts287766_)))))
            (let ((_K287781287834_
                   (lambda (_rest287831_ _opt287832_)
                     (let ((__tmp293607
                            (let ((__tmp293608
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts287766_))))
                              (declare (not safe))
                              (cons _opt287832_ __tmp293608))))
                       (declare (not safe))
                       (_lp287763_ _rest287831_ __tmp293607))))
                  (_K287776287815_
                   (lambda (_rest287813_)
                     (let ()
                       (declare (not safe))
                       (_lp287763_ _rest287813_ _opts287766_))))
                  (_K287773287801_
                   (lambda (_rest287799_)
                     (let ()
                       (declare (not safe))
                       (_lp287763_ _rest287799_ _opts287766_)))))
              (if (let () (declare (not safe)) (##pair? _rest287767287787_))
                  (let ((_tl287783287839_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287767287787_)))
                        (_hd287782287837_
                         (let ()
                           (declare (not safe))
                           (##car _rest287767287787_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287782287837_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287783287839_))
                            (let ((_tl287785287844_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl287783287839_)))
                                  (_hd287784287842_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl287783287839_))))
                              (let ((_opt287847_ _hd287784287842_)
                                    (_rest287849_ _tl287785287844_))
                                (let ()
                                  (declare (not safe))
                                  (_K287781287834_ _rest287849_ _opt287847_))))
                            (let ((_rest287807_ _tl287783287839_))
                              (declare (not safe))
                              (_K287773287801_ _rest287807_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287782287837_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287783287839_))
                                (let* ((_tl287780287823_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287783287839_)))
                                       (_rest287826_ _tl287780287823_))
                                  (declare (not safe))
                                  (_K287776287815_ _rest287826_))
                                (let ((_rest287807_ _tl287783287839_))
                                  (declare (not safe))
                                  (_K287773287801_ _rest287807_)))
                            (let ((_rest287807_ _tl287783287839_))
                              (declare (not safe))
                              (_K287773287801_ _rest287807_)))))
                  (let () (declare (not safe)) (_else287771287795_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?287855_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?287855_))))
    (define gxc#gsc-cc-options
      (lambda _g293610_
        (let ((_g293609_ (let () (declare (not safe)) (##length _g293610_))))
          (cond ((let () (declare (not safe)) (##fx= _g293609_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g293610_))
                ((let () (declare (not safe)) (##fx= _g293609_ 1))
                 (apply (lambda (_phi?287857_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?287857_)))
                        _g293610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g293610_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir287756_)
        (let* ((_user-staticdir287758_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp293611
                (let ((__tmp293612
                       (string-append
                        '"-I "
                        _staticdir287756_
                        '" -I "
                        _user-staticdir287758_)))
                  (declare (not safe))
                  (cons __tmp293612 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp293611))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp287668_ ((_rest287670_ (gxc#current-compile-gsc-options))
                         (_opts287671_ '()))
          (let* ((_rest287672287692_ _rest287670_)
                 (_else287676287700_ (lambda () _opts287671_)))
            (let ((_K287686287743_
                   (lambda (_rest287741_)
                     (let ()
                       (declare (not safe))
                       (_lp287668_ _rest287741_ _opts287671_))))
                  (_K287681287721_
                   (lambda (_rest287718_ _opt287719_)
                     (let ((__tmp293613
                            (append _opts287671_
                                    (let ((__tmp293614
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt287719_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp293614)))))
                       (declare (not safe))
                       (_lp287668_ _rest287718_ __tmp293613))))
                  (_K287678287706_
                   (lambda (_rest287704_)
                     (let ()
                       (declare (not safe))
                       (_lp287668_ _rest287704_ _opts287671_)))))
              (if (let () (declare (not safe)) (##pair? _rest287672287692_))
                  (let ((_tl287688287748_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287672287692_)))
                        (_hd287687287746_
                         (let ()
                           (declare (not safe))
                           (##car _rest287672287692_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287687287746_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287688287748_))
                            (let* ((_tl287690287751_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287688287748_)))
                                   (_rest287754_ _tl287690287751_))
                              (declare (not safe))
                              (_K287686287743_ _rest287754_))
                            (let ((_rest287712_ _tl287688287748_))
                              (declare (not safe))
                              (_K287678287706_ _rest287712_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287687287746_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287688287748_))
                                (let ((_tl287685287731_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl287688287748_)))
                                      (_hd287684287729_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl287688287748_))))
                                  (let ((_opt287734_ _hd287684287729_)
                                        (_rest287736_ _tl287685287731_))
                                    (let ()
                                      (declare (not safe))
                                      (_K287681287721_
                                       _rest287736_
                                       _opt287734_))))
                                (let ((_rest287712_ _tl287688287748_))
                                  (declare (not safe))
                                  (_K287678287706_ _rest287712_)))
                            (let ((_rest287712_ _tl287688287748_))
                              (declare (not safe))
                              (_K287678287706_ _rest287712_)))))
                  (let () (declare (not safe)) (_else287676287700_))))))))
    (define gxc#not-string-empty?
      (lambda (_str287665_)
        (let ((__tmp293615
               (let () (declare (not safe)) (string-empty? _str287665_))))
          (declare (not safe))
          (not __tmp293615))))
    (define gxc#gsc-compile-file
      (lambda (_path287633_ _phi?287634_)
        (letrec ((_gsc-link-path287636_
                  (lambda (_base-path287657_)
                    (let _lp287659_ ((_n287661_ '1))
                      (let ((_path287663_
                             (string-append
                              _base-path287657_
                              '".o"
                              (number->string _n287661_))))
                        (if (file-exists? _path287663_)
                            (let ((__tmp293616
                                   (let ()
                                     (declare (not safe))
                                     (+ _n287661_ '1))))
                              (declare (not safe))
                              (_lp287659_ __tmp293616))
                            _path287663_))))))
          (let* ((_base-path287638_ (path-strip-extension _path287633_))
                 (_path-c287640_ (string-append _base-path287638_ '".c"))
                 (_path-o287642_ (string-append _base-path287638_ '".o"))
                 (_link-path287644_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path287636_ _base-path287638_)))
                 (_link-path-c287646_ (string-append _link-path287644_ '".c"))
                 (_link-path-o287648_ (string-append _link-path287644_ '".o"))
                 (_gsc-link-opts287650_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?287634_)))
                 (_gsc-cc-opts287652_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?287634_)))
                 (_gcc-ld-opts287654_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp293623 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293617
                   (let ((__tmp293618
                          (let ((__tmp293619
                                 (let ((__tmp293620
                                        (let ((__tmp293621
                                               (let ((__tmp293622
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path287633_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp293622
                                                         _gsc-link-opts287650_))))
                                          (declare (not safe))
                                          (cons _link-path-c287646_
                                                __tmp293621))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp293620))))
                            (declare (not safe))
                            (cons '"-flat" __tmp293619))))
                     (declare (not safe))
                     (cons '"-link" __tmp293618))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293623 __tmp293617))
            (let ((__tmp293630 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293624
                   (let ((__tmp293625
                          (let ((__tmp293626
                                 (let ((__tmp293627
                                        (let ((__tmp293628
                                               (let ((__tmp293629
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c287646_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c287640_
                                                       __tmp293629))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp293628
                                                  _gsc-cc-opts287652_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp293627))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp293626))))
                     (declare (not safe))
                     (cons '"-obj" __tmp293625))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293630 __tmp293624))
            (let ((__tmp293636 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp293631
                   (let ((__tmp293632
                          (let ((__tmp293633
                                 (let ((__tmp293634
                                        (let ((__tmp293635
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o287648_
                                                       _gcc-ld-opts287654_))))
                                          (declare (not safe))
                                          (cons _path-o287642_ __tmp293635))))
                                   (declare (not safe))
                                   (cons _link-path287644_ __tmp293634))))
                            (declare (not safe))
                            (cons '"-o" __tmp293633))))
                     (declare (not safe))
                     (cons '"-shared" __tmp293632))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp293636
               __tmp293631))
            (for-each
             delete-file
             (let ((__tmp293637
                    (let ((__tmp293638
                           (let ((__tmp293639
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o287648_ '()))))
                             (declare (not safe))
                             (cons _link-path-c287646_ __tmp293639))))
                      (declare (not safe))
                      (cons _path-o287642_ __tmp293638))))
               (declare (not safe))
               (cons _path-c287640_ __tmp293637)))))))
    (define gxc#compile-output-file
      (lambda (_ctx287604_ _n287605_ _ext287606_)
        (letrec ((_module-relative-path287608_
                  (lambda (_ctx287631_)
                    (path-strip-directory
                     (let ((__tmp293640
                            (##structure-ref
                             _ctx287631_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp293640)))))
                 (_module-source-directory287609_
                  (lambda (_ctx287627_)
                    (path-directory
                     (let ((_mpath287629_
                            (##structure-ref
                             _ctx287627_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath287629_))
                           _mpath287629_
                           (let ()
                             (declare (not safe))
                             (last _mpath287629_)))))))
                 (_section-string287610_
                  (lambda (_n287625_)
                    (if (let () (declare (not safe)) (number? _n287625_))
                        (number->string _n287625_)
                        (if (let () (declare (not safe)) (symbol? _n287625_))
                            (symbol->string _n287625_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n287625_))
                                _n287625_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n287625_)))))))
                 (_file-name287611_
                  (lambda (_path287623_)
                    (if _n287605_
                        (string-append
                         _path287623_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string287610_ _n287605_))
                         _ext287606_)
                        (string-append _path287623_ _ext287606_))))
                 (_file-path287612_
                  (lambda ()
                    (let ((_$e287618_ (gxc#current-compile-output-dir)))
                      (if _$e287618_
                          ((lambda (_outdir287621_)
                             (path-expand
                              (let ((__tmp293642
                                     (let ((__tmp293643
                                            (##structure-ref
                                             _ctx287604_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp293643))))
                                (declare (not safe))
                                (_file-name287611_ __tmp293642))
                              _outdir287621_))
                           _$e287618_)
                          (path-expand
                           (let ((__tmp293641
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path287608_
                                     _ctx287604_))))
                             (declare (not safe))
                             (_file-name287611_ __tmp293641))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory287609_
                              _ctx287604_))))))))
          (let ((_path287614_
                 (let () (declare (not safe)) (_file-path287612_))))
            (let ((__tmp293644
                   (lambda ()
                     (let ((__tmp293645 (path-directory _path287614_)))
                       (declare (not safe))
                       (create-directory* __tmp293645)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293644))
            _path287614_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx287586_)
        (letrec ((_file-name287588_
                  (lambda (_id287602_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id287602_))
                     '".scm")))
                 (_file-path287589_
                  (lambda ()
                    (let* ((_file287595_
                            (let ((__tmp293646
                                   (##structure-ref
                                    _ctx287586_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name287588_ __tmp293646)))
                           (_$e287597_ (gxc#current-compile-output-dir)))
                      (if _$e287597_
                          ((lambda (_outdir287600_)
                             (path-expand
                              _file287595_
                              (path-expand '"static" _outdir287600_)))
                           _$e287597_)
                          (path-expand _file287595_ '"static"))))))
          (let ((_path287591_
                 (let () (declare (not safe)) (_file-path287589_))))
            (let ((__tmp293647
                   (lambda ()
                     (let ((__tmp293648 (path-directory _path287591_)))
                       (declare (not safe))
                       (create-directory* __tmp293648)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293647))
            _path287591_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx287580_ _opts287581_)
        (let ((_$e287583_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts287581_))))
          (if _$e287583_
              (values _$e287583_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx287580_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr287573_)
        (if (let () (declare (not safe)) (string? _idstr287573_))
            (let* ((_str287575_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr287573_)))
                   (_strs287577_
                    (let ()
                      (declare (not safe))
                      (string-split _str287575_ '#\/))))
              (let () (declare (not safe)) (string-join _strs287577_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr287573_))
                (let ((__tmp293649 (symbol->string _idstr287573_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp293649))
                (error '"Bad module id" _idstr287573_)))))
    (define gxc#invoke__%
      (lambda (_g293650_
               _stdout-redirection287537287541_
               _stderr-redirection287538287543_
               _program287545_
               _args287546_)
        (let* ((_stdout-redirection287548_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection287537287541_ absent-value))
                    '#f
                    _stdout-redirection287537287541_))
               (_stderr-redirection287550_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection287538287543_ absent-value))
                    '#f
                    _stderr-redirection287538287543_)))
          (let ((__tmp293651
                 (let ()
                   (declare (not safe))
                   (cons _program287545_ _args287546_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp293651))
          (let ((_proc287552_
                 (open-process
                  (let ((__tmp293652
                         (let ((__tmp293653
                                (let ((__tmp293654
                                       (let ((__tmp293655
                                              (let ((__tmp293656
                                                     (let ((__tmp293657
                                                            (let ((__tmp293658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection287550_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp293658))))
               (declare (not safe))
               (cons _stdout-redirection287548_ __tmp293657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp293656))))
                                         (declare (not safe))
                                         (cons _args287546_ __tmp293655))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp293654))))
                           (declare (not safe))
                           (cons _program287545_ __tmp293653))))
                    (declare (not safe))
                    (cons 'path: __tmp293652)))))
            (if (or _stdout-redirection287548_ _stderr-redirection287550_)
                (read-line _proc287552_ '#f)
                '#!void)
            (let ((_status287557_ (process-status _proc287552_)))
              (close-port _proc287552_)
              (if (let () (declare (not safe)) (zero? _status287557_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program287545_))))))))
    (define gxc#invoke__@
      (lambda (_keys287536287562_ . _args287564_)
        (apply gxc#invoke__%
               _keys287536287562_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287536287562_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287536287562_
                  'stderr-redirection:
                  absent-value))
               _args287564_)))
    (define gxc#invoke
      (lambda _args287539287570_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args287539287570_)))
    (define gxc#join!
      (lambda (_thread287530_)
        (let ((__tmp293660
               (lambda (_exn287532_)
                 (if (uncaught-exception? _exn287532_)
                     (raise (uncaught-exception-reason _exn287532_))
                     (raise _exn287532_))))
              (__tmp293659 (lambda () (thread-join! _thread287530_))))
          (declare (not safe))
          (with-catch __tmp293660 __tmp293659))))))
