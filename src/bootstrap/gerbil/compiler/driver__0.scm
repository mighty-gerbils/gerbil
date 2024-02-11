(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707610220)
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
      (lambda (_path288808_ _fun288809_)
        (with-output-to-file
         (let ((__tmp293370
                (let ()
                  (declare (not safe))
                  (cons _path288808_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp293370))
         _fun288809_)))
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
      (lambda (_gerbil-libdir288803_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir288803_)))
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
      (lambda (_dir288801_) (delete-file-or-directory _dir288801_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath288775_ _opts288776_)
        (if (let () (declare (not safe)) (string? _srcpath288775_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288775_)))
        (let ((_outdir288778_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288776_)))
              (_invoke-gsc?288779_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288776_)))
              (_gsc-options288780_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288776_)))
              (_keep-scm?288781_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288776_)))
              (_verbosity288782_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288776_)))
              (_optimize288783_
               (let () (declare (not safe)) (pgetq 'optimize: _opts288776_)))
              (_debug288784_
               (let () (declare (not safe)) (pgetq 'debug: _opts288776_)))
              (_gen-ssxi288785_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts288776_))))
          (if _outdir288778_
              (let ((__tmp293371
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288778_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293371))
              '#!void)
          (if _optimize288783_
              (let ((__tmp293372
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293372))
              '#!void)
          (let ((__tmp293376
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath288775_))
                   (let ((__tmp293377
                          (let ((__tmp293378
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288775_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293378))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp293377))))
                (__tmp293375
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293373
                 (let ((__tmp293374
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288775_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp293374))))
            (declare (not safe))
            (call-with-parameters
             __tmp293376
             gxc#current-compile-output-dir
             _outdir288778_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288779_
             gxc#current-compile-gsc-options
             _gsc-options288780_
             gxc#current-compile-keep-scm
             _keep-scm?288781_
             gxc#current-compile-verbose
             _verbosity288782_
             gxc#current-compile-optimize
             _optimize288783_
             gxc#current-compile-debug
             _debug288784_
             gxc#current-compile-generate-ssxi
             _gen-ssxi288785_
             gxc#current-compile-timestamp
             __tmp293375
             gxc#current-compile-context
             __tmp293373
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath288794_)
        (let ((_opts288796_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath288794_ _opts288796_))))
    (define gxc#compile-module
      (lambda _g293380_
        (let ((_g293379_ (let () (declare (not safe)) (##length _g293380_))))
          (cond ((let () (declare (not safe)) (##fx= _g293379_ 1))
                 (apply (lambda (_srcpath288794_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath288794_)))
                        _g293380_))
                ((let () (declare (not safe)) (##fx= _g293379_ 2))
                 (apply (lambda (_srcpath288798_ _opts288799_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath288798_
                             _opts288799_)))
                        _g293380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g293380_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath288751_ _opts288752_)
        (if (let () (declare (not safe)) (string? _srcpath288751_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288751_)))
        (let ((_outdir288754_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288752_)))
              (_invoke-gsc?288755_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288752_)))
              (_gsc-options288756_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288752_)))
              (_keep-scm?288757_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288752_)))
              (_verbosity288758_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288752_)))
              (_debug288759_
               (let () (declare (not safe)) (pgetq 'debug: _opts288752_))))
          (if _outdir288754_
              (let ((__tmp293381
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288754_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293381))
              '#!void)
          (let ((__tmp293385
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath288751_))
                   (let ((__tmp293386
                          (let ((__tmp293387
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288751_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293387))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp293386
                      _opts288752_))))
                (__tmp293384
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293382
                 (let ((__tmp293383
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288751_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp293383))))
            (declare (not safe))
            (call-with-parameters
             __tmp293385
             gxc#current-compile-output-dir
             _outdir288754_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288755_
             gxc#current-compile-gsc-options
             _gsc-options288756_
             gxc#current-compile-keep-scm
             _keep-scm?288757_
             gxc#current-compile-verbose
             _verbosity288758_
             gxc#current-compile-debug
             _debug288759_
             gxc#current-compile-timestamp
             __tmp293384
             gxc#current-compile-context
             __tmp293382
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath288767_)
        (let ((_opts288769_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath288767_ _opts288769_))))
    (define gxc#compile-exe
      (lambda _g293389_
        (let ((_g293388_ (let () (declare (not safe)) (##length _g293389_))))
          (cond ((let () (declare (not safe)) (##fx= _g293388_ 1))
                 (apply (lambda (_srcpath288767_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath288767_)))
                        _g293389_))
                ((let () (declare (not safe)) (##fx= _g293388_ 2))
                 (apply (lambda (_srcpath288771_ _opts288772_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath288771_ _opts288772_)))
                        _g293389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g293389_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx288747_ _opts288748_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts288748_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx288747_
               _opts288748_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx288747_
               _opts288748_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx288630_ _opts288631_)
        (letrec ((_generate-stub288633_
                  (lambda (_builtin-modules288743_)
                    (let ((_mod-main288745_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288630_ 'main))))
                      (write (let ((__tmp293390
                                    (let ((__tmp293391
                                           (let ((__tmp293392
                                                  (let ((__tmp293393
                                                         (let ((__tmp293395
                                                                (let ((__tmp293396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules288743_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293396)))
                       (__tmp293394
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp293395 __tmp293394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp293393))))
                                             (declare (not safe))
                                             (cons __tmp293392 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp293391))))
                               (declare (not safe))
                               (cons 'define __tmp293390)))
                      (write (let ((__tmp293397
                                    (let ((__tmp293436
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293398
                                           (let ((__tmp293399
                                                  (let ((__tmp293400
                                                         (let ((__tmp293424
                                                                (let ((__tmp293425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293426
                                      (let ((__tmp293434
                                             (let ((__tmp293435
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp293435)))
                                            (__tmp293427
                                             (let ((__tmp293428
                                                    (let ((__tmp293429
                                                           (let ((__tmp293430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293431
                                 (let ((__tmp293432
                                        (let ((__tmp293433
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp293433 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp293432))))
                            (declare (not safe))
                            (cons __tmp293431 '()))))
                     (declare (not safe))
                     (cons _mod-main288745_ __tmp293430))))
              (declare (not safe))
              (cons 'apply __tmp293429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293428 '()))))
                                        (declare (not safe))
                                        (cons __tmp293434 __tmp293427))))
                                 (declare (not safe))
                                 (cons '() __tmp293426))))
                          (declare (not safe))
                          (cons 'lambda __tmp293425)))
                       (__tmp293401
                        (let ((__tmp293402
                               (let ((__tmp293403
                                      (let ((__tmp293404
                                             (let ((__tmp293415
                                                    (let ((__tmp293416
                                                           (let ((__tmp293417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293418
                                 (let ((__tmp293419
                                        (let ((__tmp293420
                                               (let ((__tmp293421
                                                      (let ((__tmp293422
                                                             (let ((__tmp293423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp293423 '()))))
                (declare (not safe))
                (cons 'force-output __tmp293422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp293421 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp293420))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp293419))))
                            (declare (not safe))
                            (cons __tmp293418 '()))))
                     (declare (not safe))
                     (cons 'void __tmp293417))))
              (declare (not safe))
              (cons 'with-catch __tmp293416)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp293405
                                                    (let ((__tmp293406
                                                           (let ((__tmp293407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293408
                                 (let ((__tmp293409
                                        (let ((__tmp293410
                                               (let ((__tmp293411
                                                      (let ((__tmp293412
                                                             (let ((__tmp293413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp293414
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp293414 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp293413))))
                (declare (not safe))
                (cons __tmp293412 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp293411))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp293410))))
                                   (declare (not safe))
                                   (cons __tmp293409 '()))))
                            (declare (not safe))
                            (cons 'void __tmp293408))))
                     (declare (not safe))
                     (cons 'with-catch __tmp293407))))
              (declare (not safe))
              (cons __tmp293406 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293415
                                                     __tmp293405))))
                                        (declare (not safe))
                                        (cons '() __tmp293404))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp293403))))
                          (declare (not safe))
                          (cons __tmp293402 '()))))
                   (declare (not safe))
                   (cons __tmp293424 __tmp293401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp293400))))
                                             (declare (not safe))
                                             (cons __tmp293399 '()))))
                                      (declare (not safe))
                                      (cons __tmp293436 __tmp293398))))
                               (declare (not safe))
                               (cons 'define __tmp293397)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts288634_
                  (lambda (_libgerbil288741_)
                    (call-with-input-file
                     (string-append _libgerbil288741_ '".ldd")
                     read)))
                 (_replace-extension288635_
                  (lambda (_path288738_ _ext288739_)
                    (string-append
                     (path-strip-extension _path288738_)
                     _ext288739_)))
                 (_not-exclude-module?288636_
                  (lambda (_ctx288734_)
                    (let ((_id-str288736_
                           (symbol->string
                            (##structure-ref
                             _ctx288734_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp293438
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str288736_))))
                            (declare (not safe))
                            (not __tmp293438))
                          (let ((__tmp293437
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str288736_))))
                            (declare (not safe))
                            (not __tmp293437))
                          '#f))))
                 (_not-file-empty?288637_
                  (lambda (_path288732_)
                    (let ((__tmp293439
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path288732_))))
                      (declare (not safe))
                      (not __tmp293439))))
                 (_compile-stub288638_
                  (lambda (_output-scm288645_ _output-bin288646_)
                    (let* ((_gerbil-home288648_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288650_
                            (path-expand '"lib" _gerbil-home288648_))
                           (_gerbil-staticdir288652_
                            (path-expand '"static" _gerbil-libdir288650_))
                           (_gxlink288654_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir288650_))
                           (_tmp288656_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path288660_
                            (lambda (_f288658_)
                              (path-expand
                               (path-strip-directory _f288658_)
                               _tmp288656_)))
                           (_deps288662_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288630_)))
                           (_deps288664_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?288636_
                                      _deps288662_)))
                           (_src-deps-scm288666_
                            (map gxc#find-static-module-file _deps288664_))
                           (_src-deps-scm288668_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?288637_
                                      _src-deps-scm288666_)))
                           (_src-deps-scm288670_
                            (map path-expand _src-deps-scm288668_))
                           (_deps-scm288672_
                            (map _tmp-path288660_ _src-deps-scm288670_))
                           (_deps-c288678_
                            (map (lambda (_g288673288675_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288635_
                                      _g288673288675_
                                      '".c")))
                                 _deps-scm288672_))
                           (_deps-o288684_
                            (map (lambda (_g288679288681_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288635_
                                      _g288679288681_
                                      '".o")))
                                 _deps-scm288672_))
                           (_src-bin-scm288686_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288630_)))
                           (_src-bin-scm288688_
                            (path-expand _src-bin-scm288686_))
                           (_bin-scm288690_
                            (let ()
                              (declare (not safe))
                              (_tmp-path288660_ _src-bin-scm288688_)))
                           (_bin-c288692_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288635_
                               _bin-scm288690_
                               '".c")))
                           (_bin-o288694_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288635_
                               _bin-scm288690_
                               '".o")))
                           (_output-bin288696_
                            (path-expand _output-bin288646_))
                           (_output-scm288698_
                            (path-expand _output-scm288645_))
                           (_output-c288700_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288635_
                               _output-scm288698_
                               '".c")))
                           (_output-o288702_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288635_
                               _output-scm288698_
                               '".o")))
                           (_output_-c288704_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288635_
                               _output-scm288698_
                               '"_.c")))
                           (_output_-o288706_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288635_
                               _output-scm288698_
                               '"_.o")))
                           (_gsc-link-opts288708_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288710_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288712_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir288652_)))
                           (_output-ld-opts288714_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a288716_
                            (path-expand '"libgerbil.a" _gerbil-libdir288650_))
                           (_libgerbil.so288718_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir288650_))
                           (_libgerbil-ld-opts288720_
                            (if (file-exists? _libgerbil.so288718_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts288634_
                                   _libgerbil.so288718_))
                                (if (file-exists? _libgerbil.a288716_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts288634_
                                       _libgerbil.a288716_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a288716_
                                       _libgerbil.so288718_)))))
                           (_rpath288722_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288650_)))
                           (_builtin-modules288726_
                            (map (lambda (_mod288724_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod288724_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx288630_ _deps288664_)))))
                      (let ((__tmp293440
                             (lambda ()
                               (let ((__tmp293441
                                      (path-directory _output-bin288696_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293441)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293440))
                      (let ((__tmp293442
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub288633_
                                  _builtin-modules288726_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288698_
                         __tmp293442))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293443
                                   (lambda () (create-directory _tmp288656_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp293443))
                            (for-each
                             copy-file
                             _src-deps-scm288670_
                             _deps-scm288672_)
                            (copy-file _src-bin-scm288688_ _bin-scm288690_)
                            (let ((__tmp293451
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293444
                                   (let ((__tmp293445
                                          (let ((__tmp293446
                                                 (let ((__tmp293447
                                                        (let ((__tmp293448
                                                               (let ((__tmp293449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293450
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm288698_ '()))))
                                (declare (not safe))
                                (cons _bin-scm288690_ __tmp293450))))
                         (declare (not safe))
                         (foldr1 cons __tmp293449 _deps-scm288672_))))
                  (declare (not safe))
                  (foldr1 cons __tmp293448 _gsc-link-opts288708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink288654_
                                                         __tmp293447))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp293446))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293445))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293451
                               __tmp293444))
                            (let ((__tmp293459
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293452
                                   (let ((__tmp293453
                                          (let ((__tmp293454
                                                 (let ((__tmp293455
                                                        (let ((__tmp293456
                                                               (let ((__tmp293457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293458
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c288704_ '()))))
                                (declare (not safe))
                                (cons _output-c288700_ __tmp293458))))
                         (declare (not safe))
                         (cons _bin-c288692_ __tmp293457))))
                  (declare (not safe))
                  (foldr1 cons __tmp293456 _deps-c288678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293455
                                                           _gsc-static-opts288712_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293454
                                                    _gsc-cc-opts288710_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293453))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293459
                               __tmp293452))
                            (let ((__tmp293472
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293460
                                   (let ((__tmp293461
                                          (let ((__tmp293462
                                                 (let ((__tmp293463
                                                        (let ((__tmp293464
                                                               (let ((__tmp293465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293466
                                     (let ((__tmp293467
                                            (let ((__tmp293468
                                                   (let ((__tmp293469
                                                          (let ((__tmp293470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp293471
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts288720_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp293471))))
                    (declare (not safe))
                    (cons _gerbil-libdir288650_ __tmp293470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp293469))))
                                              (declare (not safe))
                                              (cons _rpath288722_
                                                    __tmp293468))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp293467
                                               _output-ld-opts288714_))))
                                (declare (not safe))
                                (cons _output_-o288706_ __tmp293466))))
                         (declare (not safe))
                         (cons _output-o288702_ __tmp293465))))
                  (declare (not safe))
                  (cons _bin-o288694_ __tmp293464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293463
                                                           _deps-o288684_))))
                                            (declare (not safe))
                                            (cons _output-bin288696_
                                                  __tmp293462))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293461))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293472
                               __tmp293460))
                            (for-each
                             delete-file
                             (let ((__tmp293473
                                    (let ((__tmp293474
                                           (let ((__tmp293475
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o288706_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o288702_
                                                   __tmp293475))))
                                      (declare (not safe))
                                      (cons _output_-c288704_ __tmp293474))))
                               (declare (not safe))
                               (cons _output-c288700_ __tmp293473)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp288656_)))
                          '#!void)))))
          (let* ((_output-bin288640_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288630_ _opts288631_)))
                 (_output-scm288642_
                  (string-append _output-bin288640_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288638_ _output-scm288642_ _output-bin288640_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288642_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx288455_ _opts288456_)
        (letrec ((_reset-declare288458_
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
                 (_generate-stub288459_
                  (lambda (_deps288621_)
                    (let ((_mod-main288623_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288455_ 'main)))
                          (_reset-decl288624_
                           (let ()
                             (declare (not safe))
                             (_reset-declare288458_)))
                          (_user-decl288625_
                           (let ()
                             (declare (not safe))
                             (_user-declare288460_))))
                      (for-each
                       (lambda (_dep288627_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl288624_)
                         (newline)
                         (if _user-decl288625_
                             (begin (write _user-decl288625_) (newline))
                             '#!void)
                         (write (let ((__tmp293476
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep288627_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp293476)))
                         (newline))
                       _deps288621_)
                      (write (let ((__tmp293477
                                    (let ((__tmp293490
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293478
                                           (let ((__tmp293486
                                                  (let ((__tmp293487
                                                         (let ((__tmp293488
                                                                (let ((__tmp293489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293489))))
                   (declare (not safe))
                   (cons __tmp293488 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp293487)))
                                                 (__tmp293479
                                                  (let ((__tmp293480
                                                         (let ((__tmp293481
                                                                (let ((__tmp293482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293483
                                      (let ((__tmp293484
                                             (let ((__tmp293485
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp293485 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp293484))))
                                 (declare (not safe))
                                 (cons __tmp293483 '()))))
                          (declare (not safe))
                          (cons _mod-main288623_ __tmp293482))))
                   (declare (not safe))
                   (cons 'apply __tmp293481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293480 '()))))
                                             (declare (not safe))
                                             (cons __tmp293486 __tmp293479))))
                                      (declare (not safe))
                                      (cons __tmp293490 __tmp293478))))
                               (declare (not safe))
                               (cons 'define __tmp293477)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare288460_
                  (lambda ()
                    (let* ((_gsc-opts288526_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts288456_)))
                           (_gsc-prelude288528_
                            (if _gsc-opts288526_
                                (member '"-prelude" _gsc-opts288526_)
                                '#f))
                           (_gsc-prelude288530_
                            (if _gsc-prelude288528_
                                (read (open-input-string
                                       (cadr _gsc-prelude288528_)))
                                '#f)))
                      (let _lp288533_ ((_rest288535_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude288530_ '())))
                                       (_user-decls288536_ '()))
                        (let* ((_rest288537288545_ _rest288535_)
                               (_else288539288553_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls288536_))
                                      '#f
                                      (let ((__tmp293491
                                             (reverse _user-decls288536_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp293491)))))
                               (_K288541288609_
                                (lambda (_rest288556_ _expr288557_)
                                  (let* ((_expr288558288570_ _expr288557_)
                                         (_else288561288578_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp288533_
                                               _rest288556_
                                               _user-decls288536_)))))
                                    (let ((_K288566288599_
                                           (lambda (_decls288597_)
                                             (let ((__tmp293492
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls288536_
                                                              _decls288597_))))
                                               (declare (not safe))
                                               (_lp288533_
                                                _rest288556_
                                                __tmp293492))))
                                          (_K288563288584_
                                           (lambda (_exprs288582_)
                                             (let ((__tmp293493
                                                    (append _exprs288582_
                                                            _rest288556_)))
                                               (declare (not safe))
                                               (_lp288533_
                                                __tmp293493
                                                _user-decls288536_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr288558288570_))
                                          (let ((_tl288568288604_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr288558288570_)))
                                                (_hd288567288602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr288558288570_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd288567288602_
                                                         'declare))
                                                (let ((_decls288607_
                                                       _tl288568288604_))
                                                  (declare (not safe))
                                                  (_K288566288599_
                                                   _decls288607_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd288567288602_
                                                             'begin))
                                                    (let ((_exprs288592_
                                                           _tl288568288604_))
                                                      (declare (not safe))
                                                      (_K288563288584_
                                                       _exprs288592_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else288561288578_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else288561288578_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest288537288545_))
                              (let ((_hd288542288612_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest288537288545_)))
                                    (_tl288543288614_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest288537288545_))))
                                (let* ((_expr288617_ _hd288542288612_)
                                       (_rest288619_ _tl288543288614_))
                                  (declare (not safe))
                                  (_K288541288609_ _rest288619_ _expr288617_)))
                              (let ()
                                (declare (not safe))
                                (_else288539288553_))))))))
                 (_compile-stub288461_
                  (lambda (_output-scm288468_ _output-bin288469_)
                    (let* ((_gerbil-home288471_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288473_
                            (path-expand '"lib" _gerbil-home288471_))
                           (_runtime288475_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp288477_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home288471_))
                           (_include-gambit-sharp288479_
                            (string-append
                             '"(include \""
                             _gambit-sharp288477_
                             '"\")"))
                           (_bin-scm288481_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288455_)))
                           (_deps288483_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288455_)))
                           (_deps288485_
                            (map gxc#find-static-module-file _deps288483_))
                           (_deps288490_
                            (let ((__tmp293494
                                   (lambda (_$obj288487_)
                                     (let ((__tmp293495
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj288487_))))
                                       (declare (not safe))
                                       (not __tmp293495)))))
                              (declare (not safe))
                              (filter __tmp293494 _deps288485_)))
                           (_deps288494_
                            (let ((__tmp293496
                                   (lambda (_f288492_)
                                     (let ((__tmp293497
                                            (member _f288492_
                                                    _runtime288475_)))
                                       (declare (not safe))
                                       (not __tmp293497)))))
                              (declare (not safe))
                              (filter __tmp293496 _deps288490_)))
                           (_output-base288496_
                            (string-append
                             (path-strip-extension _output-scm288468_)))
                           (_output-c288498_
                            (string-append _output-base288496_ '".c"))
                           (_output-o288500_
                            (string-append _output-base288496_ '".o"))
                           (_output-c_288502_
                            (string-append _output-base288496_ '"_.c"))
                           (_output-o_288504_
                            (string-append _output-base288496_ '"_.o"))
                           (_gsc-link-opts288506_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288508_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288510_
                            (let ((__tmp293498
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir288473_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp293498)))
                           (_output-ld-opts288512_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros288514_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp293500
                                       (let ((__tmp293501
                                              (let ((__tmp293502
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp288479_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp293502))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp293501))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293500))
                                (let ((__tmp293499
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp288479_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293499))))
                           (_gsc-link-opts288516_
                            (append _gsc-link-opts288506_
                                    _gsc-gx-macros288514_))
                           (_rpath288518_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288473_)))
                           (_default-ld-options288520_
                            (let ((__tmp293503
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp293503))))
                      (let ((__tmp293504
                             (lambda ()
                               (let ((__tmp293505
                                      (path-directory _output-bin288469_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293505)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293504))
                      (let ((__tmp293506
                             (lambda ()
                               (let ((__tmp293507
                                      (let ((__tmp293508
                                             (let ((__tmp293509
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm288481_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp293509
                                                       _deps288494_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp293508
                                                _runtime288475_))))
                                 (declare (not safe))
                                 (_generate-stub288459_ __tmp293507)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288468_
                         __tmp293506))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293515
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293510
                                   (let ((__tmp293511
                                          (let ((__tmp293512
                                                 (let ((__tmp293513
                                                        (let ((__tmp293514
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm288468_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp293514 _gsc-link-opts288516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_288502_
                                                         __tmp293513))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp293512))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293511))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293515
                               __tmp293510))
                            (let ((__tmp293521
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293516
                                   (let ((__tmp293517
                                          (let ((__tmp293518
                                                 (let ((__tmp293519
                                                        (let ((__tmp293520
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_288502_ '()))))
                  (declare (not safe))
                  (cons _output-c288498_ __tmp293520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293519
                                                           _gsc-static-opts288510_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293518
                                                    _gsc-cc-opts288508_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293517))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293521
                               __tmp293516))
                            (let ((__tmp293531
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293522
                                   (let ((__tmp293523
                                          (let ((__tmp293524
                                                 (let ((__tmp293525
                                                        (let ((__tmp293526
                                                               (let ((__tmp293527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293528
                                     (let ((__tmp293529
                                            (let ((__tmp293530
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options288520_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir288473_
                                                    __tmp293530))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp293529))))
                                (declare (not safe))
                                (cons _rpath288518_ __tmp293528))))
                         (declare (not safe))
                         (foldr1 cons __tmp293527 _output-ld-opts288512_))))
                  (declare (not safe))
                  (cons _output-o_288504_ __tmp293526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o288500_
                                                         __tmp293525))))
                                            (declare (not safe))
                                            (cons _output-bin288469_
                                                  __tmp293524))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293523))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293531
                               __tmp293522)))
                          '#!void)))))
          (let* ((_output-bin288463_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288455_ _opts288456_)))
                 (_output-scm288465_
                  (string-append _output-bin288463_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288461_ _output-scm288465_ _output-bin288463_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288465_))))))
    (define gxc#find-export-binding
      (lambda (_ctx288405_ _id288406_)
        (let ((_$e288452_
               (let ((__tmp293533
                      (lambda (_e288407288409_)
                        (let* ((_g288411288421_ _e288407288409_)
                               (_else288413288429_ (lambda () '#f))
                               (_K288415288433_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g288411288421_
                                 'gx#module-export::t))
                              (let* ((_e288416288436_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288411288421_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e288417288439_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288411288421_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e288418288442_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288411288421_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e288418288442_ '0))
                                    (let ((_e288419288445_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g288411288421_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g288447288449_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g288447288449_
                                                    _id288406_)))
                                           _e288419288445_)
                                          (let ()
                                            (declare (not safe))
                                            (_K288415288433_))
                                          (let ()
                                            (declare (not safe))
                                            (_else288413288429_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else288413288429_))))
                              (let ()
                                (declare (not safe))
                                (_else288413288429_))))))
                     (__tmp293532
                      (##structure-ref
                       _ctx288405_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp293533 __tmp293532))))
          (if _$e288452_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e288452_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx288397_ _id288398_)
        (let ((_$e288400_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx288397_ _id288398_))))
          (if _$e288400_
              ((lambda (_bind288403_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind288403_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id288398_)))
                 (##structure-ref _bind288403_ '1 gx#binding::t '#f))
               _$e288400_)
              (let ((__tmp293534
                     (##structure-ref
                      _ctx288397_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp293534
                 _id288398_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx288284_)
        (letrec* ((_ht288286_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template288287_
                   (lambda (_in288349_ _phi288350_)
                     (let ((_iphi288352_
                            (fx+ _phi288350_
                                 (##direct-structure-ref
                                  _in288349_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports288353_
                            (##structure-ref
                             (##direct-structure-ref
                              _in288349_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp288355_ ((_rest288357_ _imports288353_)
                                        (_r288358_ '()))
                         (let* ((_rest288359288367_ _rest288357_)
                                (_else288361288375_ (lambda () _r288358_))
                                (_K288363288385_
                                 (lambda (_rest288378_ _in288379_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in288379_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi288352_))
                                           (let ((__tmp293541
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in288379_
                                                          _r288358_))))
                                             (declare (not safe))
                                             (_lp288355_
                                              _rest288378_
                                              __tmp293541))
                                           (let ()
                                             (declare (not safe))
                                             (_lp288355_
                                              _rest288378_
                                              _r288358_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in288379_
                                              'gx#module-import::t))
                                           (let ((_iphi288381_
                                                  (fx+ _phi288350_
                                                       (##direct-structure-ref
                                                        _in288379_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi288381_))
                                                 (let ((__tmp293539
                                                        (let ((__tmp293540
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in288379_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp293540 _r288358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp288355_
                                                    _rest288378_
                                                    __tmp293539))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp288355_
                                                    _rest288378_
                                                    _r288358_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in288379_
                                                  'gx#import-set::t))
                                               (let ((_xphi288383_
                                                      (fx+ _iphi288352_
                                                           (##direct-structure-ref
                                                            _in288379_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi288383_))
                                                     (let ((__tmp293537
                                                            (let ((__tmp293538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in288379_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp293538 _r288358_))))
               (declare (not safe))
               (_lp288355_ _rest288378_ __tmp293537))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi288383_)
                                                         (let ((__tmp293535
                                                                (let ((__tmp293536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template288287_
                                  _in288379_
                                  _iphi288352_))))
                          (declare (not safe))
                          (foldl1 cons _r288358_ __tmp293536))))
                   (declare (not safe))
                   (_lp288355_ _rest288378_ __tmp293535))
                 (let ()
                   (declare (not safe))
                   (_lp288355_ _rest288378_ _r288358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp288355_
                                                  _rest288378_
                                                  _r288358_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest288359288367_))
                               (let ((_hd288364288388_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest288359288367_)))
                                     (_tl288365288390_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest288359288367_))))
                                 (let* ((_in288393_ _hd288364288388_)
                                        (_rest288395_ _tl288365288390_))
                                   (declare (not safe))
                                   (_K288363288385_ _rest288395_ _in288393_)))
                               (let ()
                                 (declare (not safe))
                                 (_else288361288375_))))))))
                  (_find-deps288288_
                   (lambda (_rest288295_ _deps288296_)
                     (let* ((_rest288297288305_ _rest288295_)
                            (_else288299288313_ (lambda () _deps288296_))
                            (_K288301288337_
                             (lambda (_rest288316_ _hd288317_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd288317_
                                      'gx#module-context::t))
                                   (let ((_id288319_
                                          (##structure-ref
                                           _hd288317_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports288320_
                                          (##structure-ref
                                           _hd288317_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht288286_
                                            _id288319_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps288288_
                                            _rest288316_
                                            _deps288296_))
                                         (let ((_$e288322_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd288317_))))
                                           (if _$e288322_
                                               ((lambda (_pre288325_)
                                                  (let ((_xdeps288327_
                                                         (let ((__tmp293554
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre288325_ _imports288320_))))
                   (declare (not safe))
                   (_find-deps288288_ __tmp293554 _deps288296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht288286_
                                                       _id288319_
                                                       _hd288317_))
                                                    (let ((__tmp293555
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd288317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps288327_))))
              (declare (not safe))
              (_find-deps288288_ _rest288316_ __tmp293555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e288322_)
                                               (let ((_xdeps288329_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps288288_
                                                         _imports288320_
                                                         _deps288296_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht288286_
                                                    _id288319_
                                                    _hd288317_))
                                                 (let ((__tmp293553
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd288317_
                                                                _xdeps288329_))))
                                                   (declare (not safe))
                                                   (_find-deps288288_
                                                    _rest288316_
                                                    __tmp293553)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd288317_
                                          'gx#prelude-context::t))
                                       (let ((_id288331_
                                              (##structure-ref
                                               _hd288317_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht288286_
                                                _id288331_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps288288_
                                                _rest288316_
                                                _deps288296_))
                                             (let ((_xdeps288333_
                                                    (let ((__tmp293551
                                                           (##structure-ref
                                                            _hd288317_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps288288_
                                                       __tmp293551
                                                       _deps288296_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht288286_
                                                      _id288331_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps288288_
                                                      _rest288316_
                                                      _xdeps288333_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht288286_
                                                        _id288331_
                                                        _hd288317_))
                                                     (let ((__tmp293552
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd288317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps288333_))))
               (declare (not safe))
               (_find-deps288288_ _rest288316_ __tmp293552)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd288317_
                                              'gx#module-import::t))
                                           (if (let ((__tmp293550
                                                      (##direct-structure-ref
                                                       _hd288317_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp293550))
                                               (let ((__tmp293548
                                                      (let ((__tmp293549
                                                             (##direct-structure-ref
                                                              _hd288317_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293549
                                                              _rest288316_))))
                                                 (declare (not safe))
                                                 (_find-deps288288_
                                                  __tmp293548
                                                  _deps288296_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps288288_
                                                  _rest288316_
                                                  _deps288296_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd288317_
                                                  'gx#module-export::t))
                                               (let ((__tmp293546
                                                      (let ((__tmp293547
                                                             (##direct-structure-ref
                                                              _hd288317_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293547
                                                              _rest288316_))))
                                                 (declare (not safe))
                                                 (_find-deps288288_
                                                  __tmp293546
                                                  _deps288296_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd288317_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp293545
                                                              (##direct-structure-ref
                                                               _hd288317_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp293545))
                                                       (let ((__tmp293543
                                                              (let ((__tmp293544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd288317_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp293544 _rest288316_))))
                 (declare (not safe))
                 (_find-deps288288_ __tmp293543 _deps288296_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd288317_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps288335_
                           (let ()
                             (declare (not safe))
                             (_import-set-template288287_ _hd288317_ '0)))
                          (__tmp293542
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest288316_ _xdeps288335_))))
                     (declare (not safe))
                     (_find-deps288288_ __tmp293542 _deps288296_))
                   (let ()
                     (declare (not safe))
                     (_find-deps288288_ _rest288316_ _deps288296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd288317_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest288297288305_))
                           (let ((_hd288302288340_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest288297288305_)))
                                 (_tl288303288342_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest288297288305_))))
                             (let* ((_hd288345_ _hd288302288340_)
                                    (_rest288347_ _tl288303288342_))
                               (declare (not safe))
                               (_K288301288337_ _rest288347_ _hd288345_)))
                           (let ()
                             (declare (not safe))
                             (_else288299288313_)))))))
          (reverse (let ((__tmp293556
                          (let ((__tmp293557
                                 (let ((_$e288290_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx288284_))))
                                   (if _$e288290_
                                       ((lambda (_pre288293_)
                                          (let ((__tmp293558
                                                 (##structure-ref
                                                  _ctx288284_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre288293_ __tmp293558)))
                                        _$e288290_)
                                       (##structure-ref
                                        _ctx288284_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps288288_ __tmp293557 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp293556))))))
    (define gxc#find-static-module-file
      (lambda (_ctx288215_)
        (let* ((_context-id288217_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx288215_
                       'gx#module-context::t))
                    (##structure-ref _ctx288215_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx288215_)))
               (_scm288219_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id288217_))
                 '".scm"))
               (_dirs288221_ (gx#current-expander-module-library-path))
               (_dirs288227_
                (let ((_user-libpath288223_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath288223_
                      (let ((_user-libpath288225_
                             (path-expand '"lib" _user-libpath288223_)))
                        (if (member _user-libpath288225_ _dirs288221_)
                            _dirs288221_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath288225_ _dirs288221_))))
                      _dirs288221_)))
               (_dirs288236_
                (let ((_$e288229_ (gxc#current-compile-output-dir)))
                  (if _$e288229_
                      ((lambda (_g288231288233_)
                         (let ()
                           (declare (not safe))
                           (cons _g288231288233_ _dirs288227_)))
                       _$e288229_)
                      _dirs288227_)))
               (_dirs288242_
                (map (lambda (_g288237288239_)
                       (path-expand '"static" _g288237288239_))
                     _dirs288236_)))
          (let _lp288245_ ((_rest288247_ _dirs288242_))
            (let* ((_rest288248288256_ _rest288247_)
                   (_else288250288264_
                    (lambda ()
                      (let ((__tmp293559
                             (##structure-ref
                              _ctx288215_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp293559
                         _scm288219_))))
                   (_K288252288272_
                    (lambda (_rest288267_ _dir288268_)
                      (let ((_path288270_
                             (path-expand _scm288219_ _dir288268_)))
                        (if (file-exists? _path288270_)
                            _path288270_
                            (let ()
                              (declare (not safe))
                              (_lp288245_ _rest288267_)))))))
              (if (let () (declare (not safe)) (##pair? _rest288248288256_))
                  (let ((_hd288253288275_
                         (let ()
                           (declare (not safe))
                           (##car _rest288248288256_)))
                        (_tl288254288277_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest288248288256_))))
                    (let* ((_dir288280_ _hd288253288275_)
                           (_rest288282_ _tl288254288277_))
                      (declare (not safe))
                      (_K288252288272_ _rest288282_ _dir288280_)))
                  (let () (declare (not safe)) (_else288250288264_))))))))
    (define gxc#file-empty?
      (lambda (_path288213_)
        (let ((__tmp293560 (file-info-size (file-info _path288213_ '#t))))
          (declare (not safe))
          (zero? __tmp293560))))
    (define gxc#compile-top-module
      (lambda (_ctx288202_)
        (let ((__tmp293564
               (lambda ()
                 (let ((__tmp293565
                        (##structure-ref
                         _ctx288202_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp293565))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp293566
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx288202_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp293566))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx288202_))
                 (if (let ((__tmp293569
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx288202_))))
                       (declare (not safe))
                       (null? __tmp293569))
                     (let* ((_thr1288207_
                             (let ((__tmp293567
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx288202_)))))
                               (declare (not safe))
                               (spawn __tmp293567)))
                            (_thr2288210_
                             (let ((__tmp293568
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx288202_)))))
                               (declare (not safe))
                               (spawn __tmp293568))))
                       (let () (declare (not safe)) (gxc#join! _thr1288207_))
                       (let () (declare (not safe)) (gxc#join! _thr2288210_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx288202_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx288202_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx288202_))
                     '#!void)))
              (__tmp293563
               (let ((__obj293368
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj293368)
                 __obj293368))
              (__tmp293562
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp293561 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp293564
           gx#current-expander-context
           _ctx288202_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp293563
           gxc#current-compile-runtime-sections
           __tmp293562
           gxc#current-compile-runtime-names
           __tmp293561))))
    (define gxc#collect-bindings
      (lambda (_ctx288200_)
        (let ((__tmp293570
               (##structure-ref _ctx288200_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp293570))))
    (define gxc#compile-runtime-code
      (lambda (_ctx288146_)
        (letrec ((_compile1288148_
                  (lambda (_ctx288189_)
                    (let* ((_code288191_
                            (##structure-ref
                             _ctx288189_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt288195_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code288191_))
                                (let ((_idstr288193_
                                       (let ((__tmp293571
                                              (##structure-ref
                                               _ctx288189_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp293571))))
                                  (string-append _idstr288193_ '"__0"))
                                '#f)))
                      (if _rt288195_
                          (begin
                            (let ((__tmp293572
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp293572 _ctx288189_ _rt288195_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code288150_
                               _ctx288189_
                               _code288191_)))
                          (let ((_path288198_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx288189_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path288198_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code288151_
                         _ctx288189_
                         _code288191_
                         _rt288195_)))))
                 (_context-timestamp288149_
                  (lambda (_ctx288187_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx288187_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code288150_
                  (lambda (_ctx288169_ _code288170_)
                    (let* ((_lifts288172_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code288175_
                            (let ((__tmp293575
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code288170_))))
                                  (__tmp293574
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp293573
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293575
                               gx#current-expander-context
                               _ctx288169_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts288172_
                               gxc#current-compile-marks
                               __tmp293574
                               gxc#current-compile-identifiers
                               __tmp293573)))
                           (_runtime-code288177_
                            (if (let ((__tmp293579 (unbox _lifts288172_)))
                                  (declare (not safe))
                                  (null? __tmp293579))
                                _runtime-code288175_
                                (let ((__tmp293576
                                       (let ((__tmp293578
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code288175_
                                                      '())))
                                             (__tmp293577
                                              (reverse (unbox _lifts288172_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp293578
                                                 __tmp293577))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293576))))
                           (_runtime-code288179_
                            (let ((__tmp293580
                                   (let ((__tmp293582
                                          (let ((__tmp293583
                                                 (let ((__tmp293586
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp288149_
                                                           _ctx288169_)))
                                                       (__tmp293584
                                                        (let ((__tmp293585
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp293585
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp293586
                                                         __tmp293584))))
                                            (declare (not safe))
                                            (cons 'define __tmp293583)))
                                         (__tmp293581
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code288177_ '()))))
                                     (declare (not safe))
                                     (cons __tmp293582 __tmp293581))))
                              (declare (not safe))
                              (cons 'begin __tmp293580)))
                           (_scm0288181_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx288169_
                               '0
                               '".scm"))))
                      (let ((_scms288184_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx288169_))))
                        (let ((__tmp293587
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0288181_
                                    _runtime-code288179_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp293587
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms288184_)
                            (delete-file _scms288184_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0288181_
                           '" => "
                           _scms288184_))
                        (copy-file _scm0288181_ _scms288184_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0288181_))))))
                 (_generate-loader-code288151_
                  (lambda (_ctx288158_ _code288159_ _rt288160_)
                    (let* ((_loader-code288163_
                            (let ((__tmp293588
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code288159_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293588
                               gx#current-expander-context
                               _ctx288158_)))
                           (_loader-code288165_
                            (if _rt288160_
                                (let ((__tmp293589
                                       (let ((__tmp293590
                                              (let ((__tmp293591
                                                     (let ((__tmp293592
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt288160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp293592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293591 '()))))
                                         (declare (not safe))
                                         (cons _loader-code288163_
                                               __tmp293590))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293589))
                                _loader-code288163_)))
                      (let ((__tmp293593
                             (lambda ()
                               (let ((__tmp293594
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx288158_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp293594
                                  _loader-code288165_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp293593
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules288153_
                 (let ((__tmp293595
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx288146_))))
                   (declare (not safe))
                   (cons _ctx288146_ __tmp293595))))
            (for-each
             (lambda (_ctx288155_)
               (let ((__tmp293596
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1288148_ _ctx288155_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp293596
                  gxc#current-compile-decls
                  '())))
             _all-modules288153_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx288043_)
        (letrec ((_compile-ssi288045_
                  (lambda (_code288116_)
                    (let* ((_path288118_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx288043_
                               '#f
                               '".ssi")))
                           (_prelude288129_
                            (let* ((_super288120_
                                    (##structure-ref
                                     _ctx288043_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e288122_
                                    (##structure-ref
                                     _super288120_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e288122_
                                  ((lambda (_g288124288126_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g288124288126_)))
                                   _$e288122_)
                                  ':<root>)))
                           (_ns288131_
                            (##structure-ref
                             _ctx288043_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr288133_
                            (symbol->string
                             (##structure-ref
                              _ctx288043_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg288140_
                            (let ((_$e288135_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr288133_ '#\/))))
                              (if _$e288135_
                                  ((lambda (_x288138_)
                                     (string->symbol
                                      (substring _idstr288133_ '0 _x288138_)))
                                   _$e288135_)
                                  '#f)))
                           (_rt288142_
                            (let ((__tmp293597
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp293597 _ctx288043_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path288118_))
                      (let ((__tmp293598
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude288129_))
                               (if _pkg288140_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg288140_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns288131_))
                               (newline)
                               (pretty-print _code288116_)
                               (if _rt288142_
                                   (pretty-print
                                    (let ((__tmp293599
                                           (let ((__tmp293603
                                                  (let ((__tmp293604
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp293604)))
                                                 (__tmp293600
                                                  (let ((__tmp293601
                                                         (let ((__tmp293602
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt288142_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp293602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293601 '()))))
                                             (declare (not safe))
                                             (cons __tmp293603 __tmp293600))))
                                      (declare (not safe))
                                      (cons '%#call __tmp293599)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path288118_
                         __tmp293598)))))
                 (_compile-phi288046_
                  (lambda (_part288056_)
                    (let* ((_part288057288070_ _part288056_)
                           (_E288059288074_
                            (lambda ()
                              (error '"No clause matching"
                                     _part288057288070_)))
                           (_K288060288085_
                            (lambda (_code288077_
                                     _n288078_
                                     _phi288079_
                                     _phi-ctx288080_)
                              (let* ((_code288083_
                                      (let ((__tmp293605
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code288077_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp293605
                                         gx#current-expander-context
                                         _phi-ctx288080_
                                         gx#current-expander-phi
                                         _phi288079_)))
                                     (__tmp293606
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx288043_
                                         _n288078_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp293606
                                 _code288083_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part288057288070_))
                          (let ((_hd288061288088_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part288057288070_)))
                                (_tl288062288090_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part288057288070_))))
                            (let ((_phi-ctx288093_ _hd288061288088_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl288062288090_))
                                  (let ((_hd288063288095_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl288062288090_)))
                                        (_tl288064288097_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl288062288090_))))
                                    (let ((_phi288100_ _hd288063288095_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl288064288097_))
                                          (let ((_hd288065288102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl288064288097_)))
                                                (_tl288066288104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl288064288097_))))
                                            (let ((_n288107_ _hd288065288102_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl288066288104_))
                                                  (let ((_hd288067288109_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl288066288104_)))
                                                        (_tl288068288111_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl288066288104_))))
                                                    (let ((_code288114_
                                                           _hd288067288109_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl288068288111_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K288060288085_
                                                             _code288114_
                                                             _n288107_
                                                             _phi288100_
                                                             _phi-ctx288093_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E288059288074_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E288059288074_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E288059288074_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E288059288074_)))))
                          (let () (declare (not safe)) (_E288059288074_)))))))
          (let ((_g293607_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx288043_))))
            (begin
              (let ((_g293608_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g293607_)
                           (##vector-length _g293607_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g293608_ 2)))
                    (error "Context expects 2 values" _g293608_)))
              (let ((_ssi-code288048_
                     (let () (declare (not safe)) (##vector-ref _g293607_ 0)))
                    (_phi-code288049_
                     (let () (declare (not safe)) (##vector-ref _g293607_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi288045_ _ssi-code288048_))
                  (let ((_threads288054_
                         (map (lambda (_code288051_)
                                (let ((__tmp293609
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi288046_
                                            _code288051_)))))
                                  (declare (not safe))
                                  (spawn __tmp293609)))
                              _phi-code288049_)))
                    (for-each gxc#join! _threads288054_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx288026_)
        (let* ((_path288028_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx288026_ '#f '".ssxi.ss")))
               (_code288030_
                (let ((__tmp293610
                       (##structure-ref
                        _ctx288026_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp293610)))
               (_idstr288032_
                (symbol->string
                 (##structure-ref _ctx288026_ '1 gx#expander-context::t '#f)))
               (_pkg288039_
                (let ((_$e288034_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr288032_ '#\/))))
                  (if _$e288034_
                      ((lambda (_x288037_)
                         (string->symbol
                          (substring _idstr288032_ '0 _x288037_)))
                       _$e288034_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path288028_))
          (let ((__tmp293611
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg288039_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg288039_))
                       '#!void)
                   (newline)
                   (pretty-print _code288030_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path288028_ __tmp293611)))))
    (define gxc#generate-meta-code
      (lambda (_ctx288019_)
        (let* ((_state288021_
                (let ((__obj293369
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj293369 _ctx288019_)
                  __obj293369))
               (_ssi-code288023_
                (let ((__tmp293612
                       (##structure-ref
                        _ctx288019_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp293612 _state288021_))))
          (values _ssi-code288023_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state288021_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx288012_)
        (let ((_lifts288014_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293615
                 (lambda ()
                   (let ((_code288017_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx288012_))))
                     (if (let ((__tmp293619 (unbox _lifts288014_)))
                           (declare (not safe))
                           (null? __tmp293619))
                         _code288017_
                         (let ((__tmp293616
                                (let ((__tmp293618
                                       (let ()
                                         (declare (not safe))
                                         (cons _code288017_ '())))
                                      (__tmp293617
                                       (reverse (unbox _lifts288014_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp293618 __tmp293617))))
                           (declare (not safe))
                           (cons 'begin __tmp293616))))))
                (__tmp293614
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp293613
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp293615
             gxc#current-compile-lift
             _lifts288014_
             gxc#current-compile-marks
             __tmp293614
             gxc#current-compile-identifiers
             __tmp293613)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx288008_)
        (let ((_modules288010_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293620
                 (##structure-ref _ctx288008_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp293620 _modules288010_))
          (reverse (unbox _modules288010_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path287991_ _code287992_ _phi?287993_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path287991_))
        (let ((__tmp293621
               (lambda ()
                 (pretty-print
                  (let ((__tmp293622
                         (let ((__tmp293629
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp293623
                                (let ((__tmp293628
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp293624
                                       (let ((__tmp293627
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp293625
                                              (let ((__tmp293626
                                                     (if _phi?287993_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp293626))))
                                         (declare (not safe))
                                         (cons __tmp293627 __tmp293625))))
                                  (declare (not safe))
                                  (cons __tmp293628 __tmp293624))))
                           (declare (not safe))
                           (cons __tmp293629 __tmp293623))))
                    (declare (not safe))
                    (cons 'declare __tmp293622)))
                 (pretty-print _code287992_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path287991_ __tmp293621))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path287991_ _phi?287993_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path287991_))))
    (define gxc#compile-scm-file__0
      (lambda (_path287999_ _code288000_)
        (let ((_phi?288002_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path287999_ _code288000_ _phi?288002_))))
    (define gxc#compile-scm-file
      (lambda _g293631_
        (let ((_g293630_ (let () (declare (not safe)) (##length _g293631_))))
          (cond ((let () (declare (not safe)) (##fx= _g293630_ 2))
                 (apply (lambda (_path287999_ _code288000_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path287999_
                             _code288000_)))
                        _g293631_))
                ((let () (declare (not safe)) (##fx= _g293630_ 3))
                 (apply (lambda (_path288004_ _code288005_ _phi?288006_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path288004_
                             _code288005_
                             _phi?288006_)))
                        _g293631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g293631_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?287892_)
        (let _lp287894_ ((_rest287896_ (gxc#current-compile-gsc-options))
                         (_opts287897_ '()))
          (let* ((_rest287898287918_ _rest287896_)
                 (_else287902287926_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287892_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293632
                               (let ((__tmp293633 (reverse _opts287897_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp293633))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp293632))
                        (reverse _opts287897_)))))
            (let ((_K287912287969_
                   (lambda (_rest287967_)
                     (let ()
                       (declare (not safe))
                       (_lp287894_ _rest287967_ _opts287897_))))
                  (_K287907287951_
                   (lambda (_rest287949_)
                     (let ()
                       (declare (not safe))
                       (_lp287894_ _rest287949_ _opts287897_))))
                  (_K287904287933_
                   (lambda (_rest287930_ _opt287931_)
                     (let ((__tmp293634
                            (let ()
                              (declare (not safe))
                              (cons _opt287931_ _opts287897_))))
                       (declare (not safe))
                       (_lp287894_ _rest287930_ __tmp293634)))))
              (if (let () (declare (not safe)) (##pair? _rest287898287918_))
                  (let ((_tl287914287974_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287898287918_)))
                        (_hd287913287972_
                         (let ()
                           (declare (not safe))
                           (##car _rest287898287918_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287913287972_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287914287974_))
                            (let* ((_tl287916287977_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287914287974_)))
                                   (_rest287980_ _tl287916287977_))
                              (declare (not safe))
                              (_K287912287969_ _rest287980_))
                            (let ((_opt287941_ _hd287913287972_)
                                  (_rest287943_ _tl287914287974_))
                              (let ()
                                (declare (not safe))
                                (_K287904287933_ _rest287943_ _opt287941_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287913287972_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287914287974_))
                                (let* ((_tl287911287959_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287914287974_)))
                                       (_rest287962_ _tl287911287959_))
                                  (declare (not safe))
                                  (_K287907287951_ _rest287962_))
                                (let ((_opt287941_ _hd287913287972_)
                                      (_rest287943_ _tl287914287974_))
                                  (let ()
                                    (declare (not safe))
                                    (_K287904287933_
                                     _rest287943_
                                     _opt287941_))))
                            (let ((_opt287941_ _hd287913287972_)
                                  (_rest287943_ _tl287914287974_))
                              (let ()
                                (declare (not safe))
                                (_K287904287933_ _rest287943_ _opt287941_))))))
                  (let () (declare (not safe)) (_else287902287926_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?287986_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?287986_))))
    (define gxc#gsc-link-options
      (lambda _g293636_
        (let ((_g293635_ (let () (declare (not safe)) (##length _g293636_))))
          (cond ((let () (declare (not safe)) (##fx= _g293635_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g293636_))
                ((let () (declare (not safe)) (##fx= _g293635_ 1))
                 (apply (lambda (_phi?287988_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?287988_)))
                        _g293636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g293636_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?287793_)
        (let _lp287795_ ((_rest287797_ (gxc#current-compile-gsc-options))
                         (_opts287798_ '()))
          (let* ((_rest287799287819_ _rest287797_)
                 (_else287803287827_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287793_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293637
                               (let ((__tmp293638 (reverse _opts287798_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp293638))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp293637))
                        (reverse _opts287798_)))))
            (let ((_K287813287866_
                   (lambda (_rest287863_ _opt287864_)
                     (let ((__tmp293639
                            (let ((__tmp293640
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts287798_))))
                              (declare (not safe))
                              (cons _opt287864_ __tmp293640))))
                       (declare (not safe))
                       (_lp287795_ _rest287863_ __tmp293639))))
                  (_K287808287847_
                   (lambda (_rest287845_)
                     (let ()
                       (declare (not safe))
                       (_lp287795_ _rest287845_ _opts287798_))))
                  (_K287805287833_
                   (lambda (_rest287831_)
                     (let ()
                       (declare (not safe))
                       (_lp287795_ _rest287831_ _opts287798_)))))
              (if (let () (declare (not safe)) (##pair? _rest287799287819_))
                  (let ((_tl287815287871_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287799287819_)))
                        (_hd287814287869_
                         (let ()
                           (declare (not safe))
                           (##car _rest287799287819_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287814287869_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287815287871_))
                            (let ((_tl287817287876_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl287815287871_)))
                                  (_hd287816287874_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl287815287871_))))
                              (let ((_opt287879_ _hd287816287874_)
                                    (_rest287881_ _tl287817287876_))
                                (let ()
                                  (declare (not safe))
                                  (_K287813287866_ _rest287881_ _opt287879_))))
                            (let ((_rest287839_ _tl287815287871_))
                              (declare (not safe))
                              (_K287805287833_ _rest287839_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287814287869_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287815287871_))
                                (let* ((_tl287812287855_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287815287871_)))
                                       (_rest287858_ _tl287812287855_))
                                  (declare (not safe))
                                  (_K287808287847_ _rest287858_))
                                (let ((_rest287839_ _tl287815287871_))
                                  (declare (not safe))
                                  (_K287805287833_ _rest287839_)))
                            (let ((_rest287839_ _tl287815287871_))
                              (declare (not safe))
                              (_K287805287833_ _rest287839_)))))
                  (let () (declare (not safe)) (_else287803287827_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?287887_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?287887_))))
    (define gxc#gsc-cc-options
      (lambda _g293642_
        (let ((_g293641_ (let () (declare (not safe)) (##length _g293642_))))
          (cond ((let () (declare (not safe)) (##fx= _g293641_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g293642_))
                ((let () (declare (not safe)) (##fx= _g293641_ 1))
                 (apply (lambda (_phi?287889_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?287889_)))
                        _g293642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g293642_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir287788_)
        (let* ((_user-staticdir287790_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp293643
                (let ((__tmp293644
                       (string-append
                        '"-I "
                        _staticdir287788_
                        '" -I "
                        _user-staticdir287790_)))
                  (declare (not safe))
                  (cons __tmp293644 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp293643))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp287700_ ((_rest287702_ (gxc#current-compile-gsc-options))
                         (_opts287703_ '()))
          (let* ((_rest287704287724_ _rest287702_)
                 (_else287708287732_ (lambda () _opts287703_)))
            (let ((_K287718287775_
                   (lambda (_rest287773_)
                     (let ()
                       (declare (not safe))
                       (_lp287700_ _rest287773_ _opts287703_))))
                  (_K287713287753_
                   (lambda (_rest287750_ _opt287751_)
                     (let ((__tmp293645
                            (append _opts287703_
                                    (let ((__tmp293646
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt287751_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp293646)))))
                       (declare (not safe))
                       (_lp287700_ _rest287750_ __tmp293645))))
                  (_K287710287738_
                   (lambda (_rest287736_)
                     (let ()
                       (declare (not safe))
                       (_lp287700_ _rest287736_ _opts287703_)))))
              (if (let () (declare (not safe)) (##pair? _rest287704287724_))
                  (let ((_tl287720287780_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287704287724_)))
                        (_hd287719287778_
                         (let ()
                           (declare (not safe))
                           (##car _rest287704287724_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287719287778_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287720287780_))
                            (let* ((_tl287722287783_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287720287780_)))
                                   (_rest287786_ _tl287722287783_))
                              (declare (not safe))
                              (_K287718287775_ _rest287786_))
                            (let ((_rest287744_ _tl287720287780_))
                              (declare (not safe))
                              (_K287710287738_ _rest287744_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287719287778_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287720287780_))
                                (let ((_tl287717287763_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl287720287780_)))
                                      (_hd287716287761_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl287720287780_))))
                                  (let ((_opt287766_ _hd287716287761_)
                                        (_rest287768_ _tl287717287763_))
                                    (let ()
                                      (declare (not safe))
                                      (_K287713287753_
                                       _rest287768_
                                       _opt287766_))))
                                (let ((_rest287744_ _tl287720287780_))
                                  (declare (not safe))
                                  (_K287710287738_ _rest287744_)))
                            (let ((_rest287744_ _tl287720287780_))
                              (declare (not safe))
                              (_K287710287738_ _rest287744_)))))
                  (let () (declare (not safe)) (_else287708287732_))))))))
    (define gxc#not-string-empty?
      (lambda (_str287697_)
        (let ((__tmp293647
               (let () (declare (not safe)) (string-empty? _str287697_))))
          (declare (not safe))
          (not __tmp293647))))
    (define gxc#gsc-compile-file
      (lambda (_path287665_ _phi?287666_)
        (letrec ((_gsc-link-path287668_
                  (lambda (_base-path287689_)
                    (let _lp287691_ ((_n287693_ '1))
                      (let ((_path287695_
                             (string-append
                              _base-path287689_
                              '".o"
                              (number->string _n287693_))))
                        (if (file-exists? _path287695_)
                            (let ((__tmp293648
                                   (let ()
                                     (declare (not safe))
                                     (+ _n287693_ '1))))
                              (declare (not safe))
                              (_lp287691_ __tmp293648))
                            _path287695_))))))
          (let* ((_base-path287670_ (path-strip-extension _path287665_))
                 (_path-c287672_ (string-append _base-path287670_ '".c"))
                 (_path-o287674_ (string-append _base-path287670_ '".o"))
                 (_link-path287676_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path287668_ _base-path287670_)))
                 (_link-path-c287678_ (string-append _link-path287676_ '".c"))
                 (_link-path-o287680_ (string-append _link-path287676_ '".o"))
                 (_gsc-link-opts287682_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?287666_)))
                 (_gsc-cc-opts287684_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?287666_)))
                 (_gcc-ld-opts287686_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp293655 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293649
                   (let ((__tmp293650
                          (let ((__tmp293651
                                 (let ((__tmp293652
                                        (let ((__tmp293653
                                               (let ((__tmp293654
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path287665_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp293654
                                                         _gsc-link-opts287682_))))
                                          (declare (not safe))
                                          (cons _link-path-c287678_
                                                __tmp293653))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp293652))))
                            (declare (not safe))
                            (cons '"-flat" __tmp293651))))
                     (declare (not safe))
                     (cons '"-link" __tmp293650))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293655 __tmp293649))
            (let ((__tmp293662 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293656
                   (let ((__tmp293657
                          (let ((__tmp293658
                                 (let ((__tmp293659
                                        (let ((__tmp293660
                                               (let ((__tmp293661
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c287678_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c287672_
                                                       __tmp293661))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp293660
                                                  _gsc-cc-opts287684_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp293659))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp293658))))
                     (declare (not safe))
                     (cons '"-obj" __tmp293657))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293662 __tmp293656))
            (let ((__tmp293668 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp293663
                   (let ((__tmp293664
                          (let ((__tmp293665
                                 (let ((__tmp293666
                                        (let ((__tmp293667
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o287680_
                                                       _gcc-ld-opts287686_))))
                                          (declare (not safe))
                                          (cons _path-o287674_ __tmp293667))))
                                   (declare (not safe))
                                   (cons _link-path287676_ __tmp293666))))
                            (declare (not safe))
                            (cons '"-o" __tmp293665))))
                     (declare (not safe))
                     (cons '"-shared" __tmp293664))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp293668
               __tmp293663))
            (for-each
             delete-file
             (let ((__tmp293669
                    (let ((__tmp293670
                           (let ((__tmp293671
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o287680_ '()))))
                             (declare (not safe))
                             (cons _link-path-c287678_ __tmp293671))))
                      (declare (not safe))
                      (cons _path-o287674_ __tmp293670))))
               (declare (not safe))
               (cons _path-c287672_ __tmp293669)))))))
    (define gxc#compile-output-file
      (lambda (_ctx287636_ _n287637_ _ext287638_)
        (letrec ((_module-relative-path287640_
                  (lambda (_ctx287663_)
                    (path-strip-directory
                     (let ((__tmp293672
                            (##structure-ref
                             _ctx287663_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp293672)))))
                 (_module-source-directory287641_
                  (lambda (_ctx287659_)
                    (path-directory
                     (let ((_mpath287661_
                            (##structure-ref
                             _ctx287659_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath287661_))
                           _mpath287661_
                           (let ()
                             (declare (not safe))
                             (last _mpath287661_)))))))
                 (_section-string287642_
                  (lambda (_n287657_)
                    (if (let () (declare (not safe)) (number? _n287657_))
                        (number->string _n287657_)
                        (if (let () (declare (not safe)) (symbol? _n287657_))
                            (symbol->string _n287657_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n287657_))
                                _n287657_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n287657_)))))))
                 (_file-name287643_
                  (lambda (_path287655_)
                    (if _n287637_
                        (string-append
                         _path287655_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string287642_ _n287637_))
                         _ext287638_)
                        (string-append _path287655_ _ext287638_))))
                 (_file-path287644_
                  (lambda ()
                    (let ((_$e287650_ (gxc#current-compile-output-dir)))
                      (if _$e287650_
                          ((lambda (_outdir287653_)
                             (path-expand
                              (let ((__tmp293674
                                     (let ((__tmp293675
                                            (##structure-ref
                                             _ctx287636_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp293675))))
                                (declare (not safe))
                                (_file-name287643_ __tmp293674))
                              _outdir287653_))
                           _$e287650_)
                          (path-expand
                           (let ((__tmp293673
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path287640_
                                     _ctx287636_))))
                             (declare (not safe))
                             (_file-name287643_ __tmp293673))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory287641_
                              _ctx287636_))))))))
          (let ((_path287646_
                 (let () (declare (not safe)) (_file-path287644_))))
            (let ((__tmp293676
                   (lambda ()
                     (let ((__tmp293677 (path-directory _path287646_)))
                       (declare (not safe))
                       (create-directory* __tmp293677)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293676))
            _path287646_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx287618_)
        (letrec ((_file-name287620_
                  (lambda (_id287634_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id287634_))
                     '".scm")))
                 (_file-path287621_
                  (lambda ()
                    (let* ((_file287627_
                            (let ((__tmp293678
                                   (##structure-ref
                                    _ctx287618_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name287620_ __tmp293678)))
                           (_$e287629_ (gxc#current-compile-output-dir)))
                      (if _$e287629_
                          ((lambda (_outdir287632_)
                             (path-expand
                              _file287627_
                              (path-expand '"static" _outdir287632_)))
                           _$e287629_)
                          (path-expand _file287627_ '"static"))))))
          (let ((_path287623_
                 (let () (declare (not safe)) (_file-path287621_))))
            (let ((__tmp293679
                   (lambda ()
                     (let ((__tmp293680 (path-directory _path287623_)))
                       (declare (not safe))
                       (create-directory* __tmp293680)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293679))
            _path287623_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx287612_ _opts287613_)
        (let ((_$e287615_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts287613_))))
          (if _$e287615_
              (values _$e287615_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx287612_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr287605_)
        (if (let () (declare (not safe)) (string? _idstr287605_))
            (let* ((_str287607_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr287605_)))
                   (_strs287609_
                    (let ()
                      (declare (not safe))
                      (string-split _str287607_ '#\/))))
              (let () (declare (not safe)) (string-join _strs287609_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr287605_))
                (let ((__tmp293681 (symbol->string _idstr287605_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp293681))
                (error '"Bad module id" _idstr287605_)))))
    (define gxc#invoke__%
      (lambda (_g293682_
               _stdout-redirection287569287573_
               _stderr-redirection287570287575_
               _program287577_
               _args287578_)
        (let* ((_stdout-redirection287580_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection287569287573_ absent-value))
                    '#f
                    _stdout-redirection287569287573_))
               (_stderr-redirection287582_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection287570287575_ absent-value))
                    '#f
                    _stderr-redirection287570287575_)))
          (let ((__tmp293683
                 (let ()
                   (declare (not safe))
                   (cons _program287577_ _args287578_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp293683))
          (let ((_proc287584_
                 (open-process
                  (let ((__tmp293684
                         (let ((__tmp293685
                                (let ((__tmp293686
                                       (let ((__tmp293687
                                              (let ((__tmp293688
                                                     (let ((__tmp293689
                                                            (let ((__tmp293690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection287582_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp293690))))
               (declare (not safe))
               (cons _stdout-redirection287580_ __tmp293689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp293688))))
                                         (declare (not safe))
                                         (cons _args287578_ __tmp293687))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp293686))))
                           (declare (not safe))
                           (cons _program287577_ __tmp293685))))
                    (declare (not safe))
                    (cons 'path: __tmp293684)))))
            (if (or _stdout-redirection287580_ _stderr-redirection287582_)
                (read-line _proc287584_ '#f)
                '#!void)
            (let ((_status287589_ (process-status _proc287584_)))
              (close-port _proc287584_)
              (if (let () (declare (not safe)) (zero? _status287589_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program287577_))))))))
    (define gxc#invoke__@
      (lambda (_keys287568287594_ . _args287596_)
        (apply gxc#invoke__%
               _keys287568287594_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287568287594_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287568287594_
                  'stderr-redirection:
                  absent-value))
               _args287596_)))
    (define gxc#invoke
      (lambda _args287571287602_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args287571287602_)))
    (define gxc#join!
      (lambda (_thread287562_)
        (let ((__tmp293692
               (lambda (_exn287564_)
                 (if (uncaught-exception? _exn287564_)
                     (raise (uncaught-exception-reason _exn287564_))
                     (raise _exn287564_))))
              (__tmp293691 (lambda () (thread-join! _thread287562_))))
          (declare (not safe))
          (with-catch __tmp293692 __tmp293691))))))
