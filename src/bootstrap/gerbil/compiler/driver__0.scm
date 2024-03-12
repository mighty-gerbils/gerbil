(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1710238843)
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
      (lambda (_path158379_ _fun158380_)
        (with-output-to-file
         (let ((__tmp158473
                (let ()
                  (declare (not safe))
                  (cons _path158379_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp158473))
         _fun158380_)))
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
      (lambda (_gerbil-libdir158374_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir158374_)))
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
      (lambda (_dir158372_) (delete-file-or-directory _dir158372_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath158346_ _opts158347_)
        (if (let () (declare (not safe)) (string? _srcpath158346_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158346_)))
        (let ((_outdir158349_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158347_)))
              (_invoke-gsc?158350_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158347_)))
              (_gsc-options158351_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158347_)))
              (_keep-scm?158352_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158347_)))
              (_verbosity158353_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158347_)))
              (_optimize158354_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts158347_)))
              (_debug158355_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158347_)))
              (_gen-ssxi158356_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts158347_))))
          (if _outdir158349_
              (let ((__tmp158474
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158349_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158474))
              '#!void)
          (if _optimize158354_
              (let ((__tmp158475
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158475))
              '#!void)
          (let ((__tmp158479
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath158346_))
                   (let ((__tmp158480
                          (let ((__tmp158481
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158346_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158481))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp158480))))
                (__tmp158478
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158476
                 (let ((__tmp158477
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158346_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp158477))))
            (declare (not safe))
            (call-with-parameters
             __tmp158479
             gxc#current-compile-output-dir
             _outdir158349_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158350_
             gxc#current-compile-gsc-options
             _gsc-options158351_
             gxc#current-compile-keep-scm
             _keep-scm?158352_
             gxc#current-compile-verbose
             _verbosity158353_
             gxc#current-compile-optimize
             _optimize158354_
             gxc#current-compile-debug
             _debug158355_
             gxc#current-compile-generate-ssxi
             _gen-ssxi158356_
             gxc#current-compile-timestamp
             __tmp158478
             gxc#current-compile-context
             __tmp158476
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath158365_)
        (let ((_opts158367_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath158365_ _opts158367_))))
    (define gxc#compile-module
      (lambda _g158483_
        (let ((_g158482_ (let () (declare (not safe)) (##length _g158483_))))
          (cond ((let () (declare (not safe)) (##fx= _g158482_ 1))
                 (apply (lambda (_srcpath158365_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath158365_)))
                        _g158483_))
                ((let () (declare (not safe)) (##fx= _g158482_ 2))
                 (apply (lambda (_srcpath158369_ _opts158370_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath158369_
                             _opts158370_)))
                        _g158483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g158483_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath158322_ _opts158323_)
        (if (let () (declare (not safe)) (string? _srcpath158322_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath158322_)))
        (let ((_outdir158325_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts158323_)))
              (_invoke-gsc?158326_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts158323_)))
              (_gsc-options158327_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts158323_)))
              (_keep-scm?158328_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts158323_)))
              (_verbosity158329_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts158323_)))
              (_debug158330_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts158323_))))
          (if _outdir158325_
              (let ((__tmp158484
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir158325_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp158484))
              '#!void)
          (let ((__tmp158488
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath158322_))
                   (let ((__tmp158489
                          (let ((__tmp158490
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath158322_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp158490))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp158489
                      _opts158323_))))
                (__tmp158487
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp158485
                 (let ((__tmp158486
                        (let ()
                          (declare (not safe))
                          (cons _srcpath158322_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp158486))))
            (declare (not safe))
            (call-with-parameters
             __tmp158488
             gxc#current-compile-output-dir
             _outdir158325_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?158326_
             gxc#current-compile-gsc-options
             _gsc-options158327_
             gxc#current-compile-keep-scm
             _keep-scm?158328_
             gxc#current-compile-verbose
             _verbosity158329_
             gxc#current-compile-debug
             _debug158330_
             gxc#current-compile-timestamp
             __tmp158487
             gxc#current-compile-context
             __tmp158485
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath158338_)
        (let ((_opts158340_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath158338_ _opts158340_))))
    (define gxc#compile-exe
      (lambda _g158492_
        (let ((_g158491_ (let () (declare (not safe)) (##length _g158492_))))
          (cond ((let () (declare (not safe)) (##fx= _g158491_ 1))
                 (apply (lambda (_srcpath158338_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath158338_)))
                        _g158492_))
                ((let () (declare (not safe)) (##fx= _g158491_ 2))
                 (apply (lambda (_srcpath158342_ _opts158343_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath158342_ _opts158343_)))
                        _g158492_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g158492_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx158318_ _opts158319_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts158319_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx158318_
               _opts158319_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx158318_
               _opts158319_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx158201_ _opts158202_)
        (letrec ((_generate-stub158204_
                  (lambda (_builtin-modules158314_)
                    (let ((_mod-main158316_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158201_ 'main))))
                      (write (let ((__tmp158493
                                    (let ((__tmp158494
                                           (let ((__tmp158495
                                                  (let ((__tmp158496
                                                         (let ((__tmp158498
                                                                (let ((__tmp158499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules158314_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158499)))
                       (__tmp158497
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp158498 __tmp158497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp158496))))
                                             (declare (not safe))
                                             (cons __tmp158495 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp158494))))
                               (declare (not safe))
                               (cons 'define __tmp158493)))
                      (write (let ((__tmp158500
                                    (let ((__tmp158539
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158501
                                           (let ((__tmp158502
                                                  (let ((__tmp158503
                                                         (let ((__tmp158527
                                                                (let ((__tmp158528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158529
                                      (let ((__tmp158537
                                             (let ((__tmp158538
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp158538)))
                                            (__tmp158530
                                             (let ((__tmp158531
                                                    (let ((__tmp158532
                                                           (let ((__tmp158533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158534
                                 (let ((__tmp158535
                                        (let ((__tmp158536
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp158536 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp158535))))
                            (declare (not safe))
                            (cons __tmp158534 '()))))
                     (declare (not safe))
                     (cons _mod-main158316_ __tmp158533))))
              (declare (not safe))
              (cons 'apply __tmp158532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158531 '()))))
                                        (declare (not safe))
                                        (cons __tmp158537 __tmp158530))))
                                 (declare (not safe))
                                 (cons '() __tmp158529))))
                          (declare (not safe))
                          (cons 'lambda __tmp158528)))
                       (__tmp158504
                        (let ((__tmp158505
                               (let ((__tmp158506
                                      (let ((__tmp158507
                                             (let ((__tmp158518
                                                    (let ((__tmp158519
                                                           (let ((__tmp158520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158521
                                 (let ((__tmp158522
                                        (let ((__tmp158523
                                               (let ((__tmp158524
                                                      (let ((__tmp158525
                                                             (let ((__tmp158526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp158526 '()))))
                (declare (not safe))
                (cons 'force-output __tmp158525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp158524 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp158523))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp158522))))
                            (declare (not safe))
                            (cons __tmp158521 '()))))
                     (declare (not safe))
                     (cons 'void __tmp158520))))
              (declare (not safe))
              (cons 'with-catch __tmp158519)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp158508
                                                    (let ((__tmp158509
                                                           (let ((__tmp158510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp158511
                                 (let ((__tmp158512
                                        (let ((__tmp158513
                                               (let ((__tmp158514
                                                      (let ((__tmp158515
                                                             (let ((__tmp158516
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp158517
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp158517 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp158516))))
                (declare (not safe))
                (cons __tmp158515 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp158514))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp158513))))
                                   (declare (not safe))
                                   (cons __tmp158512 '()))))
                            (declare (not safe))
                            (cons 'void __tmp158511))))
                     (declare (not safe))
                     (cons 'with-catch __tmp158510))))
              (declare (not safe))
              (cons __tmp158509 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp158518
                                                     __tmp158508))))
                                        (declare (not safe))
                                        (cons '() __tmp158507))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp158506))))
                          (declare (not safe))
                          (cons __tmp158505 '()))))
                   (declare (not safe))
                   (cons __tmp158527 __tmp158504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp158503))))
                                             (declare (not safe))
                                             (cons __tmp158502 '()))))
                                      (declare (not safe))
                                      (cons __tmp158539 __tmp158501))))
                               (declare (not safe))
                               (cons 'define __tmp158500)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts158205_
                  (lambda (_libgerbil158312_)
                    (call-with-input-file
                     (string-append _libgerbil158312_ '".ldd")
                     read)))
                 (_replace-extension158206_
                  (lambda (_path158309_ _ext158310_)
                    (string-append
                     (path-strip-extension _path158309_)
                     _ext158310_)))
                 (_not-exclude-module?158207_
                  (lambda (_ctx158305_)
                    (let ((_id-str158307_
                           (symbol->string
                            (##structure-ref
                             _ctx158305_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp158541
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str158307_))))
                            (declare (not safe))
                            (not __tmp158541))
                          (let ((__tmp158540
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str158307_))))
                            (declare (not safe))
                            (not __tmp158540))
                          '#f))))
                 (_not-file-empty?158208_
                  (lambda (_path158303_)
                    (let ((__tmp158542
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path158303_))))
                      (declare (not safe))
                      (not __tmp158542))))
                 (_compile-stub158209_
                  (lambda (_output-scm158216_ _output-bin158217_)
                    (let* ((_gerbil-home158219_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158221_
                            (path-expand '"lib" _gerbil-home158219_))
                           (_gerbil-staticdir158223_
                            (path-expand '"static" _gerbil-libdir158221_))
                           (_gxlink158225_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir158221_))
                           (_tmp158227_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path158231_
                            (lambda (_f158229_)
                              (path-expand
                               (path-strip-directory _f158229_)
                               _tmp158227_)))
                           (_deps158233_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158201_)))
                           (_deps158235_
                            (filter _not-exclude-module?158207_ _deps158233_))
                           (_src-deps-scm158237_
                            (map gxc#find-static-module-file _deps158235_))
                           (_src-deps-scm158239_
                            (filter _not-file-empty?158208_
                                    _src-deps-scm158237_))
                           (_src-deps-scm158241_
                            (map path-expand _src-deps-scm158239_))
                           (_deps-scm158243_
                            (map _tmp-path158231_ _src-deps-scm158241_))
                           (_deps-c158249_
                            (map (lambda (_g158244158246_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158206_
                                      _g158244158246_
                                      '".c")))
                                 _deps-scm158243_))
                           (_deps-o158255_
                            (map (lambda (_g158250158252_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension158206_
                                      _g158250158252_
                                      '".o")))
                                 _deps-scm158243_))
                           (_src-bin-scm158257_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158201_)))
                           (_src-bin-scm158259_
                            (path-expand _src-bin-scm158257_))
                           (_bin-scm158261_
                            (let ()
                              (declare (not safe))
                              (_tmp-path158231_ _src-bin-scm158259_)))
                           (_bin-c158263_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158206_
                               _bin-scm158261_
                               '".c")))
                           (_bin-o158265_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158206_
                               _bin-scm158261_
                               '".o")))
                           (_output-bin158267_
                            (path-expand _output-bin158217_))
                           (_output-scm158269_
                            (path-expand _output-scm158216_))
                           (_output-c158271_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158206_
                               _output-scm158269_
                               '".c")))
                           (_output-o158273_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158206_
                               _output-scm158269_
                               '".o")))
                           (_output_-c158275_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158206_
                               _output-scm158269_
                               '"_.c")))
                           (_output_-o158277_
                            (let ()
                              (declare (not safe))
                              (_replace-extension158206_
                               _output-scm158269_
                               '"_.o")))
                           (_gsc-link-opts158279_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158281_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158283_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir158223_)))
                           (_output-ld-opts158285_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a158287_
                            (path-expand '"libgerbil.a" _gerbil-libdir158221_))
                           (_libgerbil.so158289_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir158221_))
                           (_libgerbil-ld-opts158291_
                            (if (file-exists? _libgerbil.so158289_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts158205_
                                   _libgerbil.so158289_))
                                (if (file-exists? _libgerbil.a158287_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts158205_
                                       _libgerbil.a158287_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a158287_
                                       _libgerbil.so158289_)))))
                           (_rpath158293_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158221_)))
                           (_builtin-modules158297_
                            (map (lambda (_mod158295_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod158295_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx158201_ _deps158235_)))))
                      (let ((__tmp158543
                             (lambda ()
                               (let ((__tmp158544
                                      (path-directory _output-bin158267_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158544)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158543))
                      (let ((__tmp158545
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub158204_
                                  _builtin-modules158297_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158269_
                         __tmp158545))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158546
                                   (lambda () (create-directory _tmp158227_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp158546))
                            (for-each
                             copy-file
                             _src-deps-scm158241_
                             _deps-scm158243_)
                            (copy-file _src-bin-scm158259_ _bin-scm158261_)
                            (let ((__tmp158554
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158547
                                   (let ((__tmp158548
                                          (let ((__tmp158549
                                                 (let ((__tmp158550
                                                        (let ((__tmp158551
                                                               (let ((__tmp158552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158553
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm158269_ '()))))
                                (declare (not safe))
                                (cons _bin-scm158261_ __tmp158553))))
                         (declare (not safe))
                         (foldr1 cons __tmp158552 _deps-scm158243_))))
                  (declare (not safe))
                  (foldr1 cons __tmp158551 _gsc-link-opts158279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink158225_
                                                         __tmp158550))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp158549))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158548))))
                              (declare (not safe))
                              (gxc#invoke __tmp158554 __tmp158547))
                            (let ((__tmp158562
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158555
                                   (let ((__tmp158556
                                          (let ((__tmp158557
                                                 (let ((__tmp158558
                                                        (let ((__tmp158559
                                                               (let ((__tmp158560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158561
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c158275_ '()))))
                                (declare (not safe))
                                (cons _output-c158271_ __tmp158561))))
                         (declare (not safe))
                         (cons _bin-c158263_ __tmp158560))))
                  (declare (not safe))
                  (foldr1 cons __tmp158559 _deps-c158249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158558
                                                           _gsc-static-opts158283_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158557
                                                    _gsc-cc-opts158281_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158556))))
                              (declare (not safe))
                              (gxc#invoke __tmp158562 __tmp158555))
                            (let ((__tmp158575
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158563
                                   (let ((__tmp158564
                                          (let ((__tmp158565
                                                 (let ((__tmp158566
                                                        (let ((__tmp158567
                                                               (let ((__tmp158568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158569
                                     (let ((__tmp158570
                                            (let ((__tmp158571
                                                   (let ((__tmp158572
                                                          (let ((__tmp158573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp158574
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts158291_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp158574))))
                    (declare (not safe))
                    (cons _gerbil-libdir158221_ __tmp158573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp158572))))
                                              (declare (not safe))
                                              (cons _rpath158293_
                                                    __tmp158571))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp158570
                                               _output-ld-opts158285_))))
                                (declare (not safe))
                                (cons _output_-o158277_ __tmp158569))))
                         (declare (not safe))
                         (cons _output-o158273_ __tmp158568))))
                  (declare (not safe))
                  (cons _bin-o158265_ __tmp158567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158566
                                                           _deps-o158255_))))
                                            (declare (not safe))
                                            (cons _output-bin158267_
                                                  __tmp158565))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158564))))
                              (declare (not safe))
                              (gxc#invoke __tmp158575 __tmp158563))
                            (for-each
                             delete-file
                             (let ((__tmp158576
                                    (let ((__tmp158577
                                           (let ((__tmp158578
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o158277_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o158273_
                                                   __tmp158578))))
                                      (declare (not safe))
                                      (cons _output_-c158275_ __tmp158577))))
                               (declare (not safe))
                               (cons _output-c158271_ __tmp158576)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp158227_)))
                          '#!void)))))
          (let* ((_output-bin158211_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158201_ _opts158202_)))
                 (_output-scm158213_
                  (string-append _output-bin158211_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158209_ _output-scm158213_ _output-bin158211_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158213_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx158026_ _opts158027_)
        (letrec ((_reset-declare158029_
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
                 (_generate-stub158030_
                  (lambda (_deps158192_)
                    (let ((_mod-main158194_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx158026_ 'main)))
                          (_reset-decl158195_
                           (let ()
                             (declare (not safe))
                             (_reset-declare158029_)))
                          (_user-decl158196_
                           (let ()
                             (declare (not safe))
                             (_user-declare158031_))))
                      (for-each
                       (lambda (_dep158198_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl158195_)
                         (newline)
                         (if _user-decl158196_
                             (begin (write _user-decl158196_) (newline))
                             '#!void)
                         (write (let ((__tmp158579
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep158198_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp158579)))
                         (newline))
                       _deps158192_)
                      (write (let ((__tmp158580
                                    (let ((__tmp158593
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp158581
                                           (let ((__tmp158589
                                                  (let ((__tmp158590
                                                         (let ((__tmp158591
                                                                (let ((__tmp158592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp158592))))
                   (declare (not safe))
                   (cons __tmp158591 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp158590)))
                                                 (__tmp158582
                                                  (let ((__tmp158583
                                                         (let ((__tmp158584
                                                                (let ((__tmp158585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp158586
                                      (let ((__tmp158587
                                             (let ((__tmp158588
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp158588 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp158587))))
                                 (declare (not safe))
                                 (cons __tmp158586 '()))))
                          (declare (not safe))
                          (cons _mod-main158194_ __tmp158585))))
                   (declare (not safe))
                   (cons 'apply __tmp158584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158583 '()))))
                                             (declare (not safe))
                                             (cons __tmp158589 __tmp158582))))
                                      (declare (not safe))
                                      (cons __tmp158593 __tmp158581))))
                               (declare (not safe))
                               (cons 'define __tmp158580)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare158031_
                  (lambda ()
                    (let* ((_gsc-opts158097_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts158027_)))
                           (_gsc-prelude158099_
                            (if _gsc-opts158097_
                                (member '"-prelude" _gsc-opts158097_)
                                '#f))
                           (_gsc-prelude158101_
                            (if _gsc-prelude158099_
                                (read (open-input-string
                                       (cadr _gsc-prelude158099_)))
                                '#f)))
                      (let _lp158104_ ((_rest158106_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude158101_ '())))
                                       (_user-decls158107_ '()))
                        (let* ((_rest158108158116_ _rest158106_)
                               (_else158110158124_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls158107_))
                                      '#f
                                      (let ((__tmp158594
                                             (reverse _user-decls158107_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp158594)))))
                               (_K158112158180_
                                (lambda (_rest158127_ _expr158128_)
                                  (let* ((_expr158129158141_ _expr158128_)
                                         (_else158132158149_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp158104_
                                               _rest158127_
                                               _user-decls158107_)))))
                                    (let ((_K158137158170_
                                           (lambda (_decls158168_)
                                             (let ((__tmp158595
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls158107_
                                                              _decls158168_))))
                                               (declare (not safe))
                                               (_lp158104_
                                                _rest158127_
                                                __tmp158595))))
                                          (_K158134158155_
                                           (lambda (_exprs158153_)
                                             (let ((__tmp158596
                                                    (append _exprs158153_
                                                            _rest158127_)))
                                               (declare (not safe))
                                               (_lp158104_
                                                __tmp158596
                                                _user-decls158107_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr158129158141_))
                                          (let ((_tl158139158175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr158129158141_)))
                                                (_hd158138158173_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr158129158141_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd158138158173_
                                                         'declare))
                                                (let ((_decls158178_
                                                       _tl158139158175_))
                                                  (declare (not safe))
                                                  (_K158137158170_
                                                   _decls158178_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd158138158173_
                                                             'begin))
                                                    (let ((_exprs158163_
                                                           _tl158139158175_))
                                                      (declare (not safe))
                                                      (_K158134158155_
                                                       _exprs158163_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else158132158149_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else158132158149_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest158108158116_))
                              (let ((_hd158113158183_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest158108158116_)))
                                    (_tl158114158185_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest158108158116_))))
                                (let* ((_expr158188_ _hd158113158183_)
                                       (_rest158190_ _tl158114158185_))
                                  (declare (not safe))
                                  (_K158112158180_ _rest158190_ _expr158188_)))
                              (let ()
                                (declare (not safe))
                                (_else158110158124_))))))))
                 (_compile-stub158032_
                  (lambda (_output-scm158039_ _output-bin158040_)
                    (let* ((_gerbil-home158042_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir158044_
                            (path-expand '"lib" _gerbil-home158042_))
                           (_runtime158046_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp158048_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home158042_))
                           (_include-gambit-sharp158050_
                            (string-append
                             '"(include \""
                             _gambit-sharp158048_
                             '"\")"))
                           (_bin-scm158052_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx158026_)))
                           (_deps158054_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx158026_)))
                           (_deps158056_
                            (map gxc#find-static-module-file _deps158054_))
                           (_deps158061_
                            (filter (lambda (_$obj158058_)
                                      (let ((__tmp158597
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj158058_))))
                                        (declare (not safe))
                                        (not __tmp158597)))
                                    _deps158056_))
                           (_deps158065_
                            (filter (lambda (_f158063_)
                                      (let ((__tmp158598
                                             (member _f158063_
                                                     _runtime158046_)))
                                        (declare (not safe))
                                        (not __tmp158598)))
                                    _deps158061_))
                           (_output-base158067_
                            (string-append
                             (path-strip-extension _output-scm158039_)))
                           (_output-c158069_
                            (string-append _output-base158067_ '".c"))
                           (_output-o158071_
                            (string-append _output-base158067_ '".o"))
                           (_output-c_158073_
                            (string-append _output-base158067_ '"_.c"))
                           (_output-o_158075_
                            (string-append _output-base158067_ '"_.o"))
                           (_gsc-link-opts158077_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts158079_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts158081_
                            (let ((__tmp158599
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir158044_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp158599)))
                           (_output-ld-opts158083_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros158085_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp158601
                                       (let ((__tmp158602
                                              (let ((__tmp158603
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp158050_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp158603))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp158602))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158601))
                                (let ((__tmp158600
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp158050_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp158600))))
                           (_gsc-link-opts158087_
                            (append _gsc-link-opts158077_
                                    _gsc-gx-macros158085_))
                           (_rpath158089_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir158044_)))
                           (_default-ld-options158091_
                            (let ((__tmp158604
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp158604))))
                      (let ((__tmp158605
                             (lambda ()
                               (let ((__tmp158606
                                      (path-directory _output-bin158040_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp158606)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp158605))
                      (let ((__tmp158607
                             (lambda ()
                               (let ((__tmp158608
                                      (let ((__tmp158609
                                             (let ((__tmp158610
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm158052_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp158610
                                                       _deps158065_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp158609
                                                _runtime158046_))))
                                 (declare (not safe))
                                 (_generate-stub158030_ __tmp158608)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm158039_
                         __tmp158607))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp158616
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158611
                                   (let ((__tmp158612
                                          (let ((__tmp158613
                                                 (let ((__tmp158614
                                                        (let ((__tmp158615
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm158039_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp158615 _gsc-link-opts158087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_158073_
                                                         __tmp158614))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp158613))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp158612))))
                              (declare (not safe))
                              (gxc#invoke __tmp158616 __tmp158611))
                            (let ((__tmp158622
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp158617
                                   (let ((__tmp158618
                                          (let ((__tmp158619
                                                 (let ((__tmp158620
                                                        (let ((__tmp158621
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_158073_ '()))))
                  (declare (not safe))
                  (cons _output-c158069_ __tmp158621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp158620
                                                           _gsc-static-opts158081_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp158619
                                                    _gsc-cc-opts158079_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp158618))))
                              (declare (not safe))
                              (gxc#invoke __tmp158622 __tmp158617))
                            (let ((__tmp158632
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp158623
                                   (let ((__tmp158624
                                          (let ((__tmp158625
                                                 (let ((__tmp158626
                                                        (let ((__tmp158627
                                                               (let ((__tmp158628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp158629
                                     (let ((__tmp158630
                                            (let ((__tmp158631
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options158091_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir158044_
                                                    __tmp158631))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp158630))))
                                (declare (not safe))
                                (cons _rpath158089_ __tmp158629))))
                         (declare (not safe))
                         (foldr1 cons __tmp158628 _output-ld-opts158083_))))
                  (declare (not safe))
                  (cons _output-o_158075_ __tmp158627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o158071_
                                                         __tmp158626))))
                                            (declare (not safe))
                                            (cons _output-bin158040_
                                                  __tmp158625))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp158624))))
                              (declare (not safe))
                              (gxc#invoke __tmp158632 __tmp158623)))
                          '#!void)))))
          (let* ((_output-bin158034_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx158026_ _opts158027_)))
                 (_output-scm158036_
                  (string-append _output-bin158034_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub158032_ _output-scm158036_ _output-bin158034_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm158036_))))))
    (define gxc#find-export-binding
      (lambda (_ctx157976_ _id157977_)
        (let ((_$e158023_
               (let ((__tmp158634
                      (lambda (_e157978157980_)
                        (let* ((_g157982157992_ _e157978157980_)
                               (_else157984158000_ (lambda () '#f))
                               (_K157986158004_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g157982157992_
                                 'gx#module-export::t))
                              (let* ((_e157987158007_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157982157992_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e157988158010_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157982157992_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e157989158013_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g157982157992_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e157989158013_ '0))
                                    (let ((_e157990158016_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g157982157992_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g158018158020_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g158018158020_
                                                    _id157977_)))
                                           _e157990158016_)
                                          (let ()
                                            (declare (not safe))
                                            (_K157986158004_))
                                          (let ()
                                            (declare (not safe))
                                            (_else157984158000_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else157984158000_))))
                              (let ()
                                (declare (not safe))
                                (_else157984158000_))))))
                     (__tmp158633
                      (##structure-ref
                       _ctx157976_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp158634 __tmp158633))))
          (if _$e158023_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e158023_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx157968_ _id157969_)
        (let ((_$e157971_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx157968_ _id157969_))))
          (if _$e157971_
              ((lambda (_bind157974_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind157974_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id157969_)))
                 (##structure-ref _bind157974_ '1 gx#binding::t '#f))
               _$e157971_)
              (let ((__tmp158635
                     (##structure-ref
                      _ctx157968_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp158635
                 _id157969_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx157855_)
        (letrec* ((_ht157857_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template157858_
                   (lambda (_in157920_ _phi157921_)
                     (let ((_iphi157923_
                            (fx+ _phi157921_
                                 (##direct-structure-ref
                                  _in157920_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports157924_
                            (##structure-ref
                             (##direct-structure-ref
                              _in157920_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp157926_ ((_rest157928_ _imports157924_)
                                        (_r157929_ '()))
                         (let* ((_rest157930157938_ _rest157928_)
                                (_else157932157946_ (lambda () _r157929_))
                                (_K157934157956_
                                 (lambda (_rest157949_ _in157950_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in157950_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi157923_))
                                           (let ((__tmp158642
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in157950_
                                                          _r157929_))))
                                             (declare (not safe))
                                             (_lp157926_
                                              _rest157949_
                                              __tmp158642))
                                           (let ()
                                             (declare (not safe))
                                             (_lp157926_
                                              _rest157949_
                                              _r157929_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in157950_
                                              'gx#module-import::t))
                                           (let ((_iphi157952_
                                                  (fx+ _phi157921_
                                                       (##direct-structure-ref
                                                        _in157950_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi157952_))
                                                 (let ((__tmp158640
                                                        (let ((__tmp158641
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in157950_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp158641 _r157929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp157926_
                                                    _rest157949_
                                                    __tmp158640))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp157926_
                                                    _rest157949_
                                                    _r157929_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in157950_
                                                  'gx#import-set::t))
                                               (let ((_xphi157954_
                                                      (fx+ _iphi157923_
                                                           (##direct-structure-ref
                                                            _in157950_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi157954_))
                                                     (let ((__tmp158638
                                                            (let ((__tmp158639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in157950_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp158639 _r157929_))))
               (declare (not safe))
               (_lp157926_ _rest157949_ __tmp158638))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi157954_)
                                                         (let ((__tmp158636
                                                                (let ((__tmp158637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template157858_
                                  _in157950_
                                  _iphi157923_))))
                          (declare (not safe))
                          (foldl1 cons _r157929_ __tmp158637))))
                   (declare (not safe))
                   (_lp157926_ _rest157949_ __tmp158636))
                 (let ()
                   (declare (not safe))
                   (_lp157926_ _rest157949_ _r157929_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp157926_
                                                  _rest157949_
                                                  _r157929_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest157930157938_))
                               (let ((_hd157935157959_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest157930157938_)))
                                     (_tl157936157961_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest157930157938_))))
                                 (let* ((_in157964_ _hd157935157959_)
                                        (_rest157966_ _tl157936157961_))
                                   (declare (not safe))
                                   (_K157934157956_ _rest157966_ _in157964_)))
                               (let ()
                                 (declare (not safe))
                                 (_else157932157946_))))))))
                  (_find-deps157859_
                   (lambda (_rest157866_ _deps157867_)
                     (let* ((_rest157868157876_ _rest157866_)
                            (_else157870157884_ (lambda () _deps157867_))
                            (_K157872157908_
                             (lambda (_rest157887_ _hd157888_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd157888_
                                      'gx#module-context::t))
                                   (let ((_id157890_
                                          (##structure-ref
                                           _hd157888_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports157891_
                                          (##structure-ref
                                           _hd157888_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht157857_ _id157890_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps157859_
                                            _rest157887_
                                            _deps157867_))
                                         (let ((_$e157893_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd157888_))))
                                           (if _$e157893_
                                               ((lambda (_pre157896_)
                                                  (let ((_xdeps157898_
                                                         (let ((__tmp158655
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre157896_ _imports157891_))))
                   (declare (not safe))
                   (_find-deps157859_ __tmp158655 _deps157867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht157857_
                                                       _id157890_
                                                       _hd157888_))
                                                    (let ((__tmp158656
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd157888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps157898_))))
              (declare (not safe))
              (_find-deps157859_ _rest157887_ __tmp158656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e157893_)
                                               (let ((_xdeps157900_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps157859_
                                                         _imports157891_
                                                         _deps157867_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht157857_
                                                    _id157890_
                                                    _hd157888_))
                                                 (let ((__tmp158654
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd157888_
                                                                _xdeps157900_))))
                                                   (declare (not safe))
                                                   (_find-deps157859_
                                                    _rest157887_
                                                    __tmp158654)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd157888_
                                          'gx#prelude-context::t))
                                       (let ((_id157902_
                                              (##structure-ref
                                               _hd157888_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht157857_
                                                _id157902_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps157859_
                                                _rest157887_
                                                _deps157867_))
                                             (let ((_xdeps157904_
                                                    (let ((__tmp158652
                                                           (##structure-ref
                                                            _hd157888_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps157859_
                                                       __tmp158652
                                                       _deps157867_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht157857_
                                                      _id157902_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps157859_
                                                      _rest157887_
                                                      _xdeps157904_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht157857_
                                                        _id157902_
                                                        _hd157888_))
                                                     (let ((__tmp158653
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd157888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps157904_))))
               (declare (not safe))
               (_find-deps157859_ _rest157887_ __tmp158653)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd157888_
                                              'gx#module-import::t))
                                           (if (let ((__tmp158651
                                                      (##direct-structure-ref
                                                       _hd157888_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp158651))
                                               (let ((__tmp158649
                                                      (let ((__tmp158650
                                                             (##direct-structure-ref
                                                              _hd157888_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158650
                                                              _rest157887_))))
                                                 (declare (not safe))
                                                 (_find-deps157859_
                                                  __tmp158649
                                                  _deps157867_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps157859_
                                                  _rest157887_
                                                  _deps157867_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd157888_
                                                  'gx#module-export::t))
                                               (let ((__tmp158647
                                                      (let ((__tmp158648
                                                             (##direct-structure-ref
                                                              _hd157888_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp158648
                                                              _rest157887_))))
                                                 (declare (not safe))
                                                 (_find-deps157859_
                                                  __tmp158647
                                                  _deps157867_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd157888_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp158646
                                                              (##direct-structure-ref
                                                               _hd157888_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp158646))
                                                       (let ((__tmp158644
                                                              (let ((__tmp158645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd157888_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp158645 _rest157887_))))
                 (declare (not safe))
                 (_find-deps157859_ __tmp158644 _deps157867_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd157888_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps157906_
                           (let ()
                             (declare (not safe))
                             (_import-set-template157858_ _hd157888_ '0)))
                          (__tmp158643
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest157887_ _xdeps157906_))))
                     (declare (not safe))
                     (_find-deps157859_ __tmp158643 _deps157867_))
                   (let ()
                     (declare (not safe))
                     (_find-deps157859_ _rest157887_ _deps157867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd157888_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest157868157876_))
                           (let ((_hd157873157911_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest157868157876_)))
                                 (_tl157874157913_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest157868157876_))))
                             (let* ((_hd157916_ _hd157873157911_)
                                    (_rest157918_ _tl157874157913_))
                               (declare (not safe))
                               (_K157872157908_ _rest157918_ _hd157916_)))
                           (let ()
                             (declare (not safe))
                             (_else157870157884_)))))))
          (reverse (filter gx#expander-context-id
                           (let ((__tmp158657
                                  (let ((_$e157861_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _ctx157855_))))
                                    (if _$e157861_
                                        ((lambda (_pre157864_)
                                           (let ((__tmp158658
                                                  (##structure-ref
                                                   _ctx157855_
                                                   '8
                                                   gx#module-context::t
                                                   '#f)))
                                             (declare (not safe))
                                             (cons _pre157864_ __tmp158658)))
                                         _$e157861_)
                                        (##structure-ref
                                         _ctx157855_
                                         '8
                                         gx#module-context::t
                                         '#f)))))
                             (declare (not safe))
                             (_find-deps157859_ __tmp158657 '())))))))
    (define gxc#find-static-module-file
      (lambda (_ctx157786_)
        (let* ((_context-id157788_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx157786_
                       'gx#module-context::t))
                    (##structure-ref _ctx157786_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx157786_)))
               (_scm157790_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id157788_))
                 '".scm"))
               (_dirs157792_ (gx#current-expander-module-library-path))
               (_dirs157798_
                (let ((_user-libpath157794_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath157794_
                      (let ((_user-libpath157796_
                             (path-expand '"lib" _user-libpath157794_)))
                        (if (member _user-libpath157796_ _dirs157792_)
                            _dirs157792_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath157796_ _dirs157792_))))
                      _dirs157792_)))
               (_dirs157807_
                (let ((_$e157800_ (gxc#current-compile-output-dir)))
                  (if _$e157800_
                      ((lambda (_g157802157804_)
                         (let ()
                           (declare (not safe))
                           (cons _g157802157804_ _dirs157798_)))
                       _$e157800_)
                      _dirs157798_)))
               (_dirs157813_
                (map (lambda (_g157808157810_)
                       (path-expand '"static" _g157808157810_))
                     _dirs157807_)))
          (let _lp157816_ ((_rest157818_ _dirs157813_))
            (let* ((_rest157819157827_ _rest157818_)
                   (_else157821157835_
                    (lambda ()
                      (let ((__tmp158659
                             (##structure-ref
                              _ctx157786_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp158659
                         _scm157790_))))
                   (_K157823157843_
                    (lambda (_rest157838_ _dir157839_)
                      (let ((_path157841_
                             (path-expand _scm157790_ _dir157839_)))
                        (if (file-exists? _path157841_)
                            _path157841_
                            (let ()
                              (declare (not safe))
                              (_lp157816_ _rest157838_)))))))
              (if (let () (declare (not safe)) (##pair? _rest157819157827_))
                  (let ((_hd157824157846_
                         (let ()
                           (declare (not safe))
                           (##car _rest157819157827_)))
                        (_tl157825157848_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157819157827_))))
                    (let* ((_dir157851_ _hd157824157846_)
                           (_rest157853_ _tl157825157848_))
                      (declare (not safe))
                      (_K157823157843_ _rest157853_ _dir157851_)))
                  (let () (declare (not safe)) (_else157821157835_))))))))
    (define gxc#file-empty?
      (lambda (_path157784_)
        (let ((__tmp158660 (file-info-size (file-info _path157784_ '#t))))
          (declare (not safe))
          (zero? __tmp158660))))
    (define gxc#compile-top-module
      (lambda (_ctx157773_)
        (let ((__tmp158664
               (lambda ()
                 (let ((__tmp158665
                        (##structure-ref
                         _ctx157773_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp158665))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp158666
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx157773_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp158666))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx157773_))
                 (if (let ((__tmp158669
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx157773_))))
                       (declare (not safe))
                       (null? __tmp158669))
                     (let* ((_thr1157778_
                             (let ((__tmp158667
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx157773_)))))
                               (declare (not safe))
                               (spawn __tmp158667)))
                            (_thr2157781_
                             (let ((__tmp158668
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx157773_)))))
                               (declare (not safe))
                               (spawn __tmp158668))))
                       (let () (declare (not safe)) (gxc#join! _thr1157778_))
                       (let () (declare (not safe)) (gxc#join! _thr2157781_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx157773_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx157773_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx157773_))
                     '#!void)))
              (__tmp158663
               (let ((__obj158471
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj158471)
                 __obj158471))
              (__tmp158662 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp158661 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp158664
           gx#current-expander-context
           _ctx157773_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp158663
           gxc#current-compile-runtime-sections
           __tmp158662
           gxc#current-compile-runtime-names
           __tmp158661))))
    (define gxc#collect-bindings
      (lambda (_ctx157771_)
        (let ((__tmp158670
               (##structure-ref _ctx157771_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp158670))))
    (define gxc#compile-runtime-code
      (lambda (_ctx157717_)
        (letrec ((_compile1157719_
                  (lambda (_ctx157760_)
                    (let* ((_code157762_
                            (##structure-ref
                             _ctx157760_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt157766_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code157762_))
                                (let ((_idstr157764_
                                       (let ((__tmp158671
                                              (##structure-ref
                                               _ctx157760_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp158671))))
                                  (string-append _idstr157764_ '"__0"))
                                '#f)))
                      (if _rt157766_
                          (begin
                            (let ((__tmp158672
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp158672 _ctx157760_ _rt157766_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code157721_
                               _ctx157760_
                               _code157762_)))
                          (let ((_path157769_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx157760_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path157769_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code157722_
                         _ctx157760_
                         _code157762_
                         _rt157766_)))))
                 (_context-timestamp157720_
                  (lambda (_ctx157758_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx157758_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code157721_
                  (lambda (_ctx157740_ _code157741_)
                    (let* ((_lifts157743_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code157746_
                            (let ((__tmp158675
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code157741_))))
                                  (__tmp158674
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp158673
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158675
                               gx#current-expander-context
                               _ctx157740_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts157743_
                               gxc#current-compile-marks
                               __tmp158674
                               gxc#current-compile-identifiers
                               __tmp158673)))
                           (_runtime-code157748_
                            (if (let ((__tmp158679 (unbox _lifts157743_)))
                                  (declare (not safe))
                                  (null? __tmp158679))
                                _runtime-code157746_
                                (let ((__tmp158676
                                       (let ((__tmp158678
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code157746_
                                                      '())))
                                             (__tmp158677
                                              (reverse (unbox _lifts157743_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp158678
                                                 __tmp158677))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158676))))
                           (_runtime-code157750_
                            (let ((__tmp158680
                                   (let ((__tmp158682
                                          (let ((__tmp158683
                                                 (let ((__tmp158686
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp157720_
                                                           _ctx157740_)))
                                                       (__tmp158684
                                                        (let ((__tmp158685
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp158685
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp158686
                                                         __tmp158684))))
                                            (declare (not safe))
                                            (cons 'define __tmp158683)))
                                         (__tmp158681
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code157748_ '()))))
                                     (declare (not safe))
                                     (cons __tmp158682 __tmp158681))))
                              (declare (not safe))
                              (cons 'begin __tmp158680)))
                           (_scm0157752_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157740_
                               '0
                               '".scm"))))
                      (let ((_scms157755_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx157740_))))
                        (let ((__tmp158687
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0157752_
                                    _runtime-code157750_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp158687
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms157755_)
                            (delete-file _scms157755_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0157752_
                           '" => "
                           _scms157755_))
                        (copy-file _scm0157752_ _scms157755_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0157752_))))))
                 (_generate-loader-code157722_
                  (lambda (_ctx157729_ _code157730_ _rt157731_)
                    (let* ((_loader-code157734_
                            (let ((__tmp158688
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code157730_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp158688
                               gx#current-expander-context
                               _ctx157729_)))
                           (_loader-code157736_
                            (if _rt157731_
                                (let ((__tmp158689
                                       (let ((__tmp158690
                                              (let ((__tmp158691
                                                     (let ((__tmp158692
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt157731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp158692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp158691 '()))))
                                         (declare (not safe))
                                         (cons _loader-code157734_
                                               __tmp158690))))
                                  (declare (not safe))
                                  (cons 'begin __tmp158689))
                                _loader-code157734_)))
                      (let ((__tmp158693
                             (lambda ()
                               (let ((__tmp158694
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157729_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp158694
                                  _loader-code157736_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp158693
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules157724_
                 (let ((__tmp158695
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx157717_))))
                   (declare (not safe))
                   (cons _ctx157717_ __tmp158695))))
            (for-each
             (lambda (_ctx157726_)
               (let ((__tmp158696
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1157719_ _ctx157726_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp158696
                  gxc#current-compile-decls
                  '())))
             _all-modules157724_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx157614_)
        (letrec ((_compile-ssi157616_
                  (lambda (_code157687_)
                    (let* ((_path157689_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx157614_
                               '#f
                               '".ssi")))
                           (_prelude157700_
                            (let* ((_super157691_
                                    (##structure-ref
                                     _ctx157614_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e157693_
                                    (##structure-ref
                                     _super157691_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e157693_
                                  ((lambda (_g157695157697_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g157695157697_)))
                                   _$e157693_)
                                  ':<root>)))
                           (_ns157702_
                            (##structure-ref
                             _ctx157614_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr157704_
                            (symbol->string
                             (##structure-ref
                              _ctx157614_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg157711_
                            (let ((_$e157706_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr157704_ '#\/))))
                              (if _$e157706_
                                  ((lambda (_x157709_)
                                     (string->symbol
                                      (substring _idstr157704_ '0 _x157709_)))
                                   _$e157706_)
                                  '#f)))
                           (_rt157713_
                            (let ((__tmp158697
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp158697 _ctx157614_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path157689_))
                      (let ((__tmp158698
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude157700_))
                               (if _pkg157711_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg157711_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns157702_))
                               (newline)
                               (pretty-print _code157687_)
                               (if _rt157713_
                                   (pretty-print
                                    (let ((__tmp158699
                                           (let ((__tmp158703
                                                  (let ((__tmp158704
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp158704)))
                                                 (__tmp158700
                                                  (let ((__tmp158701
                                                         (let ((__tmp158702
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt157713_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp158702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp158701 '()))))
                                             (declare (not safe))
                                             (cons __tmp158703 __tmp158700))))
                                      (declare (not safe))
                                      (cons '%#call __tmp158699)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path157689_
                         __tmp158698)))))
                 (_compile-phi157617_
                  (lambda (_part157627_)
                    (let* ((_part157628157641_ _part157627_)
                           (_E157630157645_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part157628157641_))))
                           (_K157631157656_
                            (lambda (_code157648_
                                     _n157649_
                                     _phi157650_
                                     _phi-ctx157651_)
                              (let* ((_code157654_
                                      (let ((__tmp158705
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code157648_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp158705
                                         gx#current-expander-context
                                         _phi-ctx157651_
                                         gx#current-expander-phi
                                         _phi157650_)))
                                     (__tmp158706
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx157614_
                                         _n157649_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp158706
                                 _code157654_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part157628157641_))
                          (let ((_hd157632157659_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part157628157641_)))
                                (_tl157633157661_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part157628157641_))))
                            (let ((_phi-ctx157664_ _hd157632157659_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl157633157661_))
                                  (let ((_hd157634157666_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl157633157661_)))
                                        (_tl157635157668_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl157633157661_))))
                                    (let ((_phi157671_ _hd157634157666_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl157635157668_))
                                          (let ((_hd157636157673_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl157635157668_)))
                                                (_tl157637157675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl157635157668_))))
                                            (let ((_n157678_ _hd157636157673_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl157637157675_))
                                                  (let ((_hd157638157680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl157637157675_)))
                                                        (_tl157639157682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl157637157675_))))
                                                    (let ((_code157685_
                                                           _hd157638157680_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl157639157682_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K157631157656_
                                                             _code157685_
                                                             _n157678_
                                                             _phi157671_
                                                             _phi-ctx157664_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E157630157645_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E157630157645_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E157630157645_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E157630157645_)))))
                          (let () (declare (not safe)) (_E157630157645_)))))))
          (let ((_g158707_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx157614_))))
            (begin
              (let ((_g158708_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g158707_)
                           (##vector-length _g158707_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g158708_ 2)))
                    (error "Context expects 2 values" _g158708_)))
              (let ((_ssi-code157619_
                     (let () (declare (not safe)) (##vector-ref _g158707_ 0)))
                    (_phi-code157620_
                     (let () (declare (not safe)) (##vector-ref _g158707_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi157616_ _ssi-code157619_))
                  (let ((_threads157625_
                         (map (lambda (_code157622_)
                                (let ((__tmp158709
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi157617_
                                            _code157622_)))))
                                  (declare (not safe))
                                  (spawn __tmp158709)))
                              _phi-code157620_)))
                    (for-each gxc#join! _threads157625_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx157597_)
        (let* ((_path157599_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx157597_ '#f '".ssxi.ss")))
               (_code157601_
                (let ((__tmp158710
                       (##structure-ref
                        _ctx157597_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp158710)))
               (_idstr157603_
                (symbol->string
                 (##structure-ref _ctx157597_ '1 gx#expander-context::t '#f)))
               (_pkg157610_
                (let ((_$e157605_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr157603_ '#\/))))
                  (if _$e157605_
                      ((lambda (_x157608_)
                         (string->symbol
                          (substring _idstr157603_ '0 _x157608_)))
                       _$e157605_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path157599_))
          (let ((__tmp158711
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg157610_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg157610_))
                       '#!void)
                   (newline)
                   (pretty-print _code157601_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path157599_ __tmp158711)))))
    (define gxc#generate-meta-code
      (lambda (_ctx157590_)
        (let* ((_state157592_
                (let ((__obj158472
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj158472 _ctx157590_)
                  __obj158472))
               (_ssi-code157594_
                (let ((__tmp158712
                       (##structure-ref
                        _ctx157590_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp158712
                   'state:
                   _state157592_))))
          (values _ssi-code157594_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state157592_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx157583_)
        (let ((_lifts157585_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158715
                 (lambda ()
                   (let ((_code157588_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx157583_))))
                     (if (let ((__tmp158719 (unbox _lifts157585_)))
                           (declare (not safe))
                           (null? __tmp158719))
                         _code157588_
                         (let ((__tmp158716
                                (let ((__tmp158718
                                       (let ()
                                         (declare (not safe))
                                         (cons _code157588_ '())))
                                      (__tmp158717
                                       (reverse (unbox _lifts157585_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp158718 __tmp158717))))
                           (declare (not safe))
                           (cons 'begin __tmp158716))))))
                (__tmp158714
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp158713
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp158715
             gxc#current-compile-lift
             _lifts157585_
             gxc#current-compile-marks
             __tmp158714
             gxc#current-compile-identifiers
             __tmp158713)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx157579_)
        (let ((_modules157581_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp158720
                 (##structure-ref _ctx157579_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp158720 'modules: _modules157581_))
          (reverse (unbox _modules157581_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path157562_ _code157563_ _phi?157564_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path157562_))
        (let ((__tmp158721
               (lambda ()
                 (pretty-print
                  (let ((__tmp158722
                         (let ((__tmp158729
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp158723
                                (let ((__tmp158728
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp158724
                                       (let ((__tmp158727
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp158725
                                              (let ((__tmp158726
                                                     (if _phi?157564_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp158726))))
                                         (declare (not safe))
                                         (cons __tmp158727 __tmp158725))))
                                  (declare (not safe))
                                  (cons __tmp158728 __tmp158724))))
                           (declare (not safe))
                           (cons __tmp158729 __tmp158723))))
                    (declare (not safe))
                    (cons 'declare __tmp158722)))
                 (pretty-print _code157563_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path157562_ __tmp158721))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path157562_ _phi?157564_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path157562_))))
    (define gxc#compile-scm-file__0
      (lambda (_path157570_ _code157571_)
        (let ((_phi?157573_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path157570_ _code157571_ _phi?157573_))))
    (define gxc#compile-scm-file
      (lambda _g158731_
        (let ((_g158730_ (let () (declare (not safe)) (##length _g158731_))))
          (cond ((let () (declare (not safe)) (##fx= _g158730_ 2))
                 (apply (lambda (_path157570_ _code157571_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path157570_
                             _code157571_)))
                        _g158731_))
                ((let () (declare (not safe)) (##fx= _g158730_ 3))
                 (apply (lambda (_path157575_ _code157576_ _phi?157577_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path157575_
                             _code157576_
                             _phi?157577_)))
                        _g158731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g158731_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?157463_)
        (let _lp157465_ ((_rest157467_ (gxc#current-compile-gsc-options))
                         (_opts157468_ '()))
          (let* ((_rest157469157489_ _rest157467_)
                 (_else157473157497_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157463_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158732
                               (let ((__tmp158733 (reverse _opts157468_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp158733))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp158732))
                        (reverse _opts157468_)))))
            (let ((_K157483157540_
                   (lambda (_rest157538_)
                     (let ()
                       (declare (not safe))
                       (_lp157465_ _rest157538_ _opts157468_))))
                  (_K157478157522_
                   (lambda (_rest157520_)
                     (let ()
                       (declare (not safe))
                       (_lp157465_ _rest157520_ _opts157468_))))
                  (_K157475157504_
                   (lambda (_rest157501_ _opt157502_)
                     (let ((__tmp158734
                            (let ()
                              (declare (not safe))
                              (cons _opt157502_ _opts157468_))))
                       (declare (not safe))
                       (_lp157465_ _rest157501_ __tmp158734)))))
              (if (let () (declare (not safe)) (##pair? _rest157469157489_))
                  (let ((_tl157485157545_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157469157489_)))
                        (_hd157484157543_
                         (let ()
                           (declare (not safe))
                           (##car _rest157469157489_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157484157543_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157485157545_))
                            (let* ((_tl157487157548_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157485157545_)))
                                   (_rest157551_ _tl157487157548_))
                              (declare (not safe))
                              (_K157483157540_ _rest157551_))
                            (let ((_opt157512_ _hd157484157543_)
                                  (_rest157514_ _tl157485157545_))
                              (let ()
                                (declare (not safe))
                                (_K157475157504_ _rest157514_ _opt157512_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157484157543_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157485157545_))
                                (let* ((_tl157482157530_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157485157545_)))
                                       (_rest157533_ _tl157482157530_))
                                  (declare (not safe))
                                  (_K157478157522_ _rest157533_))
                                (let ((_opt157512_ _hd157484157543_)
                                      (_rest157514_ _tl157485157545_))
                                  (let ()
                                    (declare (not safe))
                                    (_K157475157504_
                                     _rest157514_
                                     _opt157512_))))
                            (let ((_opt157512_ _hd157484157543_)
                                  (_rest157514_ _tl157485157545_))
                              (let ()
                                (declare (not safe))
                                (_K157475157504_ _rest157514_ _opt157512_))))))
                  (let () (declare (not safe)) (_else157473157497_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?157557_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?157557_))))
    (define gxc#gsc-link-options
      (lambda _g158736_
        (let ((_g158735_ (let () (declare (not safe)) (##length _g158736_))))
          (cond ((let () (declare (not safe)) (##fx= _g158735_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g158736_))
                ((let () (declare (not safe)) (##fx= _g158735_ 1))
                 (apply (lambda (_phi?157559_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?157559_)))
                        _g158736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g158736_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?157364_)
        (let _lp157366_ ((_rest157368_ (gxc#current-compile-gsc-options))
                         (_opts157369_ '()))
          (let* ((_rest157370157390_ _rest157368_)
                 (_else157374157398_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?157364_))
                             (gxc#current-compile-debug))
                        (let ((__tmp158737
                               (let ((__tmp158738 (reverse _opts157369_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp158738))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp158737))
                        (reverse _opts157369_)))))
            (let ((_K157384157437_
                   (lambda (_rest157434_ _opt157435_)
                     (let ((__tmp158739
                            (let ((__tmp158740
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts157369_))))
                              (declare (not safe))
                              (cons _opt157435_ __tmp158740))))
                       (declare (not safe))
                       (_lp157366_ _rest157434_ __tmp158739))))
                  (_K157379157418_
                   (lambda (_rest157416_)
                     (let ()
                       (declare (not safe))
                       (_lp157366_ _rest157416_ _opts157369_))))
                  (_K157376157404_
                   (lambda (_rest157402_)
                     (let ()
                       (declare (not safe))
                       (_lp157366_ _rest157402_ _opts157369_)))))
              (if (let () (declare (not safe)) (##pair? _rest157370157390_))
                  (let ((_tl157386157442_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157370157390_)))
                        (_hd157385157440_
                         (let ()
                           (declare (not safe))
                           (##car _rest157370157390_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157385157440_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157386157442_))
                            (let ((_tl157388157447_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl157386157442_)))
                                  (_hd157387157445_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl157386157442_))))
                              (let ((_opt157450_ _hd157387157445_)
                                    (_rest157452_ _tl157388157447_))
                                (let ()
                                  (declare (not safe))
                                  (_K157384157437_ _rest157452_ _opt157450_))))
                            (let ((_rest157410_ _tl157386157442_))
                              (declare (not safe))
                              (_K157376157404_ _rest157410_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157385157440_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157386157442_))
                                (let* ((_tl157383157426_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl157386157442_)))
                                       (_rest157429_ _tl157383157426_))
                                  (declare (not safe))
                                  (_K157379157418_ _rest157429_))
                                (let ((_rest157410_ _tl157386157442_))
                                  (declare (not safe))
                                  (_K157376157404_ _rest157410_)))
                            (let ((_rest157410_ _tl157386157442_))
                              (declare (not safe))
                              (_K157376157404_ _rest157410_)))))
                  (let () (declare (not safe)) (_else157374157398_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?157458_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?157458_))))
    (define gxc#gsc-cc-options
      (lambda _g158742_
        (let ((_g158741_ (let () (declare (not safe)) (##length _g158742_))))
          (cond ((let () (declare (not safe)) (##fx= _g158741_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g158742_))
                ((let () (declare (not safe)) (##fx= _g158741_ 1))
                 (apply (lambda (_phi?157460_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?157460_)))
                        _g158742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g158742_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir157359_)
        (let* ((_user-staticdir157361_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp158743
                (let ((__tmp158744
                       (string-append
                        '"-I "
                        _staticdir157359_
                        '" -I "
                        _user-staticdir157361_)))
                  (declare (not safe))
                  (cons __tmp158744 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp158743))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp157271_ ((_rest157273_ (gxc#current-compile-gsc-options))
                         (_opts157274_ '()))
          (let* ((_rest157275157295_ _rest157273_)
                 (_else157279157303_ (lambda () _opts157274_)))
            (let ((_K157289157346_
                   (lambda (_rest157344_)
                     (let ()
                       (declare (not safe))
                       (_lp157271_ _rest157344_ _opts157274_))))
                  (_K157284157324_
                   (lambda (_rest157321_ _opt157322_)
                     (let ((__tmp158745
                            (append _opts157274_
                                    (filter gxc#not-string-empty?
                                            (let ()
                                              (declare (not safe))
                                              (string-split
                                               _opt157322_
                                               '#\space))))))
                       (declare (not safe))
                       (_lp157271_ _rest157321_ __tmp158745))))
                  (_K157281157309_
                   (lambda (_rest157307_)
                     (let ()
                       (declare (not safe))
                       (_lp157271_ _rest157307_ _opts157274_)))))
              (if (let () (declare (not safe)) (##pair? _rest157275157295_))
                  (let ((_tl157291157351_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest157275157295_)))
                        (_hd157290157349_
                         (let ()
                           (declare (not safe))
                           (##car _rest157275157295_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd157290157349_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl157291157351_))
                            (let* ((_tl157293157354_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl157291157351_)))
                                   (_rest157357_ _tl157293157354_))
                              (declare (not safe))
                              (_K157289157346_ _rest157357_))
                            (let ((_rest157315_ _tl157291157351_))
                              (declare (not safe))
                              (_K157281157309_ _rest157315_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd157290157349_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl157291157351_))
                                (let ((_tl157288157334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl157291157351_)))
                                      (_hd157287157332_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl157291157351_))))
                                  (let ((_opt157337_ _hd157287157332_)
                                        (_rest157339_ _tl157288157334_))
                                    (let ()
                                      (declare (not safe))
                                      (_K157284157324_
                                       _rest157339_
                                       _opt157337_))))
                                (let ((_rest157315_ _tl157291157351_))
                                  (declare (not safe))
                                  (_K157281157309_ _rest157315_)))
                            (let ((_rest157315_ _tl157291157351_))
                              (declare (not safe))
                              (_K157281157309_ _rest157315_)))))
                  (let () (declare (not safe)) (_else157279157303_))))))))
    (define gxc#not-string-empty?
      (lambda (_str157268_)
        (let ((__tmp158746
               (let () (declare (not safe)) (string-empty? _str157268_))))
          (declare (not safe))
          (not __tmp158746))))
    (define gxc#gsc-compile-file
      (lambda (_path157236_ _phi?157237_)
        (letrec ((_gsc-link-path157239_
                  (lambda (_base-path157260_)
                    (let _lp157262_ ((_n157264_ '1))
                      (let ((_path157266_
                             (string-append
                              _base-path157260_
                              '".o"
                              (number->string _n157264_))))
                        (if (file-exists? _path157266_)
                            (let ((__tmp158747
                                   (let ()
                                     (declare (not safe))
                                     (+ _n157264_ '1))))
                              (declare (not safe))
                              (_lp157262_ __tmp158747))
                            _path157266_))))))
          (let* ((_base-path157241_ (path-strip-extension _path157236_))
                 (_path-c157243_ (string-append _base-path157241_ '".c"))
                 (_path-o157245_ (string-append _base-path157241_ '".o"))
                 (_link-path157247_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path157239_ _base-path157241_)))
                 (_link-path-c157249_ (string-append _link-path157247_ '".c"))
                 (_link-path-o157251_ (string-append _link-path157247_ '".o"))
                 (_gsc-link-opts157253_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?157237_)))
                 (_gsc-cc-opts157255_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?157237_)))
                 (_gcc-ld-opts157257_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp158754 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158748
                   (let ((__tmp158749
                          (let ((__tmp158750
                                 (let ((__tmp158751
                                        (let ((__tmp158752
                                               (let ((__tmp158753
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path157236_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp158753
                                                         _gsc-link-opts157253_))))
                                          (declare (not safe))
                                          (cons _link-path-c157249_
                                                __tmp158752))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp158751))))
                            (declare (not safe))
                            (cons '"-flat" __tmp158750))))
                     (declare (not safe))
                     (cons '"-link" __tmp158749))))
              (declare (not safe))
              (gxc#invoke __tmp158754 __tmp158748 'stdout-redirection: '#t))
            (let ((__tmp158761 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp158755
                   (let ((__tmp158756
                          (let ((__tmp158757
                                 (let ((__tmp158758
                                        (let ((__tmp158759
                                               (let ((__tmp158760
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c157249_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c157243_
                                                       __tmp158760))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp158759
                                                  _gsc-cc-opts157255_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp158758))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp158757))))
                     (declare (not safe))
                     (cons '"-obj" __tmp158756))))
              (declare (not safe))
              (gxc#invoke __tmp158761 __tmp158755 'stdout-redirection: '#t))
            (let ((__tmp158767 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp158762
                   (let ((__tmp158763
                          (let ((__tmp158764
                                 (let ((__tmp158765
                                        (let ((__tmp158766
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o157251_
                                                       _gcc-ld-opts157257_))))
                                          (declare (not safe))
                                          (cons _path-o157245_ __tmp158766))))
                                   (declare (not safe))
                                   (cons _link-path157247_ __tmp158765))))
                            (declare (not safe))
                            (cons '"-o" __tmp158764))))
                     (declare (not safe))
                     (cons '"-shared" __tmp158763))))
              (declare (not safe))
              (gxc#invoke __tmp158767 __tmp158762))
            (for-each
             delete-file
             (let ((__tmp158768
                    (let ((__tmp158769
                           (let ((__tmp158770
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o157251_ '()))))
                             (declare (not safe))
                             (cons _link-path-c157249_ __tmp158770))))
                      (declare (not safe))
                      (cons _path-o157245_ __tmp158769))))
               (declare (not safe))
               (cons _path-c157243_ __tmp158768)))))))
    (define gxc#compile-output-file
      (lambda (_ctx157207_ _n157208_ _ext157209_)
        (letrec ((_module-relative-path157211_
                  (lambda (_ctx157234_)
                    (path-strip-directory
                     (let ((__tmp158771
                            (##structure-ref
                             _ctx157234_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp158771)))))
                 (_module-source-directory157212_
                  (lambda (_ctx157230_)
                    (path-directory
                     (let ((_mpath157232_
                            (##structure-ref
                             _ctx157230_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath157232_))
                           _mpath157232_
                           (last _mpath157232_))))))
                 (_section-string157213_
                  (lambda (_n157228_)
                    (if (let () (declare (not safe)) (number? _n157228_))
                        (number->string _n157228_)
                        (if (let () (declare (not safe)) (symbol? _n157228_))
                            (symbol->string _n157228_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n157228_))
                                _n157228_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n157228_)))))))
                 (_file-name157214_
                  (lambda (_path157226_)
                    (if _n157208_
                        (string-append
                         _path157226_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string157213_ _n157208_))
                         _ext157209_)
                        (string-append _path157226_ _ext157209_))))
                 (_file-path157215_
                  (lambda ()
                    (let ((_$e157221_ (gxc#current-compile-output-dir)))
                      (if _$e157221_
                          ((lambda (_outdir157224_)
                             (path-expand
                              (let ((__tmp158773
                                     (let ((__tmp158774
                                            (##structure-ref
                                             _ctx157207_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp158774))))
                                (declare (not safe))
                                (_file-name157214_ __tmp158773))
                              _outdir157224_))
                           _$e157221_)
                          (path-expand
                           (let ((__tmp158772
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path157211_
                                     _ctx157207_))))
                             (declare (not safe))
                             (_file-name157214_ __tmp158772))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory157212_
                              _ctx157207_))))))))
          (let ((_path157217_
                 (let () (declare (not safe)) (_file-path157215_))))
            (let ((__tmp158775
                   (lambda ()
                     (let ((__tmp158776 (path-directory _path157217_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158776)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158775))
            _path157217_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx157189_)
        (letrec ((_file-name157191_
                  (lambda (_id157205_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id157205_))
                     '".scm")))
                 (_file-path157192_
                  (lambda ()
                    (let* ((_file157198_
                            (let ((__tmp158777
                                   (##structure-ref
                                    _ctx157189_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name157191_ __tmp158777)))
                           (_$e157200_ (gxc#current-compile-output-dir)))
                      (if _$e157200_
                          ((lambda (_outdir157203_)
                             (path-expand
                              _file157198_
                              (path-expand '"static" _outdir157203_)))
                           _$e157200_)
                          (path-expand _file157198_ '"static"))))))
          (let ((_path157194_
                 (let () (declare (not safe)) (_file-path157192_))))
            (let ((__tmp158778
                   (lambda ()
                     (let ((__tmp158779 (path-directory _path157194_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp158779)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp158778))
            _path157194_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx157183_ _opts157184_)
        (let ((_$e157186_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts157184_))))
          (if _$e157186_
              (values _$e157186_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx157183_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr157176_)
        (if (let () (declare (not safe)) (string? _idstr157176_))
            (let* ((_str157178_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr157176_)))
                   (_strs157180_
                    (let ()
                      (declare (not safe))
                      (string-split _str157178_ '#\/))))
              (let () (declare (not safe)) (string-join _strs157180_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr157176_))
                (let ((__tmp158780 (symbol->string _idstr157176_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp158780))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr157176_))))))
    (define gxc#invoke__%
      (lambda (_g158781_
               _stdout-redirection157137157141_
               _stderr-redirection157138157143_
               _program157145_
               _args157146_)
        (let* ((_stdout-redirection157148_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection157137157141_ absent-value))
                    '#f
                    _stdout-redirection157137157141_))
               (_stderr-redirection157150_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection157138157143_ absent-value))
                    '#f
                    _stderr-redirection157138157143_)))
          (let ((__tmp158782
                 (let ()
                   (declare (not safe))
                   (cons _program157145_ _args157146_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp158782))
          (let* ((_proc157152_
                  (open-process
                   (let ((__tmp158783
                          (let ((__tmp158784
                                 (let ((__tmp158785
                                        (let ((__tmp158786
                                               (let ((__tmp158787
                                                      (let ((__tmp158788
                                                             (let ((__tmp158789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _stderr-redirection157150_ '()))))
                       (declare (not safe))
                       (cons 'stderr-redirection: __tmp158789))))
                (declare (not safe))
                (cons _stdout-redirection157148_ __tmp158788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'stdout-redirection:
                                                       __tmp158787))))
                                          (declare (not safe))
                                          (cons _args157146_ __tmp158786))))
                                   (declare (not safe))
                                   (cons 'arguments: __tmp158785))))
                            (declare (not safe))
                            (cons _program157145_ __tmp158784))))
                     (declare (not safe))
                     (cons 'path: __tmp158783))))
                 (_output157157_
                  (if (or _stdout-redirection157148_
                          _stderr-redirection157150_)
                      (read-line _proc157152_ '#f)
                      '#f)))
            (let ((_status157160_ (process-status _proc157152_)))
              (close-port _proc157152_)
              (if (let () (declare (not safe)) (zero? _status157160_))
                  '#!void
                  (begin
                    (display _output157157_)
                    (let ((__tmp158790
                           (let ()
                             (declare (not safe))
                             (cons _program157145_ _args157146_))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp158790
                       _status157160_)))))))))
    (define gxc#invoke__@
      (lambda (_keys157136157165_ . _args157167_)
        (apply gxc#invoke__%
               _keys157136157165_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157136157165_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys157136157165_
                  'stderr-redirection:
                  absent-value))
               _args157167_)))
    (define gxc#invoke
      (lambda _args157139157173_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args157139157173_)))
    (define gxc#join!
      (lambda (_thread157130_)
        (let ((__tmp158792
               (lambda (_exn157132_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn157132_))
                     (let ((__tmp158793
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn157132_))))
                       (declare (not safe))
                       (raise __tmp158793))
                     (let () (declare (not safe)) (raise _exn157132_)))))
              (__tmp158791 (lambda () (thread-join! _thread157130_))))
          (declare (not safe))
          (with-catch __tmp158792 __tmp158791))))))
