(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1708168076)
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
      (lambda (_path299812_ _fun299813_)
        (with-output-to-file
         (let ((__tmp304474
                (let ()
                  (declare (not safe))
                  (cons _path299812_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp304474))
         _fun299813_)))
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
      (lambda (_gerbil-libdir299807_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir299807_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/loader"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
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
      (lambda (_dir299805_) (delete-file-or-directory _dir299805_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath299779_ _opts299780_)
        (if (let () (declare (not safe)) (string? _srcpath299779_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath299779_)))
        (let ((_outdir299782_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts299780_)))
              (_invoke-gsc?299783_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts299780_)))
              (_gsc-options299784_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts299780_)))
              (_keep-scm?299785_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts299780_)))
              (_verbosity299786_
               (let () (declare (not safe)) (pgetq 'verbose: _opts299780_)))
              (_optimize299787_
               (let () (declare (not safe)) (pgetq 'optimize: _opts299780_)))
              (_debug299788_
               (let () (declare (not safe)) (pgetq 'debug: _opts299780_)))
              (_gen-ssxi299789_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts299780_))))
          (if _outdir299782_
              (let ((__tmp304475
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir299782_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp304475))
              '#!void)
          (if _optimize299787_
              (let ((__tmp304476
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp304476))
              '#!void)
          (let ((__tmp304480
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath299779_))
                   (let ((__tmp304481
                          (let ((__tmp304482
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath299779_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp304482))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp304481))))
                (__tmp304479
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp304477
                 (let ((__tmp304478
                        (let ()
                          (declare (not safe))
                          (cons _srcpath299779_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp304478))))
            (declare (not safe))
            (call-with-parameters
             __tmp304480
             gxc#current-compile-output-dir
             _outdir299782_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?299783_
             gxc#current-compile-gsc-options
             _gsc-options299784_
             gxc#current-compile-keep-scm
             _keep-scm?299785_
             gxc#current-compile-verbose
             _verbosity299786_
             gxc#current-compile-optimize
             _optimize299787_
             gxc#current-compile-debug
             _debug299788_
             gxc#current-compile-generate-ssxi
             _gen-ssxi299789_
             gxc#current-compile-timestamp
             __tmp304479
             gxc#current-compile-context
             __tmp304477
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath299798_)
        (let ((_opts299800_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath299798_ _opts299800_))))
    (define gxc#compile-module
      (lambda _g304484_
        (let ((_g304483_ (let () (declare (not safe)) (##length _g304484_))))
          (cond ((let () (declare (not safe)) (##fx= _g304483_ 1))
                 (apply (lambda (_srcpath299798_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath299798_)))
                        _g304484_))
                ((let () (declare (not safe)) (##fx= _g304483_ 2))
                 (apply (lambda (_srcpath299802_ _opts299803_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath299802_
                             _opts299803_)))
                        _g304484_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g304484_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath299755_ _opts299756_)
        (if (let () (declare (not safe)) (string? _srcpath299755_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath299755_)))
        (let ((_outdir299758_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts299756_)))
              (_invoke-gsc?299759_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts299756_)))
              (_gsc-options299760_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts299756_)))
              (_keep-scm?299761_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts299756_)))
              (_verbosity299762_
               (let () (declare (not safe)) (pgetq 'verbose: _opts299756_)))
              (_debug299763_
               (let () (declare (not safe)) (pgetq 'debug: _opts299756_))))
          (if _outdir299758_
              (let ((__tmp304485
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir299758_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp304485))
              '#!void)
          (let ((__tmp304489
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath299755_))
                   (let ((__tmp304490
                          (let ((__tmp304491
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath299755_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp304491))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp304490
                      _opts299756_))))
                (__tmp304488
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp304486
                 (let ((__tmp304487
                        (let ()
                          (declare (not safe))
                          (cons _srcpath299755_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp304487))))
            (declare (not safe))
            (call-with-parameters
             __tmp304489
             gxc#current-compile-output-dir
             _outdir299758_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?299759_
             gxc#current-compile-gsc-options
             _gsc-options299760_
             gxc#current-compile-keep-scm
             _keep-scm?299761_
             gxc#current-compile-verbose
             _verbosity299762_
             gxc#current-compile-debug
             _debug299763_
             gxc#current-compile-timestamp
             __tmp304488
             gxc#current-compile-context
             __tmp304486
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath299771_)
        (let ((_opts299773_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath299771_ _opts299773_))))
    (define gxc#compile-exe
      (lambda _g304493_
        (let ((_g304492_ (let () (declare (not safe)) (##length _g304493_))))
          (cond ((let () (declare (not safe)) (##fx= _g304492_ 1))
                 (apply (lambda (_srcpath299771_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath299771_)))
                        _g304493_))
                ((let () (declare (not safe)) (##fx= _g304492_ 2))
                 (apply (lambda (_srcpath299775_ _opts299776_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath299775_ _opts299776_)))
                        _g304493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g304493_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx299751_ _opts299752_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts299752_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx299751_
               _opts299752_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx299751_
               _opts299752_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx299634_ _opts299635_)
        (letrec ((_generate-stub299637_
                  (lambda (_builtin-modules299747_)
                    (let ((_mod-main299749_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx299634_ 'main))))
                      (write (let ((__tmp304494
                                    (let ((__tmp304495
                                           (let ((__tmp304496
                                                  (let ((__tmp304497
                                                         (let ((__tmp304499
                                                                (let ((__tmp304500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules299747_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp304500)))
                       (__tmp304498
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp304499 __tmp304498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp304497))))
                                             (declare (not safe))
                                             (cons __tmp304496 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp304495))))
                               (declare (not safe))
                               (cons 'define __tmp304494)))
                      (write (let ((__tmp304501
                                    (let ((__tmp304540
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp304502
                                           (let ((__tmp304503
                                                  (let ((__tmp304504
                                                         (let ((__tmp304528
                                                                (let ((__tmp304529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp304530
                                      (let ((__tmp304538
                                             (let ((__tmp304539
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp304539)))
                                            (__tmp304531
                                             (let ((__tmp304532
                                                    (let ((__tmp304533
                                                           (let ((__tmp304534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304535
                                 (let ((__tmp304536
                                        (let ((__tmp304537
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp304537 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp304536))))
                            (declare (not safe))
                            (cons __tmp304535 '()))))
                     (declare (not safe))
                     (cons _mod-main299749_ __tmp304534))))
              (declare (not safe))
              (cons 'apply __tmp304533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp304532 '()))))
                                        (declare (not safe))
                                        (cons __tmp304538 __tmp304531))))
                                 (declare (not safe))
                                 (cons '() __tmp304530))))
                          (declare (not safe))
                          (cons 'lambda __tmp304529)))
                       (__tmp304505
                        (let ((__tmp304506
                               (let ((__tmp304507
                                      (let ((__tmp304508
                                             (let ((__tmp304519
                                                    (let ((__tmp304520
                                                           (let ((__tmp304521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304522
                                 (let ((__tmp304523
                                        (let ((__tmp304524
                                               (let ((__tmp304525
                                                      (let ((__tmp304526
                                                             (let ((__tmp304527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp304527 '()))))
                (declare (not safe))
                (cons 'force-output __tmp304526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp304525 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp304524))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp304523))))
                            (declare (not safe))
                            (cons __tmp304522 '()))))
                     (declare (not safe))
                     (cons 'void __tmp304521))))
              (declare (not safe))
              (cons 'with-catch __tmp304520)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp304509
                                                    (let ((__tmp304510
                                                           (let ((__tmp304511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304512
                                 (let ((__tmp304513
                                        (let ((__tmp304514
                                               (let ((__tmp304515
                                                      (let ((__tmp304516
                                                             (let ((__tmp304517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp304518
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp304518 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp304517))))
                (declare (not safe))
                (cons __tmp304516 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp304515))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp304514))))
                                   (declare (not safe))
                                   (cons __tmp304513 '()))))
                            (declare (not safe))
                            (cons 'void __tmp304512))))
                     (declare (not safe))
                     (cons 'with-catch __tmp304511))))
              (declare (not safe))
              (cons __tmp304510 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp304519
                                                     __tmp304509))))
                                        (declare (not safe))
                                        (cons '() __tmp304508))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp304507))))
                          (declare (not safe))
                          (cons __tmp304506 '()))))
                   (declare (not safe))
                   (cons __tmp304528 __tmp304505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp304504))))
                                             (declare (not safe))
                                             (cons __tmp304503 '()))))
                                      (declare (not safe))
                                      (cons __tmp304540 __tmp304502))))
                               (declare (not safe))
                               (cons 'define __tmp304501)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts299638_
                  (lambda (_libgerbil299745_)
                    (call-with-input-file
                     (string-append _libgerbil299745_ '".ldd")
                     read)))
                 (_replace-extension299639_
                  (lambda (_path299742_ _ext299743_)
                    (string-append
                     (path-strip-extension _path299742_)
                     _ext299743_)))
                 (_not-exclude-module?299640_
                  (lambda (_ctx299738_)
                    (let ((_id-str299740_
                           (symbol->string
                            (##structure-ref
                             _ctx299738_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp304542
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str299740_))))
                            (declare (not safe))
                            (not __tmp304542))
                          (let ((__tmp304541
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str299740_))))
                            (declare (not safe))
                            (not __tmp304541))
                          '#f))))
                 (_not-file-empty?299641_
                  (lambda (_path299736_)
                    (let ((__tmp304543
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path299736_))))
                      (declare (not safe))
                      (not __tmp304543))))
                 (_compile-stub299642_
                  (lambda (_output-scm299649_ _output-bin299650_)
                    (let* ((_gerbil-home299652_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir299654_
                            (path-expand '"lib" _gerbil-home299652_))
                           (_gerbil-staticdir299656_
                            (path-expand '"static" _gerbil-libdir299654_))
                           (_gxlink299658_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir299654_))
                           (_tmp299660_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path299664_
                            (lambda (_f299662_)
                              (path-expand
                               (path-strip-directory _f299662_)
                               _tmp299660_)))
                           (_deps299666_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx299634_)))
                           (_deps299668_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?299640_
                                      _deps299666_)))
                           (_src-deps-scm299670_
                            (map gxc#find-static-module-file _deps299668_))
                           (_src-deps-scm299672_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?299641_
                                      _src-deps-scm299670_)))
                           (_src-deps-scm299674_
                            (map path-expand _src-deps-scm299672_))
                           (_deps-scm299676_
                            (map _tmp-path299664_ _src-deps-scm299674_))
                           (_deps-c299682_
                            (map (lambda (_g299677299679_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension299639_
                                      _g299677299679_
                                      '".c")))
                                 _deps-scm299676_))
                           (_deps-o299688_
                            (map (lambda (_g299683299685_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension299639_
                                      _g299683299685_
                                      '".o")))
                                 _deps-scm299676_))
                           (_src-bin-scm299690_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx299634_)))
                           (_src-bin-scm299692_
                            (path-expand _src-bin-scm299690_))
                           (_bin-scm299694_
                            (let ()
                              (declare (not safe))
                              (_tmp-path299664_ _src-bin-scm299692_)))
                           (_bin-c299696_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299639_
                               _bin-scm299694_
                               '".c")))
                           (_bin-o299698_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299639_
                               _bin-scm299694_
                               '".o")))
                           (_output-bin299700_
                            (path-expand _output-bin299650_))
                           (_output-scm299702_
                            (path-expand _output-scm299649_))
                           (_output-c299704_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299639_
                               _output-scm299702_
                               '".c")))
                           (_output-o299706_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299639_
                               _output-scm299702_
                               '".o")))
                           (_output_-c299708_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299639_
                               _output-scm299702_
                               '"_.c")))
                           (_output_-o299710_
                            (let ()
                              (declare (not safe))
                              (_replace-extension299639_
                               _output-scm299702_
                               '"_.o")))
                           (_gsc-link-opts299712_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts299714_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts299716_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir299656_)))
                           (_output-ld-opts299718_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a299720_
                            (path-expand '"libgerbil.a" _gerbil-libdir299654_))
                           (_libgerbil.so299722_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir299654_))
                           (_libgerbil-ld-opts299724_
                            (if (file-exists? _libgerbil.so299722_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts299638_
                                   _libgerbil.so299722_))
                                (if (file-exists? _libgerbil.a299720_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts299638_
                                       _libgerbil.a299720_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a299720_
                                       _libgerbil.so299722_)))))
                           (_rpath299726_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir299654_)))
                           (_builtin-modules299730_
                            (map (lambda (_mod299728_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod299728_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx299634_ _deps299668_)))))
                      (let ((__tmp304544
                             (lambda ()
                               (let ((__tmp304545
                                      (path-directory _output-bin299700_)))
                                 (declare (not safe))
                                 (create-directory* __tmp304545)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp304544))
                      (let ((__tmp304546
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub299637_
                                  _builtin-modules299730_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm299702_
                         __tmp304546))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp304547
                                   (lambda () (create-directory _tmp299660_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp304547))
                            (for-each
                             copy-file
                             _src-deps-scm299674_
                             _deps-scm299676_)
                            (copy-file _src-bin-scm299692_ _bin-scm299694_)
                            (let ((__tmp304555
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp304548
                                   (let ((__tmp304549
                                          (let ((__tmp304550
                                                 (let ((__tmp304551
                                                        (let ((__tmp304552
                                                               (let ((__tmp304553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp304554
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm299702_ '()))))
                                (declare (not safe))
                                (cons _bin-scm299694_ __tmp304554))))
                         (declare (not safe))
                         (foldr1 cons __tmp304553 _deps-scm299676_))))
                  (declare (not safe))
                  (foldr1 cons __tmp304552 _gsc-link-opts299712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink299658_
                                                         __tmp304551))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp304550))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp304549))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304555
                               __tmp304548))
                            (let ((__tmp304563
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp304556
                                   (let ((__tmp304557
                                          (let ((__tmp304558
                                                 (let ((__tmp304559
                                                        (let ((__tmp304560
                                                               (let ((__tmp304561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp304562
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c299708_ '()))))
                                (declare (not safe))
                                (cons _output-c299704_ __tmp304562))))
                         (declare (not safe))
                         (cons _bin-c299696_ __tmp304561))))
                  (declare (not safe))
                  (foldr1 cons __tmp304560 _deps-c299682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp304559
                                                           _gsc-static-opts299716_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp304558
                                                    _gsc-cc-opts299714_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp304557))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304563
                               __tmp304556))
                            (let ((__tmp304576
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp304564
                                   (let ((__tmp304565
                                          (let ((__tmp304566
                                                 (let ((__tmp304567
                                                        (let ((__tmp304568
                                                               (let ((__tmp304569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp304570
                                     (let ((__tmp304571
                                            (let ((__tmp304572
                                                   (let ((__tmp304573
                                                          (let ((__tmp304574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp304575
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts299724_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp304575))))
                    (declare (not safe))
                    (cons _gerbil-libdir299654_ __tmp304574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp304573))))
                                              (declare (not safe))
                                              (cons _rpath299726_
                                                    __tmp304572))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp304571
                                               _output-ld-opts299718_))))
                                (declare (not safe))
                                (cons _output_-o299710_ __tmp304570))))
                         (declare (not safe))
                         (cons _output-o299706_ __tmp304569))))
                  (declare (not safe))
                  (cons _bin-o299698_ __tmp304568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp304567
                                                           _deps-o299688_))))
                                            (declare (not safe))
                                            (cons _output-bin299700_
                                                  __tmp304566))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp304565))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304576
                               __tmp304564))
                            (for-each
                             delete-file
                             (let ((__tmp304577
                                    (let ((__tmp304578
                                           (let ((__tmp304579
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o299710_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o299706_
                                                   __tmp304579))))
                                      (declare (not safe))
                                      (cons _output_-c299708_ __tmp304578))))
                               (declare (not safe))
                               (cons _output-c299704_ __tmp304577)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp299660_)))
                          '#!void)))))
          (let* ((_output-bin299644_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx299634_ _opts299635_)))
                 (_output-scm299646_
                  (string-append _output-bin299644_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub299642_ _output-scm299646_ _output-bin299644_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm299646_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx299459_ _opts299460_)
        (letrec ((_reset-declare299462_
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
                 (_generate-stub299463_
                  (lambda (_deps299625_)
                    (let ((_mod-main299627_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx299459_ 'main)))
                          (_reset-decl299628_
                           (let ()
                             (declare (not safe))
                             (_reset-declare299462_)))
                          (_user-decl299629_
                           (let ()
                             (declare (not safe))
                             (_user-declare299464_))))
                      (for-each
                       (lambda (_dep299631_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl299628_)
                         (newline)
                         (if _user-decl299629_
                             (begin (write _user-decl299629_) (newline))
                             '#!void)
                         (write (let ((__tmp304580
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep299631_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp304580)))
                         (newline))
                       _deps299625_)
                      (write (let ((__tmp304581
                                    (let ((__tmp304594
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp304582
                                           (let ((__tmp304590
                                                  (let ((__tmp304591
                                                         (let ((__tmp304592
                                                                (let ((__tmp304593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp304593))))
                   (declare (not safe))
                   (cons __tmp304592 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp304591)))
                                                 (__tmp304583
                                                  (let ((__tmp304584
                                                         (let ((__tmp304585
                                                                (let ((__tmp304586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp304587
                                      (let ((__tmp304588
                                             (let ((__tmp304589
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp304589 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp304588))))
                                 (declare (not safe))
                                 (cons __tmp304587 '()))))
                          (declare (not safe))
                          (cons _mod-main299627_ __tmp304586))))
                   (declare (not safe))
                   (cons 'apply __tmp304585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp304584 '()))))
                                             (declare (not safe))
                                             (cons __tmp304590 __tmp304583))))
                                      (declare (not safe))
                                      (cons __tmp304594 __tmp304582))))
                               (declare (not safe))
                               (cons 'define __tmp304581)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare299464_
                  (lambda ()
                    (let* ((_gsc-opts299530_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts299460_)))
                           (_gsc-prelude299532_
                            (if _gsc-opts299530_
                                (member '"-prelude" _gsc-opts299530_)
                                '#f))
                           (_gsc-prelude299534_
                            (if _gsc-prelude299532_
                                (read (open-input-string
                                       (cadr _gsc-prelude299532_)))
                                '#f)))
                      (let _lp299537_ ((_rest299539_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude299534_ '())))
                                       (_user-decls299540_ '()))
                        (let* ((_rest299541299549_ _rest299539_)
                               (_else299543299557_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls299540_))
                                      '#f
                                      (let ((__tmp304595
                                             (reverse _user-decls299540_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp304595)))))
                               (_K299545299613_
                                (lambda (_rest299560_ _expr299561_)
                                  (let* ((_expr299562299574_ _expr299561_)
                                         (_else299565299582_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp299537_
                                               _rest299560_
                                               _user-decls299540_)))))
                                    (let ((_K299570299603_
                                           (lambda (_decls299601_)
                                             (let ((__tmp304596
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls299540_
                                                              _decls299601_))))
                                               (declare (not safe))
                                               (_lp299537_
                                                _rest299560_
                                                __tmp304596))))
                                          (_K299567299588_
                                           (lambda (_exprs299586_)
                                             (let ((__tmp304597
                                                    (append _exprs299586_
                                                            _rest299560_)))
                                               (declare (not safe))
                                               (_lp299537_
                                                __tmp304597
                                                _user-decls299540_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr299562299574_))
                                          (let ((_tl299572299608_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr299562299574_)))
                                                (_hd299571299606_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr299562299574_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd299571299606_
                                                         'declare))
                                                (let ((_decls299611_
                                                       _tl299572299608_))
                                                  (declare (not safe))
                                                  (_K299570299603_
                                                   _decls299611_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd299571299606_
                                                             'begin))
                                                    (let ((_exprs299596_
                                                           _tl299572299608_))
                                                      (declare (not safe))
                                                      (_K299567299588_
                                                       _exprs299596_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else299565299582_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else299565299582_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest299541299549_))
                              (let ((_hd299546299616_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest299541299549_)))
                                    (_tl299547299618_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest299541299549_))))
                                (let* ((_expr299621_ _hd299546299616_)
                                       (_rest299623_ _tl299547299618_))
                                  (declare (not safe))
                                  (_K299545299613_ _rest299623_ _expr299621_)))
                              (let ()
                                (declare (not safe))
                                (_else299543299557_))))))))
                 (_compile-stub299465_
                  (lambda (_output-scm299472_ _output-bin299473_)
                    (let* ((_gerbil-home299475_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir299477_
                            (path-expand '"lib" _gerbil-home299475_))
                           (_runtime299479_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp299481_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home299475_))
                           (_include-gambit-sharp299483_
                            (string-append
                             '"(include \""
                             _gambit-sharp299481_
                             '"\")"))
                           (_bin-scm299485_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx299459_)))
                           (_deps299487_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx299459_)))
                           (_deps299489_
                            (map gxc#find-static-module-file _deps299487_))
                           (_deps299494_
                            (let ((__tmp304598
                                   (lambda (_$obj299491_)
                                     (let ((__tmp304599
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj299491_))))
                                       (declare (not safe))
                                       (not __tmp304599)))))
                              (declare (not safe))
                              (filter __tmp304598 _deps299489_)))
                           (_deps299498_
                            (let ((__tmp304600
                                   (lambda (_f299496_)
                                     (let ((__tmp304601
                                            (member _f299496_
                                                    _runtime299479_)))
                                       (declare (not safe))
                                       (not __tmp304601)))))
                              (declare (not safe))
                              (filter __tmp304600 _deps299494_)))
                           (_output-base299500_
                            (string-append
                             (path-strip-extension _output-scm299472_)))
                           (_output-c299502_
                            (string-append _output-base299500_ '".c"))
                           (_output-o299504_
                            (string-append _output-base299500_ '".o"))
                           (_output-c_299506_
                            (string-append _output-base299500_ '"_.c"))
                           (_output-o_299508_
                            (string-append _output-base299500_ '"_.o"))
                           (_gsc-link-opts299510_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts299512_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts299514_
                            (let ((__tmp304602
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir299477_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp304602)))
                           (_output-ld-opts299516_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros299518_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp304604
                                       (let ((__tmp304605
                                              (let ((__tmp304606
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp299483_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp304606))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp304605))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp304604))
                                (let ((__tmp304603
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp299483_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp304603))))
                           (_gsc-link-opts299520_
                            (append _gsc-link-opts299510_
                                    _gsc-gx-macros299518_))
                           (_rpath299522_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir299477_)))
                           (_default-ld-options299524_
                            (let ((__tmp304607
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp304607))))
                      (let ((__tmp304608
                             (lambda ()
                               (let ((__tmp304609
                                      (path-directory _output-bin299473_)))
                                 (declare (not safe))
                                 (create-directory* __tmp304609)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp304608))
                      (let ((__tmp304610
                             (lambda ()
                               (let ((__tmp304611
                                      (let ((__tmp304612
                                             (let ((__tmp304613
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm299485_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp304613
                                                       _deps299498_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp304612
                                                _runtime299479_))))
                                 (declare (not safe))
                                 (_generate-stub299463_ __tmp304611)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm299472_
                         __tmp304610))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp304619
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp304614
                                   (let ((__tmp304615
                                          (let ((__tmp304616
                                                 (let ((__tmp304617
                                                        (let ((__tmp304618
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm299472_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp304618 _gsc-link-opts299520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_299506_
                                                         __tmp304617))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp304616))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp304615))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304619
                               __tmp304614))
                            (let ((__tmp304625
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp304620
                                   (let ((__tmp304621
                                          (let ((__tmp304622
                                                 (let ((__tmp304623
                                                        (let ((__tmp304624
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_299506_ '()))))
                  (declare (not safe))
                  (cons _output-c299502_ __tmp304624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp304623
                                                           _gsc-static-opts299514_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp304622
                                                    _gsc-cc-opts299512_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp304621))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304625
                               __tmp304620))
                            (let ((__tmp304635
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp304626
                                   (let ((__tmp304627
                                          (let ((__tmp304628
                                                 (let ((__tmp304629
                                                        (let ((__tmp304630
                                                               (let ((__tmp304631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp304632
                                     (let ((__tmp304633
                                            (let ((__tmp304634
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options299524_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir299477_
                                                    __tmp304634))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp304633))))
                                (declare (not safe))
                                (cons _rpath299522_ __tmp304632))))
                         (declare (not safe))
                         (foldr1 cons __tmp304631 _output-ld-opts299516_))))
                  (declare (not safe))
                  (cons _output-o_299508_ __tmp304630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o299504_
                                                         __tmp304629))))
                                            (declare (not safe))
                                            (cons _output-bin299473_
                                                  __tmp304628))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp304627))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp304635
                               __tmp304626)))
                          '#!void)))))
          (let* ((_output-bin299467_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx299459_ _opts299460_)))
                 (_output-scm299469_
                  (string-append _output-bin299467_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub299465_ _output-scm299469_ _output-bin299467_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm299469_))))))
    (define gxc#find-export-binding
      (lambda (_ctx299409_ _id299410_)
        (let ((_$e299456_
               (let ((__tmp304637
                      (lambda (_e299411299413_)
                        (let* ((_g299415299425_ _e299411299413_)
                               (_else299417299433_ (lambda () '#f))
                               (_K299419299437_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g299415299425_
                                 'gx#module-export::t))
                              (let* ((_e299420299440_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g299415299425_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e299421299443_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g299415299425_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e299422299446_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g299415299425_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e299422299446_ '0))
                                    (let ((_e299423299449_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g299415299425_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g299451299453_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g299451299453_
                                                    _id299410_)))
                                           _e299423299449_)
                                          (let ()
                                            (declare (not safe))
                                            (_K299419299437_))
                                          (let ()
                                            (declare (not safe))
                                            (_else299417299433_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else299417299433_))))
                              (let ()
                                (declare (not safe))
                                (_else299417299433_))))))
                     (__tmp304636
                      (##structure-ref
                       _ctx299409_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp304637 __tmp304636))))
          (if _$e299456_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e299456_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx299401_ _id299402_)
        (let ((_$e299404_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx299401_ _id299402_))))
          (if _$e299404_
              ((lambda (_bind299407_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind299407_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id299402_)))
                 (##structure-ref _bind299407_ '1 gx#binding::t '#f))
               _$e299404_)
              (let ((__tmp304638
                     (##structure-ref
                      _ctx299401_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp304638
                 _id299402_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx299288_)
        (letrec* ((_ht299290_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template299291_
                   (lambda (_in299353_ _phi299354_)
                     (let ((_iphi299356_
                            (fx+ _phi299354_
                                 (##direct-structure-ref
                                  _in299353_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports299357_
                            (##structure-ref
                             (##direct-structure-ref
                              _in299353_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp299359_ ((_rest299361_ _imports299357_)
                                        (_r299362_ '()))
                         (let* ((_rest299363299371_ _rest299361_)
                                (_else299365299379_ (lambda () _r299362_))
                                (_K299367299389_
                                 (lambda (_rest299382_ _in299383_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in299383_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi299356_))
                                           (let ((__tmp304645
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in299383_
                                                          _r299362_))))
                                             (declare (not safe))
                                             (_lp299359_
                                              _rest299382_
                                              __tmp304645))
                                           (let ()
                                             (declare (not safe))
                                             (_lp299359_
                                              _rest299382_
                                              _r299362_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in299383_
                                              'gx#module-import::t))
                                           (let ((_iphi299385_
                                                  (fx+ _phi299354_
                                                       (##direct-structure-ref
                                                        _in299383_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi299385_))
                                                 (let ((__tmp304643
                                                        (let ((__tmp304644
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in299383_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp304644 _r299362_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp299359_
                                                    _rest299382_
                                                    __tmp304643))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp299359_
                                                    _rest299382_
                                                    _r299362_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in299383_
                                                  'gx#import-set::t))
                                               (let ((_xphi299387_
                                                      (fx+ _iphi299356_
                                                           (##direct-structure-ref
                                                            _in299383_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi299387_))
                                                     (let ((__tmp304641
                                                            (let ((__tmp304642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in299383_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp304642 _r299362_))))
               (declare (not safe))
               (_lp299359_ _rest299382_ __tmp304641))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi299387_)
                                                         (let ((__tmp304639
                                                                (let ((__tmp304640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template299291_
                                  _in299383_
                                  _iphi299356_))))
                          (declare (not safe))
                          (foldl1 cons _r299362_ __tmp304640))))
                   (declare (not safe))
                   (_lp299359_ _rest299382_ __tmp304639))
                 (let ()
                   (declare (not safe))
                   (_lp299359_ _rest299382_ _r299362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp299359_
                                                  _rest299382_
                                                  _r299362_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest299363299371_))
                               (let ((_hd299368299392_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest299363299371_)))
                                     (_tl299369299394_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest299363299371_))))
                                 (let* ((_in299397_ _hd299368299392_)
                                        (_rest299399_ _tl299369299394_))
                                   (declare (not safe))
                                   (_K299367299389_ _rest299399_ _in299397_)))
                               (let ()
                                 (declare (not safe))
                                 (_else299365299379_))))))))
                  (_find-deps299292_
                   (lambda (_rest299299_ _deps299300_)
                     (let* ((_rest299301299309_ _rest299299_)
                            (_else299303299317_ (lambda () _deps299300_))
                            (_K299305299341_
                             (lambda (_rest299320_ _hd299321_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd299321_
                                      'gx#module-context::t))
                                   (let ((_id299323_
                                          (##structure-ref
                                           _hd299321_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports299324_
                                          (##structure-ref
                                           _hd299321_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht299290_
                                            _id299323_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps299292_
                                            _rest299320_
                                            _deps299300_))
                                         (let ((_$e299326_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd299321_))))
                                           (if _$e299326_
                                               ((lambda (_pre299329_)
                                                  (let ((_xdeps299331_
                                                         (let ((__tmp304658
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre299329_ _imports299324_))))
                   (declare (not safe))
                   (_find-deps299292_ __tmp304658 _deps299300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht299290_
                                                       _id299323_
                                                       _hd299321_))
                                                    (let ((__tmp304659
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd299321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps299331_))))
              (declare (not safe))
              (_find-deps299292_ _rest299320_ __tmp304659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e299326_)
                                               (let ((_xdeps299333_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps299292_
                                                         _imports299324_
                                                         _deps299300_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht299290_
                                                    _id299323_
                                                    _hd299321_))
                                                 (let ((__tmp304657
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd299321_
                                                                _xdeps299333_))))
                                                   (declare (not safe))
                                                   (_find-deps299292_
                                                    _rest299320_
                                                    __tmp304657)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd299321_
                                          'gx#prelude-context::t))
                                       (let ((_id299335_
                                              (##structure-ref
                                               _hd299321_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht299290_
                                                _id299335_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps299292_
                                                _rest299320_
                                                _deps299300_))
                                             (let ((_xdeps299337_
                                                    (let ((__tmp304655
                                                           (##structure-ref
                                                            _hd299321_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps299292_
                                                       __tmp304655
                                                       _deps299300_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht299290_
                                                      _id299335_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps299292_
                                                      _rest299320_
                                                      _xdeps299337_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht299290_
                                                        _id299335_
                                                        _hd299321_))
                                                     (let ((__tmp304656
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd299321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps299337_))))
               (declare (not safe))
               (_find-deps299292_ _rest299320_ __tmp304656)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd299321_
                                              'gx#module-import::t))
                                           (if (let ((__tmp304654
                                                      (##direct-structure-ref
                                                       _hd299321_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp304654))
                                               (let ((__tmp304652
                                                      (let ((__tmp304653
                                                             (##direct-structure-ref
                                                              _hd299321_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp304653
                                                              _rest299320_))))
                                                 (declare (not safe))
                                                 (_find-deps299292_
                                                  __tmp304652
                                                  _deps299300_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps299292_
                                                  _rest299320_
                                                  _deps299300_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd299321_
                                                  'gx#module-export::t))
                                               (let ((__tmp304650
                                                      (let ((__tmp304651
                                                             (##direct-structure-ref
                                                              _hd299321_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp304651
                                                              _rest299320_))))
                                                 (declare (not safe))
                                                 (_find-deps299292_
                                                  __tmp304650
                                                  _deps299300_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd299321_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp304649
                                                              (##direct-structure-ref
                                                               _hd299321_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp304649))
                                                       (let ((__tmp304647
                                                              (let ((__tmp304648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd299321_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp304648 _rest299320_))))
                 (declare (not safe))
                 (_find-deps299292_ __tmp304647 _deps299300_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd299321_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps299339_
                           (let ()
                             (declare (not safe))
                             (_import-set-template299291_ _hd299321_ '0)))
                          (__tmp304646
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest299320_ _xdeps299339_))))
                     (declare (not safe))
                     (_find-deps299292_ __tmp304646 _deps299300_))
                   (let ()
                     (declare (not safe))
                     (_find-deps299292_ _rest299320_ _deps299300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd299321_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest299301299309_))
                           (let ((_hd299306299344_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest299301299309_)))
                                 (_tl299307299346_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest299301299309_))))
                             (let* ((_hd299349_ _hd299306299344_)
                                    (_rest299351_ _tl299307299346_))
                               (declare (not safe))
                               (_K299305299341_ _rest299351_ _hd299349_)))
                           (let ()
                             (declare (not safe))
                             (_else299303299317_)))))))
          (reverse (let ((__tmp304660
                          (let ((__tmp304661
                                 (let ((_$e299294_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx299288_))))
                                   (if _$e299294_
                                       ((lambda (_pre299297_)
                                          (let ((__tmp304662
                                                 (##structure-ref
                                                  _ctx299288_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre299297_ __tmp304662)))
                                        _$e299294_)
                                       (##structure-ref
                                        _ctx299288_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps299292_ __tmp304661 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp304660))))))
    (define gxc#find-static-module-file
      (lambda (_ctx299219_)
        (let* ((_context-id299221_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx299219_
                       'gx#module-context::t))
                    (##structure-ref _ctx299219_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx299219_)))
               (_scm299223_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id299221_))
                 '".scm"))
               (_dirs299225_ (gx#current-expander-module-library-path))
               (_dirs299231_
                (let ((_user-libpath299227_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath299227_
                      (let ((_user-libpath299229_
                             (path-expand '"lib" _user-libpath299227_)))
                        (if (member _user-libpath299229_ _dirs299225_)
                            _dirs299225_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath299229_ _dirs299225_))))
                      _dirs299225_)))
               (_dirs299240_
                (let ((_$e299233_ (gxc#current-compile-output-dir)))
                  (if _$e299233_
                      ((lambda (_g299235299237_)
                         (let ()
                           (declare (not safe))
                           (cons _g299235299237_ _dirs299231_)))
                       _$e299233_)
                      _dirs299231_)))
               (_dirs299246_
                (map (lambda (_g299241299243_)
                       (path-expand '"static" _g299241299243_))
                     _dirs299240_)))
          (let _lp299249_ ((_rest299251_ _dirs299246_))
            (let* ((_rest299252299260_ _rest299251_)
                   (_else299254299268_
                    (lambda ()
                      (let ((__tmp304663
                             (##structure-ref
                              _ctx299219_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp304663
                         _scm299223_))))
                   (_K299256299276_
                    (lambda (_rest299271_ _dir299272_)
                      (let ((_path299274_
                             (path-expand _scm299223_ _dir299272_)))
                        (if (file-exists? _path299274_)
                            _path299274_
                            (let ()
                              (declare (not safe))
                              (_lp299249_ _rest299271_)))))))
              (if (let () (declare (not safe)) (##pair? _rest299252299260_))
                  (let ((_hd299257299279_
                         (let ()
                           (declare (not safe))
                           (##car _rest299252299260_)))
                        (_tl299258299281_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest299252299260_))))
                    (let* ((_dir299284_ _hd299257299279_)
                           (_rest299286_ _tl299258299281_))
                      (declare (not safe))
                      (_K299256299276_ _rest299286_ _dir299284_)))
                  (let () (declare (not safe)) (_else299254299268_))))))))
    (define gxc#file-empty?
      (lambda (_path299217_)
        (let ((__tmp304664 (file-info-size (file-info _path299217_ '#t))))
          (declare (not safe))
          (zero? __tmp304664))))
    (define gxc#compile-top-module
      (lambda (_ctx299206_)
        (let ((__tmp304668
               (lambda ()
                 (let ((__tmp304669
                        (##structure-ref
                         _ctx299206_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp304669))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp304670
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx299206_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp304670))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx299206_))
                 (if (let ((__tmp304673
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx299206_))))
                       (declare (not safe))
                       (null? __tmp304673))
                     (let* ((_thr1299211_
                             (let ((__tmp304671
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx299206_)))))
                               (declare (not safe))
                               (spawn __tmp304671)))
                            (_thr2299214_
                             (let ((__tmp304672
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx299206_)))))
                               (declare (not safe))
                               (spawn __tmp304672))))
                       (let () (declare (not safe)) (gxc#join! _thr1299211_))
                       (let () (declare (not safe)) (gxc#join! _thr2299214_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx299206_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx299206_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx299206_))
                     '#!void)))
              (__tmp304667
               (let ((__obj304472
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj304472)
                 __obj304472))
              (__tmp304666
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp304665 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp304668
           gx#current-expander-context
           _ctx299206_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp304667
           gxc#current-compile-runtime-sections
           __tmp304666
           gxc#current-compile-runtime-names
           __tmp304665))))
    (define gxc#collect-bindings
      (lambda (_ctx299204_)
        (let ((__tmp304674
               (##structure-ref _ctx299204_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp304674))))
    (define gxc#compile-runtime-code
      (lambda (_ctx299150_)
        (letrec ((_compile1299152_
                  (lambda (_ctx299193_)
                    (let* ((_code299195_
                            (##structure-ref
                             _ctx299193_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt299199_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code299195_))
                                (let ((_idstr299197_
                                       (let ((__tmp304675
                                              (##structure-ref
                                               _ctx299193_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp304675))))
                                  (string-append _idstr299197_ '"__0"))
                                '#f)))
                      (if _rt299199_
                          (begin
                            (let ((__tmp304676
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp304676 _ctx299193_ _rt299199_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code299154_
                               _ctx299193_
                               _code299195_)))
                          (let ((_path299202_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx299193_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path299202_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code299155_
                         _ctx299193_
                         _code299195_
                         _rt299199_)))))
                 (_context-timestamp299153_
                  (lambda (_ctx299191_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx299191_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code299154_
                  (lambda (_ctx299173_ _code299174_)
                    (let* ((_lifts299176_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code299179_
                            (let ((__tmp304679
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code299174_))))
                                  (__tmp304678
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp304677
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp304679
                               gx#current-expander-context
                               _ctx299173_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts299176_
                               gxc#current-compile-marks
                               __tmp304678
                               gxc#current-compile-identifiers
                               __tmp304677)))
                           (_runtime-code299181_
                            (if (let ((__tmp304683 (unbox _lifts299176_)))
                                  (declare (not safe))
                                  (null? __tmp304683))
                                _runtime-code299179_
                                (let ((__tmp304680
                                       (let ((__tmp304682
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code299179_
                                                      '())))
                                             (__tmp304681
                                              (reverse (unbox _lifts299176_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp304682
                                                 __tmp304681))))
                                  (declare (not safe))
                                  (cons 'begin __tmp304680))))
                           (_runtime-code299183_
                            (let ((__tmp304684
                                   (let ((__tmp304686
                                          (let ((__tmp304687
                                                 (let ((__tmp304690
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp299153_
                                                           _ctx299173_)))
                                                       (__tmp304688
                                                        (let ((__tmp304689
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp304689
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp304690
                                                         __tmp304688))))
                                            (declare (not safe))
                                            (cons 'define __tmp304687)))
                                         (__tmp304685
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code299181_ '()))))
                                     (declare (not safe))
                                     (cons __tmp304686 __tmp304685))))
                              (declare (not safe))
                              (cons 'begin __tmp304684)))
                           (_scm0299185_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx299173_
                               '0
                               '".scm"))))
                      (let ((_scms299188_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx299173_))))
                        (let ((__tmp304691
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0299185_
                                    _runtime-code299183_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp304691
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms299188_)
                            (delete-file _scms299188_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0299185_
                           '" => "
                           _scms299188_))
                        (copy-file _scm0299185_ _scms299188_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0299185_))))))
                 (_generate-loader-code299155_
                  (lambda (_ctx299162_ _code299163_ _rt299164_)
                    (let* ((_loader-code299167_
                            (let ((__tmp304692
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code299163_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp304692
                               gx#current-expander-context
                               _ctx299162_)))
                           (_loader-code299169_
                            (if _rt299164_
                                (let ((__tmp304693
                                       (let ((__tmp304694
                                              (let ((__tmp304695
                                                     (let ((__tmp304696
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt299164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp304696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304695 '()))))
                                         (declare (not safe))
                                         (cons _loader-code299167_
                                               __tmp304694))))
                                  (declare (not safe))
                                  (cons 'begin __tmp304693))
                                _loader-code299167_)))
                      (let ((__tmp304697
                             (lambda ()
                               (let ((__tmp304698
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx299162_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp304698
                                  _loader-code299169_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp304697
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules299157_
                 (let ((__tmp304699
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx299150_))))
                   (declare (not safe))
                   (cons _ctx299150_ __tmp304699))))
            (for-each
             (lambda (_ctx299159_)
               (let ((__tmp304700
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1299152_ _ctx299159_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp304700
                  gxc#current-compile-decls
                  '())))
             _all-modules299157_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx299047_)
        (letrec ((_compile-ssi299049_
                  (lambda (_code299120_)
                    (let* ((_path299122_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx299047_
                               '#f
                               '".ssi")))
                           (_prelude299133_
                            (let* ((_super299124_
                                    (##structure-ref
                                     _ctx299047_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e299126_
                                    (##structure-ref
                                     _super299124_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e299126_
                                  ((lambda (_g299128299130_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g299128299130_)))
                                   _$e299126_)
                                  ':<root>)))
                           (_ns299135_
                            (##structure-ref
                             _ctx299047_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr299137_
                            (symbol->string
                             (##structure-ref
                              _ctx299047_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg299144_
                            (let ((_$e299139_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr299137_ '#\/))))
                              (if _$e299139_
                                  ((lambda (_x299142_)
                                     (string->symbol
                                      (substring _idstr299137_ '0 _x299142_)))
                                   _$e299139_)
                                  '#f)))
                           (_rt299146_
                            (let ((__tmp304701
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp304701 _ctx299047_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path299122_))
                      (let ((__tmp304702
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude299133_))
                               (if _pkg299144_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg299144_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns299135_))
                               (newline)
                               (pretty-print _code299120_)
                               (if _rt299146_
                                   (pretty-print
                                    (let ((__tmp304703
                                           (let ((__tmp304707
                                                  (let ((__tmp304708
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp304708)))
                                                 (__tmp304704
                                                  (let ((__tmp304705
                                                         (let ((__tmp304706
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt299146_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp304706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp304705 '()))))
                                             (declare (not safe))
                                             (cons __tmp304707 __tmp304704))))
                                      (declare (not safe))
                                      (cons '%#call __tmp304703)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path299122_
                         __tmp304702)))))
                 (_compile-phi299050_
                  (lambda (_part299060_)
                    (let* ((_part299061299074_ _part299060_)
                           (_E299063299078_
                            (lambda ()
                              (error '"No clause matching"
                                     _part299061299074_)))
                           (_K299064299089_
                            (lambda (_code299081_
                                     _n299082_
                                     _phi299083_
                                     _phi-ctx299084_)
                              (let* ((_code299087_
                                      (let ((__tmp304709
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code299081_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp304709
                                         gx#current-expander-context
                                         _phi-ctx299084_
                                         gx#current-expander-phi
                                         _phi299083_)))
                                     (__tmp304710
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx299047_
                                         _n299082_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp304710
                                 _code299087_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part299061299074_))
                          (let ((_hd299065299092_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part299061299074_)))
                                (_tl299066299094_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part299061299074_))))
                            (let ((_phi-ctx299097_ _hd299065299092_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl299066299094_))
                                  (let ((_hd299067299099_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl299066299094_)))
                                        (_tl299068299101_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl299066299094_))))
                                    (let ((_phi299104_ _hd299067299099_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl299068299101_))
                                          (let ((_hd299069299106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl299068299101_)))
                                                (_tl299070299108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl299068299101_))))
                                            (let ((_n299111_ _hd299069299106_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl299070299108_))
                                                  (let ((_hd299071299113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl299070299108_)))
                                                        (_tl299072299115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl299070299108_))))
                                                    (let ((_code299118_
                                                           _hd299071299113_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl299072299115_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K299064299089_
                                                             _code299118_
                                                             _n299111_
                                                             _phi299104_
                                                             _phi-ctx299097_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E299063299078_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E299063299078_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E299063299078_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E299063299078_)))))
                          (let () (declare (not safe)) (_E299063299078_)))))))
          (let ((_g304711_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx299047_))))
            (begin
              (let ((_g304712_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g304711_)
                           (##vector-length _g304711_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g304712_ 2)))
                    (error "Context expects 2 values" _g304712_)))
              (let ((_ssi-code299052_
                     (let () (declare (not safe)) (##vector-ref _g304711_ 0)))
                    (_phi-code299053_
                     (let () (declare (not safe)) (##vector-ref _g304711_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi299049_ _ssi-code299052_))
                  (let ((_threads299058_
                         (map (lambda (_code299055_)
                                (let ((__tmp304713
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi299050_
                                            _code299055_)))))
                                  (declare (not safe))
                                  (spawn __tmp304713)))
                              _phi-code299053_)))
                    (for-each gxc#join! _threads299058_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx299030_)
        (let* ((_path299032_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx299030_ '#f '".ssxi.ss")))
               (_code299034_
                (let ((__tmp304714
                       (##structure-ref
                        _ctx299030_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp304714)))
               (_idstr299036_
                (symbol->string
                 (##structure-ref _ctx299030_ '1 gx#expander-context::t '#f)))
               (_pkg299043_
                (let ((_$e299038_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr299036_ '#\/))))
                  (if _$e299038_
                      ((lambda (_x299041_)
                         (string->symbol
                          (substring _idstr299036_ '0 _x299041_)))
                       _$e299038_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path299032_))
          (let ((__tmp304715
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg299043_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg299043_))
                       '#!void)
                   (newline)
                   (pretty-print _code299034_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path299032_ __tmp304715)))))
    (define gxc#generate-meta-code
      (lambda (_ctx299023_)
        (let* ((_state299025_
                (let ((__obj304473
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj304473 _ctx299023_)
                  __obj304473))
               (_ssi-code299027_
                (let ((__tmp304716
                       (##structure-ref
                        _ctx299023_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp304716 _state299025_))))
          (values _ssi-code299027_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state299025_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx299016_)
        (let ((_lifts299018_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp304719
                 (lambda ()
                   (let ((_code299021_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx299016_))))
                     (if (let ((__tmp304723 (unbox _lifts299018_)))
                           (declare (not safe))
                           (null? __tmp304723))
                         _code299021_
                         (let ((__tmp304720
                                (let ((__tmp304722
                                       (let ()
                                         (declare (not safe))
                                         (cons _code299021_ '())))
                                      (__tmp304721
                                       (reverse (unbox _lifts299018_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp304722 __tmp304721))))
                           (declare (not safe))
                           (cons 'begin __tmp304720))))))
                (__tmp304718
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp304717
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp304719
             gxc#current-compile-lift
             _lifts299018_
             gxc#current-compile-marks
             __tmp304718
             gxc#current-compile-identifiers
             __tmp304717)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx299012_)
        (let ((_modules299014_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp304724
                 (##structure-ref _ctx299012_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp304724 _modules299014_))
          (reverse (unbox _modules299014_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path298995_ _code298996_ _phi?298997_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path298995_))
        (let ((__tmp304725
               (lambda ()
                 (pretty-print
                  (let ((__tmp304726
                         (let ((__tmp304733
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp304727
                                (let ((__tmp304732
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp304728
                                       (let ((__tmp304731
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp304729
                                              (let ((__tmp304730
                                                     (if _phi?298997_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp304730))))
                                         (declare (not safe))
                                         (cons __tmp304731 __tmp304729))))
                                  (declare (not safe))
                                  (cons __tmp304732 __tmp304728))))
                           (declare (not safe))
                           (cons __tmp304733 __tmp304727))))
                    (declare (not safe))
                    (cons 'declare __tmp304726)))
                 (pretty-print _code298996_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path298995_ __tmp304725))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path298995_ _phi?298997_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path298995_))))
    (define gxc#compile-scm-file__0
      (lambda (_path299003_ _code299004_)
        (let ((_phi?299006_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path299003_ _code299004_ _phi?299006_))))
    (define gxc#compile-scm-file
      (lambda _g304735_
        (let ((_g304734_ (let () (declare (not safe)) (##length _g304735_))))
          (cond ((let () (declare (not safe)) (##fx= _g304734_ 2))
                 (apply (lambda (_path299003_ _code299004_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path299003_
                             _code299004_)))
                        _g304735_))
                ((let () (declare (not safe)) (##fx= _g304734_ 3))
                 (apply (lambda (_path299008_ _code299009_ _phi?299010_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path299008_
                             _code299009_
                             _phi?299010_)))
                        _g304735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g304735_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?298896_)
        (let _lp298898_ ((_rest298900_ (gxc#current-compile-gsc-options))
                         (_opts298901_ '()))
          (let* ((_rest298902298922_ _rest298900_)
                 (_else298906298930_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?298896_))
                             (gxc#current-compile-debug))
                        (let ((__tmp304736
                               (let ((__tmp304737 (reverse _opts298901_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp304737))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp304736))
                        (reverse _opts298901_)))))
            (let ((_K298916298973_
                   (lambda (_rest298971_)
                     (let ()
                       (declare (not safe))
                       (_lp298898_ _rest298971_ _opts298901_))))
                  (_K298911298955_
                   (lambda (_rest298953_)
                     (let ()
                       (declare (not safe))
                       (_lp298898_ _rest298953_ _opts298901_))))
                  (_K298908298937_
                   (lambda (_rest298934_ _opt298935_)
                     (let ((__tmp304738
                            (let ()
                              (declare (not safe))
                              (cons _opt298935_ _opts298901_))))
                       (declare (not safe))
                       (_lp298898_ _rest298934_ __tmp304738)))))
              (if (let () (declare (not safe)) (##pair? _rest298902298922_))
                  (let ((_tl298918298978_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest298902298922_)))
                        (_hd298917298976_
                         (let ()
                           (declare (not safe))
                           (##car _rest298902298922_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd298917298976_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl298918298978_))
                            (let* ((_tl298920298981_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl298918298978_)))
                                   (_rest298984_ _tl298920298981_))
                              (declare (not safe))
                              (_K298916298973_ _rest298984_))
                            (let ((_opt298945_ _hd298917298976_)
                                  (_rest298947_ _tl298918298978_))
                              (let ()
                                (declare (not safe))
                                (_K298908298937_ _rest298947_ _opt298945_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd298917298976_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl298918298978_))
                                (let* ((_tl298915298963_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl298918298978_)))
                                       (_rest298966_ _tl298915298963_))
                                  (declare (not safe))
                                  (_K298911298955_ _rest298966_))
                                (let ((_opt298945_ _hd298917298976_)
                                      (_rest298947_ _tl298918298978_))
                                  (let ()
                                    (declare (not safe))
                                    (_K298908298937_
                                     _rest298947_
                                     _opt298945_))))
                            (let ((_opt298945_ _hd298917298976_)
                                  (_rest298947_ _tl298918298978_))
                              (let ()
                                (declare (not safe))
                                (_K298908298937_ _rest298947_ _opt298945_))))))
                  (let () (declare (not safe)) (_else298906298930_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?298990_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?298990_))))
    (define gxc#gsc-link-options
      (lambda _g304740_
        (let ((_g304739_ (let () (declare (not safe)) (##length _g304740_))))
          (cond ((let () (declare (not safe)) (##fx= _g304739_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g304740_))
                ((let () (declare (not safe)) (##fx= _g304739_ 1))
                 (apply (lambda (_phi?298992_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?298992_)))
                        _g304740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g304740_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?298797_)
        (let _lp298799_ ((_rest298801_ (gxc#current-compile-gsc-options))
                         (_opts298802_ '()))
          (let* ((_rest298803298823_ _rest298801_)
                 (_else298807298831_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?298797_))
                             (gxc#current-compile-debug))
                        (let ((__tmp304741
                               (let ((__tmp304742 (reverse _opts298802_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp304742))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp304741))
                        (reverse _opts298802_)))))
            (let ((_K298817298870_
                   (lambda (_rest298867_ _opt298868_)
                     (let ((__tmp304743
                            (let ((__tmp304744
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts298802_))))
                              (declare (not safe))
                              (cons _opt298868_ __tmp304744))))
                       (declare (not safe))
                       (_lp298799_ _rest298867_ __tmp304743))))
                  (_K298812298851_
                   (lambda (_rest298849_)
                     (let ()
                       (declare (not safe))
                       (_lp298799_ _rest298849_ _opts298802_))))
                  (_K298809298837_
                   (lambda (_rest298835_)
                     (let ()
                       (declare (not safe))
                       (_lp298799_ _rest298835_ _opts298802_)))))
              (if (let () (declare (not safe)) (##pair? _rest298803298823_))
                  (let ((_tl298819298875_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest298803298823_)))
                        (_hd298818298873_
                         (let ()
                           (declare (not safe))
                           (##car _rest298803298823_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd298818298873_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl298819298875_))
                            (let ((_tl298821298880_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl298819298875_)))
                                  (_hd298820298878_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl298819298875_))))
                              (let ((_opt298883_ _hd298820298878_)
                                    (_rest298885_ _tl298821298880_))
                                (let ()
                                  (declare (not safe))
                                  (_K298817298870_ _rest298885_ _opt298883_))))
                            (let ((_rest298843_ _tl298819298875_))
                              (declare (not safe))
                              (_K298809298837_ _rest298843_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd298818298873_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl298819298875_))
                                (let* ((_tl298816298859_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl298819298875_)))
                                       (_rest298862_ _tl298816298859_))
                                  (declare (not safe))
                                  (_K298812298851_ _rest298862_))
                                (let ((_rest298843_ _tl298819298875_))
                                  (declare (not safe))
                                  (_K298809298837_ _rest298843_)))
                            (let ((_rest298843_ _tl298819298875_))
                              (declare (not safe))
                              (_K298809298837_ _rest298843_)))))
                  (let () (declare (not safe)) (_else298807298831_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?298891_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?298891_))))
    (define gxc#gsc-cc-options
      (lambda _g304746_
        (let ((_g304745_ (let () (declare (not safe)) (##length _g304746_))))
          (cond ((let () (declare (not safe)) (##fx= _g304745_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g304746_))
                ((let () (declare (not safe)) (##fx= _g304745_ 1))
                 (apply (lambda (_phi?298893_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?298893_)))
                        _g304746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g304746_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir298792_)
        (let* ((_user-staticdir298794_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp304747
                (let ((__tmp304748
                       (string-append
                        '"-I "
                        _staticdir298792_
                        '" -I "
                        _user-staticdir298794_)))
                  (declare (not safe))
                  (cons __tmp304748 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp304747))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp298704_ ((_rest298706_ (gxc#current-compile-gsc-options))
                         (_opts298707_ '()))
          (let* ((_rest298708298728_ _rest298706_)
                 (_else298712298736_ (lambda () _opts298707_)))
            (let ((_K298722298779_
                   (lambda (_rest298777_)
                     (let ()
                       (declare (not safe))
                       (_lp298704_ _rest298777_ _opts298707_))))
                  (_K298717298757_
                   (lambda (_rest298754_ _opt298755_)
                     (let ((__tmp304749
                            (append _opts298707_
                                    (let ((__tmp304750
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt298755_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp304750)))))
                       (declare (not safe))
                       (_lp298704_ _rest298754_ __tmp304749))))
                  (_K298714298742_
                   (lambda (_rest298740_)
                     (let ()
                       (declare (not safe))
                       (_lp298704_ _rest298740_ _opts298707_)))))
              (if (let () (declare (not safe)) (##pair? _rest298708298728_))
                  (let ((_tl298724298784_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest298708298728_)))
                        (_hd298723298782_
                         (let ()
                           (declare (not safe))
                           (##car _rest298708298728_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd298723298782_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl298724298784_))
                            (let* ((_tl298726298787_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl298724298784_)))
                                   (_rest298790_ _tl298726298787_))
                              (declare (not safe))
                              (_K298722298779_ _rest298790_))
                            (let ((_rest298748_ _tl298724298784_))
                              (declare (not safe))
                              (_K298714298742_ _rest298748_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd298723298782_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl298724298784_))
                                (let ((_tl298721298767_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl298724298784_)))
                                      (_hd298720298765_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl298724298784_))))
                                  (let ((_opt298770_ _hd298720298765_)
                                        (_rest298772_ _tl298721298767_))
                                    (let ()
                                      (declare (not safe))
                                      (_K298717298757_
                                       _rest298772_
                                       _opt298770_))))
                                (let ((_rest298748_ _tl298724298784_))
                                  (declare (not safe))
                                  (_K298714298742_ _rest298748_)))
                            (let ((_rest298748_ _tl298724298784_))
                              (declare (not safe))
                              (_K298714298742_ _rest298748_)))))
                  (let () (declare (not safe)) (_else298712298736_))))))))
    (define gxc#not-string-empty?
      (lambda (_str298701_)
        (let ((__tmp304751
               (let () (declare (not safe)) (string-empty? _str298701_))))
          (declare (not safe))
          (not __tmp304751))))
    (define gxc#gsc-compile-file
      (lambda (_path298669_ _phi?298670_)
        (letrec ((_gsc-link-path298672_
                  (lambda (_base-path298693_)
                    (let _lp298695_ ((_n298697_ '1))
                      (let ((_path298699_
                             (string-append
                              _base-path298693_
                              '".o"
                              (number->string _n298697_))))
                        (if (file-exists? _path298699_)
                            (let ((__tmp304752
                                   (let ()
                                     (declare (not safe))
                                     (+ _n298697_ '1))))
                              (declare (not safe))
                              (_lp298695_ __tmp304752))
                            _path298699_))))))
          (let* ((_base-path298674_ (path-strip-extension _path298669_))
                 (_path-c298676_ (string-append _base-path298674_ '".c"))
                 (_path-o298678_ (string-append _base-path298674_ '".o"))
                 (_link-path298680_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path298672_ _base-path298674_)))
                 (_link-path-c298682_ (string-append _link-path298680_ '".c"))
                 (_link-path-o298684_ (string-append _link-path298680_ '".o"))
                 (_gsc-link-opts298686_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?298670_)))
                 (_gsc-cc-opts298688_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?298670_)))
                 (_gcc-ld-opts298690_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp304759 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp304753
                   (let ((__tmp304754
                          (let ((__tmp304755
                                 (let ((__tmp304756
                                        (let ((__tmp304757
                                               (let ((__tmp304758
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path298669_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp304758
                                                         _gsc-link-opts298686_))))
                                          (declare (not safe))
                                          (cons _link-path-c298682_
                                                __tmp304757))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp304756))))
                            (declare (not safe))
                            (cons '"-flat" __tmp304755))))
                     (declare (not safe))
                     (cons '"-link" __tmp304754))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp304759 __tmp304753))
            (let ((__tmp304766 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp304760
                   (let ((__tmp304761
                          (let ((__tmp304762
                                 (let ((__tmp304763
                                        (let ((__tmp304764
                                               (let ((__tmp304765
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c298682_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c298676_
                                                       __tmp304765))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp304764
                                                  _gsc-cc-opts298688_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp304763))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp304762))))
                     (declare (not safe))
                     (cons '"-obj" __tmp304761))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp304766 __tmp304760))
            (let ((__tmp304772 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp304767
                   (let ((__tmp304768
                          (let ((__tmp304769
                                 (let ((__tmp304770
                                        (let ((__tmp304771
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o298684_
                                                       _gcc-ld-opts298690_))))
                                          (declare (not safe))
                                          (cons _path-o298678_ __tmp304771))))
                                   (declare (not safe))
                                   (cons _link-path298680_ __tmp304770))))
                            (declare (not safe))
                            (cons '"-o" __tmp304769))))
                     (declare (not safe))
                     (cons '"-shared" __tmp304768))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp304772
               __tmp304767))
            (for-each
             delete-file
             (let ((__tmp304773
                    (let ((__tmp304774
                           (let ((__tmp304775
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o298684_ '()))))
                             (declare (not safe))
                             (cons _link-path-c298682_ __tmp304775))))
                      (declare (not safe))
                      (cons _path-o298678_ __tmp304774))))
               (declare (not safe))
               (cons _path-c298676_ __tmp304773)))))))
    (define gxc#compile-output-file
      (lambda (_ctx298640_ _n298641_ _ext298642_)
        (letrec ((_module-relative-path298644_
                  (lambda (_ctx298667_)
                    (path-strip-directory
                     (let ((__tmp304776
                            (##structure-ref
                             _ctx298667_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp304776)))))
                 (_module-source-directory298645_
                  (lambda (_ctx298663_)
                    (path-directory
                     (let ((_mpath298665_
                            (##structure-ref
                             _ctx298663_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath298665_))
                           _mpath298665_
                           (let ()
                             (declare (not safe))
                             (last _mpath298665_)))))))
                 (_section-string298646_
                  (lambda (_n298661_)
                    (if (let () (declare (not safe)) (number? _n298661_))
                        (number->string _n298661_)
                        (if (let () (declare (not safe)) (symbol? _n298661_))
                            (symbol->string _n298661_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n298661_))
                                _n298661_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n298661_)))))))
                 (_file-name298647_
                  (lambda (_path298659_)
                    (if _n298641_
                        (string-append
                         _path298659_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string298646_ _n298641_))
                         _ext298642_)
                        (string-append _path298659_ _ext298642_))))
                 (_file-path298648_
                  (lambda ()
                    (let ((_$e298654_ (gxc#current-compile-output-dir)))
                      (if _$e298654_
                          ((lambda (_outdir298657_)
                             (path-expand
                              (let ((__tmp304778
                                     (let ((__tmp304779
                                            (##structure-ref
                                             _ctx298640_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp304779))))
                                (declare (not safe))
                                (_file-name298647_ __tmp304778))
                              _outdir298657_))
                           _$e298654_)
                          (path-expand
                           (let ((__tmp304777
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path298644_
                                     _ctx298640_))))
                             (declare (not safe))
                             (_file-name298647_ __tmp304777))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory298645_
                              _ctx298640_))))))))
          (let ((_path298650_
                 (let () (declare (not safe)) (_file-path298648_))))
            (let ((__tmp304780
                   (lambda ()
                     (let ((__tmp304781 (path-directory _path298650_)))
                       (declare (not safe))
                       (create-directory* __tmp304781)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp304780))
            _path298650_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx298622_)
        (letrec ((_file-name298624_
                  (lambda (_id298638_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id298638_))
                     '".scm")))
                 (_file-path298625_
                  (lambda ()
                    (let* ((_file298631_
                            (let ((__tmp304782
                                   (##structure-ref
                                    _ctx298622_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name298624_ __tmp304782)))
                           (_$e298633_ (gxc#current-compile-output-dir)))
                      (if _$e298633_
                          ((lambda (_outdir298636_)
                             (path-expand
                              _file298631_
                              (path-expand '"static" _outdir298636_)))
                           _$e298633_)
                          (path-expand _file298631_ '"static"))))))
          (let ((_path298627_
                 (let () (declare (not safe)) (_file-path298625_))))
            (let ((__tmp304783
                   (lambda ()
                     (let ((__tmp304784 (path-directory _path298627_)))
                       (declare (not safe))
                       (create-directory* __tmp304784)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp304783))
            _path298627_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx298616_ _opts298617_)
        (let ((_$e298619_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts298617_))))
          (if _$e298619_
              (values _$e298619_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx298616_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr298609_)
        (if (let () (declare (not safe)) (string? _idstr298609_))
            (let* ((_str298611_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr298609_)))
                   (_strs298613_
                    (let ()
                      (declare (not safe))
                      (string-split _str298611_ '#\/))))
              (let () (declare (not safe)) (string-join _strs298613_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr298609_))
                (let ((__tmp304785 (symbol->string _idstr298609_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp304785))
                (error '"Bad module id" _idstr298609_)))))
    (define gxc#invoke__%
      (lambda (_g304786_
               _stdout-redirection298570298574_
               _stderr-redirection298571298576_
               _program298578_
               _args298579_)
        (let* ((_stdout-redirection298581_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection298570298574_ absent-value))
                    '#f
                    _stdout-redirection298570298574_))
               (_stderr-redirection298583_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection298571298576_ absent-value))
                    '#f
                    _stderr-redirection298571298576_)))
          (let ((__tmp304787
                 (let ()
                   (declare (not safe))
                   (cons _program298578_ _args298579_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp304787))
          (let* ((_proc298585_
                  (open-process
                   (let ((__tmp304788
                          (let ((__tmp304789
                                 (let ((__tmp304790
                                        (let ((__tmp304791
                                               (let ((__tmp304792
                                                      (let ((__tmp304793
                                                             (let ((__tmp304794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection298583_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp304794))))
                (declare (not safe))
                (cons _stdout-redirection298581_ __tmp304793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp304792))))
                                          (declare (not safe))
                                          (cons _args298579_ __tmp304791))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp304790))))
                            (declare (not safe))
                            (cons _program298578_ __tmp304789))))
                     (declare (not safe))
                     (cons 'path: __tmp304788))))
                 (_output298590_
                  (if (or _stdout-redirection298581_
                          _stderr-redirection298583_)
                      (read-line _proc298585_ '#f)
                      '#f)))
            (let ((_status298593_ (process-status _proc298585_)))
              (close-port _proc298585_)
              (if (let () (declare (not safe)) (zero? _status298593_))
                  '#!void
                  (begin
                    (display _output298590_)
                    (let ((__tmp304795
                           (let ()
                             (declare (not safe))
                             (cons _program298578_ _args298579_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp304795
                       _status298593_)))))))))
    (define gxc#invoke__@
      (lambda (_keys298569298598_ . _args298600_)
        (apply gxc#invoke__%
               _keys298569298598_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys298569298598_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys298569298598_
                  'stderr-redirection:
                  absent-value))
               _args298600_)))
    (define gxc#invoke
      (lambda _args298572298606_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args298572298606_)))
    (define gxc#join!
      (lambda (_thread298563_)
        (let ((__tmp304797
               (lambda (_exn298565_)
                 (if (uncaught-exception? _exn298565_)
                     (raise (uncaught-exception-reason _exn298565_))
                     (raise _exn298565_))))
              (__tmp304796 (lambda () (thread-join! _thread298563_))))
          (declare (not safe))
          (with-catch __tmp304797 __tmp304796))))))
