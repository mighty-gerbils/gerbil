(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708337971)
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
      (lambda (_path294330_ _fun294331_)
        (with-output-to-file
         (let ((__tmp298410
                (let ()
                  (declare (not safe))
                  (cons _path294330_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp298410))
         _fun294331_)))
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
      (lambda (_gerbil-libdir294325_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir294325_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/error"
        "gerbil/runtime/interface"
        "gerbil/runtime/hash"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_dir294323_) (delete-file-or-directory _dir294323_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath294297_ _opts294298_)
        (if (let () (declare (not safe)) (string? _srcpath294297_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath294297_)))
        (let ((_outdir294300_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts294298_)))
              (_invoke-gsc?294301_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts294298_)))
              (_gsc-options294302_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts294298_)))
              (_keep-scm?294303_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts294298_)))
              (_verbosity294304_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts294298_)))
              (_optimize294305_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts294298_)))
              (_debug294306_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts294298_)))
              (_gen-ssxi294307_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts294298_))))
          (if _outdir294300_
              (let ((__tmp298411
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir294300_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp298411))
              '#!void)
          (if _optimize294305_
              (let ((__tmp298412
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp298412))
              '#!void)
          (let ((__tmp298416
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath294297_))
                   (let ((__tmp298417
                          (let ((__tmp298418
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath294297_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp298418))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp298417))))
                (__tmp298415
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp298413
                 (let ((__tmp298414
                        (let ()
                          (declare (not safe))
                          (cons _srcpath294297_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp298414))))
            (declare (not safe))
            (call-with-parameters
             __tmp298416
             gxc#current-compile-output-dir
             _outdir294300_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?294301_
             gxc#current-compile-gsc-options
             _gsc-options294302_
             gxc#current-compile-keep-scm
             _keep-scm?294303_
             gxc#current-compile-verbose
             _verbosity294304_
             gxc#current-compile-optimize
             _optimize294305_
             gxc#current-compile-debug
             _debug294306_
             gxc#current-compile-generate-ssxi
             _gen-ssxi294307_
             gxc#current-compile-timestamp
             __tmp298415
             gxc#current-compile-context
             __tmp298413
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath294316_)
        (let ((_opts294318_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath294316_ _opts294318_))))
    (define gxc#compile-module
      (lambda _g298420_
        (let ((_g298419_ (let () (declare (not safe)) (##length _g298420_))))
          (cond ((let () (declare (not safe)) (##fx= _g298419_ 1))
                 (apply (lambda (_srcpath294316_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath294316_)))
                        _g298420_))
                ((let () (declare (not safe)) (##fx= _g298419_ 2))
                 (apply (lambda (_srcpath294320_ _opts294321_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath294320_
                             _opts294321_)))
                        _g298420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g298420_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath294273_ _opts294274_)
        (if (let () (declare (not safe)) (string? _srcpath294273_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath294273_)))
        (let ((_outdir294276_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts294274_)))
              (_invoke-gsc?294277_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts294274_)))
              (_gsc-options294278_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts294274_)))
              (_keep-scm?294279_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts294274_)))
              (_verbosity294280_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts294274_)))
              (_debug294281_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts294274_))))
          (if _outdir294276_
              (let ((__tmp298421
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir294276_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp298421))
              '#!void)
          (let ((__tmp298425
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath294273_))
                   (let ((__tmp298426
                          (let ((__tmp298427
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath294273_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp298427))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp298426
                      _opts294274_))))
                (__tmp298424
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp298422
                 (let ((__tmp298423
                        (let ()
                          (declare (not safe))
                          (cons _srcpath294273_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp298423))))
            (declare (not safe))
            (call-with-parameters
             __tmp298425
             gxc#current-compile-output-dir
             _outdir294276_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?294277_
             gxc#current-compile-gsc-options
             _gsc-options294278_
             gxc#current-compile-keep-scm
             _keep-scm?294279_
             gxc#current-compile-verbose
             _verbosity294280_
             gxc#current-compile-debug
             _debug294281_
             gxc#current-compile-timestamp
             __tmp298424
             gxc#current-compile-context
             __tmp298422
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath294289_)
        (let ((_opts294291_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath294289_ _opts294291_))))
    (define gxc#compile-exe
      (lambda _g298429_
        (let ((_g298428_ (let () (declare (not safe)) (##length _g298429_))))
          (cond ((let () (declare (not safe)) (##fx= _g298428_ 1))
                 (apply (lambda (_srcpath294289_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath294289_)))
                        _g298429_))
                ((let () (declare (not safe)) (##fx= _g298428_ 2))
                 (apply (lambda (_srcpath294293_ _opts294294_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath294293_ _opts294294_)))
                        _g298429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g298429_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx294269_ _opts294270_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts294270_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx294269_
               _opts294270_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx294269_
               _opts294270_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx294152_ _opts294153_)
        (letrec ((_generate-stub294155_
                  (lambda (_builtin-modules294265_)
                    (let ((_mod-main294267_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx294152_ 'main))))
                      (write (let ((__tmp298430
                                    (let ((__tmp298431
                                           (let ((__tmp298432
                                                  (let ((__tmp298433
                                                         (let ((__tmp298435
                                                                (let ((__tmp298436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules294265_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp298436)))
                       (__tmp298434
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp298435 __tmp298434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp298433))))
                                             (declare (not safe))
                                             (cons __tmp298432 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp298431))))
                               (declare (not safe))
                               (cons 'define __tmp298430)))
                      (write (let ((__tmp298437
                                    (let ((__tmp298476
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp298438
                                           (let ((__tmp298439
                                                  (let ((__tmp298440
                                                         (let ((__tmp298464
                                                                (let ((__tmp298465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp298466
                                      (let ((__tmp298474
                                             (let ((__tmp298475
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp298475)))
                                            (__tmp298467
                                             (let ((__tmp298468
                                                    (let ((__tmp298469
                                                           (let ((__tmp298470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp298471
                                 (let ((__tmp298472
                                        (let ((__tmp298473
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp298473 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp298472))))
                            (declare (not safe))
                            (cons __tmp298471 '()))))
                     (declare (not safe))
                     (cons _mod-main294267_ __tmp298470))))
              (declare (not safe))
              (cons 'apply __tmp298469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp298468 '()))))
                                        (declare (not safe))
                                        (cons __tmp298474 __tmp298467))))
                                 (declare (not safe))
                                 (cons '() __tmp298466))))
                          (declare (not safe))
                          (cons 'lambda __tmp298465)))
                       (__tmp298441
                        (let ((__tmp298442
                               (let ((__tmp298443
                                      (let ((__tmp298444
                                             (let ((__tmp298455
                                                    (let ((__tmp298456
                                                           (let ((__tmp298457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp298458
                                 (let ((__tmp298459
                                        (let ((__tmp298460
                                               (let ((__tmp298461
                                                      (let ((__tmp298462
                                                             (let ((__tmp298463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp298463 '()))))
                (declare (not safe))
                (cons 'force-output __tmp298462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp298461 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp298460))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp298459))))
                            (declare (not safe))
                            (cons __tmp298458 '()))))
                     (declare (not safe))
                     (cons 'void __tmp298457))))
              (declare (not safe))
              (cons 'with-catch __tmp298456)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp298445
                                                    (let ((__tmp298446
                                                           (let ((__tmp298447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp298448
                                 (let ((__tmp298449
                                        (let ((__tmp298450
                                               (let ((__tmp298451
                                                      (let ((__tmp298452
                                                             (let ((__tmp298453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp298454
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp298454 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp298453))))
                (declare (not safe))
                (cons __tmp298452 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp298451))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp298450))))
                                   (declare (not safe))
                                   (cons __tmp298449 '()))))
                            (declare (not safe))
                            (cons 'void __tmp298448))))
                     (declare (not safe))
                     (cons 'with-catch __tmp298447))))
              (declare (not safe))
              (cons __tmp298446 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp298455
                                                     __tmp298445))))
                                        (declare (not safe))
                                        (cons '() __tmp298444))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp298443))))
                          (declare (not safe))
                          (cons __tmp298442 '()))))
                   (declare (not safe))
                   (cons __tmp298464 __tmp298441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp298440))))
                                             (declare (not safe))
                                             (cons __tmp298439 '()))))
                                      (declare (not safe))
                                      (cons __tmp298476 __tmp298438))))
                               (declare (not safe))
                               (cons 'define __tmp298437)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts294156_
                  (lambda (_libgerbil294263_)
                    (call-with-input-file
                     (string-append _libgerbil294263_ '".ldd")
                     read)))
                 (_replace-extension294157_
                  (lambda (_path294260_ _ext294261_)
                    (string-append
                     (path-strip-extension _path294260_)
                     _ext294261_)))
                 (_not-exclude-module?294158_
                  (lambda (_ctx294256_)
                    (let ((_id-str294258_
                           (symbol->string
                            (##structure-ref
                             _ctx294256_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp298478
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str294258_))))
                            (declare (not safe))
                            (not __tmp298478))
                          (let ((__tmp298477
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str294258_))))
                            (declare (not safe))
                            (not __tmp298477))
                          '#f))))
                 (_not-file-empty?294159_
                  (lambda (_path294254_)
                    (let ((__tmp298479
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path294254_))))
                      (declare (not safe))
                      (not __tmp298479))))
                 (_compile-stub294160_
                  (lambda (_output-scm294167_ _output-bin294168_)
                    (let* ((_gerbil-home294170_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir294172_
                            (path-expand '"lib" _gerbil-home294170_))
                           (_gerbil-staticdir294174_
                            (path-expand '"static" _gerbil-libdir294172_))
                           (_gxlink294176_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir294172_))
                           (_tmp294178_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path294182_
                            (lambda (_f294180_)
                              (path-expand
                               (path-strip-directory _f294180_)
                               _tmp294178_)))
                           (_deps294184_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx294152_)))
                           (_deps294186_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?294158_
                                      _deps294184_)))
                           (_src-deps-scm294188_
                            (map gxc#find-static-module-file _deps294186_))
                           (_src-deps-scm294190_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?294159_
                                      _src-deps-scm294188_)))
                           (_src-deps-scm294192_
                            (map path-expand _src-deps-scm294190_))
                           (_deps-scm294194_
                            (map _tmp-path294182_ _src-deps-scm294192_))
                           (_deps-c294200_
                            (map (lambda (_g294195294197_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension294157_
                                      _g294195294197_
                                      '".c")))
                                 _deps-scm294194_))
                           (_deps-o294206_
                            (map (lambda (_g294201294203_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension294157_
                                      _g294201294203_
                                      '".o")))
                                 _deps-scm294194_))
                           (_src-bin-scm294208_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx294152_)))
                           (_src-bin-scm294210_
                            (path-expand _src-bin-scm294208_))
                           (_bin-scm294212_
                            (let ()
                              (declare (not safe))
                              (_tmp-path294182_ _src-bin-scm294210_)))
                           (_bin-c294214_
                            (let ()
                              (declare (not safe))
                              (_replace-extension294157_
                               _bin-scm294212_
                               '".c")))
                           (_bin-o294216_
                            (let ()
                              (declare (not safe))
                              (_replace-extension294157_
                               _bin-scm294212_
                               '".o")))
                           (_output-bin294218_
                            (path-expand _output-bin294168_))
                           (_output-scm294220_
                            (path-expand _output-scm294167_))
                           (_output-c294222_
                            (let ()
                              (declare (not safe))
                              (_replace-extension294157_
                               _output-scm294220_
                               '".c")))
                           (_output-o294224_
                            (let ()
                              (declare (not safe))
                              (_replace-extension294157_
                               _output-scm294220_
                               '".o")))
                           (_output_-c294226_
                            (let ()
                              (declare (not safe))
                              (_replace-extension294157_
                               _output-scm294220_
                               '"_.c")))
                           (_output_-o294228_
                            (let ()
                              (declare (not safe))
                              (_replace-extension294157_
                               _output-scm294220_
                               '"_.o")))
                           (_gsc-link-opts294230_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts294232_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts294234_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir294174_)))
                           (_output-ld-opts294236_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a294238_
                            (path-expand '"libgerbil.a" _gerbil-libdir294172_))
                           (_libgerbil.so294240_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir294172_))
                           (_libgerbil-ld-opts294242_
                            (if (file-exists? _libgerbil.so294240_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts294156_
                                   _libgerbil.so294240_))
                                (if (file-exists? _libgerbil.a294238_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts294156_
                                       _libgerbil.a294238_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a294238_
                                       _libgerbil.so294240_)))))
                           (_rpath294244_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir294172_)))
                           (_builtin-modules294248_
                            (map (lambda (_mod294246_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod294246_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx294152_ _deps294186_)))))
                      (let ((__tmp298480
                             (lambda ()
                               (let ((__tmp298481
                                      (path-directory _output-bin294218_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp298481)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp298480))
                      (let ((__tmp298482
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub294155_
                                  _builtin-modules294248_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm294220_
                         __tmp298482))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp298483
                                   (lambda () (create-directory _tmp294178_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp298483))
                            (for-each
                             copy-file
                             _src-deps-scm294192_
                             _deps-scm294194_)
                            (copy-file _src-bin-scm294210_ _bin-scm294212_)
                            (let ((__tmp298491
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp298484
                                   (let ((__tmp298485
                                          (let ((__tmp298486
                                                 (let ((__tmp298487
                                                        (let ((__tmp298488
                                                               (let ((__tmp298489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp298490
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm294220_ '()))))
                                (declare (not safe))
                                (cons _bin-scm294212_ __tmp298490))))
                         (declare (not safe))
                         (foldr1 cons __tmp298489 _deps-scm294194_))))
                  (declare (not safe))
                  (foldr1 cons __tmp298488 _gsc-link-opts294230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink294176_
                                                         __tmp298487))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp298486))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp298485))))
                              (declare (not safe))
                              (gxc#invoke __tmp298491 __tmp298484))
                            (let ((__tmp298499
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp298492
                                   (let ((__tmp298493
                                          (let ((__tmp298494
                                                 (let ((__tmp298495
                                                        (let ((__tmp298496
                                                               (let ((__tmp298497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp298498
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c294226_ '()))))
                                (declare (not safe))
                                (cons _output-c294222_ __tmp298498))))
                         (declare (not safe))
                         (cons _bin-c294214_ __tmp298497))))
                  (declare (not safe))
                  (foldr1 cons __tmp298496 _deps-c294200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp298495
                                                           _gsc-static-opts294234_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp298494
                                                    _gsc-cc-opts294232_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp298493))))
                              (declare (not safe))
                              (gxc#invoke __tmp298499 __tmp298492))
                            (let ((__tmp298512
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp298500
                                   (let ((__tmp298501
                                          (let ((__tmp298502
                                                 (let ((__tmp298503
                                                        (let ((__tmp298504
                                                               (let ((__tmp298505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp298506
                                     (let ((__tmp298507
                                            (let ((__tmp298508
                                                   (let ((__tmp298509
                                                          (let ((__tmp298510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp298511
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts294242_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp298511))))
                    (declare (not safe))
                    (cons _gerbil-libdir294172_ __tmp298510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp298509))))
                                              (declare (not safe))
                                              (cons _rpath294244_
                                                    __tmp298508))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp298507
                                               _output-ld-opts294236_))))
                                (declare (not safe))
                                (cons _output_-o294228_ __tmp298506))))
                         (declare (not safe))
                         (cons _output-o294224_ __tmp298505))))
                  (declare (not safe))
                  (cons _bin-o294216_ __tmp298504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp298503
                                                           _deps-o294206_))))
                                            (declare (not safe))
                                            (cons _output-bin294218_
                                                  __tmp298502))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp298501))))
                              (declare (not safe))
                              (gxc#invoke __tmp298512 __tmp298500))
                            (for-each
                             delete-file
                             (let ((__tmp298513
                                    (let ((__tmp298514
                                           (let ((__tmp298515
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o294228_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o294224_
                                                   __tmp298515))))
                                      (declare (not safe))
                                      (cons _output_-c294226_ __tmp298514))))
                               (declare (not safe))
                               (cons _output-c294222_ __tmp298513)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp294178_)))
                          '#!void)))))
          (let* ((_output-bin294162_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx294152_ _opts294153_)))
                 (_output-scm294164_
                  (string-append _output-bin294162_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub294160_ _output-scm294164_ _output-bin294162_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm294164_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx293977_ _opts293978_)
        (letrec ((_reset-declare293980_
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
                 (_generate-stub293981_
                  (lambda (_deps294143_)
                    (let ((_mod-main294145_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx293977_ 'main)))
                          (_reset-decl294146_
                           (let ()
                             (declare (not safe))
                             (_reset-declare293980_)))
                          (_user-decl294147_
                           (let ()
                             (declare (not safe))
                             (_user-declare293982_))))
                      (for-each
                       (lambda (_dep294149_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl294146_)
                         (newline)
                         (if _user-decl294147_
                             (begin (write _user-decl294147_) (newline))
                             '#!void)
                         (write (let ((__tmp298516
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep294149_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp298516)))
                         (newline))
                       _deps294143_)
                      (write (let ((__tmp298517
                                    (let ((__tmp298530
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp298518
                                           (let ((__tmp298526
                                                  (let ((__tmp298527
                                                         (let ((__tmp298528
                                                                (let ((__tmp298529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp298529))))
                   (declare (not safe))
                   (cons __tmp298528 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp298527)))
                                                 (__tmp298519
                                                  (let ((__tmp298520
                                                         (let ((__tmp298521
                                                                (let ((__tmp298522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp298523
                                      (let ((__tmp298524
                                             (let ((__tmp298525
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp298525 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp298524))))
                                 (declare (not safe))
                                 (cons __tmp298523 '()))))
                          (declare (not safe))
                          (cons _mod-main294145_ __tmp298522))))
                   (declare (not safe))
                   (cons 'apply __tmp298521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp298520 '()))))
                                             (declare (not safe))
                                             (cons __tmp298526 __tmp298519))))
                                      (declare (not safe))
                                      (cons __tmp298530 __tmp298518))))
                               (declare (not safe))
                               (cons 'define __tmp298517)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare293982_
                  (lambda ()
                    (let* ((_gsc-opts294048_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts293978_)))
                           (_gsc-prelude294050_
                            (if _gsc-opts294048_
                                (member '"-prelude" _gsc-opts294048_)
                                '#f))
                           (_gsc-prelude294052_
                            (if _gsc-prelude294050_
                                (read (open-input-string
                                       (cadr _gsc-prelude294050_)))
                                '#f)))
                      (let _lp294055_ ((_rest294057_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude294052_ '())))
                                       (_user-decls294058_ '()))
                        (let* ((_rest294059294067_ _rest294057_)
                               (_else294061294075_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls294058_))
                                      '#f
                                      (let ((__tmp298531
                                             (reverse _user-decls294058_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp298531)))))
                               (_K294063294131_
                                (lambda (_rest294078_ _expr294079_)
                                  (let* ((_expr294080294092_ _expr294079_)
                                         (_else294083294100_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp294055_
                                               _rest294078_
                                               _user-decls294058_)))))
                                    (let ((_K294088294121_
                                           (lambda (_decls294119_)
                                             (let ((__tmp298532
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls294058_
                                                              _decls294119_))))
                                               (declare (not safe))
                                               (_lp294055_
                                                _rest294078_
                                                __tmp298532))))
                                          (_K294085294106_
                                           (lambda (_exprs294104_)
                                             (let ((__tmp298533
                                                    (append _exprs294104_
                                                            _rest294078_)))
                                               (declare (not safe))
                                               (_lp294055_
                                                __tmp298533
                                                _user-decls294058_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr294080294092_))
                                          (let ((_tl294090294126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr294080294092_)))
                                                (_hd294089294124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr294080294092_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd294089294124_
                                                         'declare))
                                                (let ((_decls294129_
                                                       _tl294090294126_))
                                                  (declare (not safe))
                                                  (_K294088294121_
                                                   _decls294129_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd294089294124_
                                                             'begin))
                                                    (let ((_exprs294114_
                                                           _tl294090294126_))
                                                      (declare (not safe))
                                                      (_K294085294106_
                                                       _exprs294114_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else294083294100_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else294083294100_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest294059294067_))
                              (let ((_hd294064294134_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest294059294067_)))
                                    (_tl294065294136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest294059294067_))))
                                (let* ((_expr294139_ _hd294064294134_)
                                       (_rest294141_ _tl294065294136_))
                                  (declare (not safe))
                                  (_K294063294131_ _rest294141_ _expr294139_)))
                              (let ()
                                (declare (not safe))
                                (_else294061294075_))))))))
                 (_compile-stub293983_
                  (lambda (_output-scm293990_ _output-bin293991_)
                    (let* ((_gerbil-home293993_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir293995_
                            (path-expand '"lib" _gerbil-home293993_))
                           (_runtime293997_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp293999_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home293993_))
                           (_include-gambit-sharp294001_
                            (string-append
                             '"(include \""
                             _gambit-sharp293999_
                             '"\")"))
                           (_bin-scm294003_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx293977_)))
                           (_deps294005_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx293977_)))
                           (_deps294007_
                            (map gxc#find-static-module-file _deps294005_))
                           (_deps294012_
                            (let ((__tmp298534
                                   (lambda (_$obj294009_)
                                     (let ((__tmp298535
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj294009_))))
                                       (declare (not safe))
                                       (not __tmp298535)))))
                              (declare (not safe))
                              (filter __tmp298534 _deps294007_)))
                           (_deps294016_
                            (let ((__tmp298536
                                   (lambda (_f294014_)
                                     (let ((__tmp298537
                                            (member _f294014_
                                                    _runtime293997_)))
                                       (declare (not safe))
                                       (not __tmp298537)))))
                              (declare (not safe))
                              (filter __tmp298536 _deps294012_)))
                           (_output-base294018_
                            (string-append
                             (path-strip-extension _output-scm293990_)))
                           (_output-c294020_
                            (string-append _output-base294018_ '".c"))
                           (_output-o294022_
                            (string-append _output-base294018_ '".o"))
                           (_output-c_294024_
                            (string-append _output-base294018_ '"_.c"))
                           (_output-o_294026_
                            (string-append _output-base294018_ '"_.o"))
                           (_gsc-link-opts294028_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts294030_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts294032_
                            (let ((__tmp298538
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir293995_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp298538)))
                           (_output-ld-opts294034_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros294036_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp298540
                                       (let ((__tmp298541
                                              (let ((__tmp298542
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp294001_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp298542))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp298541))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp298540))
                                (let ((__tmp298539
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp294001_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp298539))))
                           (_gsc-link-opts294038_
                            (append _gsc-link-opts294028_
                                    _gsc-gx-macros294036_))
                           (_rpath294040_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir293995_)))
                           (_default-ld-options294042_
                            (let ((__tmp298543
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp298543))))
                      (let ((__tmp298544
                             (lambda ()
                               (let ((__tmp298545
                                      (path-directory _output-bin293991_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp298545)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp298544))
                      (let ((__tmp298546
                             (lambda ()
                               (let ((__tmp298547
                                      (let ((__tmp298548
                                             (let ((__tmp298549
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm294003_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp298549
                                                       _deps294016_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp298548
                                                _runtime293997_))))
                                 (declare (not safe))
                                 (_generate-stub293981_ __tmp298547)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm293990_
                         __tmp298546))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp298555
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp298550
                                   (let ((__tmp298551
                                          (let ((__tmp298552
                                                 (let ((__tmp298553
                                                        (let ((__tmp298554
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm293990_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp298554 _gsc-link-opts294038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_294024_
                                                         __tmp298553))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp298552))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp298551))))
                              (declare (not safe))
                              (gxc#invoke __tmp298555 __tmp298550))
                            (let ((__tmp298561
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp298556
                                   (let ((__tmp298557
                                          (let ((__tmp298558
                                                 (let ((__tmp298559
                                                        (let ((__tmp298560
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_294024_ '()))))
                  (declare (not safe))
                  (cons _output-c294020_ __tmp298560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp298559
                                                           _gsc-static-opts294032_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp298558
                                                    _gsc-cc-opts294030_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp298557))))
                              (declare (not safe))
                              (gxc#invoke __tmp298561 __tmp298556))
                            (let ((__tmp298571
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp298562
                                   (let ((__tmp298563
                                          (let ((__tmp298564
                                                 (let ((__tmp298565
                                                        (let ((__tmp298566
                                                               (let ((__tmp298567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp298568
                                     (let ((__tmp298569
                                            (let ((__tmp298570
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options294042_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir293995_
                                                    __tmp298570))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp298569))))
                                (declare (not safe))
                                (cons _rpath294040_ __tmp298568))))
                         (declare (not safe))
                         (foldr1 cons __tmp298567 _output-ld-opts294034_))))
                  (declare (not safe))
                  (cons _output-o_294026_ __tmp298566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o294022_
                                                         __tmp298565))))
                                            (declare (not safe))
                                            (cons _output-bin293991_
                                                  __tmp298564))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp298563))))
                              (declare (not safe))
                              (gxc#invoke __tmp298571 __tmp298562)))
                          '#!void)))))
          (let* ((_output-bin293985_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx293977_ _opts293978_)))
                 (_output-scm293987_
                  (string-append _output-bin293985_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub293983_ _output-scm293987_ _output-bin293985_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm293987_))))))
    (define gxc#find-export-binding
      (lambda (_ctx293927_ _id293928_)
        (let ((_$e293974_
               (let ((__tmp298573
                      (lambda (_e293929293931_)
                        (let* ((_g293933293943_ _e293929293931_)
                               (_else293935293951_ (lambda () '#f))
                               (_K293937293955_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g293933293943_
                                 'gx#module-export::t))
                              (let* ((_e293938293958_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g293933293943_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e293939293961_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g293933293943_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e293940293964_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g293933293943_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e293940293964_ '0))
                                    (let ((_e293941293967_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g293933293943_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g293969293971_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g293969293971_
                                                    _id293928_)))
                                           _e293941293967_)
                                          (let ()
                                            (declare (not safe))
                                            (_K293937293955_))
                                          (let ()
                                            (declare (not safe))
                                            (_else293935293951_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else293935293951_))))
                              (let ()
                                (declare (not safe))
                                (_else293935293951_))))))
                     (__tmp298572
                      (##structure-ref
                       _ctx293927_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp298573 __tmp298572))))
          (if _$e293974_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e293974_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx293919_ _id293920_)
        (let ((_$e293922_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx293919_ _id293920_))))
          (if _$e293922_
              ((lambda (_bind293925_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind293925_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id293920_)))
                 (##structure-ref _bind293925_ '1 gx#binding::t '#f))
               _$e293922_)
              (let ((__tmp298574
                     (##structure-ref
                      _ctx293919_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp298574
                 _id293920_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx293806_)
        (letrec* ((_ht293808_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template293809_
                   (lambda (_in293871_ _phi293872_)
                     (let ((_iphi293874_
                            (fx+ _phi293872_
                                 (##direct-structure-ref
                                  _in293871_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports293875_
                            (##structure-ref
                             (##direct-structure-ref
                              _in293871_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp293877_ ((_rest293879_ _imports293875_)
                                        (_r293880_ '()))
                         (let* ((_rest293881293889_ _rest293879_)
                                (_else293883293897_ (lambda () _r293880_))
                                (_K293885293907_
                                 (lambda (_rest293900_ _in293901_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in293901_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi293874_))
                                           (let ((__tmp298581
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in293901_
                                                          _r293880_))))
                                             (declare (not safe))
                                             (_lp293877_
                                              _rest293900_
                                              __tmp298581))
                                           (let ()
                                             (declare (not safe))
                                             (_lp293877_
                                              _rest293900_
                                              _r293880_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in293901_
                                              'gx#module-import::t))
                                           (let ((_iphi293903_
                                                  (fx+ _phi293872_
                                                       (##direct-structure-ref
                                                        _in293901_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi293903_))
                                                 (let ((__tmp298579
                                                        (let ((__tmp298580
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in293901_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp298580 _r293880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp293877_
                                                    _rest293900_
                                                    __tmp298579))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp293877_
                                                    _rest293900_
                                                    _r293880_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in293901_
                                                  'gx#import-set::t))
                                               (let ((_xphi293905_
                                                      (fx+ _iphi293874_
                                                           (##direct-structure-ref
                                                            _in293901_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi293905_))
                                                     (let ((__tmp298577
                                                            (let ((__tmp298578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in293901_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp298578 _r293880_))))
               (declare (not safe))
               (_lp293877_ _rest293900_ __tmp298577))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi293905_)
                                                         (let ((__tmp298575
                                                                (let ((__tmp298576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template293809_
                                  _in293901_
                                  _iphi293874_))))
                          (declare (not safe))
                          (foldl1 cons _r293880_ __tmp298576))))
                   (declare (not safe))
                   (_lp293877_ _rest293900_ __tmp298575))
                 (let ()
                   (declare (not safe))
                   (_lp293877_ _rest293900_ _r293880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp293877_
                                                  _rest293900_
                                                  _r293880_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest293881293889_))
                               (let ((_hd293886293910_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest293881293889_)))
                                     (_tl293887293912_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest293881293889_))))
                                 (let* ((_in293915_ _hd293886293910_)
                                        (_rest293917_ _tl293887293912_))
                                   (declare (not safe))
                                   (_K293885293907_ _rest293917_ _in293915_)))
                               (let ()
                                 (declare (not safe))
                                 (_else293883293897_))))))))
                  (_find-deps293810_
                   (lambda (_rest293817_ _deps293818_)
                     (let* ((_rest293819293827_ _rest293817_)
                            (_else293821293835_ (lambda () _deps293818_))
                            (_K293823293859_
                             (lambda (_rest293838_ _hd293839_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd293839_
                                      'gx#module-context::t))
                                   (let ((_id293841_
                                          (##structure-ref
                                           _hd293839_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports293842_
                                          (##structure-ref
                                           _hd293839_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht293808_ _id293841_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps293810_
                                            _rest293838_
                                            _deps293818_))
                                         (let ((_$e293844_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd293839_))))
                                           (if _$e293844_
                                               ((lambda (_pre293847_)
                                                  (let ((_xdeps293849_
                                                         (let ((__tmp298594
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre293847_ _imports293842_))))
                   (declare (not safe))
                   (_find-deps293810_ __tmp298594 _deps293818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht293808_
                                                       _id293841_
                                                       _hd293839_))
                                                    (let ((__tmp298595
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd293839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps293849_))))
              (declare (not safe))
              (_find-deps293810_ _rest293838_ __tmp298595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e293844_)
                                               (let ((_xdeps293851_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps293810_
                                                         _imports293842_
                                                         _deps293818_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht293808_
                                                    _id293841_
                                                    _hd293839_))
                                                 (let ((__tmp298593
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd293839_
                                                                _xdeps293851_))))
                                                   (declare (not safe))
                                                   (_find-deps293810_
                                                    _rest293838_
                                                    __tmp298593)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd293839_
                                          'gx#prelude-context::t))
                                       (let ((_id293853_
                                              (##structure-ref
                                               _hd293839_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht293808_
                                                _id293853_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps293810_
                                                _rest293838_
                                                _deps293818_))
                                             (let ((_xdeps293855_
                                                    (let ((__tmp298591
                                                           (##structure-ref
                                                            _hd293839_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps293810_
                                                       __tmp298591
                                                       _deps293818_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht293808_
                                                      _id293853_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps293810_
                                                      _rest293838_
                                                      _xdeps293855_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht293808_
                                                        _id293853_
                                                        _hd293839_))
                                                     (let ((__tmp298592
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd293839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps293855_))))
               (declare (not safe))
               (_find-deps293810_ _rest293838_ __tmp298592)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd293839_
                                              'gx#module-import::t))
                                           (if (let ((__tmp298590
                                                      (##direct-structure-ref
                                                       _hd293839_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp298590))
                                               (let ((__tmp298588
                                                      (let ((__tmp298589
                                                             (##direct-structure-ref
                                                              _hd293839_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp298589
                                                              _rest293838_))))
                                                 (declare (not safe))
                                                 (_find-deps293810_
                                                  __tmp298588
                                                  _deps293818_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps293810_
                                                  _rest293838_
                                                  _deps293818_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd293839_
                                                  'gx#module-export::t))
                                               (let ((__tmp298586
                                                      (let ((__tmp298587
                                                             (##direct-structure-ref
                                                              _hd293839_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp298587
                                                              _rest293838_))))
                                                 (declare (not safe))
                                                 (_find-deps293810_
                                                  __tmp298586
                                                  _deps293818_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd293839_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp298585
                                                              (##direct-structure-ref
                                                               _hd293839_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp298585))
                                                       (let ((__tmp298583
                                                              (let ((__tmp298584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd293839_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp298584 _rest293838_))))
                 (declare (not safe))
                 (_find-deps293810_ __tmp298583 _deps293818_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd293839_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps293857_
                           (let ()
                             (declare (not safe))
                             (_import-set-template293809_ _hd293839_ '0)))
                          (__tmp298582
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest293838_ _xdeps293857_))))
                     (declare (not safe))
                     (_find-deps293810_ __tmp298582 _deps293818_))
                   (let ()
                     (declare (not safe))
                     (_find-deps293810_ _rest293838_ _deps293818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd293839_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest293819293827_))
                           (let ((_hd293824293862_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest293819293827_)))
                                 (_tl293825293864_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest293819293827_))))
                             (let* ((_hd293867_ _hd293824293862_)
                                    (_rest293869_ _tl293825293864_))
                               (declare (not safe))
                               (_K293823293859_ _rest293869_ _hd293867_)))
                           (let ()
                             (declare (not safe))
                             (_else293821293835_)))))))
          (reverse (let ((__tmp298596
                          (let ((__tmp298597
                                 (let ((_$e293812_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx293806_))))
                                   (if _$e293812_
                                       ((lambda (_pre293815_)
                                          (let ((__tmp298598
                                                 (##structure-ref
                                                  _ctx293806_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre293815_ __tmp298598)))
                                        _$e293812_)
                                       (##structure-ref
                                        _ctx293806_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps293810_ __tmp298597 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp298596))))))
    (define gxc#find-static-module-file
      (lambda (_ctx293737_)
        (let* ((_context-id293739_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx293737_
                       'gx#module-context::t))
                    (##structure-ref _ctx293737_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx293737_)))
               (_scm293741_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id293739_))
                 '".scm"))
               (_dirs293743_ (gx#current-expander-module-library-path))
               (_dirs293749_
                (let ((_user-libpath293745_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath293745_
                      (let ((_user-libpath293747_
                             (path-expand '"lib" _user-libpath293745_)))
                        (if (member _user-libpath293747_ _dirs293743_)
                            _dirs293743_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath293747_ _dirs293743_))))
                      _dirs293743_)))
               (_dirs293758_
                (let ((_$e293751_ (gxc#current-compile-output-dir)))
                  (if _$e293751_
                      ((lambda (_g293753293755_)
                         (let ()
                           (declare (not safe))
                           (cons _g293753293755_ _dirs293749_)))
                       _$e293751_)
                      _dirs293749_)))
               (_dirs293764_
                (map (lambda (_g293759293761_)
                       (path-expand '"static" _g293759293761_))
                     _dirs293758_)))
          (let _lp293767_ ((_rest293769_ _dirs293764_))
            (let* ((_rest293770293778_ _rest293769_)
                   (_else293772293786_
                    (lambda ()
                      (let ((__tmp298599
                             (##structure-ref
                              _ctx293737_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp298599
                         _scm293741_))))
                   (_K293774293794_
                    (lambda (_rest293789_ _dir293790_)
                      (let ((_path293792_
                             (path-expand _scm293741_ _dir293790_)))
                        (if (file-exists? _path293792_)
                            _path293792_
                            (let ()
                              (declare (not safe))
                              (_lp293767_ _rest293789_)))))))
              (if (let () (declare (not safe)) (##pair? _rest293770293778_))
                  (let ((_hd293775293797_
                         (let ()
                           (declare (not safe))
                           (##car _rest293770293778_)))
                        (_tl293776293799_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest293770293778_))))
                    (let* ((_dir293802_ _hd293775293797_)
                           (_rest293804_ _tl293776293799_))
                      (declare (not safe))
                      (_K293774293794_ _rest293804_ _dir293802_)))
                  (let () (declare (not safe)) (_else293772293786_))))))))
    (define gxc#file-empty?
      (lambda (_path293735_)
        (let ((__tmp298600 (file-info-size (file-info _path293735_ '#t))))
          (declare (not safe))
          (zero? __tmp298600))))
    (define gxc#compile-top-module
      (lambda (_ctx293724_)
        (let ((__tmp298604
               (lambda ()
                 (let ((__tmp298605
                        (##structure-ref
                         _ctx293724_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp298605))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp298606
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx293724_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp298606))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx293724_))
                 (if (let ((__tmp298609
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx293724_))))
                       (declare (not safe))
                       (null? __tmp298609))
                     (let* ((_thr1293729_
                             (let ((__tmp298607
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx293724_)))))
                               (declare (not safe))
                               (spawn __tmp298607)))
                            (_thr2293732_
                             (let ((__tmp298608
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx293724_)))))
                               (declare (not safe))
                               (spawn __tmp298608))))
                       (let () (declare (not safe)) (gxc#join! _thr1293729_))
                       (let () (declare (not safe)) (gxc#join! _thr2293732_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx293724_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx293724_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx293724_))
                     '#!void)))
              (__tmp298603
               (let ((__obj298408
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj298408)
                 __obj298408))
              (__tmp298602 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp298601 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp298604
           gx#current-expander-context
           _ctx293724_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp298603
           gxc#current-compile-runtime-sections
           __tmp298602
           gxc#current-compile-runtime-names
           __tmp298601))))
    (define gxc#collect-bindings
      (lambda (_ctx293722_)
        (let ((__tmp298610
               (##structure-ref _ctx293722_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp298610))))
    (define gxc#compile-runtime-code
      (lambda (_ctx293668_)
        (letrec ((_compile1293670_
                  (lambda (_ctx293711_)
                    (let* ((_code293713_
                            (##structure-ref
                             _ctx293711_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt293717_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code293713_))
                                (let ((_idstr293715_
                                       (let ((__tmp298611
                                              (##structure-ref
                                               _ctx293711_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp298611))))
                                  (string-append _idstr293715_ '"__0"))
                                '#f)))
                      (if _rt293717_
                          (begin
                            (let ((__tmp298612
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp298612 _ctx293711_ _rt293717_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code293672_
                               _ctx293711_
                               _code293713_)))
                          (let ((_path293720_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx293711_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path293720_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code293673_
                         _ctx293711_
                         _code293713_
                         _rt293717_)))))
                 (_context-timestamp293671_
                  (lambda (_ctx293709_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx293709_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code293672_
                  (lambda (_ctx293691_ _code293692_)
                    (let* ((_lifts293694_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code293697_
                            (let ((__tmp298615
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code293692_))))
                                  (__tmp298614
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp298613
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp298615
                               gx#current-expander-context
                               _ctx293691_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts293694_
                               gxc#current-compile-marks
                               __tmp298614
                               gxc#current-compile-identifiers
                               __tmp298613)))
                           (_runtime-code293699_
                            (if (let ((__tmp298619 (unbox _lifts293694_)))
                                  (declare (not safe))
                                  (null? __tmp298619))
                                _runtime-code293697_
                                (let ((__tmp298616
                                       (let ((__tmp298618
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code293697_
                                                      '())))
                                             (__tmp298617
                                              (reverse (unbox _lifts293694_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp298618
                                                 __tmp298617))))
                                  (declare (not safe))
                                  (cons 'begin __tmp298616))))
                           (_runtime-code293701_
                            (let ((__tmp298620
                                   (let ((__tmp298622
                                          (let ((__tmp298623
                                                 (let ((__tmp298626
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp293671_
                                                           _ctx293691_)))
                                                       (__tmp298624
                                                        (let ((__tmp298625
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp298625
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp298626
                                                         __tmp298624))))
                                            (declare (not safe))
                                            (cons 'define __tmp298623)))
                                         (__tmp298621
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code293699_ '()))))
                                     (declare (not safe))
                                     (cons __tmp298622 __tmp298621))))
                              (declare (not safe))
                              (cons 'begin __tmp298620)))
                           (_scm0293703_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx293691_
                               '0
                               '".scm"))))
                      (let ((_scms293706_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx293691_))))
                        (let ((__tmp298627
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0293703_
                                    _runtime-code293701_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp298627
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms293706_)
                            (delete-file _scms293706_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0293703_
                           '" => "
                           _scms293706_))
                        (copy-file _scm0293703_ _scms293706_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0293703_))))))
                 (_generate-loader-code293673_
                  (lambda (_ctx293680_ _code293681_ _rt293682_)
                    (let* ((_loader-code293685_
                            (let ((__tmp298628
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code293681_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp298628
                               gx#current-expander-context
                               _ctx293680_)))
                           (_loader-code293687_
                            (if _rt293682_
                                (let ((__tmp298629
                                       (let ((__tmp298630
                                              (let ((__tmp298631
                                                     (let ((__tmp298632
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt293682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp298632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp298631 '()))))
                                         (declare (not safe))
                                         (cons _loader-code293685_
                                               __tmp298630))))
                                  (declare (not safe))
                                  (cons 'begin __tmp298629))
                                _loader-code293685_)))
                      (let ((__tmp298633
                             (lambda ()
                               (let ((__tmp298634
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx293680_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp298634
                                  _loader-code293687_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp298633
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules293675_
                 (let ((__tmp298635
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx293668_))))
                   (declare (not safe))
                   (cons _ctx293668_ __tmp298635))))
            (for-each
             (lambda (_ctx293677_)
               (let ((__tmp298636
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1293670_ _ctx293677_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp298636
                  gxc#current-compile-decls
                  '())))
             _all-modules293675_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx293565_)
        (letrec ((_compile-ssi293567_
                  (lambda (_code293638_)
                    (let* ((_path293640_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx293565_
                               '#f
                               '".ssi")))
                           (_prelude293651_
                            (let* ((_super293642_
                                    (##structure-ref
                                     _ctx293565_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e293644_
                                    (##structure-ref
                                     _super293642_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e293644_
                                  ((lambda (_g293646293648_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g293646293648_)))
                                   _$e293644_)
                                  ':<root>)))
                           (_ns293653_
                            (##structure-ref
                             _ctx293565_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr293655_
                            (symbol->string
                             (##structure-ref
                              _ctx293565_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg293662_
                            (let ((_$e293657_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr293655_ '#\/))))
                              (if _$e293657_
                                  ((lambda (_x293660_)
                                     (string->symbol
                                      (substring _idstr293655_ '0 _x293660_)))
                                   _$e293657_)
                                  '#f)))
                           (_rt293664_
                            (let ((__tmp298637
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp298637 _ctx293565_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path293640_))
                      (let ((__tmp298638
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude293651_))
                               (if _pkg293662_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg293662_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns293653_))
                               (newline)
                               (pretty-print _code293638_)
                               (if _rt293664_
                                   (pretty-print
                                    (let ((__tmp298639
                                           (let ((__tmp298643
                                                  (let ((__tmp298644
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp298644)))
                                                 (__tmp298640
                                                  (let ((__tmp298641
                                                         (let ((__tmp298642
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt293664_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp298642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp298641 '()))))
                                             (declare (not safe))
                                             (cons __tmp298643 __tmp298640))))
                                      (declare (not safe))
                                      (cons '%#call __tmp298639)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path293640_
                         __tmp298638)))))
                 (_compile-phi293568_
                  (lambda (_part293578_)
                    (let* ((_part293579293592_ _part293578_)
                           (_E293581293596_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part293579293592_))))
                           (_K293582293607_
                            (lambda (_code293599_
                                     _n293600_
                                     _phi293601_
                                     _phi-ctx293602_)
                              (let* ((_code293605_
                                      (let ((__tmp298645
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code293599_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp298645
                                         gx#current-expander-context
                                         _phi-ctx293602_
                                         gx#current-expander-phi
                                         _phi293601_)))
                                     (__tmp298646
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx293565_
                                         _n293600_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp298646
                                 _code293605_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part293579293592_))
                          (let ((_hd293583293610_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part293579293592_)))
                                (_tl293584293612_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part293579293592_))))
                            (let ((_phi-ctx293615_ _hd293583293610_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl293584293612_))
                                  (let ((_hd293585293617_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl293584293612_)))
                                        (_tl293586293619_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl293584293612_))))
                                    (let ((_phi293622_ _hd293585293617_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl293586293619_))
                                          (let ((_hd293587293624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl293586293619_)))
                                                (_tl293588293626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl293586293619_))))
                                            (let ((_n293629_ _hd293587293624_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl293588293626_))
                                                  (let ((_hd293589293631_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl293588293626_)))
                                                        (_tl293590293633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl293588293626_))))
                                                    (let ((_code293636_
                                                           _hd293589293631_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl293590293633_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K293582293607_
                                                             _code293636_
                                                             _n293629_
                                                             _phi293622_
                                                             _phi-ctx293615_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E293581293596_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E293581293596_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E293581293596_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E293581293596_)))))
                          (let () (declare (not safe)) (_E293581293596_)))))))
          (let ((_g298647_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx293565_))))
            (begin
              (let ((_g298648_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g298647_)
                           (##vector-length _g298647_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g298648_ 2)))
                    (error "Context expects 2 values" _g298648_)))
              (let ((_ssi-code293570_
                     (let () (declare (not safe)) (##vector-ref _g298647_ 0)))
                    (_phi-code293571_
                     (let () (declare (not safe)) (##vector-ref _g298647_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi293567_ _ssi-code293570_))
                  (let ((_threads293576_
                         (map (lambda (_code293573_)
                                (let ((__tmp298649
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi293568_
                                            _code293573_)))))
                                  (declare (not safe))
                                  (spawn __tmp298649)))
                              _phi-code293571_)))
                    (for-each gxc#join! _threads293576_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx293548_)
        (let* ((_path293550_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx293548_ '#f '".ssxi.ss")))
               (_code293552_
                (let ((__tmp298650
                       (##structure-ref
                        _ctx293548_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp298650)))
               (_idstr293554_
                (symbol->string
                 (##structure-ref _ctx293548_ '1 gx#expander-context::t '#f)))
               (_pkg293561_
                (let ((_$e293556_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr293554_ '#\/))))
                  (if _$e293556_
                      ((lambda (_x293559_)
                         (string->symbol
                          (substring _idstr293554_ '0 _x293559_)))
                       _$e293556_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path293550_))
          (let ((__tmp298651
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg293561_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg293561_))
                       '#!void)
                   (newline)
                   (pretty-print _code293552_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path293550_ __tmp298651)))))
    (define gxc#generate-meta-code
      (lambda (_ctx293541_)
        (let* ((_state293543_
                (let ((__obj298409
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj298409 _ctx293541_)
                  __obj298409))
               (_ssi-code293545_
                (let ((__tmp298652
                       (##structure-ref
                        _ctx293541_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp298652 _state293543_))))
          (values _ssi-code293545_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state293543_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx293534_)
        (let ((_lifts293536_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298655
                 (lambda ()
                   (let ((_code293539_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx293534_))))
                     (if (let ((__tmp298659 (unbox _lifts293536_)))
                           (declare (not safe))
                           (null? __tmp298659))
                         _code293539_
                         (let ((__tmp298656
                                (let ((__tmp298658
                                       (let ()
                                         (declare (not safe))
                                         (cons _code293539_ '())))
                                      (__tmp298657
                                       (reverse (unbox _lifts293536_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp298658 __tmp298657))))
                           (declare (not safe))
                           (cons 'begin __tmp298656))))))
                (__tmp298654
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp298653
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp298655
             gxc#current-compile-lift
             _lifts293536_
             gxc#current-compile-marks
             __tmp298654
             gxc#current-compile-identifiers
             __tmp298653)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx293530_)
        (let ((_modules293532_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp298660
                 (##structure-ref _ctx293530_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp298660 _modules293532_))
          (reverse (unbox _modules293532_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path293513_ _code293514_ _phi?293515_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path293513_))
        (let ((__tmp298661
               (lambda ()
                 (pretty-print
                  (let ((__tmp298662
                         (let ((__tmp298669
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp298663
                                (let ((__tmp298668
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp298664
                                       (let ((__tmp298667
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp298665
                                              (let ((__tmp298666
                                                     (if _phi?293515_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp298666))))
                                         (declare (not safe))
                                         (cons __tmp298667 __tmp298665))))
                                  (declare (not safe))
                                  (cons __tmp298668 __tmp298664))))
                           (declare (not safe))
                           (cons __tmp298669 __tmp298663))))
                    (declare (not safe))
                    (cons 'declare __tmp298662)))
                 (pretty-print _code293514_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path293513_ __tmp298661))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path293513_ _phi?293515_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path293513_))))
    (define gxc#compile-scm-file__0
      (lambda (_path293521_ _code293522_)
        (let ((_phi?293524_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path293521_ _code293522_ _phi?293524_))))
    (define gxc#compile-scm-file
      (lambda _g298671_
        (let ((_g298670_ (let () (declare (not safe)) (##length _g298671_))))
          (cond ((let () (declare (not safe)) (##fx= _g298670_ 2))
                 (apply (lambda (_path293521_ _code293522_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path293521_
                             _code293522_)))
                        _g298671_))
                ((let () (declare (not safe)) (##fx= _g298670_ 3))
                 (apply (lambda (_path293526_ _code293527_ _phi?293528_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path293526_
                             _code293527_
                             _phi?293528_)))
                        _g298671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g298671_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?293414_)
        (let _lp293416_ ((_rest293418_ (gxc#current-compile-gsc-options))
                         (_opts293419_ '()))
          (let* ((_rest293420293440_ _rest293418_)
                 (_else293424293448_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?293414_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298672
                               (let ((__tmp298673 (reverse _opts293419_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp298673))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp298672))
                        (reverse _opts293419_)))))
            (let ((_K293434293491_
                   (lambda (_rest293489_)
                     (let ()
                       (declare (not safe))
                       (_lp293416_ _rest293489_ _opts293419_))))
                  (_K293429293473_
                   (lambda (_rest293471_)
                     (let ()
                       (declare (not safe))
                       (_lp293416_ _rest293471_ _opts293419_))))
                  (_K293426293455_
                   (lambda (_rest293452_ _opt293453_)
                     (let ((__tmp298674
                            (let ()
                              (declare (not safe))
                              (cons _opt293453_ _opts293419_))))
                       (declare (not safe))
                       (_lp293416_ _rest293452_ __tmp298674)))))
              (if (let () (declare (not safe)) (##pair? _rest293420293440_))
                  (let ((_tl293436293496_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest293420293440_)))
                        (_hd293435293494_
                         (let ()
                           (declare (not safe))
                           (##car _rest293420293440_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd293435293494_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl293436293496_))
                            (let* ((_tl293438293499_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl293436293496_)))
                                   (_rest293502_ _tl293438293499_))
                              (declare (not safe))
                              (_K293434293491_ _rest293502_))
                            (let ((_opt293463_ _hd293435293494_)
                                  (_rest293465_ _tl293436293496_))
                              (let ()
                                (declare (not safe))
                                (_K293426293455_ _rest293465_ _opt293463_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd293435293494_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl293436293496_))
                                (let* ((_tl293433293481_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl293436293496_)))
                                       (_rest293484_ _tl293433293481_))
                                  (declare (not safe))
                                  (_K293429293473_ _rest293484_))
                                (let ((_opt293463_ _hd293435293494_)
                                      (_rest293465_ _tl293436293496_))
                                  (let ()
                                    (declare (not safe))
                                    (_K293426293455_
                                     _rest293465_
                                     _opt293463_))))
                            (let ((_opt293463_ _hd293435293494_)
                                  (_rest293465_ _tl293436293496_))
                              (let ()
                                (declare (not safe))
                                (_K293426293455_ _rest293465_ _opt293463_))))))
                  (let () (declare (not safe)) (_else293424293448_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?293508_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?293508_))))
    (define gxc#gsc-link-options
      (lambda _g298676_
        (let ((_g298675_ (let () (declare (not safe)) (##length _g298676_))))
          (cond ((let () (declare (not safe)) (##fx= _g298675_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g298676_))
                ((let () (declare (not safe)) (##fx= _g298675_ 1))
                 (apply (lambda (_phi?293510_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?293510_)))
                        _g298676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g298676_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?293315_)
        (let _lp293317_ ((_rest293319_ (gxc#current-compile-gsc-options))
                         (_opts293320_ '()))
          (let* ((_rest293321293341_ _rest293319_)
                 (_else293325293349_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?293315_))
                             (gxc#current-compile-debug))
                        (let ((__tmp298677
                               (let ((__tmp298678 (reverse _opts293320_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp298678))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp298677))
                        (reverse _opts293320_)))))
            (let ((_K293335293388_
                   (lambda (_rest293385_ _opt293386_)
                     (let ((__tmp298679
                            (let ((__tmp298680
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts293320_))))
                              (declare (not safe))
                              (cons _opt293386_ __tmp298680))))
                       (declare (not safe))
                       (_lp293317_ _rest293385_ __tmp298679))))
                  (_K293330293369_
                   (lambda (_rest293367_)
                     (let ()
                       (declare (not safe))
                       (_lp293317_ _rest293367_ _opts293320_))))
                  (_K293327293355_
                   (lambda (_rest293353_)
                     (let ()
                       (declare (not safe))
                       (_lp293317_ _rest293353_ _opts293320_)))))
              (if (let () (declare (not safe)) (##pair? _rest293321293341_))
                  (let ((_tl293337293393_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest293321293341_)))
                        (_hd293336293391_
                         (let ()
                           (declare (not safe))
                           (##car _rest293321293341_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd293336293391_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl293337293393_))
                            (let ((_tl293339293398_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl293337293393_)))
                                  (_hd293338293396_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl293337293393_))))
                              (let ((_opt293401_ _hd293338293396_)
                                    (_rest293403_ _tl293339293398_))
                                (let ()
                                  (declare (not safe))
                                  (_K293335293388_ _rest293403_ _opt293401_))))
                            (let ((_rest293361_ _tl293337293393_))
                              (declare (not safe))
                              (_K293327293355_ _rest293361_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd293336293391_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl293337293393_))
                                (let* ((_tl293334293377_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl293337293393_)))
                                       (_rest293380_ _tl293334293377_))
                                  (declare (not safe))
                                  (_K293330293369_ _rest293380_))
                                (let ((_rest293361_ _tl293337293393_))
                                  (declare (not safe))
                                  (_K293327293355_ _rest293361_)))
                            (let ((_rest293361_ _tl293337293393_))
                              (declare (not safe))
                              (_K293327293355_ _rest293361_)))))
                  (let () (declare (not safe)) (_else293325293349_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?293409_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?293409_))))
    (define gxc#gsc-cc-options
      (lambda _g298682_
        (let ((_g298681_ (let () (declare (not safe)) (##length _g298682_))))
          (cond ((let () (declare (not safe)) (##fx= _g298681_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g298682_))
                ((let () (declare (not safe)) (##fx= _g298681_ 1))
                 (apply (lambda (_phi?293411_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?293411_)))
                        _g298682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g298682_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir293310_)
        (let* ((_user-staticdir293312_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp298683
                (let ((__tmp298684
                       (string-append
                        '"-I "
                        _staticdir293310_
                        '" -I "
                        _user-staticdir293312_)))
                  (declare (not safe))
                  (cons __tmp298684 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp298683))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp293222_ ((_rest293224_ (gxc#current-compile-gsc-options))
                         (_opts293225_ '()))
          (let* ((_rest293226293246_ _rest293224_)
                 (_else293230293254_ (lambda () _opts293225_)))
            (let ((_K293240293297_
                   (lambda (_rest293295_)
                     (let ()
                       (declare (not safe))
                       (_lp293222_ _rest293295_ _opts293225_))))
                  (_K293235293275_
                   (lambda (_rest293272_ _opt293273_)
                     (let ((__tmp298685
                            (append _opts293225_
                                    (let ((__tmp298686
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt293273_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp298686)))))
                       (declare (not safe))
                       (_lp293222_ _rest293272_ __tmp298685))))
                  (_K293232293260_
                   (lambda (_rest293258_)
                     (let ()
                       (declare (not safe))
                       (_lp293222_ _rest293258_ _opts293225_)))))
              (if (let () (declare (not safe)) (##pair? _rest293226293246_))
                  (let ((_tl293242293302_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest293226293246_)))
                        (_hd293241293300_
                         (let ()
                           (declare (not safe))
                           (##car _rest293226293246_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd293241293300_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl293242293302_))
                            (let* ((_tl293244293305_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl293242293302_)))
                                   (_rest293308_ _tl293244293305_))
                              (declare (not safe))
                              (_K293240293297_ _rest293308_))
                            (let ((_rest293266_ _tl293242293302_))
                              (declare (not safe))
                              (_K293232293260_ _rest293266_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd293241293300_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl293242293302_))
                                (let ((_tl293239293285_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl293242293302_)))
                                      (_hd293238293283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl293242293302_))))
                                  (let ((_opt293288_ _hd293238293283_)
                                        (_rest293290_ _tl293239293285_))
                                    (let ()
                                      (declare (not safe))
                                      (_K293235293275_
                                       _rest293290_
                                       _opt293288_))))
                                (let ((_rest293266_ _tl293242293302_))
                                  (declare (not safe))
                                  (_K293232293260_ _rest293266_)))
                            (let ((_rest293266_ _tl293242293302_))
                              (declare (not safe))
                              (_K293232293260_ _rest293266_)))))
                  (let () (declare (not safe)) (_else293230293254_))))))))
    (define gxc#not-string-empty?
      (lambda (_str293219_)
        (let ((__tmp298687
               (let () (declare (not safe)) (string-empty? _str293219_))))
          (declare (not safe))
          (not __tmp298687))))
    (define gxc#gsc-compile-file
      (lambda (_path293187_ _phi?293188_)
        (letrec ((_gsc-link-path293190_
                  (lambda (_base-path293211_)
                    (let _lp293213_ ((_n293215_ '1))
                      (let ((_path293217_
                             (string-append
                              _base-path293211_
                              '".o"
                              (number->string _n293215_))))
                        (if (file-exists? _path293217_)
                            (let ((__tmp298688
                                   (let ()
                                     (declare (not safe))
                                     (+ _n293215_ '1))))
                              (declare (not safe))
                              (_lp293213_ __tmp298688))
                            _path293217_))))))
          (let* ((_base-path293192_ (path-strip-extension _path293187_))
                 (_path-c293194_ (string-append _base-path293192_ '".c"))
                 (_path-o293196_ (string-append _base-path293192_ '".o"))
                 (_link-path293198_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path293190_ _base-path293192_)))
                 (_link-path-c293200_ (string-append _link-path293198_ '".c"))
                 (_link-path-o293202_ (string-append _link-path293198_ '".o"))
                 (_gsc-link-opts293204_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?293188_)))
                 (_gsc-cc-opts293206_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?293188_)))
                 (_gcc-ld-opts293208_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp298695 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298689
                   (let ((__tmp298690
                          (let ((__tmp298691
                                 (let ((__tmp298692
                                        (let ((__tmp298693
                                               (let ((__tmp298694
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path293187_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp298694
                                                         _gsc-link-opts293204_))))
                                          (declare (not safe))
                                          (cons _link-path-c293200_
                                                __tmp298693))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp298692))))
                            (declare (not safe))
                            (cons '"-flat" __tmp298691))))
                     (declare (not safe))
                     (cons '"-link" __tmp298690))))
              (declare (not safe))
              (gxc#invoke __tmp298695 __tmp298689 'stdout-redirection: '#t))
            (let ((__tmp298702 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp298696
                   (let ((__tmp298697
                          (let ((__tmp298698
                                 (let ((__tmp298699
                                        (let ((__tmp298700
                                               (let ((__tmp298701
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c293200_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c293194_
                                                       __tmp298701))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp298700
                                                  _gsc-cc-opts293206_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp298699))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp298698))))
                     (declare (not safe))
                     (cons '"-obj" __tmp298697))))
              (declare (not safe))
              (gxc#invoke __tmp298702 __tmp298696 'stdout-redirection: '#t))
            (let ((__tmp298708 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp298703
                   (let ((__tmp298704
                          (let ((__tmp298705
                                 (let ((__tmp298706
                                        (let ((__tmp298707
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o293202_
                                                       _gcc-ld-opts293208_))))
                                          (declare (not safe))
                                          (cons _path-o293196_ __tmp298707))))
                                   (declare (not safe))
                                   (cons _link-path293198_ __tmp298706))))
                            (declare (not safe))
                            (cons '"-o" __tmp298705))))
                     (declare (not safe))
                     (cons '"-shared" __tmp298704))))
              (declare (not safe))
              (gxc#invoke __tmp298708 __tmp298703))
            (for-each
             delete-file
             (let ((__tmp298709
                    (let ((__tmp298710
                           (let ((__tmp298711
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o293202_ '()))))
                             (declare (not safe))
                             (cons _link-path-c293200_ __tmp298711))))
                      (declare (not safe))
                      (cons _path-o293196_ __tmp298710))))
               (declare (not safe))
               (cons _path-c293194_ __tmp298709)))))))
    (define gxc#compile-output-file
      (lambda (_ctx293158_ _n293159_ _ext293160_)
        (letrec ((_module-relative-path293162_
                  (lambda (_ctx293185_)
                    (path-strip-directory
                     (let ((__tmp298712
                            (##structure-ref
                             _ctx293185_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp298712)))))
                 (_module-source-directory293163_
                  (lambda (_ctx293181_)
                    (path-directory
                     (let ((_mpath293183_
                            (##structure-ref
                             _ctx293181_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath293183_))
                           _mpath293183_
                           (let ()
                             (declare (not safe))
                             (last _mpath293183_)))))))
                 (_section-string293164_
                  (lambda (_n293179_)
                    (if (let () (declare (not safe)) (number? _n293179_))
                        (number->string _n293179_)
                        (if (let () (declare (not safe)) (symbol? _n293179_))
                            (symbol->string _n293179_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n293179_))
                                _n293179_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n293179_)))))))
                 (_file-name293165_
                  (lambda (_path293177_)
                    (if _n293159_
                        (string-append
                         _path293177_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string293164_ _n293159_))
                         _ext293160_)
                        (string-append _path293177_ _ext293160_))))
                 (_file-path293166_
                  (lambda ()
                    (let ((_$e293172_ (gxc#current-compile-output-dir)))
                      (if _$e293172_
                          ((lambda (_outdir293175_)
                             (path-expand
                              (let ((__tmp298714
                                     (let ((__tmp298715
                                            (##structure-ref
                                             _ctx293158_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp298715))))
                                (declare (not safe))
                                (_file-name293165_ __tmp298714))
                              _outdir293175_))
                           _$e293172_)
                          (path-expand
                           (let ((__tmp298713
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path293162_
                                     _ctx293158_))))
                             (declare (not safe))
                             (_file-name293165_ __tmp298713))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory293163_
                              _ctx293158_))))))))
          (let ((_path293168_
                 (let () (declare (not safe)) (_file-path293166_))))
            (let ((__tmp298716
                   (lambda ()
                     (let ((__tmp298717 (path-directory _path293168_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp298717)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298716))
            _path293168_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx293140_)
        (letrec ((_file-name293142_
                  (lambda (_id293156_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id293156_))
                     '".scm")))
                 (_file-path293143_
                  (lambda ()
                    (let* ((_file293149_
                            (let ((__tmp298718
                                   (##structure-ref
                                    _ctx293140_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name293142_ __tmp298718)))
                           (_$e293151_ (gxc#current-compile-output-dir)))
                      (if _$e293151_
                          ((lambda (_outdir293154_)
                             (path-expand
                              _file293149_
                              (path-expand '"static" _outdir293154_)))
                           _$e293151_)
                          (path-expand _file293149_ '"static"))))))
          (let ((_path293145_
                 (let () (declare (not safe)) (_file-path293143_))))
            (let ((__tmp298719
                   (lambda ()
                     (let ((__tmp298720 (path-directory _path293145_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp298720)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp298719))
            _path293145_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx293134_ _opts293135_)
        (let ((_$e293137_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts293135_))))
          (if _$e293137_
              (values _$e293137_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx293134_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr293127_)
        (if (let () (declare (not safe)) (string? _idstr293127_))
            (let* ((_str293129_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr293127_)))
                   (_strs293131_
                    (let ()
                      (declare (not safe))
                      (string-split _str293129_ '#\/))))
              (let () (declare (not safe)) (string-join _strs293131_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr293127_))
                (let ((__tmp298721 (symbol->string _idstr293127_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp298721))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr293127_))))))
    (define gxc#invoke__%
      (lambda (_g298722_
               _stdout-redirection293088293092_
               _stderr-redirection293089293094_
               _program293096_
               _args293097_)
        (let* ((_stdout-redirection293099_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection293088293092_ absent-value))
                    '#f
                    _stdout-redirection293088293092_))
               (_stderr-redirection293101_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection293089293094_ absent-value))
                    '#f
                    _stderr-redirection293089293094_)))
          (let ((__tmp298723
                 (let ()
                   (declare (not safe))
                   (cons _program293096_ _args293097_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp298723))
          (let* ((_proc293103_
                  (open-process
                   (let ((__tmp298724
                          (let ((__tmp298725
                                 (let ((__tmp298726
                                        (let ((__tmp298727
                                               (let ((__tmp298728
                                                      (let ((__tmp298729
                                                             (let ((__tmp298730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection293101_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp298730))))
                (declare (not safe))
                (cons _stdout-redirection293099_ __tmp298729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp298728))))
                                          (declare (not safe))
                                          (cons _args293097_ __tmp298727))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp298726))))
                            (declare (not safe))
                            (cons _program293096_ __tmp298725))))
                     (declare (not safe))
                     (cons 'path: __tmp298724))))
                 (_output293108_
                  (if (or _stdout-redirection293099_
                          _stderr-redirection293101_)
                      (read-line _proc293103_ '#f)
                      '#f)))
            (let ((_status293111_ (process-status _proc293103_)))
              (close-port _proc293103_)
              (if (let () (declare (not safe)) (zero? _status293111_))
                  '#!void
                  (begin
                    (display _output293108_)
                    (let ((__tmp298731
                           (let ()
                             (declare (not safe))
                             (cons _program293096_ _args293097_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp298731
                       _status293111_)))))))))
    (define gxc#invoke__@
      (lambda (_keys293087293116_ . _args293118_)
        (apply gxc#invoke__%
               _keys293087293116_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys293087293116_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys293087293116_
                  'stderr-redirection:
                  absent-value))
               _args293118_)))
    (define gxc#invoke
      (lambda _args293090293124_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args293090293124_)))
    (define gxc#join!
      (lambda (_thread293081_)
        (let ((__tmp298733
               (lambda (_exn293083_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn293083_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn293083_)))
                     (raise _exn293083_))))
              (__tmp298732 (lambda () (thread-join! _thread293081_))))
          (declare (not safe))
          (with-catch __tmp298733 __tmp298732))))))
