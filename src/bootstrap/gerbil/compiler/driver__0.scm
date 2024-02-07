(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707346624)
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
      (lambda (_path291152_ _fun291153_)
        (with-output-to-file
         (let ((__tmp295440
                (let ()
                  (declare (not safe))
                  (cons _path291152_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp295440))
         _fun291153_)))
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
      (lambda (_gerbil-libdir291147_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir291147_)))
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
      (lambda (_dir291145_) (delete-file-or-directory _dir291145_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath291119_ _opts291120_)
        (if (let () (declare (not safe)) (string? _srcpath291119_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291119_)))
        (let ((_outdir291122_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291120_)))
              (_invoke-gsc?291123_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291120_)))
              (_gsc-options291124_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291120_)))
              (_keep-scm?291125_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291120_)))
              (_verbosity291126_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291120_)))
              (_optimize291127_
               (let () (declare (not safe)) (pgetq 'optimize: _opts291120_)))
              (_debug291128_
               (let () (declare (not safe)) (pgetq 'debug: _opts291120_)))
              (_gen-ssxi291129_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts291120_))))
          (if _outdir291122_
              (let ((__tmp295441
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291122_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp295441))
              '#!void)
          (if _optimize291127_
              (let ((__tmp295442
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp295442))
              '#!void)
          (let ((__tmp295444
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath291119_))
                   (let ((__tmp295445
                          (let ((__tmp295446
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291119_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp295446))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp295445))))
                (__tmp295443
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp295444
             gxc#current-compile-output-dir
             _outdir291122_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291123_
             gxc#current-compile-gsc-options
             _gsc-options291124_
             gxc#current-compile-keep-scm
             _keep-scm?291125_
             gxc#current-compile-verbose
             _verbosity291126_
             gxc#current-compile-optimize
             _optimize291127_
             gxc#current-compile-debug
             _debug291128_
             gxc#current-compile-generate-ssxi
             _gen-ssxi291129_
             gxc#current-compile-timestamp
             __tmp295443
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath291138_)
        (let ((_opts291140_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath291138_ _opts291140_))))
    (define gxc#compile-module
      (lambda _g295448_
        (let ((_g295447_ (let () (declare (not safe)) (##length _g295448_))))
          (cond ((let () (declare (not safe)) (##fx= _g295447_ 1))
                 (apply (lambda (_srcpath291138_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath291138_)))
                        _g295448_))
                ((let () (declare (not safe)) (##fx= _g295447_ 2))
                 (apply (lambda (_srcpath291142_ _opts291143_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath291142_
                             _opts291143_)))
                        _g295448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g295448_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath291095_ _opts291096_)
        (if (let () (declare (not safe)) (string? _srcpath291095_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291095_)))
        (let ((_outdir291098_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291096_)))
              (_invoke-gsc?291099_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291096_)))
              (_gsc-options291100_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291096_)))
              (_keep-scm?291101_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291096_)))
              (_verbosity291102_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291096_)))
              (_debug291103_
               (let () (declare (not safe)) (pgetq 'debug: _opts291096_))))
          (if _outdir291098_
              (let ((__tmp295449
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291098_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp295449))
              '#!void)
          (let ((__tmp295451
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath291095_))
                   (let ((__tmp295452
                          (let ((__tmp295453
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291095_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp295453))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp295452
                      _opts291096_))))
                (__tmp295450
                 (let () (declare (not safe)) (gxc#compile-timestamp))))
            (declare (not safe))
            (call-with-parameters
             __tmp295451
             gxc#current-compile-output-dir
             _outdir291098_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291099_
             gxc#current-compile-gsc-options
             _gsc-options291100_
             gxc#current-compile-keep-scm
             _keep-scm?291101_
             gxc#current-compile-verbose
             _verbosity291102_
             gxc#current-compile-debug
             _debug291103_
             gxc#current-compile-timestamp
             __tmp295450
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath291111_)
        (let ((_opts291113_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath291111_ _opts291113_))))
    (define gxc#compile-exe
      (lambda _g295455_
        (let ((_g295454_ (let () (declare (not safe)) (##length _g295455_))))
          (cond ((let () (declare (not safe)) (##fx= _g295454_ 1))
                 (apply (lambda (_srcpath291111_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath291111_)))
                        _g295455_))
                ((let () (declare (not safe)) (##fx= _g295454_ 2))
                 (apply (lambda (_srcpath291115_ _opts291116_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath291115_ _opts291116_)))
                        _g295455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g295455_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx291091_ _opts291092_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts291092_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx291091_
               _opts291092_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx291091_
               _opts291092_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx290974_ _opts290975_)
        (letrec ((_generate-stub290977_
                  (lambda (_builtin-modules291087_)
                    (let ((_mod-main291089_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx290974_ 'main))))
                      (write (let ((__tmp295456
                                    (let ((__tmp295457
                                           (let ((__tmp295458
                                                  (let ((__tmp295459
                                                         (let ((__tmp295461
                                                                (let ((__tmp295462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules291087_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp295462)))
                       (__tmp295460
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp295461 __tmp295460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp295459))))
                                             (declare (not safe))
                                             (cons __tmp295458 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp295457))))
                               (declare (not safe))
                               (cons 'define __tmp295456)))
                      (write (let ((__tmp295463
                                    (let ((__tmp295502
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp295464
                                           (let ((__tmp295465
                                                  (let ((__tmp295466
                                                         (let ((__tmp295490
                                                                (let ((__tmp295491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp295492
                                      (let ((__tmp295500
                                             (let ((__tmp295501
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp295501)))
                                            (__tmp295493
                                             (let ((__tmp295494
                                                    (let ((__tmp295495
                                                           (let ((__tmp295496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp295497
                                 (let ((__tmp295498
                                        (let ((__tmp295499
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp295499 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp295498))))
                            (declare (not safe))
                            (cons __tmp295497 '()))))
                     (declare (not safe))
                     (cons _mod-main291089_ __tmp295496))))
              (declare (not safe))
              (cons 'apply __tmp295495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp295494 '()))))
                                        (declare (not safe))
                                        (cons __tmp295500 __tmp295493))))
                                 (declare (not safe))
                                 (cons '() __tmp295492))))
                          (declare (not safe))
                          (cons 'lambda __tmp295491)))
                       (__tmp295467
                        (let ((__tmp295468
                               (let ((__tmp295469
                                      (let ((__tmp295470
                                             (let ((__tmp295481
                                                    (let ((__tmp295482
                                                           (let ((__tmp295483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp295484
                                 (let ((__tmp295485
                                        (let ((__tmp295486
                                               (let ((__tmp295487
                                                      (let ((__tmp295488
                                                             (let ((__tmp295489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp295489 '()))))
                (declare (not safe))
                (cons 'force-output __tmp295488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp295487 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp295486))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp295485))))
                            (declare (not safe))
                            (cons __tmp295484 '()))))
                     (declare (not safe))
                     (cons 'void __tmp295483))))
              (declare (not safe))
              (cons 'with-catch __tmp295482)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp295471
                                                    (let ((__tmp295472
                                                           (let ((__tmp295473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp295474
                                 (let ((__tmp295475
                                        (let ((__tmp295476
                                               (let ((__tmp295477
                                                      (let ((__tmp295478
                                                             (let ((__tmp295479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp295480
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp295480 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp295479))))
                (declare (not safe))
                (cons __tmp295478 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp295477))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp295476))))
                                   (declare (not safe))
                                   (cons __tmp295475 '()))))
                            (declare (not safe))
                            (cons 'void __tmp295474))))
                     (declare (not safe))
                     (cons 'with-catch __tmp295473))))
              (declare (not safe))
              (cons __tmp295472 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp295481
                                                     __tmp295471))))
                                        (declare (not safe))
                                        (cons '() __tmp295470))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp295469))))
                          (declare (not safe))
                          (cons __tmp295468 '()))))
                   (declare (not safe))
                   (cons __tmp295490 __tmp295467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp295466))))
                                             (declare (not safe))
                                             (cons __tmp295465 '()))))
                                      (declare (not safe))
                                      (cons __tmp295502 __tmp295464))))
                               (declare (not safe))
                               (cons 'define __tmp295463)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts290978_
                  (lambda (_libgerbil291085_)
                    (call-with-input-file
                     (string-append _libgerbil291085_ '".ldd")
                     read)))
                 (_replace-extension290979_
                  (lambda (_path291082_ _ext291083_)
                    (string-append
                     (path-strip-extension _path291082_)
                     _ext291083_)))
                 (_not-exclude-module?290980_
                  (lambda (_ctx291078_)
                    (let ((_id-str291080_
                           (symbol->string
                            (##structure-ref
                             _ctx291078_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp295504
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str291080_))))
                            (declare (not safe))
                            (not __tmp295504))
                          (let ((__tmp295503
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str291080_))))
                            (declare (not safe))
                            (not __tmp295503))
                          '#f))))
                 (_not-file-empty?290981_
                  (lambda (_path291076_)
                    (let ((__tmp295505
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path291076_))))
                      (declare (not safe))
                      (not __tmp295505))))
                 (_compile-stub290982_
                  (lambda (_output-scm290989_ _output-bin290990_)
                    (let* ((_gerbil-home290992_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir290994_
                            (path-expand '"lib" _gerbil-home290992_))
                           (_gerbil-staticdir290996_
                            (path-expand '"static" _gerbil-libdir290994_))
                           (_gxlink290998_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir290994_))
                           (_tmp291000_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path291004_
                            (lambda (_f291002_)
                              (path-expand
                               (path-strip-directory _f291002_)
                               _tmp291000_)))
                           (_deps291006_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx290974_)))
                           (_deps291008_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?290980_
                                      _deps291006_)))
                           (_src-deps-scm291010_
                            (map gxc#find-static-module-file _deps291008_))
                           (_src-deps-scm291012_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?290981_
                                      _src-deps-scm291010_)))
                           (_src-deps-scm291014_
                            (map path-expand _src-deps-scm291012_))
                           (_deps-scm291016_
                            (map _tmp-path291004_ _src-deps-scm291014_))
                           (_deps-c291022_
                            (map (lambda (_g291017291019_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension290979_
                                      _g291017291019_
                                      '".c")))
                                 _deps-scm291016_))
                           (_deps-o291028_
                            (map (lambda (_g291023291025_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension290979_
                                      _g291023291025_
                                      '".o")))
                                 _deps-scm291016_))
                           (_src-bin-scm291030_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx290974_)))
                           (_src-bin-scm291032_
                            (path-expand _src-bin-scm291030_))
                           (_bin-scm291034_
                            (let ()
                              (declare (not safe))
                              (_tmp-path291004_ _src-bin-scm291032_)))
                           (_bin-c291036_
                            (let ()
                              (declare (not safe))
                              (_replace-extension290979_
                               _bin-scm291034_
                               '".c")))
                           (_bin-o291038_
                            (let ()
                              (declare (not safe))
                              (_replace-extension290979_
                               _bin-scm291034_
                               '".o")))
                           (_output-bin291040_
                            (path-expand _output-bin290990_))
                           (_output-scm291042_
                            (path-expand _output-scm290989_))
                           (_output-c291044_
                            (let ()
                              (declare (not safe))
                              (_replace-extension290979_
                               _output-scm291042_
                               '".c")))
                           (_output-o291046_
                            (let ()
                              (declare (not safe))
                              (_replace-extension290979_
                               _output-scm291042_
                               '".o")))
                           (_output_-c291048_
                            (let ()
                              (declare (not safe))
                              (_replace-extension290979_
                               _output-scm291042_
                               '"_.c")))
                           (_output_-o291050_
                            (let ()
                              (declare (not safe))
                              (_replace-extension290979_
                               _output-scm291042_
                               '"_.o")))
                           (_gsc-link-opts291052_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291054_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291056_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir290996_)))
                           (_output-ld-opts291058_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a291060_
                            (path-expand '"libgerbil.a" _gerbil-libdir290994_))
                           (_libgerbil.so291062_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir290994_))
                           (_libgerbil-ld-opts291064_
                            (if (file-exists? _libgerbil.so291062_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts290978_
                                   _libgerbil.so291062_))
                                (if (file-exists? _libgerbil.a291060_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts290978_
                                       _libgerbil.a291060_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a291060_
                                       _libgerbil.so291062_)))))
                           (_rpath291066_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir290994_)))
                           (_builtin-modules291070_
                            (map (lambda (_mod291068_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod291068_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx290974_ _deps291008_)))))
                      (let ((__tmp295506
                             (lambda ()
                               (let ((__tmp295507
                                      (path-directory _output-bin291040_)))
                                 (declare (not safe))
                                 (create-directory* __tmp295507)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp295506))
                      (let ((__tmp295508
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub290977_
                                  _builtin-modules291070_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291042_
                         __tmp295508))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp295509
                                   (lambda () (create-directory _tmp291000_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp295509))
                            (for-each
                             copy-file
                             _src-deps-scm291014_
                             _deps-scm291016_)
                            (copy-file _src-bin-scm291032_ _bin-scm291034_)
                            (let ((__tmp295517
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp295510
                                   (let ((__tmp295511
                                          (let ((__tmp295512
                                                 (let ((__tmp295513
                                                        (let ((__tmp295514
                                                               (let ((__tmp295515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp295516
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm291042_ '()))))
                                (declare (not safe))
                                (cons _bin-scm291034_ __tmp295516))))
                         (declare (not safe))
                         (foldr1 cons __tmp295515 _deps-scm291016_))))
                  (declare (not safe))
                  (foldr1 cons __tmp295514 _gsc-link-opts291052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink290998_
                                                         __tmp295513))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp295512))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp295511))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp295517
                               __tmp295510))
                            (let ((__tmp295525
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp295518
                                   (let ((__tmp295519
                                          (let ((__tmp295520
                                                 (let ((__tmp295521
                                                        (let ((__tmp295522
                                                               (let ((__tmp295523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp295524
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c291048_ '()))))
                                (declare (not safe))
                                (cons _output-c291044_ __tmp295524))))
                         (declare (not safe))
                         (cons _bin-c291036_ __tmp295523))))
                  (declare (not safe))
                  (foldr1 cons __tmp295522 _deps-c291022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp295521
                                                           _gsc-static-opts291056_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp295520
                                                    _gsc-cc-opts291054_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp295519))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp295525
                               __tmp295518))
                            (let ((__tmp295538
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp295526
                                   (let ((__tmp295527
                                          (let ((__tmp295528
                                                 (let ((__tmp295529
                                                        (let ((__tmp295530
                                                               (let ((__tmp295531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp295532
                                     (let ((__tmp295533
                                            (let ((__tmp295534
                                                   (let ((__tmp295535
                                                          (let ((__tmp295536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp295537
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts291064_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp295537))))
                    (declare (not safe))
                    (cons _gerbil-libdir290994_ __tmp295536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp295535))))
                                              (declare (not safe))
                                              (cons _rpath291066_
                                                    __tmp295534))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp295533
                                               _output-ld-opts291058_))))
                                (declare (not safe))
                                (cons _output_-o291050_ __tmp295532))))
                         (declare (not safe))
                         (cons _output-o291046_ __tmp295531))))
                  (declare (not safe))
                  (cons _bin-o291038_ __tmp295530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp295529
                                                           _deps-o291028_))))
                                            (declare (not safe))
                                            (cons _output-bin291040_
                                                  __tmp295528))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp295527))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp295538
                               __tmp295526))
                            (for-each
                             delete-file
                             (let ((__tmp295539
                                    (let ((__tmp295540
                                           (let ((__tmp295541
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o291050_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o291046_
                                                   __tmp295541))))
                                      (declare (not safe))
                                      (cons _output_-c291048_ __tmp295540))))
                               (declare (not safe))
                               (cons _output-c291044_ __tmp295539)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp291000_)))
                          '#!void)))))
          (let* ((_output-bin290984_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx290974_ _opts290975_)))
                 (_output-scm290986_
                  (string-append _output-bin290984_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub290982_ _output-scm290986_ _output-bin290984_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm290986_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx290799_ _opts290800_)
        (letrec ((_reset-declare290802_
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
                 (_generate-stub290803_
                  (lambda (_deps290965_)
                    (let ((_mod-main290967_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx290799_ 'main)))
                          (_reset-decl290968_
                           (let ()
                             (declare (not safe))
                             (_reset-declare290802_)))
                          (_user-decl290969_
                           (let ()
                             (declare (not safe))
                             (_user-declare290804_))))
                      (for-each
                       (lambda (_dep290971_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl290968_)
                         (newline)
                         (if _user-decl290969_
                             (begin (write _user-decl290969_) (newline))
                             '#!void)
                         (write (let ((__tmp295542
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep290971_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp295542)))
                         (newline))
                       _deps290965_)
                      (write (let ((__tmp295543
                                    (let ((__tmp295556
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp295544
                                           (let ((__tmp295552
                                                  (let ((__tmp295553
                                                         (let ((__tmp295554
                                                                (let ((__tmp295555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp295555))))
                   (declare (not safe))
                   (cons __tmp295554 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp295553)))
                                                 (__tmp295545
                                                  (let ((__tmp295546
                                                         (let ((__tmp295547
                                                                (let ((__tmp295548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp295549
                                      (let ((__tmp295550
                                             (let ((__tmp295551
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp295551 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp295550))))
                                 (declare (not safe))
                                 (cons __tmp295549 '()))))
                          (declare (not safe))
                          (cons _mod-main290967_ __tmp295548))))
                   (declare (not safe))
                   (cons 'apply __tmp295547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp295546 '()))))
                                             (declare (not safe))
                                             (cons __tmp295552 __tmp295545))))
                                      (declare (not safe))
                                      (cons __tmp295556 __tmp295544))))
                               (declare (not safe))
                               (cons 'define __tmp295543)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare290804_
                  (lambda ()
                    (let* ((_gsc-opts290870_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts290800_)))
                           (_gsc-prelude290872_
                            (if _gsc-opts290870_
                                (member '"-prelude" _gsc-opts290870_)
                                '#f))
                           (_gsc-prelude290874_
                            (if _gsc-prelude290872_
                                (read (open-input-string
                                       (cadr _gsc-prelude290872_)))
                                '#f)))
                      (let _lp290877_ ((_rest290879_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude290874_ '())))
                                       (_user-decls290880_ '()))
                        (let* ((_rest290881290889_ _rest290879_)
                               (_else290883290897_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls290880_))
                                      '#f
                                      (let ((__tmp295557
                                             (reverse _user-decls290880_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp295557)))))
                               (_K290885290953_
                                (lambda (_rest290900_ _expr290901_)
                                  (let* ((_expr290902290914_ _expr290901_)
                                         (_else290905290922_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp290877_
                                               _rest290900_
                                               _user-decls290880_)))))
                                    (let ((_K290910290943_
                                           (lambda (_decls290941_)
                                             (let ((__tmp295558
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls290880_
                                                              _decls290941_))))
                                               (declare (not safe))
                                               (_lp290877_
                                                _rest290900_
                                                __tmp295558))))
                                          (_K290907290928_
                                           (lambda (_exprs290926_)
                                             (let ((__tmp295559
                                                    (append _exprs290926_
                                                            _rest290900_)))
                                               (declare (not safe))
                                               (_lp290877_
                                                __tmp295559
                                                _user-decls290880_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr290902290914_))
                                          (let ((_tl290912290948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr290902290914_)))
                                                (_hd290911290946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr290902290914_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd290911290946_
                                                         'declare))
                                                (let ((_decls290951_
                                                       _tl290912290948_))
                                                  (declare (not safe))
                                                  (_K290910290943_
                                                   _decls290951_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd290911290946_
                                                             'begin))
                                                    (let ((_exprs290936_
                                                           _tl290912290948_))
                                                      (declare (not safe))
                                                      (_K290907290928_
                                                       _exprs290936_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else290905290922_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else290905290922_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest290881290889_))
                              (let ((_hd290886290956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest290881290889_)))
                                    (_tl290887290958_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest290881290889_))))
                                (let* ((_expr290961_ _hd290886290956_)
                                       (_rest290963_ _tl290887290958_))
                                  (declare (not safe))
                                  (_K290885290953_ _rest290963_ _expr290961_)))
                              (let ()
                                (declare (not safe))
                                (_else290883290897_))))))))
                 (_compile-stub290805_
                  (lambda (_output-scm290812_ _output-bin290813_)
                    (let* ((_gerbil-home290815_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir290817_
                            (path-expand '"lib" _gerbil-home290815_))
                           (_runtime290819_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp290821_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home290815_))
                           (_include-gambit-sharp290823_
                            (string-append
                             '"(include \""
                             _gambit-sharp290821_
                             '"\")"))
                           (_bin-scm290825_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx290799_)))
                           (_deps290827_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx290799_)))
                           (_deps290829_
                            (map gxc#find-static-module-file _deps290827_))
                           (_deps290834_
                            (let ((__tmp295560
                                   (lambda (_$obj290831_)
                                     (let ((__tmp295561
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj290831_))))
                                       (declare (not safe))
                                       (not __tmp295561)))))
                              (declare (not safe))
                              (filter __tmp295560 _deps290829_)))
                           (_deps290838_
                            (let ((__tmp295562
                                   (lambda (_f290836_)
                                     (let ((__tmp295563
                                            (member _f290836_
                                                    _runtime290819_)))
                                       (declare (not safe))
                                       (not __tmp295563)))))
                              (declare (not safe))
                              (filter __tmp295562 _deps290834_)))
                           (_output-base290840_
                            (string-append
                             (path-strip-extension _output-scm290812_)))
                           (_output-c290842_
                            (string-append _output-base290840_ '".c"))
                           (_output-o290844_
                            (string-append _output-base290840_ '".o"))
                           (_output-c_290846_
                            (string-append _output-base290840_ '"_.c"))
                           (_output-o_290848_
                            (string-append _output-base290840_ '"_.o"))
                           (_gsc-link-opts290850_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts290852_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts290854_
                            (let ((__tmp295564
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir290817_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp295564)))
                           (_output-ld-opts290856_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros290858_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp295566
                                       (let ((__tmp295567
                                              (let ((__tmp295568
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp290823_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp295568))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp295567))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp295566))
                                (let ((__tmp295565
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp290823_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp295565))))
                           (_gsc-link-opts290860_
                            (append _gsc-link-opts290850_
                                    _gsc-gx-macros290858_))
                           (_rpath290862_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir290817_)))
                           (_default-ld-options290864_
                            (let ((__tmp295569
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp295569))))
                      (let ((__tmp295570
                             (lambda ()
                               (let ((__tmp295571
                                      (path-directory _output-bin290813_)))
                                 (declare (not safe))
                                 (create-directory* __tmp295571)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp295570))
                      (let ((__tmp295572
                             (lambda ()
                               (let ((__tmp295573
                                      (let ((__tmp295574
                                             (let ((__tmp295575
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm290825_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp295575
                                                       _deps290838_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp295574
                                                _runtime290819_))))
                                 (declare (not safe))
                                 (_generate-stub290803_ __tmp295573)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm290812_
                         __tmp295572))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp295581
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp295576
                                   (let ((__tmp295577
                                          (let ((__tmp295578
                                                 (let ((__tmp295579
                                                        (let ((__tmp295580
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm290812_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp295580 _gsc-link-opts290860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_290846_
                                                         __tmp295579))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp295578))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp295577))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp295581
                               __tmp295576))
                            (let ((__tmp295587
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp295582
                                   (let ((__tmp295583
                                          (let ((__tmp295584
                                                 (let ((__tmp295585
                                                        (let ((__tmp295586
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_290846_ '()))))
                  (declare (not safe))
                  (cons _output-c290842_ __tmp295586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp295585
                                                           _gsc-static-opts290854_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp295584
                                                    _gsc-cc-opts290852_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp295583))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp295587
                               __tmp295582))
                            (let ((__tmp295597
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp295588
                                   (let ((__tmp295589
                                          (let ((__tmp295590
                                                 (let ((__tmp295591
                                                        (let ((__tmp295592
                                                               (let ((__tmp295593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp295594
                                     (let ((__tmp295595
                                            (let ((__tmp295596
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options290864_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir290817_
                                                    __tmp295596))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp295595))))
                                (declare (not safe))
                                (cons _rpath290862_ __tmp295594))))
                         (declare (not safe))
                         (foldr1 cons __tmp295593 _output-ld-opts290856_))))
                  (declare (not safe))
                  (cons _output-o_290848_ __tmp295592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o290844_
                                                         __tmp295591))))
                                            (declare (not safe))
                                            (cons _output-bin290813_
                                                  __tmp295590))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp295589))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp295597
                               __tmp295588)))
                          '#!void)))))
          (let* ((_output-bin290807_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx290799_ _opts290800_)))
                 (_output-scm290809_
                  (string-append _output-bin290807_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub290805_ _output-scm290809_ _output-bin290807_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm290809_))))))
    (define gxc#find-export-binding
      (lambda (_ctx290749_ _id290750_)
        (let ((_$e290796_
               (let ((__tmp295599
                      (lambda (_e290751290753_)
                        (let* ((_g290755290765_ _e290751290753_)
                               (_else290757290773_ (lambda () '#f))
                               (_K290759290777_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g290755290765_
                                 'gx#module-export::t))
                              (let* ((_e290760290780_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g290755290765_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e290761290783_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g290755290765_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e290762290786_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g290755290765_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e290762290786_ '0))
                                    (let ((_e290763290789_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g290755290765_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g290791290793_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g290791290793_
                                                    _id290750_)))
                                           _e290763290789_)
                                          (let ()
                                            (declare (not safe))
                                            (_K290759290777_))
                                          (let ()
                                            (declare (not safe))
                                            (_else290757290773_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else290757290773_))))
                              (let ()
                                (declare (not safe))
                                (_else290757290773_))))))
                     (__tmp295598
                      (##structure-ref
                       _ctx290749_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp295599 __tmp295598))))
          (if _$e290796_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e290796_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx290741_ _id290742_)
        (let ((_$e290744_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx290741_ _id290742_))))
          (if _$e290744_
              ((lambda (_bind290747_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind290747_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id290742_)))
                 (##structure-ref _bind290747_ '1 gx#binding::t '#f))
               _$e290744_)
              (let ((__tmp295600
                     (##structure-ref
                      _ctx290741_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp295600
                 _id290742_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx290628_)
        (letrec* ((_ht290630_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template290631_
                   (lambda (_in290693_ _phi290694_)
                     (let ((_iphi290696_
                            (fx+ _phi290694_
                                 (##direct-structure-ref
                                  _in290693_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports290697_
                            (##structure-ref
                             (##direct-structure-ref
                              _in290693_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp290699_ ((_rest290701_ _imports290697_)
                                        (_r290702_ '()))
                         (let* ((_rest290703290711_ _rest290701_)
                                (_else290705290719_ (lambda () _r290702_))
                                (_K290707290729_
                                 (lambda (_rest290722_ _in290723_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in290723_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi290696_))
                                           (let ((__tmp295607
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in290723_
                                                          _r290702_))))
                                             (declare (not safe))
                                             (_lp290699_
                                              _rest290722_
                                              __tmp295607))
                                           (let ()
                                             (declare (not safe))
                                             (_lp290699_
                                              _rest290722_
                                              _r290702_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in290723_
                                              'gx#module-import::t))
                                           (let ((_iphi290725_
                                                  (fx+ _phi290694_
                                                       (##direct-structure-ref
                                                        _in290723_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi290725_))
                                                 (let ((__tmp295605
                                                        (let ((__tmp295606
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in290723_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp295606 _r290702_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp290699_
                                                    _rest290722_
                                                    __tmp295605))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp290699_
                                                    _rest290722_
                                                    _r290702_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in290723_
                                                  'gx#import-set::t))
                                               (let ((_xphi290727_
                                                      (fx+ _iphi290696_
                                                           (##direct-structure-ref
                                                            _in290723_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi290727_))
                                                     (let ((__tmp295603
                                                            (let ((__tmp295604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in290723_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp295604 _r290702_))))
               (declare (not safe))
               (_lp290699_ _rest290722_ __tmp295603))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi290727_)
                                                         (let ((__tmp295601
                                                                (let ((__tmp295602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template290631_
                                  _in290723_
                                  _iphi290696_))))
                          (declare (not safe))
                          (foldl1 cons _r290702_ __tmp295602))))
                   (declare (not safe))
                   (_lp290699_ _rest290722_ __tmp295601))
                 (let ()
                   (declare (not safe))
                   (_lp290699_ _rest290722_ _r290702_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp290699_
                                                  _rest290722_
                                                  _r290702_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest290703290711_))
                               (let ((_hd290708290732_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest290703290711_)))
                                     (_tl290709290734_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest290703290711_))))
                                 (let* ((_in290737_ _hd290708290732_)
                                        (_rest290739_ _tl290709290734_))
                                   (declare (not safe))
                                   (_K290707290729_ _rest290739_ _in290737_)))
                               (let ()
                                 (declare (not safe))
                                 (_else290705290719_))))))))
                  (_find-deps290632_
                   (lambda (_rest290639_ _deps290640_)
                     (let* ((_rest290641290649_ _rest290639_)
                            (_else290643290657_ (lambda () _deps290640_))
                            (_K290645290681_
                             (lambda (_rest290660_ _hd290661_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd290661_
                                      'gx#module-context::t))
                                   (let ((_id290663_
                                          (##structure-ref
                                           _hd290661_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports290664_
                                          (##structure-ref
                                           _hd290661_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht290630_
                                            _id290663_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps290632_
                                            _rest290660_
                                            _deps290640_))
                                         (let ((_$e290666_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd290661_))))
                                           (if _$e290666_
                                               ((lambda (_pre290669_)
                                                  (let ((_xdeps290671_
                                                         (let ((__tmp295620
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre290669_ _imports290664_))))
                   (declare (not safe))
                   (_find-deps290632_ __tmp295620 _deps290640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht290630_
                                                       _id290663_
                                                       _hd290661_))
                                                    (let ((__tmp295621
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd290661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps290671_))))
              (declare (not safe))
              (_find-deps290632_ _rest290660_ __tmp295621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e290666_)
                                               (let ((_xdeps290673_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps290632_
                                                         _imports290664_
                                                         _deps290640_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht290630_
                                                    _id290663_
                                                    _hd290661_))
                                                 (let ((__tmp295619
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd290661_
                                                                _xdeps290673_))))
                                                   (declare (not safe))
                                                   (_find-deps290632_
                                                    _rest290660_
                                                    __tmp295619)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd290661_
                                          'gx#prelude-context::t))
                                       (let ((_id290675_
                                              (##structure-ref
                                               _hd290661_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht290630_
                                                _id290675_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps290632_
                                                _rest290660_
                                                _deps290640_))
                                             (let ((_xdeps290677_
                                                    (let ((__tmp295617
                                                           (##structure-ref
                                                            _hd290661_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps290632_
                                                       __tmp295617
                                                       _deps290640_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht290630_
                                                      _id290675_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps290632_
                                                      _rest290660_
                                                      _xdeps290677_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht290630_
                                                        _id290675_
                                                        _hd290661_))
                                                     (let ((__tmp295618
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd290661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps290677_))))
               (declare (not safe))
               (_find-deps290632_ _rest290660_ __tmp295618)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd290661_
                                              'gx#module-import::t))
                                           (if (let ((__tmp295616
                                                      (##direct-structure-ref
                                                       _hd290661_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp295616))
                                               (let ((__tmp295614
                                                      (let ((__tmp295615
                                                             (##direct-structure-ref
                                                              _hd290661_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp295615
                                                              _rest290660_))))
                                                 (declare (not safe))
                                                 (_find-deps290632_
                                                  __tmp295614
                                                  _deps290640_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps290632_
                                                  _rest290660_
                                                  _deps290640_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd290661_
                                                  'gx#module-export::t))
                                               (let ((__tmp295612
                                                      (let ((__tmp295613
                                                             (##direct-structure-ref
                                                              _hd290661_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp295613
                                                              _rest290660_))))
                                                 (declare (not safe))
                                                 (_find-deps290632_
                                                  __tmp295612
                                                  _deps290640_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd290661_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp295611
                                                              (##direct-structure-ref
                                                               _hd290661_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp295611))
                                                       (let ((__tmp295609
                                                              (let ((__tmp295610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd290661_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp295610 _rest290660_))))
                 (declare (not safe))
                 (_find-deps290632_ __tmp295609 _deps290640_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd290661_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps290679_
                           (let ()
                             (declare (not safe))
                             (_import-set-template290631_ _hd290661_ '0)))
                          (__tmp295608
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest290660_ _xdeps290679_))))
                     (declare (not safe))
                     (_find-deps290632_ __tmp295608 _deps290640_))
                   (let ()
                     (declare (not safe))
                     (_find-deps290632_ _rest290660_ _deps290640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd290661_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest290641290649_))
                           (let ((_hd290646290684_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest290641290649_)))
                                 (_tl290647290686_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest290641290649_))))
                             (let* ((_hd290689_ _hd290646290684_)
                                    (_rest290691_ _tl290647290686_))
                               (declare (not safe))
                               (_K290645290681_ _rest290691_ _hd290689_)))
                           (let ()
                             (declare (not safe))
                             (_else290643290657_)))))))
          (reverse (let ((__tmp295622
                          (let ((__tmp295623
                                 (let ((_$e290634_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx290628_))))
                                   (if _$e290634_
                                       ((lambda (_pre290637_)
                                          (let ((__tmp295624
                                                 (##structure-ref
                                                  _ctx290628_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre290637_ __tmp295624)))
                                        _$e290634_)
                                       (##structure-ref
                                        _ctx290628_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps290632_ __tmp295623 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp295622))))))
    (define gxc#find-static-module-file
      (lambda (_ctx290559_)
        (let* ((_context-id290561_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx290559_
                       'gx#module-context::t))
                    (##structure-ref _ctx290559_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx290559_)))
               (_scm290563_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id290561_))
                 '".scm"))
               (_dirs290565_ (gx#current-expander-module-library-path))
               (_dirs290571_
                (let ((_user-libpath290567_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath290567_
                      (let ((_user-libpath290569_
                             (path-expand '"lib" _user-libpath290567_)))
                        (if (member _user-libpath290569_ _dirs290565_)
                            _dirs290565_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath290569_ _dirs290565_))))
                      _dirs290565_)))
               (_dirs290580_
                (let ((_$e290573_ (gxc#current-compile-output-dir)))
                  (if _$e290573_
                      ((lambda (_g290575290577_)
                         (let ()
                           (declare (not safe))
                           (cons _g290575290577_ _dirs290571_)))
                       _$e290573_)
                      _dirs290571_)))
               (_dirs290586_
                (map (lambda (_g290581290583_)
                       (path-expand '"static" _g290581290583_))
                     _dirs290580_)))
          (let _lp290589_ ((_rest290591_ _dirs290586_))
            (let* ((_rest290592290600_ _rest290591_)
                   (_else290594290608_
                    (lambda ()
                      (let ((__tmp295625
                             (##structure-ref
                              _ctx290559_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp295625
                         _scm290563_))))
                   (_K290596290616_
                    (lambda (_rest290611_ _dir290612_)
                      (let ((_path290614_
                             (path-expand _scm290563_ _dir290612_)))
                        (if (file-exists? _path290614_)
                            _path290614_
                            (let ()
                              (declare (not safe))
                              (_lp290589_ _rest290611_)))))))
              (if (let () (declare (not safe)) (##pair? _rest290592290600_))
                  (let ((_hd290597290619_
                         (let ()
                           (declare (not safe))
                           (##car _rest290592290600_)))
                        (_tl290598290621_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290592290600_))))
                    (let* ((_dir290624_ _hd290597290619_)
                           (_rest290626_ _tl290598290621_))
                      (declare (not safe))
                      (_K290596290616_ _rest290626_ _dir290624_)))
                  (let () (declare (not safe)) (_else290594290608_))))))))
    (define gxc#file-empty?
      (lambda (_path290557_)
        (let ((__tmp295626 (file-info-size (file-info _path290557_ '#t))))
          (declare (not safe))
          (zero? __tmp295626))))
    (define gxc#compile-top-module
      (lambda (_ctx290546_)
        (let ((__tmp295630
               (lambda ()
                 (let ((__tmp295631
                        (##structure-ref
                         _ctx290546_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp295631))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp295632
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx290546_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp295632))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx290546_))
                 (if (let ((__tmp295635
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx290546_))))
                       (declare (not safe))
                       (null? __tmp295635))
                     (let* ((_thr1290551_
                             (let ((__tmp295633
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx290546_)))))
                               (declare (not safe))
                               (spawn __tmp295633)))
                            (_thr2290554_
                             (let ((__tmp295634
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx290546_)))))
                               (declare (not safe))
                               (spawn __tmp295634))))
                       (let () (declare (not safe)) (gxc#join! _thr1290551_))
                       (let () (declare (not safe)) (gxc#join! _thr2290554_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx290546_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx290546_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx290546_))
                     '#!void)))
              (__tmp295629
               (let ((__obj295438 (make-object* gxc#symbol-table::t '3)))
                 (gxc#symbol-table:::init! __obj295438)
                 __obj295438))
              (__tmp295628
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp295627 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp295630
           gx#current-expander-context
           _ctx290546_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp295629
           gxc#current-compile-runtime-sections
           __tmp295628
           gxc#current-compile-runtime-names
           __tmp295627))))
    (define gxc#collect-bindings
      (lambda (_ctx290544_)
        (let ((__tmp295636
               (##structure-ref _ctx290544_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp295636))))
    (define gxc#compile-runtime-code
      (lambda (_ctx290490_)
        (letrec ((_compile1290492_
                  (lambda (_ctx290533_)
                    (let* ((_code290535_
                            (##structure-ref
                             _ctx290533_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt290539_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code290535_))
                                (let ((_idstr290537_
                                       (let ((__tmp295637
                                              (##structure-ref
                                               _ctx290533_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp295637))))
                                  (string-append _idstr290537_ '"__0"))
                                '#f)))
                      (if _rt290539_
                          (begin
                            (let ((__tmp295638
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp295638 _ctx290533_ _rt290539_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code290494_
                               _ctx290533_
                               _code290535_)))
                          (let ((_path290542_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx290533_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path290542_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code290495_
                         _ctx290533_
                         _code290535_
                         _rt290539_)))))
                 (_context-timestamp290493_
                  (lambda (_ctx290531_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx290531_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code290494_
                  (lambda (_ctx290513_ _code290514_)
                    (let* ((_lifts290516_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code290519_
                            (let ((__tmp295641
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code290514_))))
                                  (__tmp295640
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp295639
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp295641
                               gx#current-expander-context
                               _ctx290513_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts290516_
                               gxc#current-compile-marks
                               __tmp295640
                               gxc#current-compile-identifiers
                               __tmp295639)))
                           (_runtime-code290521_
                            (if (let ((__tmp295645 (unbox _lifts290516_)))
                                  (declare (not safe))
                                  (null? __tmp295645))
                                _runtime-code290519_
                                (let ((__tmp295642
                                       (let ((__tmp295644
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code290519_
                                                      '())))
                                             (__tmp295643
                                              (reverse (unbox _lifts290516_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp295644
                                                 __tmp295643))))
                                  (declare (not safe))
                                  (cons 'begin __tmp295642))))
                           (_runtime-code290523_
                            (let ((__tmp295646
                                   (let ((__tmp295648
                                          (let ((__tmp295649
                                                 (let ((__tmp295652
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp290493_
                                                           _ctx290513_)))
                                                       (__tmp295650
                                                        (let ((__tmp295651
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp295651
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp295652
                                                         __tmp295650))))
                                            (declare (not safe))
                                            (cons 'define __tmp295649)))
                                         (__tmp295647
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code290521_ '()))))
                                     (declare (not safe))
                                     (cons __tmp295648 __tmp295647))))
                              (declare (not safe))
                              (cons 'begin __tmp295646)))
                           (_scm0290525_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290513_
                               '0
                               '".scm"))))
                      (let ((_scms290528_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx290513_))))
                        (let ((__tmp295653
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0290525_
                                    _runtime-code290523_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp295653
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms290528_)
                            (delete-file _scms290528_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0290525_
                           '" => "
                           _scms290528_))
                        (copy-file _scm0290525_ _scms290528_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0290525_))))))
                 (_generate-loader-code290495_
                  (lambda (_ctx290502_ _code290503_ _rt290504_)
                    (let* ((_loader-code290507_
                            (let ((__tmp295654
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code290503_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp295654
                               gx#current-expander-context
                               _ctx290502_)))
                           (_loader-code290509_
                            (if _rt290504_
                                (let ((__tmp295655
                                       (let ((__tmp295656
                                              (let ((__tmp295657
                                                     (let ((__tmp295658
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt290504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp295658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp295657 '()))))
                                         (declare (not safe))
                                         (cons _loader-code290507_
                                               __tmp295656))))
                                  (declare (not safe))
                                  (cons 'begin __tmp295655))
                                _loader-code290507_)))
                      (let ((__tmp295659
                             (lambda ()
                               (let ((__tmp295660
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290502_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp295660
                                  _loader-code290509_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp295659
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules290497_
                 (let ((__tmp295661
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx290490_))))
                   (declare (not safe))
                   (cons _ctx290490_ __tmp295661))))
            (for-each
             (lambda (_ctx290499_)
               (let ((__tmp295662
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1290492_ _ctx290499_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp295662
                  gxc#current-compile-decls
                  '())))
             _all-modules290497_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx290387_)
        (letrec ((_compile-ssi290389_
                  (lambda (_code290460_)
                    (let* ((_path290462_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290387_
                               '#f
                               '".ssi")))
                           (_prelude290473_
                            (let* ((_super290464_
                                    (##structure-ref
                                     _ctx290387_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e290466_
                                    (##structure-ref
                                     _super290464_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e290466_
                                  ((lambda (_g290468290470_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g290468290470_)))
                                   _$e290466_)
                                  ':<root>)))
                           (_ns290475_
                            (##structure-ref
                             _ctx290387_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr290477_
                            (symbol->string
                             (##structure-ref
                              _ctx290387_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg290484_
                            (let ((_$e290479_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr290477_ '#\/))))
                              (if _$e290479_
                                  ((lambda (_x290482_)
                                     (string->symbol
                                      (substring _idstr290477_ '0 _x290482_)))
                                   _$e290479_)
                                  '#f)))
                           (_rt290486_
                            (let ((__tmp295663
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp295663 _ctx290387_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path290462_))
                      (let ((__tmp295664
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude290473_))
                               (if _pkg290484_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg290484_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns290475_))
                               (newline)
                               (pretty-print _code290460_)
                               (if _rt290486_
                                   (pretty-print
                                    (let ((__tmp295665
                                           (let ((__tmp295669
                                                  (let ((__tmp295670
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp295670)))
                                                 (__tmp295666
                                                  (let ((__tmp295667
                                                         (let ((__tmp295668
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt290486_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp295668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp295667 '()))))
                                             (declare (not safe))
                                             (cons __tmp295669 __tmp295666))))
                                      (declare (not safe))
                                      (cons '%#call __tmp295665)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path290462_
                         __tmp295664)))))
                 (_compile-phi290390_
                  (lambda (_part290400_)
                    (let* ((_part290401290414_ _part290400_)
                           (_E290403290418_
                            (lambda ()
                              (error '"No clause matching"
                                     _part290401290414_)))
                           (_K290404290429_
                            (lambda (_code290421_
                                     _n290422_
                                     _phi290423_
                                     _phi-ctx290424_)
                              (let* ((_code290427_
                                      (let ((__tmp295671
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code290421_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp295671
                                         gx#current-expander-context
                                         _phi-ctx290424_
                                         gx#current-expander-phi
                                         _phi290423_)))
                                     (__tmp295672
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290387_
                                         _n290422_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp295672
                                 _code290427_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part290401290414_))
                          (let ((_hd290405290432_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part290401290414_)))
                                (_tl290406290434_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part290401290414_))))
                            (let ((_phi-ctx290437_ _hd290405290432_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl290406290434_))
                                  (let ((_hd290407290439_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl290406290434_)))
                                        (_tl290408290441_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl290406290434_))))
                                    (let ((_phi290444_ _hd290407290439_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl290408290441_))
                                          (let ((_hd290409290446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl290408290441_)))
                                                (_tl290410290448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl290408290441_))))
                                            (let ((_n290451_ _hd290409290446_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl290410290448_))
                                                  (let ((_hd290411290453_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl290410290448_)))
                                                        (_tl290412290455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl290410290448_))))
                                                    (let ((_code290458_
                                                           _hd290411290453_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl290412290455_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K290404290429_
                                                             _code290458_
                                                             _n290451_
                                                             _phi290444_
                                                             _phi-ctx290437_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E290403290418_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E290403290418_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E290403290418_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E290403290418_)))))
                          (let () (declare (not safe)) (_E290403290418_)))))))
          (let ((_g295673_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx290387_))))
            (begin
              (let ((_g295674_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g295673_)
                           (##vector-length _g295673_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g295674_ 2)))
                    (error "Context expects 2 values" _g295674_)))
              (let ((_ssi-code290392_
                     (let () (declare (not safe)) (##vector-ref _g295673_ 0)))
                    (_phi-code290393_
                     (let () (declare (not safe)) (##vector-ref _g295673_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi290389_ _ssi-code290392_))
                  (let ((_threads290398_
                         (map (lambda (_code290395_)
                                (let ((__tmp295675
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi290390_
                                            _code290395_)))))
                                  (declare (not safe))
                                  (spawn __tmp295675)))
                              _phi-code290393_)))
                    (for-each gxc#join! _threads290398_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx290370_)
        (let* ((_path290372_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx290370_ '#f '".ssxi.ss")))
               (_code290374_
                (let ((__tmp295676
                       (##structure-ref
                        _ctx290370_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp295676)))
               (_idstr290376_
                (symbol->string
                 (##structure-ref _ctx290370_ '1 gx#expander-context::t '#f)))
               (_pkg290383_
                (let ((_$e290378_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr290376_ '#\/))))
                  (if _$e290378_
                      ((lambda (_x290381_)
                         (string->symbol
                          (substring _idstr290376_ '0 _x290381_)))
                       _$e290378_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path290372_))
          (let ((__tmp295677
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg290383_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg290383_))
                       '#!void)
                   (newline)
                   (pretty-print _code290374_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path290372_ __tmp295677)))))
    (define gxc#generate-meta-code
      (lambda (_ctx290363_)
        (let* ((_state290365_
                (let ((__obj295439 (make-object* gxc#meta-state::t '5)))
                  (gxc#meta-state:::init! __obj295439 _ctx290363_)
                  __obj295439))
               (_ssi-code290367_
                (let ((__tmp295678
                       (##structure-ref
                        _ctx290363_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp295678 _state290365_))))
          (values _ssi-code290367_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state290365_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx290356_)
        (let ((_lifts290358_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp295681
                 (lambda ()
                   (let ((_code290361_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx290356_))))
                     (if (let ((__tmp295685 (unbox _lifts290358_)))
                           (declare (not safe))
                           (null? __tmp295685))
                         _code290361_
                         (let ((__tmp295682
                                (let ((__tmp295684
                                       (let ()
                                         (declare (not safe))
                                         (cons _code290361_ '())))
                                      (__tmp295683
                                       (reverse (unbox _lifts290358_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp295684 __tmp295683))))
                           (declare (not safe))
                           (cons 'begin __tmp295682))))))
                (__tmp295680
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp295679
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp295681
             gxc#current-compile-lift
             _lifts290358_
             gxc#current-compile-marks
             __tmp295680
             gxc#current-compile-identifiers
             __tmp295679)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx290352_)
        (let ((_modules290354_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp295686
                 (##structure-ref _ctx290352_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp295686 _modules290354_))
          (reverse (unbox _modules290354_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path290335_ _code290336_ _phi?290337_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path290335_))
        (let ((__tmp295687
               (lambda ()
                 (pretty-print
                  (let ((__tmp295688
                         (let ((__tmp295695
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp295689
                                (let ((__tmp295694
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp295690
                                       (let ((__tmp295693
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp295691
                                              (let ((__tmp295692
                                                     (if _phi?290337_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp295692))))
                                         (declare (not safe))
                                         (cons __tmp295693 __tmp295691))))
                                  (declare (not safe))
                                  (cons __tmp295694 __tmp295690))))
                           (declare (not safe))
                           (cons __tmp295695 __tmp295689))))
                    (declare (not safe))
                    (cons 'declare __tmp295688)))
                 (pretty-print _code290336_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path290335_ __tmp295687))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path290335_ _phi?290337_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path290335_))))
    (define gxc#compile-scm-file__0
      (lambda (_path290343_ _code290344_)
        (let ((_phi?290346_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path290343_ _code290344_ _phi?290346_))))
    (define gxc#compile-scm-file
      (lambda _g295697_
        (let ((_g295696_ (let () (declare (not safe)) (##length _g295697_))))
          (cond ((let () (declare (not safe)) (##fx= _g295696_ 2))
                 (apply (lambda (_path290343_ _code290344_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path290343_
                             _code290344_)))
                        _g295697_))
                ((let () (declare (not safe)) (##fx= _g295696_ 3))
                 (apply (lambda (_path290348_ _code290349_ _phi?290350_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path290348_
                             _code290349_
                             _phi?290350_)))
                        _g295697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g295697_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?290236_)
        (let _lp290238_ ((_rest290240_ (gxc#current-compile-gsc-options))
                         (_opts290241_ '()))
          (let* ((_rest290242290262_ _rest290240_)
                 (_else290246290270_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290236_))
                             (gxc#current-compile-debug))
                        (let ((__tmp295698
                               (let ((__tmp295699 (reverse _opts290241_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp295699))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp295698))
                        (reverse _opts290241_)))))
            (let ((_K290256290313_
                   (lambda (_rest290311_)
                     (let ()
                       (declare (not safe))
                       (_lp290238_ _rest290311_ _opts290241_))))
                  (_K290251290295_
                   (lambda (_rest290293_)
                     (let ()
                       (declare (not safe))
                       (_lp290238_ _rest290293_ _opts290241_))))
                  (_K290248290277_
                   (lambda (_rest290274_ _opt290275_)
                     (let ((__tmp295700
                            (let ()
                              (declare (not safe))
                              (cons _opt290275_ _opts290241_))))
                       (declare (not safe))
                       (_lp290238_ _rest290274_ __tmp295700)))))
              (if (let () (declare (not safe)) (##pair? _rest290242290262_))
                  (let ((_tl290258290318_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290242290262_)))
                        (_hd290257290316_
                         (let ()
                           (declare (not safe))
                           (##car _rest290242290262_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290257290316_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290258290318_))
                            (let* ((_tl290260290321_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290258290318_)))
                                   (_rest290324_ _tl290260290321_))
                              (declare (not safe))
                              (_K290256290313_ _rest290324_))
                            (let ((_opt290285_ _hd290257290316_)
                                  (_rest290287_ _tl290258290318_))
                              (let ()
                                (declare (not safe))
                                (_K290248290277_ _rest290287_ _opt290285_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290257290316_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290258290318_))
                                (let* ((_tl290255290303_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290258290318_)))
                                       (_rest290306_ _tl290255290303_))
                                  (declare (not safe))
                                  (_K290251290295_ _rest290306_))
                                (let ((_opt290285_ _hd290257290316_)
                                      (_rest290287_ _tl290258290318_))
                                  (let ()
                                    (declare (not safe))
                                    (_K290248290277_
                                     _rest290287_
                                     _opt290285_))))
                            (let ((_opt290285_ _hd290257290316_)
                                  (_rest290287_ _tl290258290318_))
                              (let ()
                                (declare (not safe))
                                (_K290248290277_ _rest290287_ _opt290285_))))))
                  (let () (declare (not safe)) (_else290246290270_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?290330_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?290330_))))
    (define gxc#gsc-link-options
      (lambda _g295702_
        (let ((_g295701_ (let () (declare (not safe)) (##length _g295702_))))
          (cond ((let () (declare (not safe)) (##fx= _g295701_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g295702_))
                ((let () (declare (not safe)) (##fx= _g295701_ 1))
                 (apply (lambda (_phi?290332_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?290332_)))
                        _g295702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g295702_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?290137_)
        (let _lp290139_ ((_rest290141_ (gxc#current-compile-gsc-options))
                         (_opts290142_ '()))
          (let* ((_rest290143290163_ _rest290141_)
                 (_else290147290171_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290137_))
                             (gxc#current-compile-debug))
                        (let ((__tmp295703
                               (let ((__tmp295704 (reverse _opts290142_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp295704))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp295703))
                        (reverse _opts290142_)))))
            (let ((_K290157290210_
                   (lambda (_rest290207_ _opt290208_)
                     (let ((__tmp295705
                            (let ((__tmp295706
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts290142_))))
                              (declare (not safe))
                              (cons _opt290208_ __tmp295706))))
                       (declare (not safe))
                       (_lp290139_ _rest290207_ __tmp295705))))
                  (_K290152290191_
                   (lambda (_rest290189_)
                     (let ()
                       (declare (not safe))
                       (_lp290139_ _rest290189_ _opts290142_))))
                  (_K290149290177_
                   (lambda (_rest290175_)
                     (let ()
                       (declare (not safe))
                       (_lp290139_ _rest290175_ _opts290142_)))))
              (if (let () (declare (not safe)) (##pair? _rest290143290163_))
                  (let ((_tl290159290215_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290143290163_)))
                        (_hd290158290213_
                         (let ()
                           (declare (not safe))
                           (##car _rest290143290163_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290158290213_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290159290215_))
                            (let ((_tl290161290220_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl290159290215_)))
                                  (_hd290160290218_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl290159290215_))))
                              (let ((_opt290223_ _hd290160290218_)
                                    (_rest290225_ _tl290161290220_))
                                (let ()
                                  (declare (not safe))
                                  (_K290157290210_ _rest290225_ _opt290223_))))
                            (let ((_rest290183_ _tl290159290215_))
                              (declare (not safe))
                              (_K290149290177_ _rest290183_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290158290213_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290159290215_))
                                (let* ((_tl290156290199_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290159290215_)))
                                       (_rest290202_ _tl290156290199_))
                                  (declare (not safe))
                                  (_K290152290191_ _rest290202_))
                                (let ((_rest290183_ _tl290159290215_))
                                  (declare (not safe))
                                  (_K290149290177_ _rest290183_)))
                            (let ((_rest290183_ _tl290159290215_))
                              (declare (not safe))
                              (_K290149290177_ _rest290183_)))))
                  (let () (declare (not safe)) (_else290147290171_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?290231_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?290231_))))
    (define gxc#gsc-cc-options
      (lambda _g295708_
        (let ((_g295707_ (let () (declare (not safe)) (##length _g295708_))))
          (cond ((let () (declare (not safe)) (##fx= _g295707_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g295708_))
                ((let () (declare (not safe)) (##fx= _g295707_ 1))
                 (apply (lambda (_phi?290233_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?290233_)))
                        _g295708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g295708_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir290132_)
        (let* ((_user-staticdir290134_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp295709
                (let ((__tmp295710
                       (string-append
                        '"-I "
                        _staticdir290132_
                        '" -I "
                        _user-staticdir290134_)))
                  (declare (not safe))
                  (cons __tmp295710 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp295709))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp290044_ ((_rest290046_ (gxc#current-compile-gsc-options))
                         (_opts290047_ '()))
          (let* ((_rest290048290068_ _rest290046_)
                 (_else290052290076_ (lambda () _opts290047_)))
            (let ((_K290062290119_
                   (lambda (_rest290117_)
                     (let ()
                       (declare (not safe))
                       (_lp290044_ _rest290117_ _opts290047_))))
                  (_K290057290097_
                   (lambda (_rest290094_ _opt290095_)
                     (let ((__tmp295711
                            (append _opts290047_
                                    (let ((__tmp295712
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt290095_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp295712)))))
                       (declare (not safe))
                       (_lp290044_ _rest290094_ __tmp295711))))
                  (_K290054290082_
                   (lambda (_rest290080_)
                     (let ()
                       (declare (not safe))
                       (_lp290044_ _rest290080_ _opts290047_)))))
              (if (let () (declare (not safe)) (##pair? _rest290048290068_))
                  (let ((_tl290064290124_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290048290068_)))
                        (_hd290063290122_
                         (let ()
                           (declare (not safe))
                           (##car _rest290048290068_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290063290122_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290064290124_))
                            (let* ((_tl290066290127_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290064290124_)))
                                   (_rest290130_ _tl290066290127_))
                              (declare (not safe))
                              (_K290062290119_ _rest290130_))
                            (let ((_rest290088_ _tl290064290124_))
                              (declare (not safe))
                              (_K290054290082_ _rest290088_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290063290122_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290064290124_))
                                (let ((_tl290061290107_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl290064290124_)))
                                      (_hd290060290105_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl290064290124_))))
                                  (let ((_opt290110_ _hd290060290105_)
                                        (_rest290112_ _tl290061290107_))
                                    (let ()
                                      (declare (not safe))
                                      (_K290057290097_
                                       _rest290112_
                                       _opt290110_))))
                                (let ((_rest290088_ _tl290064290124_))
                                  (declare (not safe))
                                  (_K290054290082_ _rest290088_)))
                            (let ((_rest290088_ _tl290064290124_))
                              (declare (not safe))
                              (_K290054290082_ _rest290088_)))))
                  (let () (declare (not safe)) (_else290052290076_))))))))
    (define gxc#not-string-empty?
      (lambda (_str290041_)
        (let ((__tmp295713
               (let () (declare (not safe)) (string-empty? _str290041_))))
          (declare (not safe))
          (not __tmp295713))))
    (define gxc#gsc-compile-file
      (lambda (_path290009_ _phi?290010_)
        (letrec ((_gsc-link-path290012_
                  (lambda (_base-path290033_)
                    (let _lp290035_ ((_n290037_ '1))
                      (let ((_path290039_
                             (string-append
                              _base-path290033_
                              '".o"
                              (number->string _n290037_))))
                        (if (file-exists? _path290039_)
                            (let ((__tmp295714
                                   (let ()
                                     (declare (not safe))
                                     (+ _n290037_ '1))))
                              (declare (not safe))
                              (_lp290035_ __tmp295714))
                            _path290039_))))))
          (let* ((_base-path290014_ (path-strip-extension _path290009_))
                 (_path-c290016_ (string-append _base-path290014_ '".c"))
                 (_path-o290018_ (string-append _base-path290014_ '".o"))
                 (_link-path290020_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path290012_ _base-path290014_)))
                 (_link-path-c290022_ (string-append _link-path290020_ '".c"))
                 (_link-path-o290024_ (string-append _link-path290020_ '".o"))
                 (_gsc-link-opts290026_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?290010_)))
                 (_gsc-cc-opts290028_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?290010_)))
                 (_gcc-ld-opts290030_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp295721 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp295715
                   (let ((__tmp295716
                          (let ((__tmp295717
                                 (let ((__tmp295718
                                        (let ((__tmp295719
                                               (let ((__tmp295720
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path290009_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp295720
                                                         _gsc-link-opts290026_))))
                                          (declare (not safe))
                                          (cons _link-path-c290022_
                                                __tmp295719))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp295718))))
                            (declare (not safe))
                            (cons '"-flat" __tmp295717))))
                     (declare (not safe))
                     (cons '"-link" __tmp295716))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp295721 __tmp295715))
            (let ((__tmp295728 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp295722
                   (let ((__tmp295723
                          (let ((__tmp295724
                                 (let ((__tmp295725
                                        (let ((__tmp295726
                                               (let ((__tmp295727
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c290022_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c290016_
                                                       __tmp295727))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp295726
                                                  _gsc-cc-opts290028_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp295725))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp295724))))
                     (declare (not safe))
                     (cons '"-obj" __tmp295723))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp295728 __tmp295722))
            (let ((__tmp295734 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp295729
                   (let ((__tmp295730
                          (let ((__tmp295731
                                 (let ((__tmp295732
                                        (let ((__tmp295733
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o290024_
                                                       _gcc-ld-opts290030_))))
                                          (declare (not safe))
                                          (cons _path-o290018_ __tmp295733))))
                                   (declare (not safe))
                                   (cons _link-path290020_ __tmp295732))))
                            (declare (not safe))
                            (cons '"-o" __tmp295731))))
                     (declare (not safe))
                     (cons '"-shared" __tmp295730))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp295734
               __tmp295729))
            (for-each
             delete-file
             (let ((__tmp295735
                    (let ((__tmp295736
                           (let ((__tmp295737
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o290024_ '()))))
                             (declare (not safe))
                             (cons _link-path-c290022_ __tmp295737))))
                      (declare (not safe))
                      (cons _path-o290018_ __tmp295736))))
               (declare (not safe))
               (cons _path-c290016_ __tmp295735)))))))
    (define gxc#compile-output-file
      (lambda (_ctx289980_ _n289981_ _ext289982_)
        (letrec ((_module-relative-path289984_
                  (lambda (_ctx290007_)
                    (path-strip-directory
                     (let ((__tmp295738
                            (##structure-ref
                             _ctx290007_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp295738)))))
                 (_module-source-directory289985_
                  (lambda (_ctx290003_)
                    (path-directory
                     (let ((_mpath290005_
                            (##structure-ref
                             _ctx290003_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath290005_))
                           _mpath290005_
                           (let ()
                             (declare (not safe))
                             (last _mpath290005_)))))))
                 (_section-string289986_
                  (lambda (_n290001_)
                    (if (let () (declare (not safe)) (number? _n290001_))
                        (number->string _n290001_)
                        (if (let () (declare (not safe)) (symbol? _n290001_))
                            (symbol->string _n290001_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n290001_))
                                _n290001_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n290001_)))))))
                 (_file-name289987_
                  (lambda (_path289999_)
                    (if _n289981_
                        (string-append
                         _path289999_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string289986_ _n289981_))
                         _ext289982_)
                        (string-append _path289999_ _ext289982_))))
                 (_file-path289988_
                  (lambda ()
                    (let ((_$e289994_ (gxc#current-compile-output-dir)))
                      (if _$e289994_
                          ((lambda (_outdir289997_)
                             (path-expand
                              (let ((__tmp295740
                                     (let ((__tmp295741
                                            (##structure-ref
                                             _ctx289980_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp295741))))
                                (declare (not safe))
                                (_file-name289987_ __tmp295740))
                              _outdir289997_))
                           _$e289994_)
                          (path-expand
                           (let ((__tmp295739
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path289984_
                                     _ctx289980_))))
                             (declare (not safe))
                             (_file-name289987_ __tmp295739))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory289985_
                              _ctx289980_))))))))
          (let ((_path289990_
                 (let () (declare (not safe)) (_file-path289988_))))
            (let ((__tmp295742
                   (lambda ()
                     (let ((__tmp295743 (path-directory _path289990_)))
                       (declare (not safe))
                       (create-directory* __tmp295743)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp295742))
            _path289990_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx289962_)
        (letrec ((_file-name289964_
                  (lambda (_id289978_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id289978_))
                     '".scm")))
                 (_file-path289965_
                  (lambda ()
                    (let* ((_file289971_
                            (let ((__tmp295744
                                   (##structure-ref
                                    _ctx289962_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name289964_ __tmp295744)))
                           (_$e289973_ (gxc#current-compile-output-dir)))
                      (if _$e289973_
                          ((lambda (_outdir289976_)
                             (path-expand
                              _file289971_
                              (path-expand '"static" _outdir289976_)))
                           _$e289973_)
                          (path-expand _file289971_ '"static"))))))
          (let ((_path289967_
                 (let () (declare (not safe)) (_file-path289965_))))
            (let ((__tmp295745
                   (lambda ()
                     (let ((__tmp295746 (path-directory _path289967_)))
                       (declare (not safe))
                       (create-directory* __tmp295746)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp295745))
            _path289967_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx289956_ _opts289957_)
        (let ((_$e289959_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts289957_))))
          (if _$e289959_
              (values _$e289959_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx289956_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr289949_)
        (if (let () (declare (not safe)) (string? _idstr289949_))
            (let* ((_str289951_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr289949_)))
                   (_strs289953_
                    (let ()
                      (declare (not safe))
                      (string-split _str289951_ '#\/))))
              (let () (declare (not safe)) (string-join _strs289953_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr289949_))
                (let ((__tmp295747 (symbol->string _idstr289949_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp295747))
                (error '"Bad module id" _idstr289949_)))))
    (define gxc#invoke__%
      (lambda (_g295748_
               _stdout-redirection289913289917_
               _stderr-redirection289914289919_
               _program289921_
               _args289922_)
        (let* ((_stdout-redirection289924_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection289913289917_ absent-value))
                    '#f
                    _stdout-redirection289913289917_))
               (_stderr-redirection289926_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection289914289919_ absent-value))
                    '#f
                    _stderr-redirection289914289919_)))
          (let ((__tmp295749
                 (let ()
                   (declare (not safe))
                   (cons _program289921_ _args289922_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp295749))
          (let ((_proc289928_
                 (open-process
                  (let ((__tmp295750
                         (let ((__tmp295751
                                (let ((__tmp295752
                                       (let ((__tmp295753
                                              (let ((__tmp295754
                                                     (let ((__tmp295755
                                                            (let ((__tmp295756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection289926_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp295756))))
               (declare (not safe))
               (cons _stdout-redirection289924_ __tmp295755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp295754))))
                                         (declare (not safe))
                                         (cons _args289922_ __tmp295753))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp295752))))
                           (declare (not safe))
                           (cons _program289921_ __tmp295751))))
                    (declare (not safe))
                    (cons 'path: __tmp295750)))))
            (if (or _stdout-redirection289924_ _stderr-redirection289926_)
                (read-line _proc289928_ '#f)
                '#!void)
            (let ((_status289933_ (process-status _proc289928_)))
              (close-port _proc289928_)
              (if (let () (declare (not safe)) (zero? _status289933_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program289921_))))))))
    (define gxc#invoke__@
      (lambda (_keys289912289938_ . _args289940_)
        (apply gxc#invoke__%
               _keys289912289938_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys289912289938_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys289912289938_
                  'stderr-redirection:
                  absent-value))
               _args289940_)))
    (define gxc#invoke
      (lambda _args289915289946_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args289915289946_)))
    (define gxc#join!
      (lambda (_thread289906_)
        (let ((__tmp295758
               (lambda (_exn289908_)
                 (if (uncaught-exception? _exn289908_)
                     (raise (uncaught-exception-reason _exn289908_))
                     (raise _exn289908_))))
              (__tmp295757 (lambda () (thread-join! _thread289906_))))
          (declare (not safe))
          (with-catch __tmp295758 __tmp295757))))))
