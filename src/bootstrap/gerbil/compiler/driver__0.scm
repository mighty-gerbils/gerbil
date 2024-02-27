(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1709038447)
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
      (lambda (_path157355_ _fun157356_)
        (with-output-to-file
         (let ((__tmp157449
                (let ()
                  (declare (not safe))
                  (cons _path157355_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp157449))
         _fun157356_)))
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
      (lambda (_gerbil-libdir157350_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157350_)))
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
      (lambda (_dir157348_) (delete-file-or-directory _dir157348_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157322_ _opts157323_)
        (if (let () (declare (not safe)) (string? _srcpath157322_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157322_)))
        (let ((_outdir157325_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157323_)))
              (_invoke-gsc?157326_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157323_)))
              (_gsc-options157327_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157323_)))
              (_keep-scm?157328_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157323_)))
              (_verbosity157329_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157323_)))
              (_optimize157330_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157323_)))
              (_debug157331_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157323_)))
              (_gen-ssxi157332_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157323_))))
          (if _outdir157325_
              (let ((__tmp157450
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157325_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157450))
              '#!void)
          (if _optimize157330_
              (let ((__tmp157451
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157451))
              '#!void)
          (let ((__tmp157455
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157322_))
                   (let ((__tmp157456
                          (let ((__tmp157457
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157322_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157457))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157456))))
                (__tmp157454
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157452
                 (let ((__tmp157453
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157322_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp157453))))
            (declare (not safe))
            (call-with-parameters
             __tmp157455
             gxc#current-compile-output-dir
             _outdir157325_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157326_
             gxc#current-compile-gsc-options
             _gsc-options157327_
             gxc#current-compile-keep-scm
             _keep-scm?157328_
             gxc#current-compile-verbose
             _verbosity157329_
             gxc#current-compile-optimize
             _optimize157330_
             gxc#current-compile-debug
             _debug157331_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157332_
             gxc#current-compile-timestamp
             __tmp157454
             gxc#current-compile-context
             __tmp157452
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157341_)
        (let ((_opts157343_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157341_ _opts157343_))))
    (define gxc#compile-module
      (lambda _g157459_
        (let ((_g157458_ (let () (declare (not safe)) (##length _g157459_))))
          (cond ((let () (declare (not safe)) (##fx= _g157458_ 1))
                 (apply (lambda (_srcpath157341_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157341_)))
                        _g157459_))
                ((let () (declare (not safe)) (##fx= _g157458_ 2))
                 (apply (lambda (_srcpath157345_ _opts157346_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157345_
                             _opts157346_)))
                        _g157459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157459_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157298_ _opts157299_)
        (if (let () (declare (not safe)) (string? _srcpath157298_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157298_)))
        (let ((_outdir157301_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157299_)))
              (_invoke-gsc?157302_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157299_)))
              (_gsc-options157303_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157299_)))
              (_keep-scm?157304_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157299_)))
              (_verbosity157305_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157299_)))
              (_debug157306_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157299_))))
          (if _outdir157301_
              (let ((__tmp157460
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157301_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157460))
              '#!void)
          (let ((__tmp157464
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157298_))
                   (let ((__tmp157465
                          (let ((__tmp157466
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157298_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157466))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157465
                      _opts157299_))))
                (__tmp157463
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157461
                 (let ((__tmp157462
                        (let ()
                          (declare (not safe))
                          (cons _srcpath157298_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp157462))))
            (declare (not safe))
            (call-with-parameters
             __tmp157464
             gxc#current-compile-output-dir
             _outdir157301_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157302_
             gxc#current-compile-gsc-options
             _gsc-options157303_
             gxc#current-compile-keep-scm
             _keep-scm?157304_
             gxc#current-compile-verbose
             _verbosity157305_
             gxc#current-compile-debug
             _debug157306_
             gxc#current-compile-timestamp
             __tmp157463
             gxc#current-compile-context
             __tmp157461
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157314_)
        (let ((_opts157316_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157314_ _opts157316_))))
    (define gxc#compile-exe
      (lambda _g157468_
        (let ((_g157467_ (let () (declare (not safe)) (##length _g157468_))))
          (cond ((let () (declare (not safe)) (##fx= _g157467_ 1))
                 (apply (lambda (_srcpath157314_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157314_)))
                        _g157468_))
                ((let () (declare (not safe)) (##fx= _g157467_ 2))
                 (apply (lambda (_srcpath157318_ _opts157319_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157318_ _opts157319_)))
                        _g157468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157468_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157294_ _opts157295_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157295_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157294_
               _opts157295_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157294_
               _opts157295_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157177_ _opts157178_)
        (letrec ((_generate-stub157180_
                  (lambda (_builtin-modules157290_)
                    (let ((_mod-main157292_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157177_ 'main))))
                      (write (let ((__tmp157469
                                    (let ((__tmp157470
                                           (let ((__tmp157471
                                                  (let ((__tmp157472
                                                         (let ((__tmp157474
                                                                (let ((__tmp157475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules157290_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157475)))
                       (__tmp157473
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp157474 __tmp157473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp157472))))
                                             (declare (not safe))
                                             (cons __tmp157471 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp157470))))
                               (declare (not safe))
                               (cons 'define __tmp157469)))
                      (write (let ((__tmp157476
                                    (let ((__tmp157515
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157477
                                           (let ((__tmp157478
                                                  (let ((__tmp157479
                                                         (let ((__tmp157503
                                                                (let ((__tmp157504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157505
                                      (let ((__tmp157513
                                             (let ((__tmp157514
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp157514)))
                                            (__tmp157506
                                             (let ((__tmp157507
                                                    (let ((__tmp157508
                                                           (let ((__tmp157509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157510
                                 (let ((__tmp157511
                                        (let ((__tmp157512
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp157512 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp157511))))
                            (declare (not safe))
                            (cons __tmp157510 '()))))
                     (declare (not safe))
                     (cons _mod-main157292_ __tmp157509))))
              (declare (not safe))
              (cons 'apply __tmp157508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157507 '()))))
                                        (declare (not safe))
                                        (cons __tmp157513 __tmp157506))))
                                 (declare (not safe))
                                 (cons '() __tmp157505))))
                          (declare (not safe))
                          (cons 'lambda __tmp157504)))
                       (__tmp157480
                        (let ((__tmp157481
                               (let ((__tmp157482
                                      (let ((__tmp157483
                                             (let ((__tmp157494
                                                    (let ((__tmp157495
                                                           (let ((__tmp157496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157497
                                 (let ((__tmp157498
                                        (let ((__tmp157499
                                               (let ((__tmp157500
                                                      (let ((__tmp157501
                                                             (let ((__tmp157502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp157502 '()))))
                (declare (not safe))
                (cons 'force-output __tmp157501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp157500 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp157499))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp157498))))
                            (declare (not safe))
                            (cons __tmp157497 '()))))
                     (declare (not safe))
                     (cons 'void __tmp157496))))
              (declare (not safe))
              (cons 'with-catch __tmp157495)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp157484
                                                    (let ((__tmp157485
                                                           (let ((__tmp157486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp157487
                                 (let ((__tmp157488
                                        (let ((__tmp157489
                                               (let ((__tmp157490
                                                      (let ((__tmp157491
                                                             (let ((__tmp157492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp157493
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp157493 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp157492))))
                (declare (not safe))
                (cons __tmp157491 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp157490))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp157489))))
                                   (declare (not safe))
                                   (cons __tmp157488 '()))))
                            (declare (not safe))
                            (cons 'void __tmp157487))))
                     (declare (not safe))
                     (cons 'with-catch __tmp157486))))
              (declare (not safe))
              (cons __tmp157485 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp157494
                                                     __tmp157484))))
                                        (declare (not safe))
                                        (cons '() __tmp157483))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp157482))))
                          (declare (not safe))
                          (cons __tmp157481 '()))))
                   (declare (not safe))
                   (cons __tmp157503 __tmp157480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp157479))))
                                             (declare (not safe))
                                             (cons __tmp157478 '()))))
                                      (declare (not safe))
                                      (cons __tmp157515 __tmp157477))))
                               (declare (not safe))
                               (cons 'define __tmp157476)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts157181_
                  (lambda (_libgerbil157288_)
                    (call-with-input-file
                     (string-append _libgerbil157288_ '".ldd")
                     read)))
                 (_replace-extension157182_
                  (lambda (_path157285_ _ext157286_)
                    (string-append
                     (path-strip-extension _path157285_)
                     _ext157286_)))
                 (_not-exclude-module?157183_
                  (lambda (_ctx157281_)
                    (let ((_id-str157283_
                           (symbol->string
                            (##structure-ref
                             _ctx157281_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157517
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str157283_))))
                            (declare (not safe))
                            (not __tmp157517))
                          (let ((__tmp157516
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str157283_))))
                            (declare (not safe))
                            (not __tmp157516))
                          '#f))))
                 (_not-file-empty?157184_
                  (lambda (_path157279_)
                    (let ((__tmp157518
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157279_))))
                      (declare (not safe))
                      (not __tmp157518))))
                 (_compile-stub157185_
                  (lambda (_output-scm157192_ _output-bin157193_)
                    (let* ((_gerbil-home157195_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157197_
                            (path-expand '"lib" _gerbil-home157195_))
                           (_gerbil-staticdir157199_
                            (path-expand '"static" _gerbil-libdir157197_))
                           (_gxlink157201_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157197_))
                           (_tmp157203_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path157207_
                            (lambda (_f157205_)
                              (path-expand
                               (path-strip-directory _f157205_)
                               _tmp157203_)))
                           (_deps157209_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157177_)))
                           (_deps157211_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?157183_
                                      _deps157209_)))
                           (_src-deps-scm157213_
                            (map gxc#find-static-module-file _deps157211_))
                           (_src-deps-scm157215_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?157184_
                                      _src-deps-scm157213_)))
                           (_src-deps-scm157217_
                            (map path-expand _src-deps-scm157215_))
                           (_deps-scm157219_
                            (map _tmp-path157207_ _src-deps-scm157217_))
                           (_deps-c157225_
                            (map (lambda (_g157220157222_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157182_
                                      _g157220157222_
                                      '".c")))
                                 _deps-scm157219_))
                           (_deps-o157231_
                            (map (lambda (_g157226157228_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157182_
                                      _g157226157228_
                                      '".o")))
                                 _deps-scm157219_))
                           (_src-bin-scm157233_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157177_)))
                           (_src-bin-scm157235_
                            (path-expand _src-bin-scm157233_))
                           (_bin-scm157237_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157207_ _src-bin-scm157235_)))
                           (_bin-c157239_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157182_
                               _bin-scm157237_
                               '".c")))
                           (_bin-o157241_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157182_
                               _bin-scm157237_
                               '".o")))
                           (_output-bin157243_
                            (path-expand _output-bin157193_))
                           (_output-scm157245_
                            (path-expand _output-scm157192_))
                           (_output-c157247_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157182_
                               _output-scm157245_
                               '".c")))
                           (_output-o157249_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157182_
                               _output-scm157245_
                               '".o")))
                           (_output_-c157251_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157182_
                               _output-scm157245_
                               '"_.c")))
                           (_output_-o157253_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157182_
                               _output-scm157245_
                               '"_.o")))
                           (_gsc-link-opts157255_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157257_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157259_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157199_)))
                           (_output-ld-opts157261_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157263_
                            (path-expand '"libgerbil.a" _gerbil-libdir157197_))
                           (_libgerbil.so157265_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157197_))
                           (_libgerbil-ld-opts157267_
                            (if (file-exists? _libgerbil.so157265_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157181_
                                   _libgerbil.so157265_))
                                (if (file-exists? _libgerbil.a157263_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157181_
                                       _libgerbil.a157263_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a157263_
                                       _libgerbil.so157265_)))))
                           (_rpath157269_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157197_)))
                           (_builtin-modules157273_
                            (map (lambda (_mod157271_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod157271_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx157177_ _deps157211_)))))
                      (let ((__tmp157519
                             (lambda ()
                               (let ((__tmp157520
                                      (path-directory _output-bin157243_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157520)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157519))
                      (let ((__tmp157521
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157180_
                                  _builtin-modules157273_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157245_
                         __tmp157521))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157522
                                   (lambda () (create-directory _tmp157203_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157522))
                            (for-each
                             copy-file
                             _src-deps-scm157217_
                             _deps-scm157219_)
                            (copy-file _src-bin-scm157235_ _bin-scm157237_)
                            (let ((__tmp157530
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157523
                                   (let ((__tmp157524
                                          (let ((__tmp157525
                                                 (let ((__tmp157526
                                                        (let ((__tmp157527
                                                               (let ((__tmp157528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157529
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm157245_ '()))))
                                (declare (not safe))
                                (cons _bin-scm157237_ __tmp157529))))
                         (declare (not safe))
                         (foldr1 cons __tmp157528 _deps-scm157219_))))
                  (declare (not safe))
                  (foldr1 cons __tmp157527 _gsc-link-opts157255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink157201_
                                                         __tmp157526))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp157525))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157524))))
                              (declare (not safe))
                              (gxc#invoke __tmp157530 __tmp157523))
                            (let ((__tmp157538
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157531
                                   (let ((__tmp157532
                                          (let ((__tmp157533
                                                 (let ((__tmp157534
                                                        (let ((__tmp157535
                                                               (let ((__tmp157536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157537
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c157251_ '()))))
                                (declare (not safe))
                                (cons _output-c157247_ __tmp157537))))
                         (declare (not safe))
                         (cons _bin-c157239_ __tmp157536))))
                  (declare (not safe))
                  (foldr1 cons __tmp157535 _deps-c157225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157534
                                                           _gsc-static-opts157259_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157533
                                                    _gsc-cc-opts157257_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157532))))
                              (declare (not safe))
                              (gxc#invoke __tmp157538 __tmp157531))
                            (let ((__tmp157551
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157539
                                   (let ((__tmp157540
                                          (let ((__tmp157541
                                                 (let ((__tmp157542
                                                        (let ((__tmp157543
                                                               (let ((__tmp157544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157545
                                     (let ((__tmp157546
                                            (let ((__tmp157547
                                                   (let ((__tmp157548
                                                          (let ((__tmp157549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp157550
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts157267_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp157550))))
                    (declare (not safe))
                    (cons _gerbil-libdir157197_ __tmp157549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp157548))))
                                              (declare (not safe))
                                              (cons _rpath157269_
                                                    __tmp157547))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp157546
                                               _output-ld-opts157261_))))
                                (declare (not safe))
                                (cons _output_-o157253_ __tmp157545))))
                         (declare (not safe))
                         (cons _output-o157249_ __tmp157544))))
                  (declare (not safe))
                  (cons _bin-o157241_ __tmp157543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157542
                                                           _deps-o157231_))))
                                            (declare (not safe))
                                            (cons _output-bin157243_
                                                  __tmp157541))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157540))))
                              (declare (not safe))
                              (gxc#invoke __tmp157551 __tmp157539))
                            (for-each
                             delete-file
                             (let ((__tmp157552
                                    (let ((__tmp157553
                                           (let ((__tmp157554
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o157253_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o157249_
                                                   __tmp157554))))
                                      (declare (not safe))
                                      (cons _output_-c157251_ __tmp157553))))
                               (declare (not safe))
                               (cons _output-c157247_ __tmp157552)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157203_)))
                          '#!void)))))
          (let* ((_output-bin157187_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157177_ _opts157178_)))
                 (_output-scm157189_
                  (string-append _output-bin157187_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157185_ _output-scm157189_ _output-bin157187_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157189_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx157002_ _opts157003_)
        (letrec ((_reset-declare157005_
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
                 (_generate-stub157006_
                  (lambda (_deps157168_)
                    (let ((_mod-main157170_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157002_ 'main)))
                          (_reset-decl157171_
                           (let ()
                             (declare (not safe))
                             (_reset-declare157005_)))
                          (_user-decl157172_
                           (let ()
                             (declare (not safe))
                             (_user-declare157007_))))
                      (for-each
                       (lambda (_dep157174_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl157171_)
                         (newline)
                         (if _user-decl157172_
                             (begin (write _user-decl157172_) (newline))
                             '#!void)
                         (write (let ((__tmp157555
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep157174_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp157555)))
                         (newline))
                       _deps157168_)
                      (write (let ((__tmp157556
                                    (let ((__tmp157569
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp157557
                                           (let ((__tmp157565
                                                  (let ((__tmp157566
                                                         (let ((__tmp157567
                                                                (let ((__tmp157568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp157568))))
                   (declare (not safe))
                   (cons __tmp157567 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp157566)))
                                                 (__tmp157558
                                                  (let ((__tmp157559
                                                         (let ((__tmp157560
                                                                (let ((__tmp157561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157562
                                      (let ((__tmp157563
                                             (let ((__tmp157564
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp157564 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp157563))))
                                 (declare (not safe))
                                 (cons __tmp157562 '()))))
                          (declare (not safe))
                          (cons _mod-main157170_ __tmp157561))))
                   (declare (not safe))
                   (cons 'apply __tmp157560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157559 '()))))
                                             (declare (not safe))
                                             (cons __tmp157565 __tmp157558))))
                                      (declare (not safe))
                                      (cons __tmp157569 __tmp157557))))
                               (declare (not safe))
                               (cons 'define __tmp157556)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare157007_
                  (lambda ()
                    (let* ((_gsc-opts157073_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts157003_)))
                           (_gsc-prelude157075_
                            (if _gsc-opts157073_
                                (member '"-prelude" _gsc-opts157073_)
                                '#f))
                           (_gsc-prelude157077_
                            (if _gsc-prelude157075_
                                (read (open-input-string
                                       (cadr _gsc-prelude157075_)))
                                '#f)))
                      (let _lp157080_ ((_rest157082_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude157077_ '())))
                                       (_user-decls157083_ '()))
                        (let* ((_rest157084157092_ _rest157082_)
                               (_else157086157100_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157083_))
                                      '#f
                                      (let ((__tmp157570
                                             (reverse _user-decls157083_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp157570)))))
                               (_K157088157156_
                                (lambda (_rest157103_ _expr157104_)
                                  (let* ((_expr157105157117_ _expr157104_)
                                         (_else157108157125_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157080_
                                               _rest157103_
                                               _user-decls157083_)))))
                                    (let ((_K157113157146_
                                           (lambda (_decls157144_)
                                             (let ((__tmp157571
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls157083_
                                                              _decls157144_))))
                                               (declare (not safe))
                                               (_lp157080_
                                                _rest157103_
                                                __tmp157571))))
                                          (_K157110157131_
                                           (lambda (_exprs157129_)
                                             (let ((__tmp157572
                                                    (append _exprs157129_
                                                            _rest157103_)))
                                               (declare (not safe))
                                               (_lp157080_
                                                __tmp157572
                                                _user-decls157083_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157105157117_))
                                          (let ((_tl157115157151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157105157117_)))
                                                (_hd157114157149_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157105157117_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157114157149_
                                                         'declare))
                                                (let ((_decls157154_
                                                       _tl157115157151_))
                                                  (declare (not safe))
                                                  (_K157113157146_
                                                   _decls157154_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157114157149_
                                                             'begin))
                                                    (let ((_exprs157139_
                                                           _tl157115157151_))
                                                      (declare (not safe))
                                                      (_K157110157131_
                                                       _exprs157139_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157108157125_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157108157125_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157084157092_))
                              (let ((_hd157089157159_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157084157092_)))
                                    (_tl157090157161_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157084157092_))))
                                (let* ((_expr157164_ _hd157089157159_)
                                       (_rest157166_ _tl157090157161_))
                                  (declare (not safe))
                                  (_K157088157156_ _rest157166_ _expr157164_)))
                              (let ()
                                (declare (not safe))
                                (_else157086157100_))))))))
                 (_compile-stub157008_
                  (lambda (_output-scm157015_ _output-bin157016_)
                    (let* ((_gerbil-home157018_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir157020_
                            (path-expand '"lib" _gerbil-home157018_))
                           (_runtime157022_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp157024_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home157018_))
                           (_include-gambit-sharp157026_
                            (string-append
                             '"(include \""
                             _gambit-sharp157024_
                             '"\")"))
                           (_bin-scm157028_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157002_)))
                           (_deps157030_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157002_)))
                           (_deps157032_
                            (map gxc#find-static-module-file _deps157030_))
                           (_deps157037_
                            (let ((__tmp157573
                                   (lambda (_$obj157034_)
                                     (let ((__tmp157574
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj157034_))))
                                       (declare (not safe))
                                       (not __tmp157574)))))
                              (declare (not safe))
                              (filter __tmp157573 _deps157032_)))
                           (_deps157041_
                            (let ((__tmp157575
                                   (lambda (_f157039_)
                                     (let ((__tmp157576
                                            (member _f157039_
                                                    _runtime157022_)))
                                       (declare (not safe))
                                       (not __tmp157576)))))
                              (declare (not safe))
                              (filter __tmp157575 _deps157037_)))
                           (_output-base157043_
                            (string-append
                             (path-strip-extension _output-scm157015_)))
                           (_output-c157045_
                            (string-append _output-base157043_ '".c"))
                           (_output-o157047_
                            (string-append _output-base157043_ '".o"))
                           (_output-c_157049_
                            (string-append _output-base157043_ '"_.c"))
                           (_output-o_157051_
                            (string-append _output-base157043_ '"_.o"))
                           (_gsc-link-opts157053_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157055_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157057_
                            (let ((__tmp157577
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir157020_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157577)))
                           (_output-ld-opts157059_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157061_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp157579
                                       (let ((__tmp157580
                                              (let ((__tmp157581
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp157026_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp157581))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp157580))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157579))
                                (let ((__tmp157578
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp157026_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp157578))))
                           (_gsc-link-opts157063_
                            (append _gsc-link-opts157053_
                                    _gsc-gx-macros157061_))
                           (_rpath157065_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157020_)))
                           (_default-ld-options157067_
                            (let ((__tmp157582
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp157582))))
                      (let ((__tmp157583
                             (lambda ()
                               (let ((__tmp157584
                                      (path-directory _output-bin157016_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157584)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157583))
                      (let ((__tmp157585
                             (lambda ()
                               (let ((__tmp157586
                                      (let ((__tmp157587
                                             (let ((__tmp157588
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm157028_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp157588
                                                       _deps157041_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp157587
                                                _runtime157022_))))
                                 (declare (not safe))
                                 (_generate-stub157006_ __tmp157586)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157015_
                         __tmp157585))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
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
                         (cons _output-scm157015_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp157593 _gsc-link-opts157063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_157049_
                                                         __tmp157592))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp157591))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp157590))))
                              (declare (not safe))
                              (gxc#invoke __tmp157594 __tmp157589))
                            (let ((__tmp157600
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157595
                                   (let ((__tmp157596
                                          (let ((__tmp157597
                                                 (let ((__tmp157598
                                                        (let ((__tmp157599
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_157049_ '()))))
                  (declare (not safe))
                  (cons _output-c157045_ __tmp157599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp157598
                                                           _gsc-static-opts157057_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp157597
                                                    _gsc-cc-opts157055_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp157596))))
                              (declare (not safe))
                              (gxc#invoke __tmp157600 __tmp157595))
                            (let ((__tmp157610
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157601
                                   (let ((__tmp157602
                                          (let ((__tmp157603
                                                 (let ((__tmp157604
                                                        (let ((__tmp157605
                                                               (let ((__tmp157606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp157607
                                     (let ((__tmp157608
                                            (let ((__tmp157609
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options157067_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir157020_
                                                    __tmp157609))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp157608))))
                                (declare (not safe))
                                (cons _rpath157065_ __tmp157607))))
                         (declare (not safe))
                         (foldr1 cons __tmp157606 _output-ld-opts157059_))))
                  (declare (not safe))
                  (cons _output-o_157051_ __tmp157605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o157047_
                                                         __tmp157604))))
                                            (declare (not safe))
                                            (cons _output-bin157016_
                                                  __tmp157603))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp157602))))
                              (declare (not safe))
                              (gxc#invoke __tmp157610 __tmp157601)))
                          '#!void)))))
          (let* ((_output-bin157010_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157002_ _opts157003_)))
                 (_output-scm157012_
                  (string-append _output-bin157010_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub157008_ _output-scm157012_ _output-bin157010_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm157012_))))))
    (define gxc#find-export-binding
      (lambda (_ctx156952_ _id156953_)
        (let ((_$e156999_
               (let ((__tmp157612
                      (lambda (_e156954156956_)
                        (let* ((_g156958156968_ _e156954156956_)
                               (_else156960156976_ (lambda () '#f))
                               (_K156962156980_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g156958156968_
                                 'gx#module-export::t))
                              (let* ((_e156963156983_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156958156968_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e156964156986_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156958156968_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e156965156989_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156958156968_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e156965156989_ '0))
                                    (let ((_e156966156992_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g156958156968_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g156994156996_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g156994156996_
                                                    _id156953_)))
                                           _e156966156992_)
                                          (let ()
                                            (declare (not safe))
                                            (_K156962156980_))
                                          (let ()
                                            (declare (not safe))
                                            (_else156960156976_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else156960156976_))))
                              (let ()
                                (declare (not safe))
                                (_else156960156976_))))))
                     (__tmp157611
                      (##structure-ref
                       _ctx156952_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp157612 __tmp157611))))
          (if _$e156999_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e156999_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx156944_ _id156945_)
        (let ((_$e156947_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx156944_ _id156945_))))
          (if _$e156947_
              ((lambda (_bind156950_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind156950_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id156945_)))
                 (##structure-ref _bind156950_ '1 gx#binding::t '#f))
               _$e156947_)
              (let ((__tmp157613
                     (##structure-ref
                      _ctx156944_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157613
                 _id156945_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx156831_)
        (letrec* ((_ht156833_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template156834_
                   (lambda (_in156896_ _phi156897_)
                     (let ((_iphi156899_
                            (fx+ _phi156897_
                                 (##direct-structure-ref
                                  _in156896_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports156900_
                            (##structure-ref
                             (##direct-structure-ref
                              _in156896_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp156902_ ((_rest156904_ _imports156900_)
                                        (_r156905_ '()))
                         (let* ((_rest156906156914_ _rest156904_)
                                (_else156908156922_ (lambda () _r156905_))
                                (_K156910156932_
                                 (lambda (_rest156925_ _in156926_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in156926_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi156899_))
                                           (let ((__tmp157620
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in156926_
                                                          _r156905_))))
                                             (declare (not safe))
                                             (_lp156902_
                                              _rest156925_
                                              __tmp157620))
                                           (let ()
                                             (declare (not safe))
                                             (_lp156902_
                                              _rest156925_
                                              _r156905_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in156926_
                                              'gx#module-import::t))
                                           (let ((_iphi156928_
                                                  (fx+ _phi156897_
                                                       (##direct-structure-ref
                                                        _in156926_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi156928_))
                                                 (let ((__tmp157618
                                                        (let ((__tmp157619
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in156926_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp157619 _r156905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp156902_
                                                    _rest156925_
                                                    __tmp157618))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp156902_
                                                    _rest156925_
                                                    _r156905_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in156926_
                                                  'gx#import-set::t))
                                               (let ((_xphi156930_
                                                      (fx+ _iphi156899_
                                                           (##direct-structure-ref
                                                            _in156926_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi156930_))
                                                     (let ((__tmp157616
                                                            (let ((__tmp157617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in156926_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp157617 _r156905_))))
               (declare (not safe))
               (_lp156902_ _rest156925_ __tmp157616))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi156930_)
                                                         (let ((__tmp157614
                                                                (let ((__tmp157615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template156834_
                                  _in156926_
                                  _iphi156899_))))
                          (declare (not safe))
                          (foldl1 cons _r156905_ __tmp157615))))
                   (declare (not safe))
                   (_lp156902_ _rest156925_ __tmp157614))
                 (let ()
                   (declare (not safe))
                   (_lp156902_ _rest156925_ _r156905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp156902_
                                                  _rest156925_
                                                  _r156905_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest156906156914_))
                               (let ((_hd156911156935_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest156906156914_)))
                                     (_tl156912156937_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest156906156914_))))
                                 (let* ((_in156940_ _hd156911156935_)
                                        (_rest156942_ _tl156912156937_))
                                   (declare (not safe))
                                   (_K156910156932_ _rest156942_ _in156940_)))
                               (let ()
                                 (declare (not safe))
                                 (_else156908156922_))))))))
                  (_find-deps156835_
                   (lambda (_rest156842_ _deps156843_)
                     (let* ((_rest156844156852_ _rest156842_)
                            (_else156846156860_ (lambda () _deps156843_))
                            (_K156848156884_
                             (lambda (_rest156863_ _hd156864_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd156864_
                                      'gx#module-context::t))
                                   (let ((_id156866_
                                          (##structure-ref
                                           _hd156864_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports156867_
                                          (##structure-ref
                                           _hd156864_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht156833_ _id156866_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps156835_
                                            _rest156863_
                                            _deps156843_))
                                         (let ((_$e156869_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd156864_))))
                                           (if _$e156869_
                                               ((lambda (_pre156872_)
                                                  (let ((_xdeps156874_
                                                         (let ((__tmp157633
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre156872_ _imports156867_))))
                   (declare (not safe))
                   (_find-deps156835_ __tmp157633 _deps156843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht156833_
                                                       _id156866_
                                                       _hd156864_))
                                                    (let ((__tmp157634
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd156864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps156874_))))
              (declare (not safe))
              (_find-deps156835_ _rest156863_ __tmp157634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e156869_)
                                               (let ((_xdeps156876_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps156835_
                                                         _imports156867_
                                                         _deps156843_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht156833_
                                                    _id156866_
                                                    _hd156864_))
                                                 (let ((__tmp157632
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd156864_
                                                                _xdeps156876_))))
                                                   (declare (not safe))
                                                   (_find-deps156835_
                                                    _rest156863_
                                                    __tmp157632)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd156864_
                                          'gx#prelude-context::t))
                                       (let ((_id156878_
                                              (##structure-ref
                                               _hd156864_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht156833_
                                                _id156878_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps156835_
                                                _rest156863_
                                                _deps156843_))
                                             (let ((_xdeps156880_
                                                    (let ((__tmp157630
                                                           (##structure-ref
                                                            _hd156864_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps156835_
                                                       __tmp157630
                                                       _deps156843_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht156833_
                                                      _id156878_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps156835_
                                                      _rest156863_
                                                      _xdeps156880_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht156833_
                                                        _id156878_
                                                        _hd156864_))
                                                     (let ((__tmp157631
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd156864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps156880_))))
               (declare (not safe))
               (_find-deps156835_ _rest156863_ __tmp157631)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd156864_
                                              'gx#module-import::t))
                                           (if (let ((__tmp157629
                                                      (##direct-structure-ref
                                                       _hd156864_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp157629))
                                               (let ((__tmp157627
                                                      (let ((__tmp157628
                                                             (##direct-structure-ref
                                                              _hd156864_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157628
                                                              _rest156863_))))
                                                 (declare (not safe))
                                                 (_find-deps156835_
                                                  __tmp157627
                                                  _deps156843_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps156835_
                                                  _rest156863_
                                                  _deps156843_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd156864_
                                                  'gx#module-export::t))
                                               (let ((__tmp157625
                                                      (let ((__tmp157626
                                                             (##direct-structure-ref
                                                              _hd156864_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp157626
                                                              _rest156863_))))
                                                 (declare (not safe))
                                                 (_find-deps156835_
                                                  __tmp157625
                                                  _deps156843_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd156864_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp157624
                                                              (##direct-structure-ref
                                                               _hd156864_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp157624))
                                                       (let ((__tmp157622
                                                              (let ((__tmp157623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd156864_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp157623 _rest156863_))))
                 (declare (not safe))
                 (_find-deps156835_ __tmp157622 _deps156843_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd156864_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps156882_
                           (let ()
                             (declare (not safe))
                             (_import-set-template156834_ _hd156864_ '0)))
                          (__tmp157621
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest156863_ _xdeps156882_))))
                     (declare (not safe))
                     (_find-deps156835_ __tmp157621 _deps156843_))
                   (let ()
                     (declare (not safe))
                     (_find-deps156835_ _rest156863_ _deps156843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd156864_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest156844156852_))
                           (let ((_hd156849156887_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest156844156852_)))
                                 (_tl156850156889_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest156844156852_))))
                             (let* ((_hd156892_ _hd156849156887_)
                                    (_rest156894_ _tl156850156889_))
                               (declare (not safe))
                               (_K156848156884_ _rest156894_ _hd156892_)))
                           (let ()
                             (declare (not safe))
                             (_else156846156860_)))))))
          (reverse (let ((__tmp157635
                          (let ((__tmp157636
                                 (let ((_$e156837_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx156831_))))
                                   (if _$e156837_
                                       ((lambda (_pre156840_)
                                          (let ((__tmp157637
                                                 (##structure-ref
                                                  _ctx156831_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre156840_ __tmp157637)))
                                        _$e156837_)
                                       (##structure-ref
                                        _ctx156831_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps156835_ __tmp157636 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp157635))))))
    (define gxc#find-static-module-file
      (lambda (_ctx156762_)
        (let* ((_context-id156764_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx156762_
                       'gx#module-context::t))
                    (##structure-ref _ctx156762_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx156762_)))
               (_scm156766_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id156764_))
                 '".scm"))
               (_dirs156768_ (gx#current-expander-module-library-path))
               (_dirs156774_
                (let ((_user-libpath156770_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath156770_
                      (let ((_user-libpath156772_
                             (path-expand '"lib" _user-libpath156770_)))
                        (if (member _user-libpath156772_ _dirs156768_)
                            _dirs156768_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath156772_ _dirs156768_))))
                      _dirs156768_)))
               (_dirs156783_
                (let ((_$e156776_ (gxc#current-compile-output-dir)))
                  (if _$e156776_
                      ((lambda (_g156778156780_)
                         (let ()
                           (declare (not safe))
                           (cons _g156778156780_ _dirs156774_)))
                       _$e156776_)
                      _dirs156774_)))
               (_dirs156789_
                (map (lambda (_g156784156786_)
                       (path-expand '"static" _g156784156786_))
                     _dirs156783_)))
          (let _lp156792_ ((_rest156794_ _dirs156789_))
            (let* ((_rest156795156803_ _rest156794_)
                   (_else156797156811_
                    (lambda ()
                      (let ((__tmp157638
                             (##structure-ref
                              _ctx156762_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157638
                         _scm156766_))))
                   (_K156799156819_
                    (lambda (_rest156814_ _dir156815_)
                      (let ((_path156817_
                             (path-expand _scm156766_ _dir156815_)))
                        (if (file-exists? _path156817_)
                            _path156817_
                            (let ()
                              (declare (not safe))
                              (_lp156792_ _rest156814_)))))))
              (if (let () (declare (not safe)) (##pair? _rest156795156803_))
                  (let ((_hd156800156822_
                         (let ()
                           (declare (not safe))
                           (##car _rest156795156803_)))
                        (_tl156801156824_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156795156803_))))
                    (let* ((_dir156827_ _hd156800156822_)
                           (_rest156829_ _tl156801156824_))
                      (declare (not safe))
                      (_K156799156819_ _rest156829_ _dir156827_)))
                  (let () (declare (not safe)) (_else156797156811_))))))))
    (define gxc#file-empty?
      (lambda (_path156760_)
        (let ((__tmp157639 (file-info-size (file-info _path156760_ '#t))))
          (declare (not safe))
          (zero? __tmp157639))))
    (define gxc#compile-top-module
      (lambda (_ctx156749_)
        (let ((__tmp157643
               (lambda ()
                 (let ((__tmp157644
                        (##structure-ref
                         _ctx156749_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157644))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157645
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156749_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157645))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156749_))
                 (if (let ((__tmp157648
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156749_))))
                       (declare (not safe))
                       (null? __tmp157648))
                     (let* ((_thr1156754_
                             (let ((__tmp157646
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156749_)))))
                               (declare (not safe))
                               (spawn __tmp157646)))
                            (_thr2156757_
                             (let ((__tmp157647
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156749_)))))
                               (declare (not safe))
                               (spawn __tmp157647))))
                       (let () (declare (not safe)) (gxc#join! _thr1156754_))
                       (let () (declare (not safe)) (gxc#join! _thr2156757_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156749_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156749_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156749_))
                     '#!void)))
              (__tmp157642
               (let ((__obj157447
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157447)
                 __obj157447))
              (__tmp157641 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157640 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp157643
           gx#current-expander-context
           _ctx156749_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157642
           gxc#current-compile-runtime-sections
           __tmp157641
           gxc#current-compile-runtime-names
           __tmp157640))))
    (define gxc#collect-bindings
      (lambda (_ctx156747_)
        (let ((__tmp157649
               (##structure-ref _ctx156747_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157649))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156693_)
        (letrec ((_compile1156695_
                  (lambda (_ctx156736_)
                    (let* ((_code156738_
                            (##structure-ref
                             _ctx156736_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156742_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156738_))
                                (let ((_idstr156740_
                                       (let ((__tmp157650
                                              (##structure-ref
                                               _ctx156736_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157650))))
                                  (string-append _idstr156740_ '"__0"))
                                '#f)))
                      (if _rt156742_
                          (begin
                            (let ((__tmp157651
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157651 _ctx156736_ _rt156742_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156697_
                               _ctx156736_
                               _code156738_)))
                          (let ((_path156745_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156736_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156745_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156698_
                         _ctx156736_
                         _code156738_
                         _rt156742_)))))
                 (_context-timestamp156696_
                  (lambda (_ctx156734_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx156734_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code156697_
                  (lambda (_ctx156716_ _code156717_)
                    (let* ((_lifts156719_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code156722_
                            (let ((__tmp157654
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156717_))))
                                  (__tmp157653
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157652
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157654
                               gx#current-expander-context
                               _ctx156716_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156719_
                               gxc#current-compile-marks
                               __tmp157653
                               gxc#current-compile-identifiers
                               __tmp157652)))
                           (_runtime-code156724_
                            (if (let ((__tmp157658 (unbox _lifts156719_)))
                                  (declare (not safe))
                                  (null? __tmp157658))
                                _runtime-code156722_
                                (let ((__tmp157655
                                       (let ((__tmp157657
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code156722_
                                                      '())))
                                             (__tmp157656
                                              (reverse (unbox _lifts156719_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp157657
                                                 __tmp157656))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157655))))
                           (_runtime-code156726_
                            (let ((__tmp157659
                                   (let ((__tmp157661
                                          (let ((__tmp157662
                                                 (let ((__tmp157665
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp156696_
                                                           _ctx156716_)))
                                                       (__tmp157663
                                                        (let ((__tmp157664
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp157664
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp157665
                                                         __tmp157663))))
                                            (declare (not safe))
                                            (cons 'define __tmp157662)))
                                         (__tmp157660
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code156724_ '()))))
                                     (declare (not safe))
                                     (cons __tmp157661 __tmp157660))))
                              (declare (not safe))
                              (cons 'begin __tmp157659)))
                           (_scm0156728_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156716_
                               '0
                               '".scm"))))
                      (let ((_scms156731_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156716_))))
                        (let ((__tmp157666
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156728_
                                    _runtime-code156726_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp157666
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156731_)
                            (delete-file _scms156731_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156728_
                           '" => "
                           _scms156731_))
                        (copy-file _scm0156728_ _scms156731_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156728_))))))
                 (_generate-loader-code156698_
                  (lambda (_ctx156705_ _code156706_ _rt156707_)
                    (let* ((_loader-code156710_
                            (let ((__tmp157667
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156706_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp157667
                               gx#current-expander-context
                               _ctx156705_)))
                           (_loader-code156712_
                            (if _rt156707_
                                (let ((__tmp157668
                                       (let ((__tmp157669
                                              (let ((__tmp157670
                                                     (let ((__tmp157671
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt156707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp157671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp157670 '()))))
                                         (declare (not safe))
                                         (cons _loader-code156710_
                                               __tmp157669))))
                                  (declare (not safe))
                                  (cons 'begin __tmp157668))
                                _loader-code156710_)))
                      (let ((__tmp157672
                             (lambda ()
                               (let ((__tmp157673
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156705_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157673
                                  _loader-code156712_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp157672
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules156700_
                 (let ((__tmp157674
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156693_))))
                   (declare (not safe))
                   (cons _ctx156693_ __tmp157674))))
            (for-each
             (lambda (_ctx156702_)
               (let ((__tmp157675
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1156695_ _ctx156702_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp157675
                  gxc#current-compile-decls
                  '())))
             _all-modules156700_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156590_)
        (letrec ((_compile-ssi156592_
                  (lambda (_code156663_)
                    (let* ((_path156665_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156590_
                               '#f
                               '".ssi")))
                           (_prelude156676_
                            (let* ((_super156667_
                                    (##structure-ref
                                     _ctx156590_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156669_
                                    (##structure-ref
                                     _super156667_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156669_
                                  ((lambda (_g156671156673_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156671156673_)))
                                   _$e156669_)
                                  ':<root>)))
                           (_ns156678_
                            (##structure-ref
                             _ctx156590_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156680_
                            (symbol->string
                             (##structure-ref
                              _ctx156590_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156687_
                            (let ((_$e156682_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156680_ '#\/))))
                              (if _$e156682_
                                  ((lambda (_x156685_)
                                     (string->symbol
                                      (substring _idstr156680_ '0 _x156685_)))
                                   _$e156682_)
                                  '#f)))
                           (_rt156689_
                            (let ((__tmp157676
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157676 _ctx156590_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156665_))
                      (let ((__tmp157677
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude156676_))
                               (if _pkg156687_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg156687_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns156678_))
                               (newline)
                               (pretty-print _code156663_)
                               (if _rt156689_
                                   (pretty-print
                                    (let ((__tmp157678
                                           (let ((__tmp157682
                                                  (let ((__tmp157683
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp157683)))
                                                 (__tmp157679
                                                  (let ((__tmp157680
                                                         (let ((__tmp157681
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt156689_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp157681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp157680 '()))))
                                             (declare (not safe))
                                             (cons __tmp157682 __tmp157679))))
                                      (declare (not safe))
                                      (cons '%#call __tmp157678)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156665_
                         __tmp157677)))))
                 (_compile-phi156593_
                  (lambda (_part156603_)
                    (let* ((_part156604156617_ _part156603_)
                           (_E156606156621_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156604156617_))))
                           (_K156607156632_
                            (lambda (_code156624_
                                     _n156625_
                                     _phi156626_
                                     _phi-ctx156627_)
                              (let* ((_code156630_
                                      (let ((__tmp157684
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156624_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp157684
                                         gx#current-expander-context
                                         _phi-ctx156627_
                                         gx#current-expander-phi
                                         _phi156626_)))
                                     (__tmp157685
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156590_
                                         _n156625_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157685
                                 _code156630_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156604156617_))
                          (let ((_hd156608156635_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156604156617_)))
                                (_tl156609156637_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156604156617_))))
                            (let ((_phi-ctx156640_ _hd156608156635_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156609156637_))
                                  (let ((_hd156610156642_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156609156637_)))
                                        (_tl156611156644_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156609156637_))))
                                    (let ((_phi156647_ _hd156610156642_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156611156644_))
                                          (let ((_hd156612156649_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156611156644_)))
                                                (_tl156613156651_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156611156644_))))
                                            (let ((_n156654_ _hd156612156649_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156613156651_))
                                                  (let ((_hd156614156656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156613156651_)))
                                                        (_tl156615156658_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156613156651_))))
                                                    (let ((_code156661_
                                                           _hd156614156656_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156615156658_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156607156632_
                                                             _code156661_
                                                             _n156654_
                                                             _phi156647_
                                                             _phi-ctx156640_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156606156621_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156606156621_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156606156621_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156606156621_)))))
                          (let () (declare (not safe)) (_E156606156621_)))))))
          (let ((_g157686_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156590_))))
            (begin
              (let ((_g157687_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157686_)
                           (##vector-length _g157686_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157687_ 2)))
                    (error "Context expects 2 values" _g157687_)))
              (let ((_ssi-code156595_
                     (let () (declare (not safe)) (##vector-ref _g157686_ 0)))
                    (_phi-code156596_
                     (let () (declare (not safe)) (##vector-ref _g157686_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156592_ _ssi-code156595_))
                  (let ((_threads156601_
                         (map (lambda (_code156598_)
                                (let ((__tmp157688
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156593_
                                            _code156598_)))))
                                  (declare (not safe))
                                  (spawn __tmp157688)))
                              _phi-code156596_)))
                    (for-each gxc#join! _threads156601_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156573_)
        (let* ((_path156575_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156573_ '#f '".ssxi.ss")))
               (_code156577_
                (let ((__tmp157689
                       (##structure-ref
                        _ctx156573_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157689)))
               (_idstr156579_
                (symbol->string
                 (##structure-ref _ctx156573_ '1 gx#expander-context::t '#f)))
               (_pkg156586_
                (let ((_$e156581_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156579_ '#\/))))
                  (if _$e156581_
                      ((lambda (_x156584_)
                         (string->symbol
                          (substring _idstr156579_ '0 _x156584_)))
                       _$e156581_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156575_))
          (let ((__tmp157690
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156586_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg156586_))
                       '#!void)
                   (newline)
                   (pretty-print _code156577_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156575_ __tmp157690)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156566_)
        (let* ((_state156568_
                (let ((__obj157448
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157448 _ctx156566_)
                  __obj157448))
               (_ssi-code156570_
                (let ((__tmp157691
                       (##structure-ref
                        _ctx156566_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp157691 _state156568_))))
          (values _ssi-code156570_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156568_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156559_)
        (let ((_lifts156561_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157694
                 (lambda ()
                   (let ((_code156564_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156559_))))
                     (if (let ((__tmp157698 (unbox _lifts156561_)))
                           (declare (not safe))
                           (null? __tmp157698))
                         _code156564_
                         (let ((__tmp157695
                                (let ((__tmp157697
                                       (let ()
                                         (declare (not safe))
                                         (cons _code156564_ '())))
                                      (__tmp157696
                                       (reverse (unbox _lifts156561_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp157697 __tmp157696))))
                           (declare (not safe))
                           (cons 'begin __tmp157695))))))
                (__tmp157693
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157692
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp157694
             gxc#current-compile-lift
             _lifts156561_
             gxc#current-compile-marks
             __tmp157693
             gxc#current-compile-identifiers
             __tmp157692)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156555_)
        (let ((_modules156557_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp157699
                 (##structure-ref _ctx156555_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157699 _modules156557_))
          (reverse (unbox _modules156557_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156538_ _code156539_ _phi?156540_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156538_))
        (let ((__tmp157700
               (lambda ()
                 (pretty-print
                  (let ((__tmp157701
                         (let ((__tmp157708
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp157702
                                (let ((__tmp157707
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp157703
                                       (let ((__tmp157706
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp157704
                                              (let ((__tmp157705
                                                     (if _phi?156540_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp157705))))
                                         (declare (not safe))
                                         (cons __tmp157706 __tmp157704))))
                                  (declare (not safe))
                                  (cons __tmp157707 __tmp157703))))
                           (declare (not safe))
                           (cons __tmp157708 __tmp157702))))
                    (declare (not safe))
                    (cons 'declare __tmp157701)))
                 (pretty-print _code156539_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156538_ __tmp157700))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156538_ _phi?156540_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156538_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156546_ _code156547_)
        (let ((_phi?156549_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156546_ _code156547_ _phi?156549_))))
    (define gxc#compile-scm-file
      (lambda _g157710_
        (let ((_g157709_ (let () (declare (not safe)) (##length _g157710_))))
          (cond ((let () (declare (not safe)) (##fx= _g157709_ 2))
                 (apply (lambda (_path156546_ _code156547_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156546_
                             _code156547_)))
                        _g157710_))
                ((let () (declare (not safe)) (##fx= _g157709_ 3))
                 (apply (lambda (_path156551_ _code156552_ _phi?156553_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156551_
                             _code156552_
                             _phi?156553_)))
                        _g157710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157710_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156439_)
        (let _lp156441_ ((_rest156443_ (gxc#current-compile-gsc-options))
                         (_opts156444_ '()))
          (let* ((_rest156445156465_ _rest156443_)
                 (_else156449156473_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156439_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157711
                               (let ((__tmp157712 (reverse _opts156444_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp157712))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp157711))
                        (reverse _opts156444_)))))
            (let ((_K156459156516_
                   (lambda (_rest156514_)
                     (let ()
                       (declare (not safe))
                       (_lp156441_ _rest156514_ _opts156444_))))
                  (_K156454156498_
                   (lambda (_rest156496_)
                     (let ()
                       (declare (not safe))
                       (_lp156441_ _rest156496_ _opts156444_))))
                  (_K156451156480_
                   (lambda (_rest156477_ _opt156478_)
                     (let ((__tmp157713
                            (let ()
                              (declare (not safe))
                              (cons _opt156478_ _opts156444_))))
                       (declare (not safe))
                       (_lp156441_ _rest156477_ __tmp157713)))))
              (if (let () (declare (not safe)) (##pair? _rest156445156465_))
                  (let ((_tl156461156521_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156445156465_)))
                        (_hd156460156519_
                         (let ()
                           (declare (not safe))
                           (##car _rest156445156465_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156460156519_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156461156521_))
                            (let* ((_tl156463156524_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156461156521_)))
                                   (_rest156527_ _tl156463156524_))
                              (declare (not safe))
                              (_K156459156516_ _rest156527_))
                            (let ((_opt156488_ _hd156460156519_)
                                  (_rest156490_ _tl156461156521_))
                              (let ()
                                (declare (not safe))
                                (_K156451156480_ _rest156490_ _opt156488_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156460156519_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156461156521_))
                                (let* ((_tl156458156506_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156461156521_)))
                                       (_rest156509_ _tl156458156506_))
                                  (declare (not safe))
                                  (_K156454156498_ _rest156509_))
                                (let ((_opt156488_ _hd156460156519_)
                                      (_rest156490_ _tl156461156521_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156451156480_
                                     _rest156490_
                                     _opt156488_))))
                            (let ((_opt156488_ _hd156460156519_)
                                  (_rest156490_ _tl156461156521_))
                              (let ()
                                (declare (not safe))
                                (_K156451156480_ _rest156490_ _opt156488_))))))
                  (let () (declare (not safe)) (_else156449156473_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156533_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156533_))))
    (define gxc#gsc-link-options
      (lambda _g157715_
        (let ((_g157714_ (let () (declare (not safe)) (##length _g157715_))))
          (cond ((let () (declare (not safe)) (##fx= _g157714_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157715_))
                ((let () (declare (not safe)) (##fx= _g157714_ 1))
                 (apply (lambda (_phi?156535_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156535_)))
                        _g157715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157715_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156340_)
        (let _lp156342_ ((_rest156344_ (gxc#current-compile-gsc-options))
                         (_opts156345_ '()))
          (let* ((_rest156346156366_ _rest156344_)
                 (_else156350156374_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156340_))
                             (gxc#current-compile-debug))
                        (let ((__tmp157716
                               (let ((__tmp157717 (reverse _opts156345_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp157717))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp157716))
                        (reverse _opts156345_)))))
            (let ((_K156360156413_
                   (lambda (_rest156410_ _opt156411_)
                     (let ((__tmp157718
                            (let ((__tmp157719
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156345_))))
                              (declare (not safe))
                              (cons _opt156411_ __tmp157719))))
                       (declare (not safe))
                       (_lp156342_ _rest156410_ __tmp157718))))
                  (_K156355156394_
                   (lambda (_rest156392_)
                     (let ()
                       (declare (not safe))
                       (_lp156342_ _rest156392_ _opts156345_))))
                  (_K156352156380_
                   (lambda (_rest156378_)
                     (let ()
                       (declare (not safe))
                       (_lp156342_ _rest156378_ _opts156345_)))))
              (if (let () (declare (not safe)) (##pair? _rest156346156366_))
                  (let ((_tl156362156418_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156346156366_)))
                        (_hd156361156416_
                         (let ()
                           (declare (not safe))
                           (##car _rest156346156366_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156361156416_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156362156418_))
                            (let ((_tl156364156423_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156362156418_)))
                                  (_hd156363156421_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156362156418_))))
                              (let ((_opt156426_ _hd156363156421_)
                                    (_rest156428_ _tl156364156423_))
                                (let ()
                                  (declare (not safe))
                                  (_K156360156413_ _rest156428_ _opt156426_))))
                            (let ((_rest156386_ _tl156362156418_))
                              (declare (not safe))
                              (_K156352156380_ _rest156386_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156361156416_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156362156418_))
                                (let* ((_tl156359156402_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156362156418_)))
                                       (_rest156405_ _tl156359156402_))
                                  (declare (not safe))
                                  (_K156355156394_ _rest156405_))
                                (let ((_rest156386_ _tl156362156418_))
                                  (declare (not safe))
                                  (_K156352156380_ _rest156386_)))
                            (let ((_rest156386_ _tl156362156418_))
                              (declare (not safe))
                              (_K156352156380_ _rest156386_)))))
                  (let () (declare (not safe)) (_else156350156374_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156434_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156434_))))
    (define gxc#gsc-cc-options
      (lambda _g157721_
        (let ((_g157720_ (let () (declare (not safe)) (##length _g157721_))))
          (cond ((let () (declare (not safe)) (##fx= _g157720_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157721_))
                ((let () (declare (not safe)) (##fx= _g157720_ 1))
                 (apply (lambda (_phi?156436_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156436_)))
                        _g157721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157721_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156335_)
        (let* ((_user-staticdir156337_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp157722
                (let ((__tmp157723
                       (string-append
                        '"-I "
                        _staticdir156335_
                        '" -I "
                        _user-staticdir156337_)))
                  (declare (not safe))
                  (cons __tmp157723 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp157722))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156247_ ((_rest156249_ (gxc#current-compile-gsc-options))
                         (_opts156250_ '()))
          (let* ((_rest156251156271_ _rest156249_)
                 (_else156255156279_ (lambda () _opts156250_)))
            (let ((_K156265156322_
                   (lambda (_rest156320_)
                     (let ()
                       (declare (not safe))
                       (_lp156247_ _rest156320_ _opts156250_))))
                  (_K156260156300_
                   (lambda (_rest156297_ _opt156298_)
                     (let ((__tmp157724
                            (append _opts156250_
                                    (let ((__tmp157725
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt156298_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp157725)))))
                       (declare (not safe))
                       (_lp156247_ _rest156297_ __tmp157724))))
                  (_K156257156285_
                   (lambda (_rest156283_)
                     (let ()
                       (declare (not safe))
                       (_lp156247_ _rest156283_ _opts156250_)))))
              (if (let () (declare (not safe)) (##pair? _rest156251156271_))
                  (let ((_tl156267156327_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156251156271_)))
                        (_hd156266156325_
                         (let ()
                           (declare (not safe))
                           (##car _rest156251156271_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd156266156325_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156267156327_))
                            (let* ((_tl156269156330_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156267156327_)))
                                   (_rest156333_ _tl156269156330_))
                              (declare (not safe))
                              (_K156265156322_ _rest156333_))
                            (let ((_rest156291_ _tl156267156327_))
                              (declare (not safe))
                              (_K156257156285_ _rest156291_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd156266156325_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156267156327_))
                                (let ((_tl156264156310_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156267156327_)))
                                      (_hd156263156308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156267156327_))))
                                  (let ((_opt156313_ _hd156263156308_)
                                        (_rest156315_ _tl156264156310_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156260156300_
                                       _rest156315_
                                       _opt156313_))))
                                (let ((_rest156291_ _tl156267156327_))
                                  (declare (not safe))
                                  (_K156257156285_ _rest156291_)))
                            (let ((_rest156291_ _tl156267156327_))
                              (declare (not safe))
                              (_K156257156285_ _rest156291_)))))
                  (let () (declare (not safe)) (_else156255156279_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156244_)
        (let ((__tmp157726
               (let () (declare (not safe)) (string-empty? _str156244_))))
          (declare (not safe))
          (not __tmp157726))))
    (define gxc#gsc-compile-file
      (lambda (_path156212_ _phi?156213_)
        (letrec ((_gsc-link-path156215_
                  (lambda (_base-path156236_)
                    (let _lp156238_ ((_n156240_ '1))
                      (let ((_path156242_
                             (string-append
                              _base-path156236_
                              '".o"
                              (number->string _n156240_))))
                        (if (file-exists? _path156242_)
                            (let ((__tmp157727
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156240_ '1))))
                              (declare (not safe))
                              (_lp156238_ __tmp157727))
                            _path156242_))))))
          (let* ((_base-path156217_ (path-strip-extension _path156212_))
                 (_path-c156219_ (string-append _base-path156217_ '".c"))
                 (_path-o156221_ (string-append _base-path156217_ '".o"))
                 (_link-path156223_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156215_ _base-path156217_)))
                 (_link-path-c156225_ (string-append _link-path156223_ '".c"))
                 (_link-path-o156227_ (string-append _link-path156223_ '".o"))
                 (_gsc-link-opts156229_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156213_)))
                 (_gsc-cc-opts156231_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156213_)))
                 (_gcc-ld-opts156233_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157734 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157728
                   (let ((__tmp157729
                          (let ((__tmp157730
                                 (let ((__tmp157731
                                        (let ((__tmp157732
                                               (let ((__tmp157733
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path156212_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp157733
                                                         _gsc-link-opts156229_))))
                                          (declare (not safe))
                                          (cons _link-path-c156225_
                                                __tmp157732))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp157731))))
                            (declare (not safe))
                            (cons '"-flat" __tmp157730))))
                     (declare (not safe))
                     (cons '"-link" __tmp157729))))
              (declare (not safe))
              (gxc#invoke __tmp157734 __tmp157728 'stdout-redirection: '#t))
            (let ((__tmp157741 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157735
                   (let ((__tmp157736
                          (let ((__tmp157737
                                 (let ((__tmp157738
                                        (let ((__tmp157739
                                               (let ((__tmp157740
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c156225_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c156219_
                                                       __tmp157740))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp157739
                                                  _gsc-cc-opts156231_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp157738))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp157737))))
                     (declare (not safe))
                     (cons '"-obj" __tmp157736))))
              (declare (not safe))
              (gxc#invoke __tmp157741 __tmp157735 'stdout-redirection: '#t))
            (let ((__tmp157747 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157742
                   (let ((__tmp157743
                          (let ((__tmp157744
                                 (let ((__tmp157745
                                        (let ((__tmp157746
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o156227_
                                                       _gcc-ld-opts156233_))))
                                          (declare (not safe))
                                          (cons _path-o156221_ __tmp157746))))
                                   (declare (not safe))
                                   (cons _link-path156223_ __tmp157745))))
                            (declare (not safe))
                            (cons '"-o" __tmp157744))))
                     (declare (not safe))
                     (cons '"-shared" __tmp157743))))
              (declare (not safe))
              (gxc#invoke __tmp157747 __tmp157742))
            (for-each
             delete-file
             (let ((__tmp157748
                    (let ((__tmp157749
                           (let ((__tmp157750
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o156227_ '()))))
                             (declare (not safe))
                             (cons _link-path-c156225_ __tmp157750))))
                      (declare (not safe))
                      (cons _path-o156221_ __tmp157749))))
               (declare (not safe))
               (cons _path-c156219_ __tmp157748)))))))
    (define gxc#compile-output-file
      (lambda (_ctx156183_ _n156184_ _ext156185_)
        (letrec ((_module-relative-path156187_
                  (lambda (_ctx156210_)
                    (path-strip-directory
                     (let ((__tmp157751
                            (##structure-ref
                             _ctx156210_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157751)))))
                 (_module-source-directory156188_
                  (lambda (_ctx156206_)
                    (path-directory
                     (let ((_mpath156208_
                            (##structure-ref
                             _ctx156206_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156208_))
                           _mpath156208_
                           (let ()
                             (declare (not safe))
                             (last _mpath156208_)))))))
                 (_section-string156189_
                  (lambda (_n156204_)
                    (if (let () (declare (not safe)) (number? _n156204_))
                        (number->string _n156204_)
                        (if (let () (declare (not safe)) (symbol? _n156204_))
                            (symbol->string _n156204_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156204_))
                                _n156204_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156204_)))))))
                 (_file-name156190_
                  (lambda (_path156202_)
                    (if _n156184_
                        (string-append
                         _path156202_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string156189_ _n156184_))
                         _ext156185_)
                        (string-append _path156202_ _ext156185_))))
                 (_file-path156191_
                  (lambda ()
                    (let ((_$e156197_ (gxc#current-compile-output-dir)))
                      (if _$e156197_
                          ((lambda (_outdir156200_)
                             (path-expand
                              (let ((__tmp157753
                                     (let ((__tmp157754
                                            (##structure-ref
                                             _ctx156183_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157754))))
                                (declare (not safe))
                                (_file-name156190_ __tmp157753))
                              _outdir156200_))
                           _$e156197_)
                          (path-expand
                           (let ((__tmp157752
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156187_
                                     _ctx156183_))))
                             (declare (not safe))
                             (_file-name156190_ __tmp157752))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156188_
                              _ctx156183_))))))))
          (let ((_path156193_
                 (let () (declare (not safe)) (_file-path156191_))))
            (let ((__tmp157755
                   (lambda ()
                     (let ((__tmp157756 (path-directory _path156193_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157756)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157755))
            _path156193_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156165_)
        (letrec ((_file-name156167_
                  (lambda (_id156181_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id156181_))
                     '".scm")))
                 (_file-path156168_
                  (lambda ()
                    (let* ((_file156174_
                            (let ((__tmp157757
                                   (##structure-ref
                                    _ctx156165_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156167_ __tmp157757)))
                           (_$e156176_ (gxc#current-compile-output-dir)))
                      (if _$e156176_
                          ((lambda (_outdir156179_)
                             (path-expand
                              _file156174_
                              (path-expand '"static" _outdir156179_)))
                           _$e156176_)
                          (path-expand _file156174_ '"static"))))))
          (let ((_path156170_
                 (let () (declare (not safe)) (_file-path156168_))))
            (let ((__tmp157758
                   (lambda ()
                     (let ((__tmp157759 (path-directory _path156170_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157759)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157758))
            _path156170_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156159_ _opts156160_)
        (let ((_$e156162_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156160_))))
          (if _$e156162_
              (values _$e156162_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156159_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156152_)
        (if (let () (declare (not safe)) (string? _idstr156152_))
            (let* ((_str156154_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156152_)))
                   (_strs156156_
                    (let ()
                      (declare (not safe))
                      (string-split _str156154_ '#\/))))
              (let () (declare (not safe)) (string-join _strs156156_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156152_))
                (let ((__tmp157760 (symbol->string _idstr156152_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp157760))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156152_))))))
    (define gxc#invoke__%
      (lambda (_g157761_
               _stdout-redirection156113156117_
               _stderr-redirection156114156119_
               _program156121_
               _args156122_)
        (let* ((_stdout-redirection156124_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection156113156117_ absent-value))
                    '#f
                    _stdout-redirection156113156117_))
               (_stderr-redirection156126_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection156114156119_ absent-value))
                    '#f
                    _stderr-redirection156114156119_)))
          (let ((__tmp157762
                 (let ()
                   (declare (not safe))
                   (cons _program156121_ _args156122_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp157762))
          (let* ((_proc156128_
                  (open-process
                   (let ((__tmp157763
                          (let ((__tmp157764
                                 (let ((__tmp157765
                                        (let ((__tmp157766
                                               (let ((__tmp157767
                                                      (let ((__tmp157768
                                                             (let ((__tmp157769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection156126_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp157769))))
                (declare (not safe))
                (cons _stdout-redirection156124_ __tmp157768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp157767))))
                                          (declare (not safe))
                                          (cons _args156122_ __tmp157766))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp157765))))
                            (declare (not safe))
                            (cons _program156121_ __tmp157764))))
                     (declare (not safe))
                     (cons 'path: __tmp157763))))
                 (_output156133_
                  (if (or _stdout-redirection156124_
                          _stderr-redirection156126_)
                      (read-line _proc156128_ '#f)
                      '#f)))
            (let ((_status156136_ (process-status _proc156128_)))
              (close-port _proc156128_)
              (if (let () (declare (not safe)) (zero? _status156136_))
                  '#!void
                  (begin
                    (display _output156133_)
                    (let ((__tmp157770
                           (let ()
                             (declare (not safe))
                             (cons _program156121_ _args156122_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp157770
                       _status156136_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156112156141_ . _args156143_)
        (apply gxc#invoke__%
               _keys156112156141_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156112156141_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156112156141_
                  'stderr-redirection:
                  absent-value))
               _args156143_)))
    (define gxc#invoke
      (lambda _args156115156149_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156115156149_)))
    (define gxc#join!
      (lambda (_thread156106_)
        (let ((__tmp157772
               (lambda (_exn156108_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156108_))
                     (raise (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156108_)))
                     (raise _exn156108_))))
              (__tmp157771 (lambda () (thread-join! _thread156106_))))
          (declare (not safe))
          (with-catch __tmp157772 __tmp157771))))))
