(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707616244)
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
      (lambda (_path288812_ _fun288813_)
        (with-output-to-file
         (let ((__tmp293374
                (let ()
                  (declare (not safe))
                  (cons _path288812_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp293374))
         _fun288813_)))
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
      (lambda (_gerbil-libdir288807_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir288807_)))
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
      (lambda (_dir288805_) (delete-file-or-directory _dir288805_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath288779_ _opts288780_)
        (if (let () (declare (not safe)) (string? _srcpath288779_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288779_)))
        (let ((_outdir288782_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288780_)))
              (_invoke-gsc?288783_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288780_)))
              (_gsc-options288784_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288780_)))
              (_keep-scm?288785_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288780_)))
              (_verbosity288786_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288780_)))
              (_optimize288787_
               (let () (declare (not safe)) (pgetq 'optimize: _opts288780_)))
              (_debug288788_
               (let () (declare (not safe)) (pgetq 'debug: _opts288780_)))
              (_gen-ssxi288789_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts288780_))))
          (if _outdir288782_
              (let ((__tmp293375
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288782_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293375))
              '#!void)
          (if _optimize288787_
              (let ((__tmp293376
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293376))
              '#!void)
          (let ((__tmp293380
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath288779_))
                   (let ((__tmp293381
                          (let ((__tmp293382
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288779_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293382))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp293381))))
                (__tmp293379
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293377
                 (let ((__tmp293378
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288779_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp293378))))
            (declare (not safe))
            (call-with-parameters
             __tmp293380
             gxc#current-compile-output-dir
             _outdir288782_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288783_
             gxc#current-compile-gsc-options
             _gsc-options288784_
             gxc#current-compile-keep-scm
             _keep-scm?288785_
             gxc#current-compile-verbose
             _verbosity288786_
             gxc#current-compile-optimize
             _optimize288787_
             gxc#current-compile-debug
             _debug288788_
             gxc#current-compile-generate-ssxi
             _gen-ssxi288789_
             gxc#current-compile-timestamp
             __tmp293379
             gxc#current-compile-context
             __tmp293377
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath288798_)
        (let ((_opts288800_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath288798_ _opts288800_))))
    (define gxc#compile-module
      (lambda _g293384_
        (let ((_g293383_ (let () (declare (not safe)) (##length _g293384_))))
          (cond ((let () (declare (not safe)) (##fx= _g293383_ 1))
                 (apply (lambda (_srcpath288798_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath288798_)))
                        _g293384_))
                ((let () (declare (not safe)) (##fx= _g293383_ 2))
                 (apply (lambda (_srcpath288802_ _opts288803_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath288802_
                             _opts288803_)))
                        _g293384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g293384_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath288755_ _opts288756_)
        (if (let () (declare (not safe)) (string? _srcpath288755_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288755_)))
        (let ((_outdir288758_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288756_)))
              (_invoke-gsc?288759_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288756_)))
              (_gsc-options288760_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288756_)))
              (_keep-scm?288761_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288756_)))
              (_verbosity288762_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288756_)))
              (_debug288763_
               (let () (declare (not safe)) (pgetq 'debug: _opts288756_))))
          (if _outdir288758_
              (let ((__tmp293385
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288758_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293385))
              '#!void)
          (let ((__tmp293389
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath288755_))
                   (let ((__tmp293390
                          (let ((__tmp293391
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288755_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293391))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp293390
                      _opts288756_))))
                (__tmp293388
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293386
                 (let ((__tmp293387
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288755_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp293387))))
            (declare (not safe))
            (call-with-parameters
             __tmp293389
             gxc#current-compile-output-dir
             _outdir288758_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288759_
             gxc#current-compile-gsc-options
             _gsc-options288760_
             gxc#current-compile-keep-scm
             _keep-scm?288761_
             gxc#current-compile-verbose
             _verbosity288762_
             gxc#current-compile-debug
             _debug288763_
             gxc#current-compile-timestamp
             __tmp293388
             gxc#current-compile-context
             __tmp293386
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath288771_)
        (let ((_opts288773_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath288771_ _opts288773_))))
    (define gxc#compile-exe
      (lambda _g293393_
        (let ((_g293392_ (let () (declare (not safe)) (##length _g293393_))))
          (cond ((let () (declare (not safe)) (##fx= _g293392_ 1))
                 (apply (lambda (_srcpath288771_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath288771_)))
                        _g293393_))
                ((let () (declare (not safe)) (##fx= _g293392_ 2))
                 (apply (lambda (_srcpath288775_ _opts288776_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath288775_ _opts288776_)))
                        _g293393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g293393_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx288751_ _opts288752_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts288752_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx288751_
               _opts288752_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx288751_
               _opts288752_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx288634_ _opts288635_)
        (letrec ((_generate-stub288637_
                  (lambda (_builtin-modules288747_)
                    (let ((_mod-main288749_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288634_ 'main))))
                      (write (let ((__tmp293394
                                    (let ((__tmp293395
                                           (let ((__tmp293396
                                                  (let ((__tmp293397
                                                         (let ((__tmp293399
                                                                (let ((__tmp293400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules288747_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293400)))
                       (__tmp293398
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp293399 __tmp293398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp293397))))
                                             (declare (not safe))
                                             (cons __tmp293396 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp293395))))
                               (declare (not safe))
                               (cons 'define __tmp293394)))
                      (write (let ((__tmp293401
                                    (let ((__tmp293440
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293402
                                           (let ((__tmp293403
                                                  (let ((__tmp293404
                                                         (let ((__tmp293428
                                                                (let ((__tmp293429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293430
                                      (let ((__tmp293438
                                             (let ((__tmp293439
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp293439)))
                                            (__tmp293431
                                             (let ((__tmp293432
                                                    (let ((__tmp293433
                                                           (let ((__tmp293434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293435
                                 (let ((__tmp293436
                                        (let ((__tmp293437
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp293437 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp293436))))
                            (declare (not safe))
                            (cons __tmp293435 '()))))
                     (declare (not safe))
                     (cons _mod-main288749_ __tmp293434))))
              (declare (not safe))
              (cons 'apply __tmp293433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293432 '()))))
                                        (declare (not safe))
                                        (cons __tmp293438 __tmp293431))))
                                 (declare (not safe))
                                 (cons '() __tmp293430))))
                          (declare (not safe))
                          (cons 'lambda __tmp293429)))
                       (__tmp293405
                        (let ((__tmp293406
                               (let ((__tmp293407
                                      (let ((__tmp293408
                                             (let ((__tmp293419
                                                    (let ((__tmp293420
                                                           (let ((__tmp293421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293422
                                 (let ((__tmp293423
                                        (let ((__tmp293424
                                               (let ((__tmp293425
                                                      (let ((__tmp293426
                                                             (let ((__tmp293427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp293427 '()))))
                (declare (not safe))
                (cons 'force-output __tmp293426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp293425 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp293424))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp293423))))
                            (declare (not safe))
                            (cons __tmp293422 '()))))
                     (declare (not safe))
                     (cons 'void __tmp293421))))
              (declare (not safe))
              (cons 'with-catch __tmp293420)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp293409
                                                    (let ((__tmp293410
                                                           (let ((__tmp293411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293412
                                 (let ((__tmp293413
                                        (let ((__tmp293414
                                               (let ((__tmp293415
                                                      (let ((__tmp293416
                                                             (let ((__tmp293417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp293418
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp293418 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp293417))))
                (declare (not safe))
                (cons __tmp293416 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp293415))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp293414))))
                                   (declare (not safe))
                                   (cons __tmp293413 '()))))
                            (declare (not safe))
                            (cons 'void __tmp293412))))
                     (declare (not safe))
                     (cons 'with-catch __tmp293411))))
              (declare (not safe))
              (cons __tmp293410 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293419
                                                     __tmp293409))))
                                        (declare (not safe))
                                        (cons '() __tmp293408))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp293407))))
                          (declare (not safe))
                          (cons __tmp293406 '()))))
                   (declare (not safe))
                   (cons __tmp293428 __tmp293405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp293404))))
                                             (declare (not safe))
                                             (cons __tmp293403 '()))))
                                      (declare (not safe))
                                      (cons __tmp293440 __tmp293402))))
                               (declare (not safe))
                               (cons 'define __tmp293401)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts288638_
                  (lambda (_libgerbil288745_)
                    (call-with-input-file
                     (string-append _libgerbil288745_ '".ldd")
                     read)))
                 (_replace-extension288639_
                  (lambda (_path288742_ _ext288743_)
                    (string-append
                     (path-strip-extension _path288742_)
                     _ext288743_)))
                 (_not-exclude-module?288640_
                  (lambda (_ctx288738_)
                    (let ((_id-str288740_
                           (symbol->string
                            (##structure-ref
                             _ctx288738_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp293442
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str288740_))))
                            (declare (not safe))
                            (not __tmp293442))
                          (let ((__tmp293441
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str288740_))))
                            (declare (not safe))
                            (not __tmp293441))
                          '#f))))
                 (_not-file-empty?288641_
                  (lambda (_path288736_)
                    (let ((__tmp293443
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path288736_))))
                      (declare (not safe))
                      (not __tmp293443))))
                 (_compile-stub288642_
                  (lambda (_output-scm288649_ _output-bin288650_)
                    (let* ((_gerbil-home288652_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288654_
                            (path-expand '"lib" _gerbil-home288652_))
                           (_gerbil-staticdir288656_
                            (path-expand '"static" _gerbil-libdir288654_))
                           (_gxlink288658_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir288654_))
                           (_tmp288660_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path288664_
                            (lambda (_f288662_)
                              (path-expand
                               (path-strip-directory _f288662_)
                               _tmp288660_)))
                           (_deps288666_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288634_)))
                           (_deps288668_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?288640_
                                      _deps288666_)))
                           (_src-deps-scm288670_
                            (map gxc#find-static-module-file _deps288668_))
                           (_src-deps-scm288672_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?288641_
                                      _src-deps-scm288670_)))
                           (_src-deps-scm288674_
                            (map path-expand _src-deps-scm288672_))
                           (_deps-scm288676_
                            (map _tmp-path288664_ _src-deps-scm288674_))
                           (_deps-c288682_
                            (map (lambda (_g288677288679_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288639_
                                      _g288677288679_
                                      '".c")))
                                 _deps-scm288676_))
                           (_deps-o288688_
                            (map (lambda (_g288683288685_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288639_
                                      _g288683288685_
                                      '".o")))
                                 _deps-scm288676_))
                           (_src-bin-scm288690_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288634_)))
                           (_src-bin-scm288692_
                            (path-expand _src-bin-scm288690_))
                           (_bin-scm288694_
                            (let ()
                              (declare (not safe))
                              (_tmp-path288664_ _src-bin-scm288692_)))
                           (_bin-c288696_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288639_
                               _bin-scm288694_
                               '".c")))
                           (_bin-o288698_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288639_
                               _bin-scm288694_
                               '".o")))
                           (_output-bin288700_
                            (path-expand _output-bin288650_))
                           (_output-scm288702_
                            (path-expand _output-scm288649_))
                           (_output-c288704_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288639_
                               _output-scm288702_
                               '".c")))
                           (_output-o288706_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288639_
                               _output-scm288702_
                               '".o")))
                           (_output_-c288708_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288639_
                               _output-scm288702_
                               '"_.c")))
                           (_output_-o288710_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288639_
                               _output-scm288702_
                               '"_.o")))
                           (_gsc-link-opts288712_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288714_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288716_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir288656_)))
                           (_output-ld-opts288718_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a288720_
                            (path-expand '"libgerbil.a" _gerbil-libdir288654_))
                           (_libgerbil.so288722_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir288654_))
                           (_libgerbil-ld-opts288724_
                            (if (file-exists? _libgerbil.so288722_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts288638_
                                   _libgerbil.so288722_))
                                (if (file-exists? _libgerbil.a288720_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts288638_
                                       _libgerbil.a288720_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a288720_
                                       _libgerbil.so288722_)))))
                           (_rpath288726_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288654_)))
                           (_builtin-modules288730_
                            (map (lambda (_mod288728_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod288728_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx288634_ _deps288668_)))))
                      (let ((__tmp293444
                             (lambda ()
                               (let ((__tmp293445
                                      (path-directory _output-bin288700_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293445)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293444))
                      (let ((__tmp293446
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub288637_
                                  _builtin-modules288730_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288702_
                         __tmp293446))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293447
                                   (lambda () (create-directory _tmp288660_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp293447))
                            (for-each
                             copy-file
                             _src-deps-scm288674_
                             _deps-scm288676_)
                            (copy-file _src-bin-scm288692_ _bin-scm288694_)
                            (let ((__tmp293455
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293448
                                   (let ((__tmp293449
                                          (let ((__tmp293450
                                                 (let ((__tmp293451
                                                        (let ((__tmp293452
                                                               (let ((__tmp293453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293454
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm288702_ '()))))
                                (declare (not safe))
                                (cons _bin-scm288694_ __tmp293454))))
                         (declare (not safe))
                         (foldr1 cons __tmp293453 _deps-scm288676_))))
                  (declare (not safe))
                  (foldr1 cons __tmp293452 _gsc-link-opts288712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink288658_
                                                         __tmp293451))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp293450))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293449))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293455
                               __tmp293448))
                            (let ((__tmp293463
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293456
                                   (let ((__tmp293457
                                          (let ((__tmp293458
                                                 (let ((__tmp293459
                                                        (let ((__tmp293460
                                                               (let ((__tmp293461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293462
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c288708_ '()))))
                                (declare (not safe))
                                (cons _output-c288704_ __tmp293462))))
                         (declare (not safe))
                         (cons _bin-c288696_ __tmp293461))))
                  (declare (not safe))
                  (foldr1 cons __tmp293460 _deps-c288682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293459
                                                           _gsc-static-opts288716_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293458
                                                    _gsc-cc-opts288714_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293457))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293463
                               __tmp293456))
                            (let ((__tmp293476
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293464
                                   (let ((__tmp293465
                                          (let ((__tmp293466
                                                 (let ((__tmp293467
                                                        (let ((__tmp293468
                                                               (let ((__tmp293469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293470
                                     (let ((__tmp293471
                                            (let ((__tmp293472
                                                   (let ((__tmp293473
                                                          (let ((__tmp293474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp293475
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts288724_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp293475))))
                    (declare (not safe))
                    (cons _gerbil-libdir288654_ __tmp293474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp293473))))
                                              (declare (not safe))
                                              (cons _rpath288726_
                                                    __tmp293472))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp293471
                                               _output-ld-opts288718_))))
                                (declare (not safe))
                                (cons _output_-o288710_ __tmp293470))))
                         (declare (not safe))
                         (cons _output-o288706_ __tmp293469))))
                  (declare (not safe))
                  (cons _bin-o288698_ __tmp293468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293467
                                                           _deps-o288688_))))
                                            (declare (not safe))
                                            (cons _output-bin288700_
                                                  __tmp293466))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293465))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293476
                               __tmp293464))
                            (for-each
                             delete-file
                             (let ((__tmp293477
                                    (let ((__tmp293478
                                           (let ((__tmp293479
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o288710_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o288706_
                                                   __tmp293479))))
                                      (declare (not safe))
                                      (cons _output_-c288708_ __tmp293478))))
                               (declare (not safe))
                               (cons _output-c288704_ __tmp293477)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp288660_)))
                          '#!void)))))
          (let* ((_output-bin288644_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288634_ _opts288635_)))
                 (_output-scm288646_
                  (string-append _output-bin288644_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288642_ _output-scm288646_ _output-bin288644_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288646_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx288459_ _opts288460_)
        (letrec ((_reset-declare288462_
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
                 (_generate-stub288463_
                  (lambda (_deps288625_)
                    (let ((_mod-main288627_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288459_ 'main)))
                          (_reset-decl288628_
                           (let ()
                             (declare (not safe))
                             (_reset-declare288462_)))
                          (_user-decl288629_
                           (let ()
                             (declare (not safe))
                             (_user-declare288464_))))
                      (for-each
                       (lambda (_dep288631_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl288628_)
                         (newline)
                         (if _user-decl288629_
                             (begin (write _user-decl288629_) (newline))
                             '#!void)
                         (write (let ((__tmp293480
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep288631_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp293480)))
                         (newline))
                       _deps288625_)
                      (write (let ((__tmp293481
                                    (let ((__tmp293494
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293482
                                           (let ((__tmp293490
                                                  (let ((__tmp293491
                                                         (let ((__tmp293492
                                                                (let ((__tmp293493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293493))))
                   (declare (not safe))
                   (cons __tmp293492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp293491)))
                                                 (__tmp293483
                                                  (let ((__tmp293484
                                                         (let ((__tmp293485
                                                                (let ((__tmp293486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293487
                                      (let ((__tmp293488
                                             (let ((__tmp293489
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp293489 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp293488))))
                                 (declare (not safe))
                                 (cons __tmp293487 '()))))
                          (declare (not safe))
                          (cons _mod-main288627_ __tmp293486))))
                   (declare (not safe))
                   (cons 'apply __tmp293485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293484 '()))))
                                             (declare (not safe))
                                             (cons __tmp293490 __tmp293483))))
                                      (declare (not safe))
                                      (cons __tmp293494 __tmp293482))))
                               (declare (not safe))
                               (cons 'define __tmp293481)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare288464_
                  (lambda ()
                    (let* ((_gsc-opts288530_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts288460_)))
                           (_gsc-prelude288532_
                            (if _gsc-opts288530_
                                (member '"-prelude" _gsc-opts288530_)
                                '#f))
                           (_gsc-prelude288534_
                            (if _gsc-prelude288532_
                                (read (open-input-string
                                       (cadr _gsc-prelude288532_)))
                                '#f)))
                      (let _lp288537_ ((_rest288539_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude288534_ '())))
                                       (_user-decls288540_ '()))
                        (let* ((_rest288541288549_ _rest288539_)
                               (_else288543288557_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls288540_))
                                      '#f
                                      (let ((__tmp293495
                                             (reverse _user-decls288540_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp293495)))))
                               (_K288545288613_
                                (lambda (_rest288560_ _expr288561_)
                                  (let* ((_expr288562288574_ _expr288561_)
                                         (_else288565288582_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp288537_
                                               _rest288560_
                                               _user-decls288540_)))))
                                    (let ((_K288570288603_
                                           (lambda (_decls288601_)
                                             (let ((__tmp293496
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls288540_
                                                              _decls288601_))))
                                               (declare (not safe))
                                               (_lp288537_
                                                _rest288560_
                                                __tmp293496))))
                                          (_K288567288588_
                                           (lambda (_exprs288586_)
                                             (let ((__tmp293497
                                                    (append _exprs288586_
                                                            _rest288560_)))
                                               (declare (not safe))
                                               (_lp288537_
                                                __tmp293497
                                                _user-decls288540_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr288562288574_))
                                          (let ((_tl288572288608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr288562288574_)))
                                                (_hd288571288606_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr288562288574_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd288571288606_
                                                         'declare))
                                                (let ((_decls288611_
                                                       _tl288572288608_))
                                                  (declare (not safe))
                                                  (_K288570288603_
                                                   _decls288611_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd288571288606_
                                                             'begin))
                                                    (let ((_exprs288596_
                                                           _tl288572288608_))
                                                      (declare (not safe))
                                                      (_K288567288588_
                                                       _exprs288596_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else288565288582_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else288565288582_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest288541288549_))
                              (let ((_hd288546288616_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest288541288549_)))
                                    (_tl288547288618_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest288541288549_))))
                                (let* ((_expr288621_ _hd288546288616_)
                                       (_rest288623_ _tl288547288618_))
                                  (declare (not safe))
                                  (_K288545288613_ _rest288623_ _expr288621_)))
                              (let ()
                                (declare (not safe))
                                (_else288543288557_))))))))
                 (_compile-stub288465_
                  (lambda (_output-scm288472_ _output-bin288473_)
                    (let* ((_gerbil-home288475_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288477_
                            (path-expand '"lib" _gerbil-home288475_))
                           (_runtime288479_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp288481_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home288475_))
                           (_include-gambit-sharp288483_
                            (string-append
                             '"(include \""
                             _gambit-sharp288481_
                             '"\")"))
                           (_bin-scm288485_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288459_)))
                           (_deps288487_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288459_)))
                           (_deps288489_
                            (map gxc#find-static-module-file _deps288487_))
                           (_deps288494_
                            (let ((__tmp293498
                                   (lambda (_$obj288491_)
                                     (let ((__tmp293499
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj288491_))))
                                       (declare (not safe))
                                       (not __tmp293499)))))
                              (declare (not safe))
                              (filter __tmp293498 _deps288489_)))
                           (_deps288498_
                            (let ((__tmp293500
                                   (lambda (_f288496_)
                                     (let ((__tmp293501
                                            (member _f288496_
                                                    _runtime288479_)))
                                       (declare (not safe))
                                       (not __tmp293501)))))
                              (declare (not safe))
                              (filter __tmp293500 _deps288494_)))
                           (_output-base288500_
                            (string-append
                             (path-strip-extension _output-scm288472_)))
                           (_output-c288502_
                            (string-append _output-base288500_ '".c"))
                           (_output-o288504_
                            (string-append _output-base288500_ '".o"))
                           (_output-c_288506_
                            (string-append _output-base288500_ '"_.c"))
                           (_output-o_288508_
                            (string-append _output-base288500_ '"_.o"))
                           (_gsc-link-opts288510_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288512_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288514_
                            (let ((__tmp293502
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir288477_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp293502)))
                           (_output-ld-opts288516_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros288518_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp293504
                                       (let ((__tmp293505
                                              (let ((__tmp293506
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp288483_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp293506))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp293505))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293504))
                                (let ((__tmp293503
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp288483_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293503))))
                           (_gsc-link-opts288520_
                            (append _gsc-link-opts288510_
                                    _gsc-gx-macros288518_))
                           (_rpath288522_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288477_)))
                           (_default-ld-options288524_
                            (let ((__tmp293507
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp293507))))
                      (let ((__tmp293508
                             (lambda ()
                               (let ((__tmp293509
                                      (path-directory _output-bin288473_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293509)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293508))
                      (let ((__tmp293510
                             (lambda ()
                               (let ((__tmp293511
                                      (let ((__tmp293512
                                             (let ((__tmp293513
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm288485_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp293513
                                                       _deps288498_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp293512
                                                _runtime288479_))))
                                 (declare (not safe))
                                 (_generate-stub288463_ __tmp293511)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288472_
                         __tmp293510))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293519
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293514
                                   (let ((__tmp293515
                                          (let ((__tmp293516
                                                 (let ((__tmp293517
                                                        (let ((__tmp293518
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm288472_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp293518 _gsc-link-opts288520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_288506_
                                                         __tmp293517))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp293516))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293515))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293519
                               __tmp293514))
                            (let ((__tmp293525
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293520
                                   (let ((__tmp293521
                                          (let ((__tmp293522
                                                 (let ((__tmp293523
                                                        (let ((__tmp293524
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_288506_ '()))))
                  (declare (not safe))
                  (cons _output-c288502_ __tmp293524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293523
                                                           _gsc-static-opts288514_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293522
                                                    _gsc-cc-opts288512_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293521))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293525
                               __tmp293520))
                            (let ((__tmp293535
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293526
                                   (let ((__tmp293527
                                          (let ((__tmp293528
                                                 (let ((__tmp293529
                                                        (let ((__tmp293530
                                                               (let ((__tmp293531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293532
                                     (let ((__tmp293533
                                            (let ((__tmp293534
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options288524_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir288477_
                                                    __tmp293534))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp293533))))
                                (declare (not safe))
                                (cons _rpath288522_ __tmp293532))))
                         (declare (not safe))
                         (foldr1 cons __tmp293531 _output-ld-opts288516_))))
                  (declare (not safe))
                  (cons _output-o_288508_ __tmp293530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o288504_
                                                         __tmp293529))))
                                            (declare (not safe))
                                            (cons _output-bin288473_
                                                  __tmp293528))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293527))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293535
                               __tmp293526)))
                          '#!void)))))
          (let* ((_output-bin288467_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288459_ _opts288460_)))
                 (_output-scm288469_
                  (string-append _output-bin288467_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288465_ _output-scm288469_ _output-bin288467_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288469_))))))
    (define gxc#find-export-binding
      (lambda (_ctx288409_ _id288410_)
        (let ((_$e288456_
               (let ((__tmp293537
                      (lambda (_e288411288413_)
                        (let* ((_g288415288425_ _e288411288413_)
                               (_else288417288433_ (lambda () '#f))
                               (_K288419288437_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g288415288425_
                                 'gx#module-export::t))
                              (let* ((_e288420288440_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288415288425_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e288421288443_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288415288425_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e288422288446_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288415288425_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e288422288446_ '0))
                                    (let ((_e288423288449_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g288415288425_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g288451288453_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g288451288453_
                                                    _id288410_)))
                                           _e288423288449_)
                                          (let ()
                                            (declare (not safe))
                                            (_K288419288437_))
                                          (let ()
                                            (declare (not safe))
                                            (_else288417288433_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else288417288433_))))
                              (let ()
                                (declare (not safe))
                                (_else288417288433_))))))
                     (__tmp293536
                      (##structure-ref
                       _ctx288409_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp293537 __tmp293536))))
          (if _$e288456_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e288456_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx288401_ _id288402_)
        (let ((_$e288404_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx288401_ _id288402_))))
          (if _$e288404_
              ((lambda (_bind288407_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind288407_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id288402_)))
                 (##structure-ref _bind288407_ '1 gx#binding::t '#f))
               _$e288404_)
              (let ((__tmp293538
                     (##structure-ref
                      _ctx288401_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp293538
                 _id288402_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx288288_)
        (letrec* ((_ht288290_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template288291_
                   (lambda (_in288353_ _phi288354_)
                     (let ((_iphi288356_
                            (fx+ _phi288354_
                                 (##direct-structure-ref
                                  _in288353_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports288357_
                            (##structure-ref
                             (##direct-structure-ref
                              _in288353_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp288359_ ((_rest288361_ _imports288357_)
                                        (_r288362_ '()))
                         (let* ((_rest288363288371_ _rest288361_)
                                (_else288365288379_ (lambda () _r288362_))
                                (_K288367288389_
                                 (lambda (_rest288382_ _in288383_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in288383_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi288356_))
                                           (let ((__tmp293545
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in288383_
                                                          _r288362_))))
                                             (declare (not safe))
                                             (_lp288359_
                                              _rest288382_
                                              __tmp293545))
                                           (let ()
                                             (declare (not safe))
                                             (_lp288359_
                                              _rest288382_
                                              _r288362_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in288383_
                                              'gx#module-import::t))
                                           (let ((_iphi288385_
                                                  (fx+ _phi288354_
                                                       (##direct-structure-ref
                                                        _in288383_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi288385_))
                                                 (let ((__tmp293543
                                                        (let ((__tmp293544
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in288383_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp293544 _r288362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp288359_
                                                    _rest288382_
                                                    __tmp293543))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp288359_
                                                    _rest288382_
                                                    _r288362_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in288383_
                                                  'gx#import-set::t))
                                               (let ((_xphi288387_
                                                      (fx+ _iphi288356_
                                                           (##direct-structure-ref
                                                            _in288383_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi288387_))
                                                     (let ((__tmp293541
                                                            (let ((__tmp293542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in288383_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp293542 _r288362_))))
               (declare (not safe))
               (_lp288359_ _rest288382_ __tmp293541))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi288387_)
                                                         (let ((__tmp293539
                                                                (let ((__tmp293540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template288291_
                                  _in288383_
                                  _iphi288356_))))
                          (declare (not safe))
                          (foldl1 cons _r288362_ __tmp293540))))
                   (declare (not safe))
                   (_lp288359_ _rest288382_ __tmp293539))
                 (let ()
                   (declare (not safe))
                   (_lp288359_ _rest288382_ _r288362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp288359_
                                                  _rest288382_
                                                  _r288362_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest288363288371_))
                               (let ((_hd288368288392_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest288363288371_)))
                                     (_tl288369288394_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest288363288371_))))
                                 (let* ((_in288397_ _hd288368288392_)
                                        (_rest288399_ _tl288369288394_))
                                   (declare (not safe))
                                   (_K288367288389_ _rest288399_ _in288397_)))
                               (let ()
                                 (declare (not safe))
                                 (_else288365288379_))))))))
                  (_find-deps288292_
                   (lambda (_rest288299_ _deps288300_)
                     (let* ((_rest288301288309_ _rest288299_)
                            (_else288303288317_ (lambda () _deps288300_))
                            (_K288305288341_
                             (lambda (_rest288320_ _hd288321_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd288321_
                                      'gx#module-context::t))
                                   (let ((_id288323_
                                          (##structure-ref
                                           _hd288321_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports288324_
                                          (##structure-ref
                                           _hd288321_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht288290_
                                            _id288323_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps288292_
                                            _rest288320_
                                            _deps288300_))
                                         (let ((_$e288326_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd288321_))))
                                           (if _$e288326_
                                               ((lambda (_pre288329_)
                                                  (let ((_xdeps288331_
                                                         (let ((__tmp293558
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre288329_ _imports288324_))))
                   (declare (not safe))
                   (_find-deps288292_ __tmp293558 _deps288300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht288290_
                                                       _id288323_
                                                       _hd288321_))
                                                    (let ((__tmp293559
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd288321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps288331_))))
              (declare (not safe))
              (_find-deps288292_ _rest288320_ __tmp293559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e288326_)
                                               (let ((_xdeps288333_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps288292_
                                                         _imports288324_
                                                         _deps288300_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht288290_
                                                    _id288323_
                                                    _hd288321_))
                                                 (let ((__tmp293557
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd288321_
                                                                _xdeps288333_))))
                                                   (declare (not safe))
                                                   (_find-deps288292_
                                                    _rest288320_
                                                    __tmp293557)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd288321_
                                          'gx#prelude-context::t))
                                       (let ((_id288335_
                                              (##structure-ref
                                               _hd288321_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht288290_
                                                _id288335_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps288292_
                                                _rest288320_
                                                _deps288300_))
                                             (let ((_xdeps288337_
                                                    (let ((__tmp293555
                                                           (##structure-ref
                                                            _hd288321_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps288292_
                                                       __tmp293555
                                                       _deps288300_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht288290_
                                                      _id288335_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps288292_
                                                      _rest288320_
                                                      _xdeps288337_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht288290_
                                                        _id288335_
                                                        _hd288321_))
                                                     (let ((__tmp293556
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd288321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps288337_))))
               (declare (not safe))
               (_find-deps288292_ _rest288320_ __tmp293556)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd288321_
                                              'gx#module-import::t))
                                           (if (let ((__tmp293554
                                                      (##direct-structure-ref
                                                       _hd288321_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp293554))
                                               (let ((__tmp293552
                                                      (let ((__tmp293553
                                                             (##direct-structure-ref
                                                              _hd288321_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293553
                                                              _rest288320_))))
                                                 (declare (not safe))
                                                 (_find-deps288292_
                                                  __tmp293552
                                                  _deps288300_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps288292_
                                                  _rest288320_
                                                  _deps288300_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd288321_
                                                  'gx#module-export::t))
                                               (let ((__tmp293550
                                                      (let ((__tmp293551
                                                             (##direct-structure-ref
                                                              _hd288321_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293551
                                                              _rest288320_))))
                                                 (declare (not safe))
                                                 (_find-deps288292_
                                                  __tmp293550
                                                  _deps288300_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd288321_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp293549
                                                              (##direct-structure-ref
                                                               _hd288321_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp293549))
                                                       (let ((__tmp293547
                                                              (let ((__tmp293548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd288321_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp293548 _rest288320_))))
                 (declare (not safe))
                 (_find-deps288292_ __tmp293547 _deps288300_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd288321_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps288339_
                           (let ()
                             (declare (not safe))
                             (_import-set-template288291_ _hd288321_ '0)))
                          (__tmp293546
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest288320_ _xdeps288339_))))
                     (declare (not safe))
                     (_find-deps288292_ __tmp293546 _deps288300_))
                   (let ()
                     (declare (not safe))
                     (_find-deps288292_ _rest288320_ _deps288300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd288321_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest288301288309_))
                           (let ((_hd288306288344_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest288301288309_)))
                                 (_tl288307288346_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest288301288309_))))
                             (let* ((_hd288349_ _hd288306288344_)
                                    (_rest288351_ _tl288307288346_))
                               (declare (not safe))
                               (_K288305288341_ _rest288351_ _hd288349_)))
                           (let ()
                             (declare (not safe))
                             (_else288303288317_)))))))
          (reverse (let ((__tmp293560
                          (let ((__tmp293561
                                 (let ((_$e288294_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx288288_))))
                                   (if _$e288294_
                                       ((lambda (_pre288297_)
                                          (let ((__tmp293562
                                                 (##structure-ref
                                                  _ctx288288_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre288297_ __tmp293562)))
                                        _$e288294_)
                                       (##structure-ref
                                        _ctx288288_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps288292_ __tmp293561 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp293560))))))
    (define gxc#find-static-module-file
      (lambda (_ctx288219_)
        (let* ((_context-id288221_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx288219_
                       'gx#module-context::t))
                    (##structure-ref _ctx288219_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx288219_)))
               (_scm288223_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id288221_))
                 '".scm"))
               (_dirs288225_ (gx#current-expander-module-library-path))
               (_dirs288231_
                (let ((_user-libpath288227_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath288227_
                      (let ((_user-libpath288229_
                             (path-expand '"lib" _user-libpath288227_)))
                        (if (member _user-libpath288229_ _dirs288225_)
                            _dirs288225_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath288229_ _dirs288225_))))
                      _dirs288225_)))
               (_dirs288240_
                (let ((_$e288233_ (gxc#current-compile-output-dir)))
                  (if _$e288233_
                      ((lambda (_g288235288237_)
                         (let ()
                           (declare (not safe))
                           (cons _g288235288237_ _dirs288231_)))
                       _$e288233_)
                      _dirs288231_)))
               (_dirs288246_
                (map (lambda (_g288241288243_)
                       (path-expand '"static" _g288241288243_))
                     _dirs288240_)))
          (let _lp288249_ ((_rest288251_ _dirs288246_))
            (let* ((_rest288252288260_ _rest288251_)
                   (_else288254288268_
                    (lambda ()
                      (let ((__tmp293563
                             (##structure-ref
                              _ctx288219_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp293563
                         _scm288223_))))
                   (_K288256288276_
                    (lambda (_rest288271_ _dir288272_)
                      (let ((_path288274_
                             (path-expand _scm288223_ _dir288272_)))
                        (if (file-exists? _path288274_)
                            _path288274_
                            (let ()
                              (declare (not safe))
                              (_lp288249_ _rest288271_)))))))
              (if (let () (declare (not safe)) (##pair? _rest288252288260_))
                  (let ((_hd288257288279_
                         (let ()
                           (declare (not safe))
                           (##car _rest288252288260_)))
                        (_tl288258288281_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest288252288260_))))
                    (let* ((_dir288284_ _hd288257288279_)
                           (_rest288286_ _tl288258288281_))
                      (declare (not safe))
                      (_K288256288276_ _rest288286_ _dir288284_)))
                  (let () (declare (not safe)) (_else288254288268_))))))))
    (define gxc#file-empty?
      (lambda (_path288217_)
        (let ((__tmp293564 (file-info-size (file-info _path288217_ '#t))))
          (declare (not safe))
          (zero? __tmp293564))))
    (define gxc#compile-top-module
      (lambda (_ctx288206_)
        (let ((__tmp293568
               (lambda ()
                 (let ((__tmp293569
                        (##structure-ref
                         _ctx288206_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp293569))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp293570
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx288206_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp293570))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx288206_))
                 (if (let ((__tmp293573
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx288206_))))
                       (declare (not safe))
                       (null? __tmp293573))
                     (let* ((_thr1288211_
                             (let ((__tmp293571
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx288206_)))))
                               (declare (not safe))
                               (spawn __tmp293571)))
                            (_thr2288214_
                             (let ((__tmp293572
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx288206_)))))
                               (declare (not safe))
                               (spawn __tmp293572))))
                       (let () (declare (not safe)) (gxc#join! _thr1288211_))
                       (let () (declare (not safe)) (gxc#join! _thr2288214_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx288206_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx288206_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx288206_))
                     '#!void)))
              (__tmp293567
               (let ((__obj293372
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj293372)
                 __obj293372))
              (__tmp293566
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp293565 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp293568
           gx#current-expander-context
           _ctx288206_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp293567
           gxc#current-compile-runtime-sections
           __tmp293566
           gxc#current-compile-runtime-names
           __tmp293565))))
    (define gxc#collect-bindings
      (lambda (_ctx288204_)
        (let ((__tmp293574
               (##structure-ref _ctx288204_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp293574))))
    (define gxc#compile-runtime-code
      (lambda (_ctx288150_)
        (letrec ((_compile1288152_
                  (lambda (_ctx288193_)
                    (let* ((_code288195_
                            (##structure-ref
                             _ctx288193_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt288199_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code288195_))
                                (let ((_idstr288197_
                                       (let ((__tmp293575
                                              (##structure-ref
                                               _ctx288193_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp293575))))
                                  (string-append _idstr288197_ '"__0"))
                                '#f)))
                      (if _rt288199_
                          (begin
                            (let ((__tmp293576
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp293576 _ctx288193_ _rt288199_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code288154_
                               _ctx288193_
                               _code288195_)))
                          (let ((_path288202_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx288193_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path288202_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code288155_
                         _ctx288193_
                         _code288195_
                         _rt288199_)))))
                 (_context-timestamp288153_
                  (lambda (_ctx288191_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx288191_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code288154_
                  (lambda (_ctx288173_ _code288174_)
                    (let* ((_lifts288176_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code288179_
                            (let ((__tmp293579
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code288174_))))
                                  (__tmp293578
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp293577
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293579
                               gx#current-expander-context
                               _ctx288173_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts288176_
                               gxc#current-compile-marks
                               __tmp293578
                               gxc#current-compile-identifiers
                               __tmp293577)))
                           (_runtime-code288181_
                            (if (let ((__tmp293583 (unbox _lifts288176_)))
                                  (declare (not safe))
                                  (null? __tmp293583))
                                _runtime-code288179_
                                (let ((__tmp293580
                                       (let ((__tmp293582
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code288179_
                                                      '())))
                                             (__tmp293581
                                              (reverse (unbox _lifts288176_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp293582
                                                 __tmp293581))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293580))))
                           (_runtime-code288183_
                            (let ((__tmp293584
                                   (let ((__tmp293586
                                          (let ((__tmp293587
                                                 (let ((__tmp293590
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp288153_
                                                           _ctx288173_)))
                                                       (__tmp293588
                                                        (let ((__tmp293589
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp293589
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp293590
                                                         __tmp293588))))
                                            (declare (not safe))
                                            (cons 'define __tmp293587)))
                                         (__tmp293585
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code288181_ '()))))
                                     (declare (not safe))
                                     (cons __tmp293586 __tmp293585))))
                              (declare (not safe))
                              (cons 'begin __tmp293584)))
                           (_scm0288185_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx288173_
                               '0
                               '".scm"))))
                      (let ((_scms288188_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx288173_))))
                        (let ((__tmp293591
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0288185_
                                    _runtime-code288183_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp293591
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms288188_)
                            (delete-file _scms288188_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0288185_
                           '" => "
                           _scms288188_))
                        (copy-file _scm0288185_ _scms288188_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0288185_))))))
                 (_generate-loader-code288155_
                  (lambda (_ctx288162_ _code288163_ _rt288164_)
                    (let* ((_loader-code288167_
                            (let ((__tmp293592
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code288163_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293592
                               gx#current-expander-context
                               _ctx288162_)))
                           (_loader-code288169_
                            (if _rt288164_
                                (let ((__tmp293593
                                       (let ((__tmp293594
                                              (let ((__tmp293595
                                                     (let ((__tmp293596
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt288164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp293596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293595 '()))))
                                         (declare (not safe))
                                         (cons _loader-code288167_
                                               __tmp293594))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293593))
                                _loader-code288167_)))
                      (let ((__tmp293597
                             (lambda ()
                               (let ((__tmp293598
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx288162_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp293598
                                  _loader-code288169_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp293597
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules288157_
                 (let ((__tmp293599
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx288150_))))
                   (declare (not safe))
                   (cons _ctx288150_ __tmp293599))))
            (for-each
             (lambda (_ctx288159_)
               (let ((__tmp293600
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1288152_ _ctx288159_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp293600
                  gxc#current-compile-decls
                  '())))
             _all-modules288157_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx288047_)
        (letrec ((_compile-ssi288049_
                  (lambda (_code288120_)
                    (let* ((_path288122_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx288047_
                               '#f
                               '".ssi")))
                           (_prelude288133_
                            (let* ((_super288124_
                                    (##structure-ref
                                     _ctx288047_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e288126_
                                    (##structure-ref
                                     _super288124_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e288126_
                                  ((lambda (_g288128288130_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g288128288130_)))
                                   _$e288126_)
                                  ':<root>)))
                           (_ns288135_
                            (##structure-ref
                             _ctx288047_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr288137_
                            (symbol->string
                             (##structure-ref
                              _ctx288047_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg288144_
                            (let ((_$e288139_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr288137_ '#\/))))
                              (if _$e288139_
                                  ((lambda (_x288142_)
                                     (string->symbol
                                      (substring _idstr288137_ '0 _x288142_)))
                                   _$e288139_)
                                  '#f)))
                           (_rt288146_
                            (let ((__tmp293601
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp293601 _ctx288047_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path288122_))
                      (let ((__tmp293602
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude288133_))
                               (if _pkg288144_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg288144_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns288135_))
                               (newline)
                               (pretty-print _code288120_)
                               (if _rt288146_
                                   (pretty-print
                                    (let ((__tmp293603
                                           (let ((__tmp293607
                                                  (let ((__tmp293608
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp293608)))
                                                 (__tmp293604
                                                  (let ((__tmp293605
                                                         (let ((__tmp293606
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt288146_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp293606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293605 '()))))
                                             (declare (not safe))
                                             (cons __tmp293607 __tmp293604))))
                                      (declare (not safe))
                                      (cons '%#call __tmp293603)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path288122_
                         __tmp293602)))))
                 (_compile-phi288050_
                  (lambda (_part288060_)
                    (let* ((_part288061288074_ _part288060_)
                           (_E288063288078_
                            (lambda ()
                              (error '"No clause matching"
                                     _part288061288074_)))
                           (_K288064288089_
                            (lambda (_code288081_
                                     _n288082_
                                     _phi288083_
                                     _phi-ctx288084_)
                              (let* ((_code288087_
                                      (let ((__tmp293609
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code288081_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp293609
                                         gx#current-expander-context
                                         _phi-ctx288084_
                                         gx#current-expander-phi
                                         _phi288083_)))
                                     (__tmp293610
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx288047_
                                         _n288082_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp293610
                                 _code288087_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part288061288074_))
                          (let ((_hd288065288092_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part288061288074_)))
                                (_tl288066288094_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part288061288074_))))
                            (let ((_phi-ctx288097_ _hd288065288092_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl288066288094_))
                                  (let ((_hd288067288099_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl288066288094_)))
                                        (_tl288068288101_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl288066288094_))))
                                    (let ((_phi288104_ _hd288067288099_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl288068288101_))
                                          (let ((_hd288069288106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl288068288101_)))
                                                (_tl288070288108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl288068288101_))))
                                            (let ((_n288111_ _hd288069288106_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl288070288108_))
                                                  (let ((_hd288071288113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl288070288108_)))
                                                        (_tl288072288115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl288070288108_))))
                                                    (let ((_code288118_
                                                           _hd288071288113_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl288072288115_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K288064288089_
                                                             _code288118_
                                                             _n288111_
                                                             _phi288104_
                                                             _phi-ctx288097_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E288063288078_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E288063288078_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E288063288078_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E288063288078_)))))
                          (let () (declare (not safe)) (_E288063288078_)))))))
          (let ((_g293611_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx288047_))))
            (begin
              (let ((_g293612_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g293611_)
                           (##vector-length _g293611_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g293612_ 2)))
                    (error "Context expects 2 values" _g293612_)))
              (let ((_ssi-code288052_
                     (let () (declare (not safe)) (##vector-ref _g293611_ 0)))
                    (_phi-code288053_
                     (let () (declare (not safe)) (##vector-ref _g293611_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi288049_ _ssi-code288052_))
                  (let ((_threads288058_
                         (map (lambda (_code288055_)
                                (let ((__tmp293613
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi288050_
                                            _code288055_)))))
                                  (declare (not safe))
                                  (spawn __tmp293613)))
                              _phi-code288053_)))
                    (for-each gxc#join! _threads288058_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx288030_)
        (let* ((_path288032_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx288030_ '#f '".ssxi.ss")))
               (_code288034_
                (let ((__tmp293614
                       (##structure-ref
                        _ctx288030_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp293614)))
               (_idstr288036_
                (symbol->string
                 (##structure-ref _ctx288030_ '1 gx#expander-context::t '#f)))
               (_pkg288043_
                (let ((_$e288038_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr288036_ '#\/))))
                  (if _$e288038_
                      ((lambda (_x288041_)
                         (string->symbol
                          (substring _idstr288036_ '0 _x288041_)))
                       _$e288038_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path288032_))
          (let ((__tmp293615
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg288043_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg288043_))
                       '#!void)
                   (newline)
                   (pretty-print _code288034_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path288032_ __tmp293615)))))
    (define gxc#generate-meta-code
      (lambda (_ctx288023_)
        (let* ((_state288025_
                (let ((__obj293373
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj293373 _ctx288023_)
                  __obj293373))
               (_ssi-code288027_
                (let ((__tmp293616
                       (##structure-ref
                        _ctx288023_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp293616 _state288025_))))
          (values _ssi-code288027_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state288025_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx288016_)
        (let ((_lifts288018_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293619
                 (lambda ()
                   (let ((_code288021_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx288016_))))
                     (if (let ((__tmp293623 (unbox _lifts288018_)))
                           (declare (not safe))
                           (null? __tmp293623))
                         _code288021_
                         (let ((__tmp293620
                                (let ((__tmp293622
                                       (let ()
                                         (declare (not safe))
                                         (cons _code288021_ '())))
                                      (__tmp293621
                                       (reverse (unbox _lifts288018_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp293622 __tmp293621))))
                           (declare (not safe))
                           (cons 'begin __tmp293620))))))
                (__tmp293618
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp293617
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp293619
             gxc#current-compile-lift
             _lifts288018_
             gxc#current-compile-marks
             __tmp293618
             gxc#current-compile-identifiers
             __tmp293617)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx288012_)
        (let ((_modules288014_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293624
                 (##structure-ref _ctx288012_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp293624 _modules288014_))
          (reverse (unbox _modules288014_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path287995_ _code287996_ _phi?287997_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path287995_))
        (let ((__tmp293625
               (lambda ()
                 (pretty-print
                  (let ((__tmp293626
                         (let ((__tmp293633
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp293627
                                (let ((__tmp293632
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp293628
                                       (let ((__tmp293631
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp293629
                                              (let ((__tmp293630
                                                     (if _phi?287997_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp293630))))
                                         (declare (not safe))
                                         (cons __tmp293631 __tmp293629))))
                                  (declare (not safe))
                                  (cons __tmp293632 __tmp293628))))
                           (declare (not safe))
                           (cons __tmp293633 __tmp293627))))
                    (declare (not safe))
                    (cons 'declare __tmp293626)))
                 (pretty-print _code287996_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path287995_ __tmp293625))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path287995_ _phi?287997_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path287995_))))
    (define gxc#compile-scm-file__0
      (lambda (_path288003_ _code288004_)
        (let ((_phi?288006_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path288003_ _code288004_ _phi?288006_))))
    (define gxc#compile-scm-file
      (lambda _g293635_
        (let ((_g293634_ (let () (declare (not safe)) (##length _g293635_))))
          (cond ((let () (declare (not safe)) (##fx= _g293634_ 2))
                 (apply (lambda (_path288003_ _code288004_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path288003_
                             _code288004_)))
                        _g293635_))
                ((let () (declare (not safe)) (##fx= _g293634_ 3))
                 (apply (lambda (_path288008_ _code288009_ _phi?288010_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path288008_
                             _code288009_
                             _phi?288010_)))
                        _g293635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g293635_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?287896_)
        (let _lp287898_ ((_rest287900_ (gxc#current-compile-gsc-options))
                         (_opts287901_ '()))
          (let* ((_rest287902287922_ _rest287900_)
                 (_else287906287930_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287896_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293636
                               (let ((__tmp293637 (reverse _opts287901_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp293637))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp293636))
                        (reverse _opts287901_)))))
            (let ((_K287916287973_
                   (lambda (_rest287971_)
                     (let ()
                       (declare (not safe))
                       (_lp287898_ _rest287971_ _opts287901_))))
                  (_K287911287955_
                   (lambda (_rest287953_)
                     (let ()
                       (declare (not safe))
                       (_lp287898_ _rest287953_ _opts287901_))))
                  (_K287908287937_
                   (lambda (_rest287934_ _opt287935_)
                     (let ((__tmp293638
                            (let ()
                              (declare (not safe))
                              (cons _opt287935_ _opts287901_))))
                       (declare (not safe))
                       (_lp287898_ _rest287934_ __tmp293638)))))
              (if (let () (declare (not safe)) (##pair? _rest287902287922_))
                  (let ((_tl287918287978_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287902287922_)))
                        (_hd287917287976_
                         (let ()
                           (declare (not safe))
                           (##car _rest287902287922_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287917287976_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287918287978_))
                            (let* ((_tl287920287981_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287918287978_)))
                                   (_rest287984_ _tl287920287981_))
                              (declare (not safe))
                              (_K287916287973_ _rest287984_))
                            (let ((_opt287945_ _hd287917287976_)
                                  (_rest287947_ _tl287918287978_))
                              (let ()
                                (declare (not safe))
                                (_K287908287937_ _rest287947_ _opt287945_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287917287976_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287918287978_))
                                (let* ((_tl287915287963_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287918287978_)))
                                       (_rest287966_ _tl287915287963_))
                                  (declare (not safe))
                                  (_K287911287955_ _rest287966_))
                                (let ((_opt287945_ _hd287917287976_)
                                      (_rest287947_ _tl287918287978_))
                                  (let ()
                                    (declare (not safe))
                                    (_K287908287937_
                                     _rest287947_
                                     _opt287945_))))
                            (let ((_opt287945_ _hd287917287976_)
                                  (_rest287947_ _tl287918287978_))
                              (let ()
                                (declare (not safe))
                                (_K287908287937_ _rest287947_ _opt287945_))))))
                  (let () (declare (not safe)) (_else287906287930_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?287990_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?287990_))))
    (define gxc#gsc-link-options
      (lambda _g293640_
        (let ((_g293639_ (let () (declare (not safe)) (##length _g293640_))))
          (cond ((let () (declare (not safe)) (##fx= _g293639_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g293640_))
                ((let () (declare (not safe)) (##fx= _g293639_ 1))
                 (apply (lambda (_phi?287992_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?287992_)))
                        _g293640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g293640_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?287797_)
        (let _lp287799_ ((_rest287801_ (gxc#current-compile-gsc-options))
                         (_opts287802_ '()))
          (let* ((_rest287803287823_ _rest287801_)
                 (_else287807287831_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287797_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293641
                               (let ((__tmp293642 (reverse _opts287802_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp293642))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp293641))
                        (reverse _opts287802_)))))
            (let ((_K287817287870_
                   (lambda (_rest287867_ _opt287868_)
                     (let ((__tmp293643
                            (let ((__tmp293644
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts287802_))))
                              (declare (not safe))
                              (cons _opt287868_ __tmp293644))))
                       (declare (not safe))
                       (_lp287799_ _rest287867_ __tmp293643))))
                  (_K287812287851_
                   (lambda (_rest287849_)
                     (let ()
                       (declare (not safe))
                       (_lp287799_ _rest287849_ _opts287802_))))
                  (_K287809287837_
                   (lambda (_rest287835_)
                     (let ()
                       (declare (not safe))
                       (_lp287799_ _rest287835_ _opts287802_)))))
              (if (let () (declare (not safe)) (##pair? _rest287803287823_))
                  (let ((_tl287819287875_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287803287823_)))
                        (_hd287818287873_
                         (let ()
                           (declare (not safe))
                           (##car _rest287803287823_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287818287873_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287819287875_))
                            (let ((_tl287821287880_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl287819287875_)))
                                  (_hd287820287878_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl287819287875_))))
                              (let ((_opt287883_ _hd287820287878_)
                                    (_rest287885_ _tl287821287880_))
                                (let ()
                                  (declare (not safe))
                                  (_K287817287870_ _rest287885_ _opt287883_))))
                            (let ((_rest287843_ _tl287819287875_))
                              (declare (not safe))
                              (_K287809287837_ _rest287843_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287818287873_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287819287875_))
                                (let* ((_tl287816287859_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287819287875_)))
                                       (_rest287862_ _tl287816287859_))
                                  (declare (not safe))
                                  (_K287812287851_ _rest287862_))
                                (let ((_rest287843_ _tl287819287875_))
                                  (declare (not safe))
                                  (_K287809287837_ _rest287843_)))
                            (let ((_rest287843_ _tl287819287875_))
                              (declare (not safe))
                              (_K287809287837_ _rest287843_)))))
                  (let () (declare (not safe)) (_else287807287831_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?287891_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?287891_))))
    (define gxc#gsc-cc-options
      (lambda _g293646_
        (let ((_g293645_ (let () (declare (not safe)) (##length _g293646_))))
          (cond ((let () (declare (not safe)) (##fx= _g293645_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g293646_))
                ((let () (declare (not safe)) (##fx= _g293645_ 1))
                 (apply (lambda (_phi?287893_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?287893_)))
                        _g293646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g293646_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir287792_)
        (let* ((_user-staticdir287794_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp293647
                (let ((__tmp293648
                       (string-append
                        '"-I "
                        _staticdir287792_
                        '" -I "
                        _user-staticdir287794_)))
                  (declare (not safe))
                  (cons __tmp293648 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp293647))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp287704_ ((_rest287706_ (gxc#current-compile-gsc-options))
                         (_opts287707_ '()))
          (let* ((_rest287708287728_ _rest287706_)
                 (_else287712287736_ (lambda () _opts287707_)))
            (let ((_K287722287779_
                   (lambda (_rest287777_)
                     (let ()
                       (declare (not safe))
                       (_lp287704_ _rest287777_ _opts287707_))))
                  (_K287717287757_
                   (lambda (_rest287754_ _opt287755_)
                     (let ((__tmp293649
                            (append _opts287707_
                                    (let ((__tmp293650
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt287755_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp293650)))))
                       (declare (not safe))
                       (_lp287704_ _rest287754_ __tmp293649))))
                  (_K287714287742_
                   (lambda (_rest287740_)
                     (let ()
                       (declare (not safe))
                       (_lp287704_ _rest287740_ _opts287707_)))))
              (if (let () (declare (not safe)) (##pair? _rest287708287728_))
                  (let ((_tl287724287784_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287708287728_)))
                        (_hd287723287782_
                         (let ()
                           (declare (not safe))
                           (##car _rest287708287728_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287723287782_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287724287784_))
                            (let* ((_tl287726287787_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287724287784_)))
                                   (_rest287790_ _tl287726287787_))
                              (declare (not safe))
                              (_K287722287779_ _rest287790_))
                            (let ((_rest287748_ _tl287724287784_))
                              (declare (not safe))
                              (_K287714287742_ _rest287748_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287723287782_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287724287784_))
                                (let ((_tl287721287767_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl287724287784_)))
                                      (_hd287720287765_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl287724287784_))))
                                  (let ((_opt287770_ _hd287720287765_)
                                        (_rest287772_ _tl287721287767_))
                                    (let ()
                                      (declare (not safe))
                                      (_K287717287757_
                                       _rest287772_
                                       _opt287770_))))
                                (let ((_rest287748_ _tl287724287784_))
                                  (declare (not safe))
                                  (_K287714287742_ _rest287748_)))
                            (let ((_rest287748_ _tl287724287784_))
                              (declare (not safe))
                              (_K287714287742_ _rest287748_)))))
                  (let () (declare (not safe)) (_else287712287736_))))))))
    (define gxc#not-string-empty?
      (lambda (_str287701_)
        (let ((__tmp293651
               (let () (declare (not safe)) (string-empty? _str287701_))))
          (declare (not safe))
          (not __tmp293651))))
    (define gxc#gsc-compile-file
      (lambda (_path287669_ _phi?287670_)
        (letrec ((_gsc-link-path287672_
                  (lambda (_base-path287693_)
                    (let _lp287695_ ((_n287697_ '1))
                      (let ((_path287699_
                             (string-append
                              _base-path287693_
                              '".o"
                              (number->string _n287697_))))
                        (if (file-exists? _path287699_)
                            (let ((__tmp293652
                                   (let ()
                                     (declare (not safe))
                                     (+ _n287697_ '1))))
                              (declare (not safe))
                              (_lp287695_ __tmp293652))
                            _path287699_))))))
          (let* ((_base-path287674_ (path-strip-extension _path287669_))
                 (_path-c287676_ (string-append _base-path287674_ '".c"))
                 (_path-o287678_ (string-append _base-path287674_ '".o"))
                 (_link-path287680_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path287672_ _base-path287674_)))
                 (_link-path-c287682_ (string-append _link-path287680_ '".c"))
                 (_link-path-o287684_ (string-append _link-path287680_ '".o"))
                 (_gsc-link-opts287686_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?287670_)))
                 (_gsc-cc-opts287688_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?287670_)))
                 (_gcc-ld-opts287690_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp293659 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293653
                   (let ((__tmp293654
                          (let ((__tmp293655
                                 (let ((__tmp293656
                                        (let ((__tmp293657
                                               (let ((__tmp293658
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path287669_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp293658
                                                         _gsc-link-opts287686_))))
                                          (declare (not safe))
                                          (cons _link-path-c287682_
                                                __tmp293657))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp293656))))
                            (declare (not safe))
                            (cons '"-flat" __tmp293655))))
                     (declare (not safe))
                     (cons '"-link" __tmp293654))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293659 __tmp293653))
            (let ((__tmp293666 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293660
                   (let ((__tmp293661
                          (let ((__tmp293662
                                 (let ((__tmp293663
                                        (let ((__tmp293664
                                               (let ((__tmp293665
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c287682_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c287676_
                                                       __tmp293665))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp293664
                                                  _gsc-cc-opts287688_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp293663))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp293662))))
                     (declare (not safe))
                     (cons '"-obj" __tmp293661))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293666 __tmp293660))
            (let ((__tmp293672 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp293667
                   (let ((__tmp293668
                          (let ((__tmp293669
                                 (let ((__tmp293670
                                        (let ((__tmp293671
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o287684_
                                                       _gcc-ld-opts287690_))))
                                          (declare (not safe))
                                          (cons _path-o287678_ __tmp293671))))
                                   (declare (not safe))
                                   (cons _link-path287680_ __tmp293670))))
                            (declare (not safe))
                            (cons '"-o" __tmp293669))))
                     (declare (not safe))
                     (cons '"-shared" __tmp293668))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp293672
               __tmp293667))
            (for-each
             delete-file
             (let ((__tmp293673
                    (let ((__tmp293674
                           (let ((__tmp293675
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o287684_ '()))))
                             (declare (not safe))
                             (cons _link-path-c287682_ __tmp293675))))
                      (declare (not safe))
                      (cons _path-o287678_ __tmp293674))))
               (declare (not safe))
               (cons _path-c287676_ __tmp293673)))))))
    (define gxc#compile-output-file
      (lambda (_ctx287640_ _n287641_ _ext287642_)
        (letrec ((_module-relative-path287644_
                  (lambda (_ctx287667_)
                    (path-strip-directory
                     (let ((__tmp293676
                            (##structure-ref
                             _ctx287667_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp293676)))))
                 (_module-source-directory287645_
                  (lambda (_ctx287663_)
                    (path-directory
                     (let ((_mpath287665_
                            (##structure-ref
                             _ctx287663_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath287665_))
                           _mpath287665_
                           (let ()
                             (declare (not safe))
                             (last _mpath287665_)))))))
                 (_section-string287646_
                  (lambda (_n287661_)
                    (if (let () (declare (not safe)) (number? _n287661_))
                        (number->string _n287661_)
                        (if (let () (declare (not safe)) (symbol? _n287661_))
                            (symbol->string _n287661_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n287661_))
                                _n287661_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n287661_)))))))
                 (_file-name287647_
                  (lambda (_path287659_)
                    (if _n287641_
                        (string-append
                         _path287659_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string287646_ _n287641_))
                         _ext287642_)
                        (string-append _path287659_ _ext287642_))))
                 (_file-path287648_
                  (lambda ()
                    (let ((_$e287654_ (gxc#current-compile-output-dir)))
                      (if _$e287654_
                          ((lambda (_outdir287657_)
                             (path-expand
                              (let ((__tmp293678
                                     (let ((__tmp293679
                                            (##structure-ref
                                             _ctx287640_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp293679))))
                                (declare (not safe))
                                (_file-name287647_ __tmp293678))
                              _outdir287657_))
                           _$e287654_)
                          (path-expand
                           (let ((__tmp293677
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path287644_
                                     _ctx287640_))))
                             (declare (not safe))
                             (_file-name287647_ __tmp293677))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory287645_
                              _ctx287640_))))))))
          (let ((_path287650_
                 (let () (declare (not safe)) (_file-path287648_))))
            (let ((__tmp293680
                   (lambda ()
                     (let ((__tmp293681 (path-directory _path287650_)))
                       (declare (not safe))
                       (create-directory* __tmp293681)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293680))
            _path287650_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx287622_)
        (letrec ((_file-name287624_
                  (lambda (_id287638_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id287638_))
                     '".scm")))
                 (_file-path287625_
                  (lambda ()
                    (let* ((_file287631_
                            (let ((__tmp293682
                                   (##structure-ref
                                    _ctx287622_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name287624_ __tmp293682)))
                           (_$e287633_ (gxc#current-compile-output-dir)))
                      (if _$e287633_
                          ((lambda (_outdir287636_)
                             (path-expand
                              _file287631_
                              (path-expand '"static" _outdir287636_)))
                           _$e287633_)
                          (path-expand _file287631_ '"static"))))))
          (let ((_path287627_
                 (let () (declare (not safe)) (_file-path287625_))))
            (let ((__tmp293683
                   (lambda ()
                     (let ((__tmp293684 (path-directory _path287627_)))
                       (declare (not safe))
                       (create-directory* __tmp293684)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293683))
            _path287627_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx287616_ _opts287617_)
        (let ((_$e287619_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts287617_))))
          (if _$e287619_
              (values _$e287619_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx287616_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr287609_)
        (if (let () (declare (not safe)) (string? _idstr287609_))
            (let* ((_str287611_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr287609_)))
                   (_strs287613_
                    (let ()
                      (declare (not safe))
                      (string-split _str287611_ '#\/))))
              (let () (declare (not safe)) (string-join _strs287613_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr287609_))
                (let ((__tmp293685 (symbol->string _idstr287609_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp293685))
                (error '"Bad module id" _idstr287609_)))))
    (define gxc#invoke__%
      (lambda (_g293686_
               _stdout-redirection287573287577_
               _stderr-redirection287574287579_
               _program287581_
               _args287582_)
        (let* ((_stdout-redirection287584_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection287573287577_ absent-value))
                    '#f
                    _stdout-redirection287573287577_))
               (_stderr-redirection287586_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection287574287579_ absent-value))
                    '#f
                    _stderr-redirection287574287579_)))
          (let ((__tmp293687
                 (let ()
                   (declare (not safe))
                   (cons _program287581_ _args287582_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp293687))
          (let ((_proc287588_
                 (open-process
                  (let ((__tmp293688
                         (let ((__tmp293689
                                (let ((__tmp293690
                                       (let ((__tmp293691
                                              (let ((__tmp293692
                                                     (let ((__tmp293693
                                                            (let ((__tmp293694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection287586_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp293694))))
               (declare (not safe))
               (cons _stdout-redirection287584_ __tmp293693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp293692))))
                                         (declare (not safe))
                                         (cons _args287582_ __tmp293691))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp293690))))
                           (declare (not safe))
                           (cons _program287581_ __tmp293689))))
                    (declare (not safe))
                    (cons 'path: __tmp293688)))))
            (if (or _stdout-redirection287584_ _stderr-redirection287586_)
                (read-line _proc287588_ '#f)
                '#!void)
            (let ((_status287593_ (process-status _proc287588_)))
              (close-port _proc287588_)
              (if (let () (declare (not safe)) (zero? _status287593_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program287581_))))))))
    (define gxc#invoke__@
      (lambda (_keys287572287598_ . _args287600_)
        (apply gxc#invoke__%
               _keys287572287598_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287572287598_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287572287598_
                  'stderr-redirection:
                  absent-value))
               _args287600_)))
    (define gxc#invoke
      (lambda _args287575287606_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args287575287606_)))
    (define gxc#join!
      (lambda (_thread287566_)
        (let ((__tmp293696
               (lambda (_exn287568_)
                 (if (uncaught-exception? _exn287568_)
                     (raise (uncaught-exception-reason _exn287568_))
                     (raise _exn287568_))))
              (__tmp293695 (lambda () (thread-join! _thread287566_))))
          (declare (not safe))
          (with-catch __tmp293696 __tmp293695))))))
