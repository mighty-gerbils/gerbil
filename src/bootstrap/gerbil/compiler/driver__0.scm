(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708510106)
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
      (lambda (_path157349_ _fun157350_)
        (with-output-to-file
         (let ((__tmp157443
                (let ()
                  (declare (not safe))
                  (cons _path157349_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157443))
         _fun157350_)))
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
      (lambda (_gerbil-libdir157344_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157344_)))
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
      (lambda (_dir157342_) (delete-file-or-directory _dir157342_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157316_ _opts157317_)
        (if (let () (declare (not safe)) (string? _srcpath157316_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157316_)))
        (let ((_outdir157319_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157317_)))
              (_invoke-gsc?157320_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157317_)))
              (_gsc-options157321_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157317_)))
              (_keep-scm?157322_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157317_)))
              (_verbosity157323_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157317_)))
              (_optimize157324_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157317_)))
              (_debug157325_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157317_)))
              (_gen-ssxi157326_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157317_))))
          (if _outdir157319_
              (let ((__tmp157444
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157319_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157444))
              '#!void)
          (if _optimize157324_
              (let ((__tmp157445
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157445))
              '#!void)
          (let ((__tmp157449
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157316_))
                   (let ((__tmp157450
                          (let ((__tmp157451
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157316_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157451))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157450))))
                (__tmp157448
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157446
                 (let ((__tmp157447
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157316_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157447))))
            (declare (not safe))
            (call-with-parameters
             __tmp157449
             gxc#current-compile-output-dir
             _outdir157319_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157320_
             gxc#current-compile-gsc-options
             _gsc-options157321_
             gxc#current-compile-keep-scm
             _keep-scm?157322_
             gxc#current-compile-verbose
             _verbosity157323_
             gxc#current-compile-optimize
             _optimize157324_
             gxc#current-compile-debug
             _debug157325_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157326_
             gxc#current-compile-timestamp
             __tmp157448
             gxc#current-compile-context
             __tmp157446
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157335_)
        (let ((_opts157337_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157335_ _opts157337_))))
    (define gxc#compile-module
      (lambda _g157453_
        (let ((_g157452_ (let () (declare (not safe)) (##length _g157453_))))
          (cond ((let () (declare (not safe)) (##fx= _g157452_ 1))
                 (apply (lambda (_srcpath157335_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157335_)))
                        _g157453_))
                ((let () (declare (not safe)) (##fx= _g157452_ 2))
                 (apply (lambda (_srcpath157339_ _opts157340_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157339_
                             _opts157340_)))
                        _g157453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157453_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157292_ _opts157293_)
        (if (let () (declare (not safe)) (string? _srcpath157292_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157292_)))
        (let ((_outdir157295_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157293_)))
              (_invoke-gsc?157296_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157293_)))
              (_gsc-options157297_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157293_)))
              (_keep-scm?157298_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157293_)))
              (_verbosity157299_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157293_)))
              (_debug157300_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157293_))))
          (if _outdir157295_
              (let ((__tmp157454
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157295_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157454))
              '#!void)
          (let ((__tmp157458
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157292_))
                   (let ((__tmp157459
                          (let ((__tmp157460
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157292_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157460))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157459
                      _opts157293_))))
                (__tmp157457
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157455
                 (let ((__tmp157456
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157292_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157456))))
            (declare (not safe))
            (call-with-parameters
             __tmp157458
             gxc#current-compile-output-dir
             _outdir157295_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157296_
             gxc#current-compile-gsc-options
             _gsc-options157297_
             gxc#current-compile-keep-scm
             _keep-scm?157298_
             gxc#current-compile-verbose
             _verbosity157299_
             gxc#current-compile-debug
             _debug157300_
             gxc#current-compile-timestamp
             __tmp157457
             gxc#current-compile-context
             __tmp157455
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157308_)
        (let ((_opts157310_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157308_ _opts157310_))))
    (define gxc#compile-exe
      (lambda _g157462_
        (let ((_g157461_ (let () (declare (not safe)) (##length _g157462_))))
          (cond ((let () (declare (not safe)) (##fx= _g157461_ 1))
                 (apply (lambda (_srcpath157308_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157308_)))
                        _g157462_))
                ((let () (declare (not safe)) (##fx= _g157461_ 2))
                 (apply (lambda (_srcpath157312_ _opts157313_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157312_ _opts157313_)))
                        _g157462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157462_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157288_ _opts157289_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157289_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157288_
               _opts157289_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157288_
               _opts157289_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157171_ _opts157172_)
        (letrec ((_generate-stub157174_
                  (lambda (_builtin-modules157284_)
                    (let ((_mod-main157286_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157171_ 'main))))
                      (write (let ((__tmp157463
                                    (let ((__tmp157464
                                           (let ((__tmp157465
                                                  (let ((__tmp157466
                                                         (let ((__tmp157468
                                                                (let ((__tmp157469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157284_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157469)))
                       (__tmp157467
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157468 __tmp157467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157466))))
                                             (declare (not safe))
                                             (cons __tmp157465 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157464))))
                               (declare (not safe))
                               (cons 'define __tmp157463)))
                      (write (let ((__tmp157470
                                    (let ((__tmp157509
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157471
                                           (let ((__tmp157472
                                                  (let ((__tmp157473
                                                         (let ((__tmp157497
                                                                (let ((__tmp157498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157499
                                      (let ((__tmp157507
                                             (let ((__tmp157508
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157508)))
                                            (__tmp157500
                                             (let ((__tmp157501
                                                    (let ((__tmp157502
                                                           (let ((__tmp157503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157504
                                 (let ((__tmp157505
                                        (let ((__tmp157506
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157506 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157505))))
                            (declare (not safe))
                            (cons __tmp157504 '()))))
                     (declare (not safe))
                     (cons _mod-main157286_ __tmp157503))))
              (declare (not safe))
              (cons 'apply __tmp157502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157501 '()))))
                                        (declare (not safe))
                                        (cons __tmp157507 __tmp157500))))
                                 (declare (not safe))
                                 (cons '() __tmp157499))))
                          (declare (not safe))
                          (cons 'lambda __tmp157498)))
                       (__tmp157474
                        (let ((__tmp157475
                               (let ((__tmp157476
                                      (let ((__tmp157477
                                             (let ((__tmp157488
                                                    (let ((__tmp157489
                                                           (let ((__tmp157490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157491
                                 (let ((__tmp157492
                                        (let ((__tmp157493
                                               (let ((__tmp157494
                                                      (let ((__tmp157495
                                                             (let ((__tmp157496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157496 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157494 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157493))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157492))))
                            (declare (not safe))
                            (cons __tmp157491 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157490))))
              (declare (not safe))
              (cons 'with-catch __tmp157489)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157478
                                                    (let ((__tmp157479
                                                           (let ((__tmp157480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157481
                                 (let ((__tmp157482
                                        (let ((__tmp157483
                                               (let ((__tmp157484
                                                      (let ((__tmp157485
                                                             (let ((__tmp157486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157487
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157487 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157486))))
                (declare (not safe))
                (cons __tmp157485 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157484))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157483))))
                                   (declare (not safe))
                                   (cons __tmp157482 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157481))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157480))))
              (declare (not safe))
              (cons __tmp157479 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157488
                                                     __tmp157478))))
                                        (declare (not safe))
                                        (cons '() __tmp157477))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157476))))
                          (declare (not safe))
                          (cons __tmp157475 '()))))
                   (declare (not safe))
                   (cons __tmp157497 __tmp157474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157473))))
                                             (declare (not safe))
                                             (cons __tmp157472 '()))))
                                      (declare (not safe))
                                      (cons __tmp157509 __tmp157471))))
                               (declare (not safe))
                               (cons 'define __tmp157470)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157175_
                  (lambda (_libgerbil157282_)
                    (call-with-input-file
                     (string-append _libgerbil157282_ '".ldd")
                     read)))
                 (_replace-extension157176_
                  (lambda (_path157279_ _ext157280_)
                    (string-append
                     (path-strip-extension _path157279_)
                     _ext157280_)))
                 (_not-exclude-module?157177_
                  (lambda (_ctx157275_)
                    (let ((_id-str157277_
                           (symbol->string
                            (##structure-ref
                             _ctx157275_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157511
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157277_))))
                            (declare (not safe))
                            (not __tmp157511))
                          (let ((__tmp157510
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157277_))))
                            (declare (not safe))
                            (not __tmp157510))
                          '#f))))
                 (_not-file-empty?157178_
                  (lambda (_path157273_)
                    (let ((__tmp157512
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157273_))))
                      (declare (not safe))
                      (not __tmp157512))))
                 (_compile-stub157179_
                  (lambda (_output-scm157186_ _output-bin157187_)
                    (let* ((_gerbil-home157189_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157191_
                            (path-expand '"lib" _gerbil-home157189_))
                           (_gerbil-staticdir157193_
                            (path-expand '"static" _gerbil-libdir157191_))
                           (_gxlink157195_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157191_))
                           (_tmp157197_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157201_
                            (lambda (_f157199_)
                              (path-expand
                               (path-strip-directory _f157199_)
                               _tmp157197_)))
                           (_deps157203_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157171_)))
                           (_deps157205_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157177_
                                      _deps157203_)))
                           (_src-deps-scm157207_
                            (map gxc#find-static-module-file _deps157205_))
                           (_src-deps-scm157209_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157178_
                                      _src-deps-scm157207_)))
                           (_src-deps-scm157211_
                            (map path-expand _src-deps-scm157209_))
                           (_deps-scm157213_
                            (map _tmp-path157201_ _src-deps-scm157211_))
                           (_deps-c157219_
                            (map (lambda (_g157214157216_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157176_
                                      _g157214157216_
                                      '".c")))
                                 _deps-scm157213_))
                           (_deps-o157225_
                            (map (lambda (_g157220157222_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157176_
                                      _g157220157222_
                                      '".o")))
                                 _deps-scm157213_))
                           (_src-bin-scm157227_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157171_)))
                           (_src-bin-scm157229_
                            (path-expand _src-bin-scm157227_))
                           (_bin-scm157231_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157201_ _src-bin-scm157229_)))
                           (_bin-c157233_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157176_
                               _bin-scm157231_
                               '".c")))
                           (_bin-o157235_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157176_
                               _bin-scm157231_
                               '".o")))
                           (_output-bin157237_
                            (path-expand _output-bin157187_))
                           (_output-scm157239_
                            (path-expand _output-scm157186_))
                           (_output-c157241_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157176_
                               _output-scm157239_
                               '".c")))
                           (_output-o157243_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157176_
                               _output-scm157239_
                               '".o")))
                           (_output_-c157245_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157176_
                               _output-scm157239_
                               '"_.c")))
                           (_output_-o157247_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157176_
                               _output-scm157239_
                               '"_.o")))
                           (_gsc-link-opts157249_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157251_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157253_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157193_)))
                           (_output-ld-opts157255_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157257_
                            (path-expand '"libgerbil.a" _gerbil-libdir157191_))
                           (_libgerbil.so157259_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157191_))
                           (_libgerbil-ld-opts157261_
                            (if (file-exists? _libgerbil.so157259_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157175_
                                   _libgerbil.so157259_))
                                (if (file-exists? _libgerbil.a157257_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157175_
                                       _libgerbil.a157257_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157257_
                                       _libgerbil.so157259_)))))
                           (_rpath157263_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157191_)))
                           (_builtin-modules157267_
                            (map (lambda (_mod157265_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157265_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157171_ _deps157205_)))))
                      (let ((__tmp157513
                             (lambda ()
                               (let ((__tmp157514
                                      (path-directory _output-bin157237_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157514)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157513))
                      (let ((__tmp157515
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157174_
                                  _builtin-modules157267_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157239_
                         __tmp157515))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157516
                                   (lambda () (create-directory _tmp157197_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157516))
                            (for-each
                             copy-file
                             _src-deps-scm157211_
                             _deps-scm157213_)
                            (copy-file _src-bin-scm157229_ _bin-scm157231_)
                            (let ((__tmp157524
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157517
                                   (let ((__tmp157518
                                          (let ((__tmp157519
                                                 (let ((__tmp157520
                                                        (let ((__tmp157521
                                                               (let ((__tmp157522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157523
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157239_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157231_ __tmp157523))))
                         (declare (not safe))
                         (foldr1 cons __tmp157522 _deps-scm157213_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157521 _gsc-link-opts157249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157195_
                                                         __tmp157520))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157519))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157518))))
                              (declare (not safe))
                              (gxc#invoke __tmp157524 __tmp157517))
                            (let ((__tmp157532
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157525
                                   (let ((__tmp157526
                                          (let ((__tmp157527
                                                 (let ((__tmp157528
                                                        (let ((__tmp157529
                                                               (let ((__tmp157530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157531
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157245_ '()))))
                                (declare (not safe))
                                (cons _output-c157241_ __tmp157531))))
                         (declare (not safe))
                         (cons _bin-c157233_ __tmp157530))))
                  (declare (not safe))
                  (foldr1 cons __tmp157529 _deps-c157219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157528
                                                           _gsc-static-opts157253_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157527
                                                    _gsc-cc-opts157251_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157526))))
                              (declare (not safe))
                              (gxc#invoke __tmp157532 __tmp157525))
                            (let ((__tmp157545
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157533
                                   (let ((__tmp157534
                                          (let ((__tmp157535
                                                 (let ((__tmp157536
                                                        (let ((__tmp157537
                                                               (let ((__tmp157538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157539
                                     (let ((__tmp157540
                                            (let ((__tmp157541
                                                   (let ((__tmp157542
                                                          (let ((__tmp157543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157544
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157261_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157544))))
                    (declare (not safe))
                    (cons _gerbil-libdir157191_ __tmp157543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157542))))
                                              (declare (not safe))
                                              (cons _rpath157263_
                                                    __tmp157541))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157540
                                               _output-ld-opts157255_))))
                                (declare (not safe))
                                (cons _output_-o157247_ __tmp157539))))
                         (declare (not safe))
                         (cons _output-o157243_ __tmp157538))))
                  (declare (not safe))
                  (cons _bin-o157235_ __tmp157537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157536
                                                           _deps-o157225_))))
                                            (declare (not safe))
                                            (cons _output-bin157237_
                                                  __tmp157535))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157534))))
                              (declare (not safe))
                              (gxc#invoke __tmp157545 __tmp157533))
                            (for-each
                             delete-file
                             (let ((__tmp157546
                                    (let ((__tmp157547
                                           (let ((__tmp157548
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157247_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157243_
                                                   __tmp157548))))
                                      (declare (not safe))
                                      (cons _output_-c157245_ __tmp157547))))
                               (declare (not safe))
                               (cons _output-c157241_ __tmp157546)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157197_)))
                          '#!void)))))
          (let* ((_output-bin157181_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157171_ _opts157172_)))
                 (_output-scm157183_
                  (string-append _output-bin157181_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157179_ _output-scm157183_ _output-bin157181_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157183_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx156996_ _opts156997_)
        (letrec ((_reset-declare156999_
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
                 (_generate-stub157000_
                  (lambda (_deps157162_)
                    (let ((_mod-main157164_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx156996_ 'main)))
                          (_reset-decl157165_
                           (let ()
                             (declare (not safe))
                             (_reset-declare156999_)))
                          (_user-decl157166_
                           (let ()
                             (declare (not safe))
                             (_user-declare157001_))))
                      (for-each
                       (lambda (_dep157168_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157165_)
                         (newline)
                         (if _user-decl157166_
                             (begin (write _user-decl157166_) (newline))
                             '#!void)
                         (write (let ((__tmp157549
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157168_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157549)))
                         (newline))
                       _deps157162_)
                      (write (let ((__tmp157550
                                    (let ((__tmp157563
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157551
                                           (let ((__tmp157559
                                                  (let ((__tmp157560
                                                         (let ((__tmp157561
                                                                (let ((__tmp157562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157562))))
                   (declare (not safe))
                   (cons __tmp157561 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157560)))
                                                 (__tmp157552
                                                  (let ((__tmp157553
                                                         (let ((__tmp157554
                                                                (let ((__tmp157555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157556
                                      (let ((__tmp157557
                                             (let ((__tmp157558
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157558 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157557))))
                                 (declare (not safe))
                                 (cons __tmp157556 '()))))
                          (declare (not safe))
                          (cons _mod-main157164_ __tmp157555))))
                   (declare (not safe))
                   (cons 'apply __tmp157554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157553 '()))))
                                             (declare (not safe))
                                             (cons __tmp157559 __tmp157552))))
                                      (declare (not safe))
                                      (cons __tmp157563 __tmp157551))))
                               (declare (not safe))
                               (cons 'define __tmp157550)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157001_
                  (lambda ()
                    (let* ((_gsc-opts157067_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts156997_)))
                           (_gsc-prelude157069_
                            (if _gsc-opts157067_
                                (member '"-prelude" _gsc-opts157067_)
                                '#f))
                           (_gsc-prelude157071_
                            (if _gsc-prelude157069_
                                (read (open-input-string
                                       (cadr _gsc-prelude157069_)))
                                '#f)))
                      (let _lp157074_ ((_rest157076_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157071_ '())))
                                       (_user-decls157077_ '()))
                        (let* ((_rest157078157086_ _rest157076_)
                               (_else157080157094_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157077_))
                                      '#f
                                      (let ((__tmp157564
                                             (reverse _user-decls157077_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157564)))))
                               (_K157082157150_
                                (lambda (_rest157097_ _expr157098_)
                                  (let* ((_expr157099157111_ _expr157098_)
                                         (_else157102157119_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157074_
                                               _rest157097_
                                               _user-decls157077_)))))
                                    (let ((_K157107157140_
                                           (lambda (_decls157138_)
                                             (let ((__tmp157565
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157077_
                                                              _decls157138_))))
                                               (declare (not safe))
                                               (_lp157074_
                                                _rest157097_
                                                __tmp157565))))
                                          (_K157104157125_
                                           (lambda (_exprs157123_)
                                             (let ((__tmp157566
                                                    (append _exprs157123_
                                                            _rest157097_)))
                                               (declare (not safe))
                                               (_lp157074_
                                                __tmp157566
                                                _user-decls157077_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157099157111_))
                                          (let ((_tl157109157145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157099157111_)))
                                                (_hd157108157143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157099157111_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157108157143_
                                                         'declare))
                                                (let ((_decls157148_
                                                       _tl157109157145_))
                                                  (declare (not safe))
                                                  (_K157107157140_
                                                   _decls157148_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157108157143_
                                                             'begin))
                                                    (let ((_exprs157133_
                                                           _tl157109157145_))
                                                      (declare (not safe))
                                                      (_K157104157125_
                                                       _exprs157133_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157102157119_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157102157119_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157078157086_))
                              (let ((_hd157083157153_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157078157086_)))
                                    (_tl157084157155_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157078157086_))))
                                (let* ((_expr157158_ _hd157083157153_)
                                       (_rest157160_ _tl157084157155_))
                                  (declare (not safe))
                                  (_K157082157150_ _rest157160_ _expr157158_)))
                              (let ()
                                (declare (not safe))
                                (_else157080157094_))))))))
                 (_compile-stub157002_
                  (lambda (_output-scm157009_ _output-bin157010_)
                    (let* ((_gerbil-home157012_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157014_
                            (path-expand '"lib" _gerbil-home157012_))
                           (_runtime157016_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157018_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157012_))
                           (_include-gambit-sharp157020_
                            (string-append
                             '"(include \""
                             _gambit-sharp157018_
                             '"\")"))
                           (_bin-scm157022_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx156996_)))
                           (_deps157024_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx156996_)))
                           (_deps157026_
                            (map gxc#find-static-module-file _deps157024_))
                           (_deps157031_
                            (let ((__tmp157567
                                   (lambda (_$obj157028_)
                                     (let ((__tmp157568
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157028_))))
                                       (declare (not safe))
                                       (not __tmp157568)))))
                              (declare (not safe))
                              (filter __tmp157567 _deps157026_)))
                           (_deps157035_
                            (let ((__tmp157569
                                   (lambda (_f157033_)
                                     (let ((__tmp157570
                                            (member _f157033_
                                                    _runtime157016_)))
                                       (declare (not safe))
                                       (not __tmp157570)))))
                              (declare (not safe))
                              (filter __tmp157569 _deps157031_)))
                           (_output-base157037_
                            (string-append
                             (path-strip-extension _output-scm157009_)))
                           (_output-c157039_
                            (string-append _output-base157037_ '".c"))
                           (_output-o157041_
                            (string-append _output-base157037_ '".o"))
                           (_output-c_157043_
                            (string-append _output-base157037_ '"_.c"))
                           (_output-o_157045_
                            (string-append _output-base157037_ '"_.o"))
                           (_gsc-link-opts157047_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157049_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157051_
                            (let ((__tmp157571
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157014_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157571)))
                           (_output-ld-opts157053_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157055_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157573
                                       (let ((__tmp157574
                                              (let ((__tmp157575
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157020_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157575))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157574))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157573))
                                (let ((__tmp157572
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157020_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157572))))
                           (_gsc-link-opts157057_
                            (append _gsc-link-opts157047_
                                    _gsc-gx-macros157055_))
                           (_rpath157059_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157014_)))
                           (_default-ld-options157061_
                            (let ((__tmp157576
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157576))))
                      (let ((__tmp157577
                             (lambda ()
                               (let ((__tmp157578
                                      (path-directory _output-bin157010_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157578)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157577))
                      (let ((__tmp157579
                             (lambda ()
                               (let ((__tmp157580
                                      (let ((__tmp157581
                                             (let ((__tmp157582
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157022_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157582
                                                       _deps157035_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157581
                                                _runtime157016_))))
                                 (declare (not safe))
                                 (_generate-stub157000_ __tmp157580)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157009_
                         __tmp157579))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157588
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157583
                                   (let ((__tmp157584
                                          (let ((__tmp157585
                                                 (let ((__tmp157586
                                                        (let ((__tmp157587
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm157009_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157587 _gsc-link-opts157057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157043_
                                                         __tmp157586))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157585))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157584))))
                              (declare (not safe))
                              (gxc#invoke __tmp157588 __tmp157583))
                            (let ((__tmp157594
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157589
                                   (let ((__tmp157590
                                          (let ((__tmp157591
                                                 (let ((__tmp157592
                                                        (let ((__tmp157593
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157043_ '()))))
                  (declare (not safe))
                  (cons _output-c157039_ __tmp157593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157592
                                                           _gsc-static-opts157051_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157591
                                                    _gsc-cc-opts157049_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157590))))
                              (declare (not safe))
                              (gxc#invoke __tmp157594 __tmp157589))
                            (let ((__tmp157604
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157595
                                   (let ((__tmp157596
                                          (let ((__tmp157597
                                                 (let ((__tmp157598
                                                        (let ((__tmp157599
                                                               (let ((__tmp157600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157601
                                     (let ((__tmp157602
                                            (let ((__tmp157603
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157061_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157014_
                                                    __tmp157603))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157602))))
                                (declare (not safe))
                                (cons _rpath157059_ __tmp157601))))
                         (declare (not safe))
                         (foldr1 cons __tmp157600 _output-ld-opts157053_))))
                  (declare (not safe))
                  (cons _output-o_157045_ __tmp157599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157041_
                                                         __tmp157598))))
                                            (declare (not safe))
                                            (cons _output-bin157010_
                                                  __tmp157597))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157596))))
                              (declare (not safe))
                              (gxc#invoke __tmp157604 __tmp157595)))
                          '#!void)))))
          (let* ((_output-bin157004_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx156996_ _opts156997_)))
                 (_output-scm157006_
                  (string-append _output-bin157004_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157002_ _output-scm157006_ _output-bin157004_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157006_))))))
    (define gxc#find-export-binding
      (lambda (_ctx156946_ _id156947_)
        (let ((_$e156993_
               (let ((__tmp157606
                      (lambda (_e156948156950_)
                        (let* ((_g156952156962_ _e156948156950_)
                               (_else156954156970_ (lambda () '#f))
                               (_K156956156974_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g156952156962_
                                 'gx#module-export::t))
                              (let* ((_e156957156977_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156952156962_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e156958156980_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156952156962_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e156959156983_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156952156962_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e156959156983_ '0))
                                    (let ((_e156960156986_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g156952156962_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g156988156990_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g156988156990_
                                                    _id156947_)))
                                           _e156960156986_)
                                          (let ()
                                            (declare (not safe))
                                            (_K156956156974_))
                                          (let ()
                                            (declare (not safe))
                                            (_else156954156970_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else156954156970_))))
                              (let ()
                                (declare (not safe))
                                (_else156954156970_))))))
                     (__tmp157605
                      (##structure-ref
                       _ctx156946_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157606 __tmp157605))))
          (if _$e156993_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e156993_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx156938_ _id156939_)
        (let ((_$e156941_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx156938_ _id156939_))))
          (if _$e156941_
              ((lambda (_bind156944_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind156944_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id156939_)))
                 (##structure-ref _bind156944_ '1 gx#binding::t '#f))
               _$e156941_)
              (let ((__tmp157607
                     (##structure-ref
                      _ctx156938_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157607
                 _id156939_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx156825_)
        (letrec* ((_ht156827_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template156828_
                   (lambda (_in156890_ _phi156891_)
                     (let ((_iphi156893_
                            (fx+ _phi156891_
                                 (##direct-structure-ref
                                  _in156890_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports156894_
                            (##structure-ref
                             (##direct-structure-ref
                              _in156890_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp156896_ ((_rest156898_ _imports156894_)
                                        (_r156899_ '()))
                         (let* ((_rest156900156908_ _rest156898_)
                                (_else156902156916_ (lambda () _r156899_))
                                (_K156904156926_
                                 (lambda (_rest156919_ _in156920_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in156920_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi156893_))
                                           (let ((__tmp157614
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in156920_
                                                          _r156899_))))
                                             (declare (not safe))
                                             (_lp156896_
                                              _rest156919_
                                              __tmp157614))
                                           (let ()
                                             (declare (not safe))
                                             (_lp156896_
                                              _rest156919_
                                              _r156899_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in156920_
                                              'gx#module-import::t))
                                           (let ((_iphi156922_
                                                  (fx+ _phi156891_
                                                       (##direct-structure-ref
                                                        _in156920_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi156922_))
                                                 (let ((__tmp157612
                                                        (let ((__tmp157613
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in156920_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157613 _r156899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp156896_
                                                    _rest156919_
                                                    __tmp157612))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp156896_
                                                    _rest156919_
                                                    _r156899_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in156920_
                                                  'gx#import-set::t))
                                               (let ((_xphi156924_
                                                      (fx+ _iphi156893_
                                                           (##direct-structure-ref
                                                            _in156920_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi156924_))
                                                     (let ((__tmp157610
                                                            (let ((__tmp157611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in156920_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157611 _r156899_))))
               (declare (not safe))
               (_lp156896_ _rest156919_ __tmp157610))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi156924_)
                                                         (let ((__tmp157608
                                                                (let ((__tmp157609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template156828_
                                  _in156920_
                                  _iphi156893_))))
                          (declare (not safe))
                          (foldl1 cons _r156899_ __tmp157609))))
                   (declare (not safe))
                   (_lp156896_ _rest156919_ __tmp157608))
                 (let ()
                   (declare (not safe))
                   (_lp156896_ _rest156919_ _r156899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp156896_
                                                  _rest156919_
                                                  _r156899_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest156900156908_))
                               (let ((_hd156905156929_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest156900156908_)))
                                     (_tl156906156931_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest156900156908_))))
                                 (let* ((_in156934_ _hd156905156929_)
                                        (_rest156936_ _tl156906156931_))
                                   (declare (not safe))
                                   (_K156904156926_ _rest156936_ _in156934_)))
                               (let ()
                                 (declare (not safe))
                                 (_else156902156916_))))))))
                  (_find-deps156829_
                   (lambda (_rest156836_ _deps156837_)
                     (let* ((_rest156838156846_ _rest156836_)
                            (_else156840156854_ (lambda () _deps156837_))
                            (_K156842156878_
                             (lambda (_rest156857_ _hd156858_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd156858_
                                      'gx#module-context::t))
                                   (let ((_id156860_
                                          (##structure-ref
                                           _hd156858_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports156861_
                                          (##structure-ref
                                           _hd156858_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht156827_ _id156860_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps156829_
                                            _rest156857_
                                            _deps156837_))
                                         (let ((_$e156863_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd156858_))))
                                           (if _$e156863_
                                               ((lambda (_pre156866_)
                                                  (let ((_xdeps156868_
                                                         (let ((__tmp157627
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre156866_ _imports156861_))))
                   (declare (not safe))
                   (_find-deps156829_ __tmp157627 _deps156837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht156827_
                                                       _id156860_
                                                       _hd156858_))
                                                    (let ((__tmp157628
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd156858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps156868_))))
              (declare (not safe))
              (_find-deps156829_ _rest156857_ __tmp157628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e156863_)
                                               (let ((_xdeps156870_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps156829_
                                                         _imports156861_
                                                         _deps156837_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht156827_
                                                    _id156860_
                                                    _hd156858_))
                                                 (let ((__tmp157626
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd156858_
                                                                _xdeps156870_))))
                                                   (declare (not safe))
                                                   (_find-deps156829_
                                                    _rest156857_
                                                    __tmp157626)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd156858_
                                          'gx#prelude-context::t))
                                       (let ((_id156872_
                                              (##structure-ref
                                               _hd156858_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht156827_
                                                _id156872_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps156829_
                                                _rest156857_
                                                _deps156837_))
                                             (let ((_xdeps156874_
                                                    (let ((__tmp157624
                                                           (##structure-ref
                                                            _hd156858_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps156829_
                                                       __tmp157624
                                                       _deps156837_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht156827_
                                                      _id156872_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps156829_
                                                      _rest156857_
                                                      _xdeps156874_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht156827_
                                                        _id156872_
                                                        _hd156858_))
                                                     (let ((__tmp157625
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd156858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps156874_))))
               (declare (not safe))
               (_find-deps156829_ _rest156857_ __tmp157625)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd156858_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157623
                                                      (##direct-structure-ref
                                                       _hd156858_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157623))
                                               (let ((__tmp157621
                                                      (let ((__tmp157622
                                                             (##direct-structure-ref
                                                              _hd156858_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157622
                                                              _rest156857_))))
                                                 (declare (not safe))
                                                 (_find-deps156829_
                                                  __tmp157621
                                                  _deps156837_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps156829_
                                                  _rest156857_
                                                  _deps156837_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd156858_
                                                  'gx#module-export::t))
                                               (let ((__tmp157619
                                                      (let ((__tmp157620
                                                             (##direct-structure-ref
                                                              _hd156858_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157620
                                                              _rest156857_))))
                                                 (declare (not safe))
                                                 (_find-deps156829_
                                                  __tmp157619
                                                  _deps156837_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd156858_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157618
                                                              (##direct-structure-ref
                                                               _hd156858_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157618))
                                                       (let ((__tmp157616
                                                              (let ((__tmp157617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd156858_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157617 _rest156857_))))
                 (declare (not safe))
                 (_find-deps156829_ __tmp157616 _deps156837_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd156858_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps156876_
                           (let ()
                             (declare (not safe))
                             (_import-set-template156828_ _hd156858_ '0)))
                          (__tmp157615
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest156857_ _xdeps156876_))))
                     (declare (not safe))
                     (_find-deps156829_ __tmp157615 _deps156837_))
                   (let ()
                     (declare (not safe))
                     (_find-deps156829_ _rest156857_ _deps156837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd156858_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest156838156846_))
                           (let ((_hd156843156881_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest156838156846_)))
                                 (_tl156844156883_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest156838156846_))))
                             (let* ((_hd156886_ _hd156843156881_)
                                    (_rest156888_ _tl156844156883_))
                               (declare (not safe))
                               (_K156842156878_ _rest156888_ _hd156886_)))
                           (let ()
                             (declare (not safe))
                             (_else156840156854_)))))))
          (reverse (let ((__tmp157629
                          (let ((__tmp157630
                                 (let ((_$e156831_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx156825_))))
                                   (if _$e156831_
                                       ((lambda (_pre156834_)
                                          (let ((__tmp157631
                                                 (##structure-ref
                                                  _ctx156825_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre156834_ __tmp157631)))
                                        _$e156831_)
                                       (##structure-ref
                                        _ctx156825_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps156829_ __tmp157630 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp157629))))))
    (define gxc#find-static-module-file
      (lambda (_ctx156756_)
        (let* ((_context-id156758_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx156756_
                       'gx#module-context::t))
                    (##structure-ref _ctx156756_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx156756_)))
               (_scm156760_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id156758_))
                 '".scm"))
               (_dirs156762_ (gx#current-expander-module-library-path))
               (_dirs156768_
                (let ((_user-libpath156764_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath156764_
                      (let ((_user-libpath156766_
                             (path-expand '"lib" _user-libpath156764_)))
                        (if (member _user-libpath156766_ _dirs156762_)
                            _dirs156762_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath156766_ _dirs156762_))))
                      _dirs156762_)))
               (_dirs156777_
                (let ((_$e156770_ (gxc#current-compile-output-dir)))
                  (if _$e156770_
                      ((lambda (_g156772156774_)
                         (let ()
                           (declare (not safe))
                           (cons _g156772156774_ _dirs156768_)))
                       _$e156770_)
                      _dirs156768_)))
               (_dirs156783_
                (map (lambda (_g156778156780_)
                       (path-expand '"static" _g156778156780_))
                     _dirs156777_)))
          (let _lp156786_ ((_rest156788_ _dirs156783_))
            (let* ((_rest156789156797_ _rest156788_)
                   (_else156791156805_
                    (lambda ()
                      (let ((__tmp157632
                             (##structure-ref
                              _ctx156756_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157632
                         _scm156760_))))
                   (_K156793156813_
                    (lambda (_rest156808_ _dir156809_)
                      (let ((_path156811_
                             (path-expand _scm156760_ _dir156809_)))
                        (if (file-exists? _path156811_)
                            _path156811_
                            (let ()
                              (declare (not safe))
                              (_lp156786_ _rest156808_)))))))
              (if (let () (declare (not safe)) (##pair? _rest156789156797_))
                  (let ((_hd156794156816_
                         (let ()
                           (declare (not safe))
                           (##car _rest156789156797_)))
                        (_tl156795156818_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156789156797_))))
                    (let* ((_dir156821_ _hd156794156816_)
                           (_rest156823_ _tl156795156818_))
                      (declare (not safe))
                      (_K156793156813_ _rest156823_ _dir156821_)))
                  (let () (declare (not safe)) (_else156791156805_))))))))
    (define gxc#file-empty?
      (lambda (_path156754_)
        (let ((__tmp157633 (file-info-size (file-info _path156754_ '#t))))
          (declare (not safe))
          (zero? __tmp157633))))
    (define gxc#compile-top-module
      (lambda (_ctx156743_)
        (let ((__tmp157637
               (lambda ()
                 (let ((__tmp157638
                        (##structure-ref
                         _ctx156743_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157638))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157639
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156743_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157639))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156743_))
                 (if (let ((__tmp157642
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156743_))))
                       (declare (not safe))
                       (null? __tmp157642))
                     (let* ((_thr1156748_
                             (let ((__tmp157640
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156743_)))))
                               (declare (not safe))
                               (spawn __tmp157640)))
                            (_thr2156751_
                             (let ((__tmp157641
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156743_)))))
                               (declare (not safe))
                               (spawn __tmp157641))))
                       (let () (declare (not safe)) (gxc#join! _thr1156748_))
                       (let () (declare (not safe)) (gxc#join! _thr2156751_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156743_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156743_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156743_))
                     '#!void)))
              (__tmp157636
               (let ((__obj157441
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157441)
                 __obj157441))
              (__tmp157635 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157634 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157637
           gx#current-expander-context
           _ctx156743_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157636
           gxc#current-compile-runtime-sections
           __tmp157635
           gxc#current-compile-runtime-names
           __tmp157634))))
    (define gxc#collect-bindings
      (lambda (_ctx156741_)
        (let ((__tmp157643
               (##structure-ref _ctx156741_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157643))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156687_)
        (letrec ((_compile1156689_
                  (lambda (_ctx156730_)
                    (let* ((_code156732_
                            (##structure-ref
                             _ctx156730_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156736_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156732_))
                                (let ((_idstr156734_
                                       (let ((__tmp157644
                                              (##structure-ref
                                               _ctx156730_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157644))))
                                  (string-append _idstr156734_ '"__0"))
                                '#f)))
                      (if _rt156736_
                          (begin
                            (let ((__tmp157645
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157645 _ctx156730_ _rt156736_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156691_
                               _ctx156730_
                               _code156732_)))
                          (let ((_path156739_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156730_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156739_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156692_
                         _ctx156730_
                         _code156732_
                         _rt156736_)))))
                 (_context-timestamp156690_
                  (lambda (_ctx156728_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156728_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156691_
                  (lambda (_ctx156710_ _code156711_)
                    (let* ((_lifts156713_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156716_
                            (let ((__tmp157648
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156711_))))
                                  (__tmp157647
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157646
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157648
                               gx#current-expander-context
                               _ctx156710_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156713_
                               gxc#current-compile-marks
                               __tmp157647
                               gxc#current-compile-identifiers
                               __tmp157646)))
                           (_runtime-code156718_
                            (if (let ((__tmp157652 (unbox _lifts156713_)))
                                  (declare (not safe))
                                  (null? __tmp157652))
                                _runtime-code156716_
                                (let ((__tmp157649
                                       (let ((__tmp157651
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156716_
                                                      '())))
                                             (__tmp157650
                                              (reverse (unbox _lifts156713_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157651
                                                 __tmp157650))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157649))))
                           (_runtime-code156720_
                            (let ((__tmp157653
                                   (let ((__tmp157655
                                          (let ((__tmp157656
                                                 (let ((__tmp157659
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156690_
                                                           _ctx156710_)))
                                                       (__tmp157657
                                                        (let ((__tmp157658
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157658
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157659
                                                         __tmp157657))))
                                            (declare (not safe))
                                            (cons 'define __tmp157656)))
                                         (__tmp157654
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156718_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157655 __tmp157654))))
                              (declare (not safe))
                              (cons 'begin __tmp157653)))
                           (_scm0156722_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156710_
                               '0
                               '".scm"))))
                      (let ((_scms156725_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156710_))))
                        (let ((__tmp157660
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156722_
                                    _runtime-code156720_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157660
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156725_)
                            (delete-file _scms156725_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156722_
                           '" => "
                           _scms156725_))
                        (copy-file _scm0156722_ _scms156725_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156722_))))))
                 (_generate-loader-code156692_
                  (lambda (_ctx156699_ _code156700_ _rt156701_)
                    (let* ((_loader-code156704_
                            (let ((__tmp157661
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156700_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157661
                               gx#current-expander-context
                               _ctx156699_)))
                           (_loader-code156706_
                            (if _rt156701_
                                (let ((__tmp157662
                                       (let ((__tmp157663
                                              (let ((__tmp157664
                                                     (let ((__tmp157665
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157664 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156704_
                                               __tmp157663))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157662))
                                _loader-code156704_)))
                      (let ((__tmp157666
                             (lambda ()
                               (let ((__tmp157667
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156699_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157667
                                  _loader-code156706_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157666
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156694_
                 (let ((__tmp157668
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156687_))))
                   (declare (not safe))
                   (cons _ctx156687_ __tmp157668))))
            (for-each
             (lambda (_ctx156696_)
               (let ((__tmp157669
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156689_ _ctx156696_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157669
                  gxc#current-compile-decls
                  '())))
             _all-modules156694_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156584_)
        (letrec ((_compile-ssi156586_
                  (lambda (_code156657_)
                    (let* ((_path156659_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156584_
                               '#f
                               '".ssi")))
                           (_prelude156670_
                            (let* ((_super156661_
                                    (##structure-ref
                                     _ctx156584_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156663_
                                    (##structure-ref
                                     _super156661_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156663_
                                  ((lambda (_g156665156667_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156665156667_)))
                                   _$e156663_)
                                  ':<root>)))
                           (_ns156672_
                            (##structure-ref
                             _ctx156584_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156674_
                            (symbol->string
                             (##structure-ref
                              _ctx156584_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156681_
                            (let ((_$e156676_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156674_ '#\/))))
                              (if _$e156676_
                                  ((lambda (_x156679_)
                                     (string->symbol
                                      (substring _idstr156674_ '0 _x156679_)))
                                   _$e156676_)
                                  '#f)))
                           (_rt156683_
                            (let ((__tmp157670
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157670 _ctx156584_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156659_))
                      (let ((__tmp157671
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156670_))
                               (if _pkg156681_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156681_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156672_))
                               (newline)
                               (pretty-print _code156657_)
                               (if _rt156683_
                                   (pretty-print
                                    (let ((__tmp157672
                                           (let ((__tmp157676
                                                  (let ((__tmp157677
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157677)))
                                                 (__tmp157673
                                                  (let ((__tmp157674
                                                         (let ((__tmp157675
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156683_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157674 '()))))
                                             (declare (not safe))
                                             (cons __tmp157676 __tmp157673))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157672)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156659_
                         __tmp157671)))))
                 (_compile-phi156587_
                  (lambda (_part156597_)
                    (let* ((_part156598156611_ _part156597_)
                           (_E156600156615_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156598156611_))))
                           (_K156601156626_
                            (lambda (_code156618_
                                     _n156619_
                                     _phi156620_
                                     _phi-ctx156621_)
                              (let* ((_code156624_
                                      (let ((__tmp157678
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156618_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157678
                                         gx#current-expander-context
                                         _phi-ctx156621_
                                         gx#current-expander-phi
                                         _phi156620_)))
                                     (__tmp157679
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156584_
                                         _n156619_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157679
                                 _code156624_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156598156611_))
                          (let ((_hd156602156629_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156598156611_)))
                                (_tl156603156631_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156598156611_))))
                            (let ((_phi-ctx156634_ _hd156602156629_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156603156631_))
                                  (let ((_hd156604156636_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156603156631_)))
                                        (_tl156605156638_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156603156631_))))
                                    (let ((_phi156641_ _hd156604156636_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156605156638_))
                                          (let ((_hd156606156643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156605156638_)))
                                                (_tl156607156645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156605156638_))))
                                            (let ((_n156648_ _hd156606156643_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156607156645_))
                                                  (let ((_hd156608156650_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156607156645_)))
                                                        (_tl156609156652_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156607156645_))))
                                                    (let ((_code156655_
                                                           _hd156608156650_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156609156652_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156601156626_
                                                             _code156655_
                                                             _n156648_
                                                             _phi156641_
                                                             _phi-ctx156634_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156600156615_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156600156615_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156600156615_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156600156615_)))))
                          (let () (declare (not safe)) (_E156600156615_)))))))
          (let ((_g157680_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156584_))))
            (begin
              (let ((_g157681_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157680_)
                           (##vector-length _g157680_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157681_ 2)))
                    (error "Context expects 2 values" _g157681_)))
              (let ((_ssi-code156589_
                     (let () (declare (not safe)) (##vector-ref _g157680_ 0)))
                    (_phi-code156590_
                     (let () (declare (not safe)) (##vector-ref _g157680_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156586_ _ssi-code156589_))
                  (let ((_threads156595_
                         (map (lambda (_code156592_)
                                (let ((__tmp157682
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156587_
                                            _code156592_)))))
                                  (declare (not safe))
                                  (spawn __tmp157682)))
                              _phi-code156590_)))
                    (for-each gxc#join! _threads156595_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156567_)
        (let* ((_path156569_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156567_ '#f '".ssxi.ss")))
               (_code156571_
                (let ((__tmp157683
                       (##structure-ref
                        _ctx156567_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157683)))
               (_idstr156573_
                (symbol->string
                 (##structure-ref _ctx156567_ '1 gx#expander-context::t '#f)))
               (_pkg156580_
                (let ((_$e156575_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156573_ '#\/))))
                  (if _$e156575_
                      ((lambda (_x156578_)
                         (string->symbol
                          (substring _idstr156573_ '0 _x156578_)))
                       _$e156575_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156569_))
          (let ((__tmp157684
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156580_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156580_))
                       '#!void)
                   (newline)
                   (pretty-print _code156571_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156569_ __tmp157684)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156560_)
        (let* ((_state156562_
                (let ((__obj157442
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157442 _ctx156560_)
                  __obj157442))
               (_ssi-code156564_
                (let ((__tmp157685
                       (##structure-ref
                        _ctx156560_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp157685 _state156562_))))
          (values _ssi-code156564_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156562_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156553_)
        (let ((_lifts156555_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157688
                 (lambda ()
                   (let ((_code156558_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156553_))))
                     (if (let ((__tmp157692 (unbox _lifts156555_)))
                           (declare (not safe))
                           (null? __tmp157692))
                         _code156558_
                         (let ((__tmp157689
                                (let ((__tmp157691
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156558_ '())))
                                      (__tmp157690
                                       (reverse (unbox _lifts156555_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157691 __tmp157690))))
                           (declare (not safe))
                           (cons 'begin __tmp157689))))))
                (__tmp157687
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157686
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157688
             gxc#current-compile-lift
             _lifts156555_
             gxc#current-compile-marks
             __tmp157687
             gxc#current-compile-identifiers
             __tmp157686)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156549_)
        (let ((_modules156551_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157693
                 (##structure-ref _ctx156549_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157693 _modules156551_))
          (reverse (unbox _modules156551_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156532_ _code156533_ _phi?156534_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156532_))
        (let ((__tmp157694
               (lambda ()
                 (pretty-print
                  (let ((__tmp157695
                         (let ((__tmp157702
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157696
                                (let ((__tmp157701
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157697
                                       (let ((__tmp157700
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157698
                                              (let ((__tmp157699
                                                     (if _phi?156534_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157699))))
                                         (declare (not safe))
                                         (cons __tmp157700 __tmp157698))))
                                  (declare (not safe))
                                  (cons __tmp157701 __tmp157697))))
                           (declare (not safe))
                           (cons __tmp157702 __tmp157696))))
                    (declare (not safe))
                    (cons 'declare __tmp157695)))
                 (pretty-print _code156533_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156532_ __tmp157694))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156532_ _phi?156534_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156532_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156540_ _code156541_)
        (let ((_phi?156543_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156540_ _code156541_ _phi?156543_))))
    (define gxc#compile-scm-file
      (lambda _g157704_
        (let ((_g157703_ (let () (declare (not safe)) (##length _g157704_))))
          (cond ((let () (declare (not safe)) (##fx= _g157703_ 2))
                 (apply (lambda (_path156540_ _code156541_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156540_
                             _code156541_)))
                        _g157704_))
                ((let () (declare (not safe)) (##fx= _g157703_ 3))
                 (apply (lambda (_path156545_ _code156546_ _phi?156547_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156545_
                             _code156546_
                             _phi?156547_)))
                        _g157704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157704_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156433_)
        (let _lp156435_ ((_rest156437_ (gxc#current-compile-gsc-options))
                         (_opts156438_ '()))
          (let* ((_rest156439156459_ _rest156437_)
                 (_else156443156467_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156433_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157705
                               (let ((__tmp157706 (reverse _opts156438_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157706))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157705))
                        (reverse _opts156438_)))))
            (let ((_K156453156510_
                   (lambda (_rest156508_)
                     (let ()
                       (declare (not safe))
                       (_lp156435_ _rest156508_ _opts156438_))))
                  (_K156448156492_
                   (lambda (_rest156490_)
                     (let ()
                       (declare (not safe))
                       (_lp156435_ _rest156490_ _opts156438_))))
                  (_K156445156474_
                   (lambda (_rest156471_ _opt156472_)
                     (let ((__tmp157707
                            (let ()
                              (declare (not safe))
                              (cons _opt156472_ _opts156438_))))
                       (declare (not safe))
                       (_lp156435_ _rest156471_ __tmp157707)))))
              (if (let () (declare (not safe)) (##pair? _rest156439156459_))
                  (let ((_tl156455156515_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156439156459_)))
                        (_hd156454156513_
                         (let ()
                           (declare (not safe))
                           (##car _rest156439156459_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156454156513_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156455156515_))
                            (let* ((_tl156457156518_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156455156515_)))
                                   (_rest156521_ _tl156457156518_))
                              (declare (not safe))
                              (_K156453156510_ _rest156521_))
                            (let ((_opt156482_ _hd156454156513_)
                                  (_rest156484_ _tl156455156515_))
                              (let ()
                                (declare (not safe))
                                (_K156445156474_ _rest156484_ _opt156482_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156454156513_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156455156515_))
                                (let* ((_tl156452156500_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156455156515_)))
                                       (_rest156503_ _tl156452156500_))
                                  (declare (not safe))
                                  (_K156448156492_ _rest156503_))
                                (let ((_opt156482_ _hd156454156513_)
                                      (_rest156484_ _tl156455156515_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156445156474_
                                     _rest156484_
                                     _opt156482_))))
                            (let ((_opt156482_ _hd156454156513_)
                                  (_rest156484_ _tl156455156515_))
                              (let ()
                                (declare (not safe))
                                (_K156445156474_ _rest156484_ _opt156482_))))))
                  (let () (declare (not safe)) (_else156443156467_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156527_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156527_))))
    (define gxc#gsc-link-options
      (lambda _g157709_
        (let ((_g157708_ (let () (declare (not safe)) (##length _g157709_))))
          (cond ((let () (declare (not safe)) (##fx= _g157708_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157709_))
                ((let () (declare (not safe)) (##fx= _g157708_ 1))
                 (apply (lambda (_phi?156529_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156529_)))
                        _g157709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157709_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156334_)
        (let _lp156336_ ((_rest156338_ (gxc#current-compile-gsc-options))
                         (_opts156339_ '()))
          (let* ((_rest156340156360_ _rest156338_)
                 (_else156344156368_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156334_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157710
                               (let ((__tmp157711 (reverse _opts156339_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157711))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157710))
                        (reverse _opts156339_)))))
            (let ((_K156354156407_
                   (lambda (_rest156404_ _opt156405_)
                     (let ((__tmp157712
                            (let ((__tmp157713
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156339_))))
                              (declare (not safe))
                              (cons _opt156405_ __tmp157713))))
                       (declare (not safe))
                       (_lp156336_ _rest156404_ __tmp157712))))
                  (_K156349156388_
                   (lambda (_rest156386_)
                     (let ()
                       (declare (not safe))
                       (_lp156336_ _rest156386_ _opts156339_))))
                  (_K156346156374_
                   (lambda (_rest156372_)
                     (let ()
                       (declare (not safe))
                       (_lp156336_ _rest156372_ _opts156339_)))))
              (if (let () (declare (not safe)) (##pair? _rest156340156360_))
                  (let ((_tl156356156412_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156340156360_)))
                        (_hd156355156410_
                         (let ()
                           (declare (not safe))
                           (##car _rest156340156360_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156355156410_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156356156412_))
                            (let ((_tl156358156417_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156356156412_)))
                                  (_hd156357156415_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156356156412_))))
                              (let ((_opt156420_ _hd156357156415_)
                                    (_rest156422_ _tl156358156417_))
                                (let ()
                                  (declare (not safe))
                                  (_K156354156407_ _rest156422_ _opt156420_))))
                            (let ((_rest156380_ _tl156356156412_))
                              (declare (not safe))
                              (_K156346156374_ _rest156380_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156355156410_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156356156412_))
                                (let* ((_tl156353156396_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156356156412_)))
                                       (_rest156399_ _tl156353156396_))
                                  (declare (not safe))
                                  (_K156349156388_ _rest156399_))
                                (let ((_rest156380_ _tl156356156412_))
                                  (declare (not safe))
                                  (_K156346156374_ _rest156380_)))
                            (let ((_rest156380_ _tl156356156412_))
                              (declare (not safe))
                              (_K156346156374_ _rest156380_)))))
                  (let () (declare (not safe)) (_else156344156368_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156428_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156428_))))
    (define gxc#gsc-cc-options
      (lambda _g157715_
        (let ((_g157714_ (let () (declare (not safe)) (##length _g157715_))))
          (cond ((let () (declare (not safe)) (##fx= _g157714_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157715_))
                ((let () (declare (not safe)) (##fx= _g157714_ 1))
                 (apply (lambda (_phi?156430_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156430_)))
                        _g157715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157715_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156329_)
        (let* ((_user-staticdir156331_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157716
                (let ((__tmp157717
                       (string-append
                        '"-I "
                        _staticdir156329_
                        '" -I "
                        _user-staticdir156331_)))
                  (declare (not safe))
                  (cons __tmp157717 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157716))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156241_ ((_rest156243_ (gxc#current-compile-gsc-options))
                         (_opts156244_ '()))
          (let* ((_rest156245156265_ _rest156243_)
                 (_else156249156273_ (lambda () _opts156244_)))
            (let ((_K156259156316_
                   (lambda (_rest156314_)
                     (let ()
                       (declare (not safe))
                       (_lp156241_ _rest156314_ _opts156244_))))
                  (_K156254156294_
                   (lambda (_rest156291_ _opt156292_)
                     (let ((__tmp157718
                            (append _opts156244_
                                    (let ((__tmp157719
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156292_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp157719)))))
                       (declare (not safe))
                       (_lp156241_ _rest156291_ __tmp157718))))
                  (_K156251156279_
                   (lambda (_rest156277_)
                     (let ()
                       (declare (not safe))
                       (_lp156241_ _rest156277_ _opts156244_)))))
              (if (let () (declare (not safe)) (##pair? _rest156245156265_))
                  (let ((_tl156261156321_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156245156265_)))
                        (_hd156260156319_
                         (let ()
                           (declare (not safe))
                           (##car _rest156245156265_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156260156319_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156261156321_))
                            (let* ((_tl156263156324_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156261156321_)))
                                   (_rest156327_ _tl156263156324_))
                              (declare (not safe))
                              (_K156259156316_ _rest156327_))
                            (let ((_rest156285_ _tl156261156321_))
                              (declare (not safe))
                              (_K156251156279_ _rest156285_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156260156319_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156261156321_))
                                (let ((_tl156258156304_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156261156321_)))
                                      (_hd156257156302_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156261156321_))))
                                  (let ((_opt156307_ _hd156257156302_)
                                        (_rest156309_ _tl156258156304_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156254156294_
                                       _rest156309_
                                       _opt156307_))))
                                (let ((_rest156285_ _tl156261156321_))
                                  (declare (not safe))
                                  (_K156251156279_ _rest156285_)))
                            (let ((_rest156285_ _tl156261156321_))
                              (declare (not safe))
                              (_K156251156279_ _rest156285_)))))
                  (let () (declare (not safe)) (_else156249156273_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156238_)
        (let ((__tmp157720
               (let () (declare (not safe)) (string-empty? _str156238_))))
          (declare (not safe))
          (not __tmp157720))))
    (define gxc#gsc-compile-file
      (lambda (_path156206_ _phi?156207_)
        (letrec ((_gsc-link-path156209_
                  (lambda (_base-path156230_)
                    (let _lp156232_ ((_n156234_ '1))
                      (let ((_path156236_
                             (string-append
                              _base-path156230_
                              '".o"
                              (number->string _n156234_))))
                        (if (file-exists? _path156236_)
                            (let ((__tmp157721
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156234_ '1))))
                              (declare (not safe))
                              (_lp156232_ __tmp157721))
                            _path156236_))))))
          (let* ((_base-path156211_ (path-strip-extension _path156206_))
                 (_path-c156213_ (string-append _base-path156211_ '".c"))
                 (_path-o156215_ (string-append _base-path156211_ '".o"))
                 (_link-path156217_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156209_ _base-path156211_)))
                 (_link-path-c156219_ (string-append _link-path156217_ '".c"))
                 (_link-path-o156221_ (string-append _link-path156217_ '".o"))
                 (_gsc-link-opts156223_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156207_)))
                 (_gsc-cc-opts156225_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156207_)))
                 (_gcc-ld-opts156227_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157728 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157722
                   (let ((__tmp157723
                          (let ((__tmp157724
                                 (let ((__tmp157725
                                        (let ((__tmp157726
                                               (let ((__tmp157727
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156206_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157727
                                                         _gsc-link-opts156223_))))
                                          (declare (not safe))
                                          (cons _link-path-c156219_
                                                __tmp157726))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157725))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157724))))
                     (declare (not safe))
                     (cons '"-link" __tmp157723))))
              (declare (not safe))
              (gxc#invoke __tmp157728 __tmp157722 'stdout-redirection: '#t))
            (let ((__tmp157735 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157729
                   (let ((__tmp157730
                          (let ((__tmp157731
                                 (let ((__tmp157732
                                        (let ((__tmp157733
                                               (let ((__tmp157734
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156219_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156213_
                                                       __tmp157734))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157733
                                                  _gsc-cc-opts156225_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157732))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157731))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157730))))
              (declare (not safe))
              (gxc#invoke __tmp157735 __tmp157729 'stdout-redirection: '#t))
            (let ((__tmp157741 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157736
                   (let ((__tmp157737
                          (let ((__tmp157738
                                 (let ((__tmp157739
                                        (let ((__tmp157740
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156221_
                                                       _gcc-ld-opts156227_))))
                                          (declare (not safe))
                                          (cons _path-o156215_ __tmp157740))))
                                   (declare (not safe))
                                   (cons _link-path156217_ __tmp157739))))
                            (declare (not safe))
                            (cons '"-o" __tmp157738))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157737))))
              (declare (not safe))
              (gxc#invoke __tmp157741 __tmp157736))
            (for-each
             delete-file
             (let ((__tmp157742
                    (let ((__tmp157743
                           (let ((__tmp157744
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156221_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156219_ __tmp157744))))
                      (declare (not safe))
                      (cons _path-o156215_ __tmp157743))))
               (declare (not safe))
               (cons _path-c156213_ __tmp157742)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156177_ _n156178_ _ext156179_)
        (letrec ((_module-relative-path156181_
                  (lambda (_ctx156204_)
                    (path-strip-directory
                     (let ((__tmp157745
                            (##structure-ref
                             _ctx156204_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157745)))))
                 (_module-source-directory156182_
                  (lambda (_ctx156200_)
                    (path-directory
                     (let ((_mpath156202_
                            (##structure-ref
                             _ctx156200_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156202_))
                           _mpath156202_
                           (let ()
                             (declare (not safe))
                             (last _mpath156202_)))))))
                 (_section-string156183_
                  (lambda (_n156198_)
                    (if (let () (declare (not safe)) (number? _n156198_))
                        (number->string _n156198_)
                        (if (let () (declare (not safe)) (symbol? _n156198_))
                            (symbol->string _n156198_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156198_))
                                _n156198_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156198_)))))))
                 (_file-name156184_
                  (lambda (_path156196_)
                    (if _n156178_
                        (string-append
                         _path156196_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156183_ _n156178_))
                         _ext156179_)
                        (string-append _path156196_ _ext156179_))))
                 (_file-path156185_
                  (lambda ()
                    (let ((_$e156191_ (gxc#current-compile-output-dir)))
                      (if _$e156191_
                          ((lambda (_outdir156194_)
                             (path-expand
                              (let ((__tmp157747
                                     (let ((__tmp157748
                                            (##structure-ref
                                             _ctx156177_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157748))))
                                (declare (not safe))
                                (_file-name156184_ __tmp157747))
                              _outdir156194_))
                           _$e156191_)
                          (path-expand
                           (let ((__tmp157746
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156181_
                                     _ctx156177_))))
                             (declare (not safe))
                             (_file-name156184_ __tmp157746))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156182_
                              _ctx156177_))))))))
          (let ((_path156187_
                 (let () (declare (not safe)) (_file-path156185_))))
            (let ((__tmp157749
                   (lambda ()
                     (let ((__tmp157750 (path-directory _path156187_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157750)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157749))
            _path156187_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156159_)
        (letrec ((_file-name156161_
                  (lambda (_id156175_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156175_))
                     '".scm")))
                 (_file-path156162_
                  (lambda ()
                    (let* ((_file156168_
                            (let ((__tmp157751
                                   (##structure-ref
                                    _ctx156159_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156161_ __tmp157751)))
                           (_$e156170_ (gxc#current-compile-output-dir)))
                      (if _$e156170_
                          ((lambda (_outdir156173_)
                             (path-expand
                              _file156168_
                              (path-expand '"static" _outdir156173_)))
                           _$e156170_)
                          (path-expand _file156168_ '"static"))))))
          (let ((_path156164_
                 (let () (declare (not safe)) (_file-path156162_))))
            (let ((__tmp157752
                   (lambda ()
                     (let ((__tmp157753 (path-directory _path156164_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157753)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157752))
            _path156164_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156153_ _opts156154_)
        (let ((_$e156156_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156154_))))
          (if _$e156156_
              (values _$e156156_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156153_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156146_)
        (if (let () (declare (not safe)) (string? _idstr156146_))
            (let* ((_str156148_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156146_)))
                   (_strs156150_
                    (let ()
                      (declare (not safe))
                      (string-split _str156148_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156150_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156146_))
                (let ((__tmp157754 (symbol->string _idstr156146_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp157754))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156146_))))))
    (define gxc#invoke__%
      (lambda (_g157755_
               _stdout-redirection156107156111_
               _stderr-redirection156108156113_
               _program156115_
               _args156116_)
        (let* ((_stdout-redirection156118_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156107156111_ absent-value))
                    '#f
                    _stdout-redirection156107156111_))
               (_stderr-redirection156120_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156108156113_ absent-value))
                    '#f
                    _stderr-redirection156108156113_)))
          (let ((__tmp157756
                 (let ()
                   (declare (not safe))
                   (cons _program156115_ _args156116_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp157756))
          (let* ((_proc156122_
                  (open-process
                   (let ((__tmp157757
                          (let ((__tmp157758
                                 (let ((__tmp157759
                                        (let ((__tmp157760
                                               (let ((__tmp157761
                                                      (let ((__tmp157762
                                                             (let ((__tmp157763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156120_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp157763))))
                (declare (not safe))
                (cons _stdout-redirection156118_ __tmp157762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp157761))))
                                          (declare (not safe))
                                          (cons _args156116_ __tmp157760))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp157759))))
                            (declare (not safe))
                            (cons _program156115_ __tmp157758))))
                     (declare (not safe))
                     (cons 'path: __tmp157757))))
                 (_output156127_
                  (if (or _stdout-redirection156118_
                          _stderr-redirection156120_)
                      (read-line _proc156122_ '#f)
                      '#f)))
            (let ((_status156130_ (process-status _proc156122_)))
              (close-port _proc156122_)
              (if (let () (declare (not safe)) (zero? _status156130_))
                  '#!void
                  (begin
                    (display _output156127_)
                    (let ((__tmp157764
                           (let ()
                             (declare (not safe))
                             (cons _program156115_ _args156116_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp157764
                       _status156130_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156106156135_ . _args156137_)
        (apply gxc#invoke__%
               _keys156106156135_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156106156135_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156106156135_
                  'stderr-redirection:
                  absent-value))
               _args156137_)))
    (define gxc#invoke
      (lambda _args156109156143_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156109156143_)))
    (define gxc#join!
      (lambda (_thread156100_)
        (let ((__tmp157766
               (lambda (_exn156102_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156102_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156102_)))
                     (raise _exn156102_))))
              (__tmp157765 (lambda () (thread-join! _thread156100_))))
          (declare (not safe))
          (with-catch __tmp157766 __tmp157765))))))
