(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707738038)
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
      (lambda (_path291592_ _fun291593_)
        (with-output-to-file
         (let ((__tmp296254
                (let ()
                  (declare (not safe))
                  (cons _path291592_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp296254))
         _fun291593_)))
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
      (lambda (_gerbil-libdir291587_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir291587_)))
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
      (lambda (_dir291585_) (delete-file-or-directory _dir291585_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath291559_ _opts291560_)
        (if (let () (declare (not safe)) (string? _srcpath291559_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291559_)))
        (let ((_outdir291562_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291560_)))
              (_invoke-gsc?291563_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291560_)))
              (_gsc-options291564_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291560_)))
              (_keep-scm?291565_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291560_)))
              (_verbosity291566_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291560_)))
              (_optimize291567_
               (let () (declare (not safe)) (pgetq 'optimize: _opts291560_)))
              (_debug291568_
               (let () (declare (not safe)) (pgetq 'debug: _opts291560_)))
              (_gen-ssxi291569_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts291560_))))
          (if _outdir291562_
              (let ((__tmp296255
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291562_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296255))
              '#!void)
          (if _optimize291567_
              (let ((__tmp296256
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296256))
              '#!void)
          (let ((__tmp296260
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath291559_))
                   (let ((__tmp296261
                          (let ((__tmp296262
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291559_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296262))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp296261))))
                (__tmp296259
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296257
                 (let ((__tmp296258
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291559_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp296258))))
            (declare (not safe))
            (call-with-parameters
             __tmp296260
             gxc#current-compile-output-dir
             _outdir291562_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291563_
             gxc#current-compile-gsc-options
             _gsc-options291564_
             gxc#current-compile-keep-scm
             _keep-scm?291565_
             gxc#current-compile-verbose
             _verbosity291566_
             gxc#current-compile-optimize
             _optimize291567_
             gxc#current-compile-debug
             _debug291568_
             gxc#current-compile-generate-ssxi
             _gen-ssxi291569_
             gxc#current-compile-timestamp
             __tmp296259
             gxc#current-compile-context
             __tmp296257
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath291578_)
        (let ((_opts291580_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath291578_ _opts291580_))))
    (define gxc#compile-module
      (lambda _g296264_
        (let ((_g296263_ (let () (declare (not safe)) (##length _g296264_))))
          (cond ((let () (declare (not safe)) (##fx= _g296263_ 1))
                 (apply (lambda (_srcpath291578_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath291578_)))
                        _g296264_))
                ((let () (declare (not safe)) (##fx= _g296263_ 2))
                 (apply (lambda (_srcpath291582_ _opts291583_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath291582_
                             _opts291583_)))
                        _g296264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g296264_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath291535_ _opts291536_)
        (if (let () (declare (not safe)) (string? _srcpath291535_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291535_)))
        (let ((_outdir291538_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291536_)))
              (_invoke-gsc?291539_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291536_)))
              (_gsc-options291540_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291536_)))
              (_keep-scm?291541_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291536_)))
              (_verbosity291542_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291536_)))
              (_debug291543_
               (let () (declare (not safe)) (pgetq 'debug: _opts291536_))))
          (if _outdir291538_
              (let ((__tmp296265
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291538_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296265))
              '#!void)
          (let ((__tmp296269
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath291535_))
                   (let ((__tmp296270
                          (let ((__tmp296271
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291535_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296271))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp296270
                      _opts291536_))))
                (__tmp296268
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296266
                 (let ((__tmp296267
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291535_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp296267))))
            (declare (not safe))
            (call-with-parameters
             __tmp296269
             gxc#current-compile-output-dir
             _outdir291538_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291539_
             gxc#current-compile-gsc-options
             _gsc-options291540_
             gxc#current-compile-keep-scm
             _keep-scm?291541_
             gxc#current-compile-verbose
             _verbosity291542_
             gxc#current-compile-debug
             _debug291543_
             gxc#current-compile-timestamp
             __tmp296268
             gxc#current-compile-context
             __tmp296266
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath291551_)
        (let ((_opts291553_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath291551_ _opts291553_))))
    (define gxc#compile-exe
      (lambda _g296273_
        (let ((_g296272_ (let () (declare (not safe)) (##length _g296273_))))
          (cond ((let () (declare (not safe)) (##fx= _g296272_ 1))
                 (apply (lambda (_srcpath291551_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath291551_)))
                        _g296273_))
                ((let () (declare (not safe)) (##fx= _g296272_ 2))
                 (apply (lambda (_srcpath291555_ _opts291556_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath291555_ _opts291556_)))
                        _g296273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g296273_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx291531_ _opts291532_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts291532_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx291531_
               _opts291532_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx291531_
               _opts291532_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx291414_ _opts291415_)
        (letrec ((_generate-stub291417_
                  (lambda (_builtin-modules291527_)
                    (let ((_mod-main291529_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291414_ 'main))))
                      (write (let ((__tmp296274
                                    (let ((__tmp296275
                                           (let ((__tmp296276
                                                  (let ((__tmp296277
                                                         (let ((__tmp296279
                                                                (let ((__tmp296280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules291527_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296280)))
                       (__tmp296278
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp296279 __tmp296278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp296277))))
                                             (declare (not safe))
                                             (cons __tmp296276 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp296275))))
                               (declare (not safe))
                               (cons 'define __tmp296274)))
                      (write (let ((__tmp296281
                                    (let ((__tmp296320
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296282
                                           (let ((__tmp296283
                                                  (let ((__tmp296284
                                                         (let ((__tmp296308
                                                                (let ((__tmp296309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296310
                                      (let ((__tmp296318
                                             (let ((__tmp296319
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp296319)))
                                            (__tmp296311
                                             (let ((__tmp296312
                                                    (let ((__tmp296313
                                                           (let ((__tmp296314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296315
                                 (let ((__tmp296316
                                        (let ((__tmp296317
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp296317 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp296316))))
                            (declare (not safe))
                            (cons __tmp296315 '()))))
                     (declare (not safe))
                     (cons _mod-main291529_ __tmp296314))))
              (declare (not safe))
              (cons 'apply __tmp296313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296312 '()))))
                                        (declare (not safe))
                                        (cons __tmp296318 __tmp296311))))
                                 (declare (not safe))
                                 (cons '() __tmp296310))))
                          (declare (not safe))
                          (cons 'lambda __tmp296309)))
                       (__tmp296285
                        (let ((__tmp296286
                               (let ((__tmp296287
                                      (let ((__tmp296288
                                             (let ((__tmp296299
                                                    (let ((__tmp296300
                                                           (let ((__tmp296301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296302
                                 (let ((__tmp296303
                                        (let ((__tmp296304
                                               (let ((__tmp296305
                                                      (let ((__tmp296306
                                                             (let ((__tmp296307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp296307 '()))))
                (declare (not safe))
                (cons 'force-output __tmp296306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp296305 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp296304))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp296303))))
                            (declare (not safe))
                            (cons __tmp296302 '()))))
                     (declare (not safe))
                     (cons 'void __tmp296301))))
              (declare (not safe))
              (cons 'with-catch __tmp296300)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp296289
                                                    (let ((__tmp296290
                                                           (let ((__tmp296291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296292
                                 (let ((__tmp296293
                                        (let ((__tmp296294
                                               (let ((__tmp296295
                                                      (let ((__tmp296296
                                                             (let ((__tmp296297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp296298
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp296298 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp296297))))
                (declare (not safe))
                (cons __tmp296296 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp296295))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp296294))))
                                   (declare (not safe))
                                   (cons __tmp296293 '()))))
                            (declare (not safe))
                            (cons 'void __tmp296292))))
                     (declare (not safe))
                     (cons 'with-catch __tmp296291))))
              (declare (not safe))
              (cons __tmp296290 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296299
                                                     __tmp296289))))
                                        (declare (not safe))
                                        (cons '() __tmp296288))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp296287))))
                          (declare (not safe))
                          (cons __tmp296286 '()))))
                   (declare (not safe))
                   (cons __tmp296308 __tmp296285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp296284))))
                                             (declare (not safe))
                                             (cons __tmp296283 '()))))
                                      (declare (not safe))
                                      (cons __tmp296320 __tmp296282))))
                               (declare (not safe))
                               (cons 'define __tmp296281)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts291418_
                  (lambda (_libgerbil291525_)
                    (call-with-input-file
                     (string-append _libgerbil291525_ '".ldd")
                     read)))
                 (_replace-extension291419_
                  (lambda (_path291522_ _ext291523_)
                    (string-append
                     (path-strip-extension _path291522_)
                     _ext291523_)))
                 (_not-exclude-module?291420_
                  (lambda (_ctx291518_)
                    (let ((_id-str291520_
                           (symbol->string
                            (##structure-ref
                             _ctx291518_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp296322
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str291520_))))
                            (declare (not safe))
                            (not __tmp296322))
                          (let ((__tmp296321
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str291520_))))
                            (declare (not safe))
                            (not __tmp296321))
                          '#f))))
                 (_not-file-empty?291421_
                  (lambda (_path291516_)
                    (let ((__tmp296323
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path291516_))))
                      (declare (not safe))
                      (not __tmp296323))))
                 (_compile-stub291422_
                  (lambda (_output-scm291429_ _output-bin291430_)
                    (let* ((_gerbil-home291432_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291434_
                            (path-expand '"lib" _gerbil-home291432_))
                           (_gerbil-staticdir291436_
                            (path-expand '"static" _gerbil-libdir291434_))
                           (_gxlink291438_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir291434_))
                           (_tmp291440_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path291444_
                            (lambda (_f291442_)
                              (path-expand
                               (path-strip-directory _f291442_)
                               _tmp291440_)))
                           (_deps291446_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291414_)))
                           (_deps291448_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?291420_
                                      _deps291446_)))
                           (_src-deps-scm291450_
                            (map gxc#find-static-module-file _deps291448_))
                           (_src-deps-scm291452_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?291421_
                                      _src-deps-scm291450_)))
                           (_src-deps-scm291454_
                            (map path-expand _src-deps-scm291452_))
                           (_deps-scm291456_
                            (map _tmp-path291444_ _src-deps-scm291454_))
                           (_deps-c291462_
                            (map (lambda (_g291457291459_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291419_
                                      _g291457291459_
                                      '".c")))
                                 _deps-scm291456_))
                           (_deps-o291468_
                            (map (lambda (_g291463291465_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291419_
                                      _g291463291465_
                                      '".o")))
                                 _deps-scm291456_))
                           (_src-bin-scm291470_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291414_)))
                           (_src-bin-scm291472_
                            (path-expand _src-bin-scm291470_))
                           (_bin-scm291474_
                            (let ()
                              (declare (not safe))
                              (_tmp-path291444_ _src-bin-scm291472_)))
                           (_bin-c291476_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291419_
                               _bin-scm291474_
                               '".c")))
                           (_bin-o291478_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291419_
                               _bin-scm291474_
                               '".o")))
                           (_output-bin291480_
                            (path-expand _output-bin291430_))
                           (_output-scm291482_
                            (path-expand _output-scm291429_))
                           (_output-c291484_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291419_
                               _output-scm291482_
                               '".c")))
                           (_output-o291486_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291419_
                               _output-scm291482_
                               '".o")))
                           (_output_-c291488_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291419_
                               _output-scm291482_
                               '"_.c")))
                           (_output_-o291490_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291419_
                               _output-scm291482_
                               '"_.o")))
                           (_gsc-link-opts291492_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291494_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291496_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir291436_)))
                           (_output-ld-opts291498_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a291500_
                            (path-expand '"libgerbil.a" _gerbil-libdir291434_))
                           (_libgerbil.so291502_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir291434_))
                           (_libgerbil-ld-opts291504_
                            (if (file-exists? _libgerbil.so291502_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts291418_
                                   _libgerbil.so291502_))
                                (if (file-exists? _libgerbil.a291500_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts291418_
                                       _libgerbil.a291500_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a291500_
                                       _libgerbil.so291502_)))))
                           (_rpath291506_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291434_)))
                           (_builtin-modules291510_
                            (map (lambda (_mod291508_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod291508_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx291414_ _deps291448_)))))
                      (let ((__tmp296324
                             (lambda ()
                               (let ((__tmp296325
                                      (path-directory _output-bin291480_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296325)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296324))
                      (let ((__tmp296326
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub291417_
                                  _builtin-modules291510_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291482_
                         __tmp296326))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296327
                                   (lambda () (create-directory _tmp291440_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp296327))
                            (for-each
                             copy-file
                             _src-deps-scm291454_
                             _deps-scm291456_)
                            (copy-file _src-bin-scm291472_ _bin-scm291474_)
                            (let ((__tmp296335
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296328
                                   (let ((__tmp296329
                                          (let ((__tmp296330
                                                 (let ((__tmp296331
                                                        (let ((__tmp296332
                                                               (let ((__tmp296333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296334
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm291482_ '()))))
                                (declare (not safe))
                                (cons _bin-scm291474_ __tmp296334))))
                         (declare (not safe))
                         (foldr1 cons __tmp296333 _deps-scm291456_))))
                  (declare (not safe))
                  (foldr1 cons __tmp296332 _gsc-link-opts291492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink291438_
                                                         __tmp296331))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp296330))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296329))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296335
                               __tmp296328))
                            (let ((__tmp296343
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296336
                                   (let ((__tmp296337
                                          (let ((__tmp296338
                                                 (let ((__tmp296339
                                                        (let ((__tmp296340
                                                               (let ((__tmp296341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296342
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c291488_ '()))))
                                (declare (not safe))
                                (cons _output-c291484_ __tmp296342))))
                         (declare (not safe))
                         (cons _bin-c291476_ __tmp296341))))
                  (declare (not safe))
                  (foldr1 cons __tmp296340 _deps-c291462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296339
                                                           _gsc-static-opts291496_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296338
                                                    _gsc-cc-opts291494_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296337))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296343
                               __tmp296336))
                            (let ((__tmp296356
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296344
                                   (let ((__tmp296345
                                          (let ((__tmp296346
                                                 (let ((__tmp296347
                                                        (let ((__tmp296348
                                                               (let ((__tmp296349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296350
                                     (let ((__tmp296351
                                            (let ((__tmp296352
                                                   (let ((__tmp296353
                                                          (let ((__tmp296354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp296355
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts291504_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp296355))))
                    (declare (not safe))
                    (cons _gerbil-libdir291434_ __tmp296354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp296353))))
                                              (declare (not safe))
                                              (cons _rpath291506_
                                                    __tmp296352))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp296351
                                               _output-ld-opts291498_))))
                                (declare (not safe))
                                (cons _output_-o291490_ __tmp296350))))
                         (declare (not safe))
                         (cons _output-o291486_ __tmp296349))))
                  (declare (not safe))
                  (cons _bin-o291478_ __tmp296348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296347
                                                           _deps-o291468_))))
                                            (declare (not safe))
                                            (cons _output-bin291480_
                                                  __tmp296346))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296345))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296356
                               __tmp296344))
                            (for-each
                             delete-file
                             (let ((__tmp296357
                                    (let ((__tmp296358
                                           (let ((__tmp296359
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o291490_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o291486_
                                                   __tmp296359))))
                                      (declare (not safe))
                                      (cons _output_-c291488_ __tmp296358))))
                               (declare (not safe))
                               (cons _output-c291484_ __tmp296357)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp291440_)))
                          '#!void)))))
          (let* ((_output-bin291424_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291414_ _opts291415_)))
                 (_output-scm291426_
                  (string-append _output-bin291424_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291422_ _output-scm291426_ _output-bin291424_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291426_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx291239_ _opts291240_)
        (letrec ((_reset-declare291242_
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
                 (_generate-stub291243_
                  (lambda (_deps291405_)
                    (let ((_mod-main291407_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291239_ 'main)))
                          (_reset-decl291408_
                           (let ()
                             (declare (not safe))
                             (_reset-declare291242_)))
                          (_user-decl291409_
                           (let ()
                             (declare (not safe))
                             (_user-declare291244_))))
                      (for-each
                       (lambda (_dep291411_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl291408_)
                         (newline)
                         (if _user-decl291409_
                             (begin (write _user-decl291409_) (newline))
                             '#!void)
                         (write (let ((__tmp296360
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep291411_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp296360)))
                         (newline))
                       _deps291405_)
                      (write (let ((__tmp296361
                                    (let ((__tmp296374
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296362
                                           (let ((__tmp296370
                                                  (let ((__tmp296371
                                                         (let ((__tmp296372
                                                                (let ((__tmp296373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296373))))
                   (declare (not safe))
                   (cons __tmp296372 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp296371)))
                                                 (__tmp296363
                                                  (let ((__tmp296364
                                                         (let ((__tmp296365
                                                                (let ((__tmp296366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296367
                                      (let ((__tmp296368
                                             (let ((__tmp296369
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp296369 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp296368))))
                                 (declare (not safe))
                                 (cons __tmp296367 '()))))
                          (declare (not safe))
                          (cons _mod-main291407_ __tmp296366))))
                   (declare (not safe))
                   (cons 'apply __tmp296365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296364 '()))))
                                             (declare (not safe))
                                             (cons __tmp296370 __tmp296363))))
                                      (declare (not safe))
                                      (cons __tmp296374 __tmp296362))))
                               (declare (not safe))
                               (cons 'define __tmp296361)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare291244_
                  (lambda ()
                    (let* ((_gsc-opts291310_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts291240_)))
                           (_gsc-prelude291312_
                            (if _gsc-opts291310_
                                (member '"-prelude" _gsc-opts291310_)
                                '#f))
                           (_gsc-prelude291314_
                            (if _gsc-prelude291312_
                                (read (open-input-string
                                       (cadr _gsc-prelude291312_)))
                                '#f)))
                      (let _lp291317_ ((_rest291319_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude291314_ '())))
                                       (_user-decls291320_ '()))
                        (let* ((_rest291321291329_ _rest291319_)
                               (_else291323291337_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls291320_))
                                      '#f
                                      (let ((__tmp296375
                                             (reverse _user-decls291320_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp296375)))))
                               (_K291325291393_
                                (lambda (_rest291340_ _expr291341_)
                                  (let* ((_expr291342291354_ _expr291341_)
                                         (_else291345291362_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp291317_
                                               _rest291340_
                                               _user-decls291320_)))))
                                    (let ((_K291350291383_
                                           (lambda (_decls291381_)
                                             (let ((__tmp296376
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls291320_
                                                              _decls291381_))))
                                               (declare (not safe))
                                               (_lp291317_
                                                _rest291340_
                                                __tmp296376))))
                                          (_K291347291368_
                                           (lambda (_exprs291366_)
                                             (let ((__tmp296377
                                                    (append _exprs291366_
                                                            _rest291340_)))
                                               (declare (not safe))
                                               (_lp291317_
                                                __tmp296377
                                                _user-decls291320_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr291342291354_))
                                          (let ((_tl291352291388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr291342291354_)))
                                                (_hd291351291386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr291342291354_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd291351291386_
                                                         'declare))
                                                (let ((_decls291391_
                                                       _tl291352291388_))
                                                  (declare (not safe))
                                                  (_K291350291383_
                                                   _decls291391_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd291351291386_
                                                             'begin))
                                                    (let ((_exprs291376_
                                                           _tl291352291388_))
                                                      (declare (not safe))
                                                      (_K291347291368_
                                                       _exprs291376_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else291345291362_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else291345291362_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest291321291329_))
                              (let ((_hd291326291396_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest291321291329_)))
                                    (_tl291327291398_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest291321291329_))))
                                (let* ((_expr291401_ _hd291326291396_)
                                       (_rest291403_ _tl291327291398_))
                                  (declare (not safe))
                                  (_K291325291393_ _rest291403_ _expr291401_)))
                              (let ()
                                (declare (not safe))
                                (_else291323291337_))))))))
                 (_compile-stub291245_
                  (lambda (_output-scm291252_ _output-bin291253_)
                    (let* ((_gerbil-home291255_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291257_
                            (path-expand '"lib" _gerbil-home291255_))
                           (_runtime291259_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp291261_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home291255_))
                           (_include-gambit-sharp291263_
                            (string-append
                             '"(include \""
                             _gambit-sharp291261_
                             '"\")"))
                           (_bin-scm291265_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291239_)))
                           (_deps291267_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291239_)))
                           (_deps291269_
                            (map gxc#find-static-module-file _deps291267_))
                           (_deps291274_
                            (let ((__tmp296378
                                   (lambda (_$obj291271_)
                                     (let ((__tmp296379
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj291271_))))
                                       (declare (not safe))
                                       (not __tmp296379)))))
                              (declare (not safe))
                              (filter __tmp296378 _deps291269_)))
                           (_deps291278_
                            (let ((__tmp296380
                                   (lambda (_f291276_)
                                     (let ((__tmp296381
                                            (member _f291276_
                                                    _runtime291259_)))
                                       (declare (not safe))
                                       (not __tmp296381)))))
                              (declare (not safe))
                              (filter __tmp296380 _deps291274_)))
                           (_output-base291280_
                            (string-append
                             (path-strip-extension _output-scm291252_)))
                           (_output-c291282_
                            (string-append _output-base291280_ '".c"))
                           (_output-o291284_
                            (string-append _output-base291280_ '".o"))
                           (_output-c_291286_
                            (string-append _output-base291280_ '"_.c"))
                           (_output-o_291288_
                            (string-append _output-base291280_ '"_.o"))
                           (_gsc-link-opts291290_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291292_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291294_
                            (let ((__tmp296382
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir291257_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp296382)))
                           (_output-ld-opts291296_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros291298_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp296384
                                       (let ((__tmp296385
                                              (let ((__tmp296386
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp291263_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp296386))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp296385))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296384))
                                (let ((__tmp296383
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp291263_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296383))))
                           (_gsc-link-opts291300_
                            (append _gsc-link-opts291290_
                                    _gsc-gx-macros291298_))
                           (_rpath291302_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291257_)))
                           (_default-ld-options291304_
                            (let ((__tmp296387
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp296387))))
                      (let ((__tmp296388
                             (lambda ()
                               (let ((__tmp296389
                                      (path-directory _output-bin291253_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296389)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296388))
                      (let ((__tmp296390
                             (lambda ()
                               (let ((__tmp296391
                                      (let ((__tmp296392
                                             (let ((__tmp296393
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm291265_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp296393
                                                       _deps291278_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp296392
                                                _runtime291259_))))
                                 (declare (not safe))
                                 (_generate-stub291243_ __tmp296391)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291252_
                         __tmp296390))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296399
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296394
                                   (let ((__tmp296395
                                          (let ((__tmp296396
                                                 (let ((__tmp296397
                                                        (let ((__tmp296398
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm291252_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp296398 _gsc-link-opts291300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_291286_
                                                         __tmp296397))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp296396))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296395))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296399
                               __tmp296394))
                            (let ((__tmp296405
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296400
                                   (let ((__tmp296401
                                          (let ((__tmp296402
                                                 (let ((__tmp296403
                                                        (let ((__tmp296404
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_291286_ '()))))
                  (declare (not safe))
                  (cons _output-c291282_ __tmp296404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296403
                                                           _gsc-static-opts291294_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296402
                                                    _gsc-cc-opts291292_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296401))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296405
                               __tmp296400))
                            (let ((__tmp296415
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296406
                                   (let ((__tmp296407
                                          (let ((__tmp296408
                                                 (let ((__tmp296409
                                                        (let ((__tmp296410
                                                               (let ((__tmp296411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296412
                                     (let ((__tmp296413
                                            (let ((__tmp296414
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options291304_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir291257_
                                                    __tmp296414))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp296413))))
                                (declare (not safe))
                                (cons _rpath291302_ __tmp296412))))
                         (declare (not safe))
                         (foldr1 cons __tmp296411 _output-ld-opts291296_))))
                  (declare (not safe))
                  (cons _output-o_291288_ __tmp296410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o291284_
                                                         __tmp296409))))
                                            (declare (not safe))
                                            (cons _output-bin291253_
                                                  __tmp296408))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296407))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296415
                               __tmp296406)))
                          '#!void)))))
          (let* ((_output-bin291247_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291239_ _opts291240_)))
                 (_output-scm291249_
                  (string-append _output-bin291247_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291245_ _output-scm291249_ _output-bin291247_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291249_))))))
    (define gxc#find-export-binding
      (lambda (_ctx291189_ _id291190_)
        (let ((_$e291236_
               (let ((__tmp296417
                      (lambda (_e291191291193_)
                        (let* ((_g291195291205_ _e291191291193_)
                               (_else291197291213_ (lambda () '#f))
                               (_K291199291217_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g291195291205_
                                 'gx#module-export::t))
                              (let* ((_e291200291220_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291195291205_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e291201291223_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291195291205_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e291202291226_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291195291205_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e291202291226_ '0))
                                    (let ((_e291203291229_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g291195291205_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g291231291233_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g291231291233_
                                                    _id291190_)))
                                           _e291203291229_)
                                          (let ()
                                            (declare (not safe))
                                            (_K291199291217_))
                                          (let ()
                                            (declare (not safe))
                                            (_else291197291213_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else291197291213_))))
                              (let ()
                                (declare (not safe))
                                (_else291197291213_))))))
                     (__tmp296416
                      (##structure-ref
                       _ctx291189_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp296417 __tmp296416))))
          (if _$e291236_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e291236_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx291181_ _id291182_)
        (let ((_$e291184_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx291181_ _id291182_))))
          (if _$e291184_
              ((lambda (_bind291187_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind291187_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id291182_)))
                 (##structure-ref _bind291187_ '1 gx#binding::t '#f))
               _$e291184_)
              (let ((__tmp296418
                     (##structure-ref
                      _ctx291181_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp296418
                 _id291182_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx291068_)
        (letrec* ((_ht291070_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template291071_
                   (lambda (_in291133_ _phi291134_)
                     (let ((_iphi291136_
                            (fx+ _phi291134_
                                 (##direct-structure-ref
                                  _in291133_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports291137_
                            (##structure-ref
                             (##direct-structure-ref
                              _in291133_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp291139_ ((_rest291141_ _imports291137_)
                                        (_r291142_ '()))
                         (let* ((_rest291143291151_ _rest291141_)
                                (_else291145291159_ (lambda () _r291142_))
                                (_K291147291169_
                                 (lambda (_rest291162_ _in291163_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in291163_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi291136_))
                                           (let ((__tmp296425
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in291163_
                                                          _r291142_))))
                                             (declare (not safe))
                                             (_lp291139_
                                              _rest291162_
                                              __tmp296425))
                                           (let ()
                                             (declare (not safe))
                                             (_lp291139_
                                              _rest291162_
                                              _r291142_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in291163_
                                              'gx#module-import::t))
                                           (let ((_iphi291165_
                                                  (fx+ _phi291134_
                                                       (##direct-structure-ref
                                                        _in291163_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi291165_))
                                                 (let ((__tmp296423
                                                        (let ((__tmp296424
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in291163_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp296424 _r291142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp291139_
                                                    _rest291162_
                                                    __tmp296423))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp291139_
                                                    _rest291162_
                                                    _r291142_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in291163_
                                                  'gx#import-set::t))
                                               (let ((_xphi291167_
                                                      (fx+ _iphi291136_
                                                           (##direct-structure-ref
                                                            _in291163_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi291167_))
                                                     (let ((__tmp296421
                                                            (let ((__tmp296422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in291163_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp296422 _r291142_))))
               (declare (not safe))
               (_lp291139_ _rest291162_ __tmp296421))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi291167_)
                                                         (let ((__tmp296419
                                                                (let ((__tmp296420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template291071_
                                  _in291163_
                                  _iphi291136_))))
                          (declare (not safe))
                          (foldl1 cons _r291142_ __tmp296420))))
                   (declare (not safe))
                   (_lp291139_ _rest291162_ __tmp296419))
                 (let ()
                   (declare (not safe))
                   (_lp291139_ _rest291162_ _r291142_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp291139_
                                                  _rest291162_
                                                  _r291142_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest291143291151_))
                               (let ((_hd291148291172_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest291143291151_)))
                                     (_tl291149291174_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest291143291151_))))
                                 (let* ((_in291177_ _hd291148291172_)
                                        (_rest291179_ _tl291149291174_))
                                   (declare (not safe))
                                   (_K291147291169_ _rest291179_ _in291177_)))
                               (let ()
                                 (declare (not safe))
                                 (_else291145291159_))))))))
                  (_find-deps291072_
                   (lambda (_rest291079_ _deps291080_)
                     (let* ((_rest291081291089_ _rest291079_)
                            (_else291083291097_ (lambda () _deps291080_))
                            (_K291085291121_
                             (lambda (_rest291100_ _hd291101_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd291101_
                                      'gx#module-context::t))
                                   (let ((_id291103_
                                          (##structure-ref
                                           _hd291101_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports291104_
                                          (##structure-ref
                                           _hd291101_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht291070_
                                            _id291103_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps291072_
                                            _rest291100_
                                            _deps291080_))
                                         (let ((_$e291106_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd291101_))))
                                           (if _$e291106_
                                               ((lambda (_pre291109_)
                                                  (let ((_xdeps291111_
                                                         (let ((__tmp296438
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre291109_ _imports291104_))))
                   (declare (not safe))
                   (_find-deps291072_ __tmp296438 _deps291080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht291070_
                                                       _id291103_
                                                       _hd291101_))
                                                    (let ((__tmp296439
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd291101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps291111_))))
              (declare (not safe))
              (_find-deps291072_ _rest291100_ __tmp296439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e291106_)
                                               (let ((_xdeps291113_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps291072_
                                                         _imports291104_
                                                         _deps291080_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht291070_
                                                    _id291103_
                                                    _hd291101_))
                                                 (let ((__tmp296437
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd291101_
                                                                _xdeps291113_))))
                                                   (declare (not safe))
                                                   (_find-deps291072_
                                                    _rest291100_
                                                    __tmp296437)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd291101_
                                          'gx#prelude-context::t))
                                       (let ((_id291115_
                                              (##structure-ref
                                               _hd291101_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht291070_
                                                _id291115_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps291072_
                                                _rest291100_
                                                _deps291080_))
                                             (let ((_xdeps291117_
                                                    (let ((__tmp296435
                                                           (##structure-ref
                                                            _hd291101_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps291072_
                                                       __tmp296435
                                                       _deps291080_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht291070_
                                                      _id291115_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps291072_
                                                      _rest291100_
                                                      _xdeps291117_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht291070_
                                                        _id291115_
                                                        _hd291101_))
                                                     (let ((__tmp296436
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd291101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps291117_))))
               (declare (not safe))
               (_find-deps291072_ _rest291100_ __tmp296436)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd291101_
                                              'gx#module-import::t))
                                           (if (let ((__tmp296434
                                                      (##direct-structure-ref
                                                       _hd291101_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp296434))
                                               (let ((__tmp296432
                                                      (let ((__tmp296433
                                                             (##direct-structure-ref
                                                              _hd291101_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296433
                                                              _rest291100_))))
                                                 (declare (not safe))
                                                 (_find-deps291072_
                                                  __tmp296432
                                                  _deps291080_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps291072_
                                                  _rest291100_
                                                  _deps291080_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd291101_
                                                  'gx#module-export::t))
                                               (let ((__tmp296430
                                                      (let ((__tmp296431
                                                             (##direct-structure-ref
                                                              _hd291101_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296431
                                                              _rest291100_))))
                                                 (declare (not safe))
                                                 (_find-deps291072_
                                                  __tmp296430
                                                  _deps291080_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd291101_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp296429
                                                              (##direct-structure-ref
                                                               _hd291101_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp296429))
                                                       (let ((__tmp296427
                                                              (let ((__tmp296428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd291101_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp296428 _rest291100_))))
                 (declare (not safe))
                 (_find-deps291072_ __tmp296427 _deps291080_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd291101_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps291119_
                           (let ()
                             (declare (not safe))
                             (_import-set-template291071_ _hd291101_ '0)))
                          (__tmp296426
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest291100_ _xdeps291119_))))
                     (declare (not safe))
                     (_find-deps291072_ __tmp296426 _deps291080_))
                   (let ()
                     (declare (not safe))
                     (_find-deps291072_ _rest291100_ _deps291080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd291101_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest291081291089_))
                           (let ((_hd291086291124_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest291081291089_)))
                                 (_tl291087291126_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest291081291089_))))
                             (let* ((_hd291129_ _hd291086291124_)
                                    (_rest291131_ _tl291087291126_))
                               (declare (not safe))
                               (_K291085291121_ _rest291131_ _hd291129_)))
                           (let ()
                             (declare (not safe))
                             (_else291083291097_)))))))
          (reverse (let ((__tmp296440
                          (let ((__tmp296441
                                 (let ((_$e291074_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx291068_))))
                                   (if _$e291074_
                                       ((lambda (_pre291077_)
                                          (let ((__tmp296442
                                                 (##structure-ref
                                                  _ctx291068_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre291077_ __tmp296442)))
                                        _$e291074_)
                                       (##structure-ref
                                        _ctx291068_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps291072_ __tmp296441 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp296440))))))
    (define gxc#find-static-module-file
      (lambda (_ctx290999_)
        (let* ((_context-id291001_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx290999_
                       'gx#module-context::t))
                    (##structure-ref _ctx290999_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx290999_)))
               (_scm291003_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id291001_))
                 '".scm"))
               (_dirs291005_ (gx#current-expander-module-library-path))
               (_dirs291011_
                (let ((_user-libpath291007_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath291007_
                      (let ((_user-libpath291009_
                             (path-expand '"lib" _user-libpath291007_)))
                        (if (member _user-libpath291009_ _dirs291005_)
                            _dirs291005_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath291009_ _dirs291005_))))
                      _dirs291005_)))
               (_dirs291020_
                (let ((_$e291013_ (gxc#current-compile-output-dir)))
                  (if _$e291013_
                      ((lambda (_g291015291017_)
                         (let ()
                           (declare (not safe))
                           (cons _g291015291017_ _dirs291011_)))
                       _$e291013_)
                      _dirs291011_)))
               (_dirs291026_
                (map (lambda (_g291021291023_)
                       (path-expand '"static" _g291021291023_))
                     _dirs291020_)))
          (let _lp291029_ ((_rest291031_ _dirs291026_))
            (let* ((_rest291032291040_ _rest291031_)
                   (_else291034291048_
                    (lambda ()
                      (let ((__tmp296443
                             (##structure-ref
                              _ctx290999_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp296443
                         _scm291003_))))
                   (_K291036291056_
                    (lambda (_rest291051_ _dir291052_)
                      (let ((_path291054_
                             (path-expand _scm291003_ _dir291052_)))
                        (if (file-exists? _path291054_)
                            _path291054_
                            (let ()
                              (declare (not safe))
                              (_lp291029_ _rest291051_)))))))
              (if (let () (declare (not safe)) (##pair? _rest291032291040_))
                  (let ((_hd291037291059_
                         (let ()
                           (declare (not safe))
                           (##car _rest291032291040_)))
                        (_tl291038291061_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291032291040_))))
                    (let* ((_dir291064_ _hd291037291059_)
                           (_rest291066_ _tl291038291061_))
                      (declare (not safe))
                      (_K291036291056_ _rest291066_ _dir291064_)))
                  (let () (declare (not safe)) (_else291034291048_))))))))
    (define gxc#file-empty?
      (lambda (_path290997_)
        (let ((__tmp296444 (file-info-size (file-info _path290997_ '#t))))
          (declare (not safe))
          (zero? __tmp296444))))
    (define gxc#compile-top-module
      (lambda (_ctx290986_)
        (let ((__tmp296448
               (lambda ()
                 (let ((__tmp296449
                        (##structure-ref
                         _ctx290986_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp296449))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp296450
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx290986_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp296450))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx290986_))
                 (if (let ((__tmp296453
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx290986_))))
                       (declare (not safe))
                       (null? __tmp296453))
                     (let* ((_thr1290991_
                             (let ((__tmp296451
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx290986_)))))
                               (declare (not safe))
                               (spawn __tmp296451)))
                            (_thr2290994_
                             (let ((__tmp296452
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx290986_)))))
                               (declare (not safe))
                               (spawn __tmp296452))))
                       (let () (declare (not safe)) (gxc#join! _thr1290991_))
                       (let () (declare (not safe)) (gxc#join! _thr2290994_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx290986_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx290986_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx290986_))
                     '#!void)))
              (__tmp296447
               (let ((__obj296252
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj296252)
                 __obj296252))
              (__tmp296446
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp296445 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp296448
           gx#current-expander-context
           _ctx290986_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp296447
           gxc#current-compile-runtime-sections
           __tmp296446
           gxc#current-compile-runtime-names
           __tmp296445))))
    (define gxc#collect-bindings
      (lambda (_ctx290984_)
        (let ((__tmp296454
               (##structure-ref _ctx290984_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp296454))))
    (define gxc#compile-runtime-code
      (lambda (_ctx290930_)
        (letrec ((_compile1290932_
                  (lambda (_ctx290973_)
                    (let* ((_code290975_
                            (##structure-ref
                             _ctx290973_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt290979_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code290975_))
                                (let ((_idstr290977_
                                       (let ((__tmp296455
                                              (##structure-ref
                                               _ctx290973_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp296455))))
                                  (string-append _idstr290977_ '"__0"))
                                '#f)))
                      (if _rt290979_
                          (begin
                            (let ((__tmp296456
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp296456 _ctx290973_ _rt290979_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code290934_
                               _ctx290973_
                               _code290975_)))
                          (let ((_path290982_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx290973_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path290982_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code290935_
                         _ctx290973_
                         _code290975_
                         _rt290979_)))))
                 (_context-timestamp290933_
                  (lambda (_ctx290971_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx290971_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code290934_
                  (lambda (_ctx290953_ _code290954_)
                    (let* ((_lifts290956_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code290959_
                            (let ((__tmp296459
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code290954_))))
                                  (__tmp296458
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp296457
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296459
                               gx#current-expander-context
                               _ctx290953_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts290956_
                               gxc#current-compile-marks
                               __tmp296458
                               gxc#current-compile-identifiers
                               __tmp296457)))
                           (_runtime-code290961_
                            (if (let ((__tmp296463 (unbox _lifts290956_)))
                                  (declare (not safe))
                                  (null? __tmp296463))
                                _runtime-code290959_
                                (let ((__tmp296460
                                       (let ((__tmp296462
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code290959_
                                                      '())))
                                             (__tmp296461
                                              (reverse (unbox _lifts290956_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp296462
                                                 __tmp296461))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296460))))
                           (_runtime-code290963_
                            (let ((__tmp296464
                                   (let ((__tmp296466
                                          (let ((__tmp296467
                                                 (let ((__tmp296470
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp290933_
                                                           _ctx290953_)))
                                                       (__tmp296468
                                                        (let ((__tmp296469
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp296469
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp296470
                                                         __tmp296468))))
                                            (declare (not safe))
                                            (cons 'define __tmp296467)))
                                         (__tmp296465
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code290961_ '()))))
                                     (declare (not safe))
                                     (cons __tmp296466 __tmp296465))))
                              (declare (not safe))
                              (cons 'begin __tmp296464)))
                           (_scm0290965_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290953_
                               '0
                               '".scm"))))
                      (let ((_scms290968_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx290953_))))
                        (let ((__tmp296471
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0290965_
                                    _runtime-code290963_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp296471
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms290968_)
                            (delete-file _scms290968_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0290965_
                           '" => "
                           _scms290968_))
                        (copy-file _scm0290965_ _scms290968_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0290965_))))))
                 (_generate-loader-code290935_
                  (lambda (_ctx290942_ _code290943_ _rt290944_)
                    (let* ((_loader-code290947_
                            (let ((__tmp296472
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code290943_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296472
                               gx#current-expander-context
                               _ctx290942_)))
                           (_loader-code290949_
                            (if _rt290944_
                                (let ((__tmp296473
                                       (let ((__tmp296474
                                              (let ((__tmp296475
                                                     (let ((__tmp296476
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt290944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp296476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296475 '()))))
                                         (declare (not safe))
                                         (cons _loader-code290947_
                                               __tmp296474))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296473))
                                _loader-code290947_)))
                      (let ((__tmp296477
                             (lambda ()
                               (let ((__tmp296478
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290942_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp296478
                                  _loader-code290949_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp296477
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules290937_
                 (let ((__tmp296479
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx290930_))))
                   (declare (not safe))
                   (cons _ctx290930_ __tmp296479))))
            (for-each
             (lambda (_ctx290939_)
               (let ((__tmp296480
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1290932_ _ctx290939_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp296480
                  gxc#current-compile-decls
                  '())))
             _all-modules290937_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx290827_)
        (letrec ((_compile-ssi290829_
                  (lambda (_code290900_)
                    (let* ((_path290902_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290827_
                               '#f
                               '".ssi")))
                           (_prelude290913_
                            (let* ((_super290904_
                                    (##structure-ref
                                     _ctx290827_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e290906_
                                    (##structure-ref
                                     _super290904_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e290906_
                                  ((lambda (_g290908290910_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g290908290910_)))
                                   _$e290906_)
                                  ':<root>)))
                           (_ns290915_
                            (##structure-ref
                             _ctx290827_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr290917_
                            (symbol->string
                             (##structure-ref
                              _ctx290827_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg290924_
                            (let ((_$e290919_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr290917_ '#\/))))
                              (if _$e290919_
                                  ((lambda (_x290922_)
                                     (string->symbol
                                      (substring _idstr290917_ '0 _x290922_)))
                                   _$e290919_)
                                  '#f)))
                           (_rt290926_
                            (let ((__tmp296481
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp296481 _ctx290827_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path290902_))
                      (let ((__tmp296482
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude290913_))
                               (if _pkg290924_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg290924_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns290915_))
                               (newline)
                               (pretty-print _code290900_)
                               (if _rt290926_
                                   (pretty-print
                                    (let ((__tmp296483
                                           (let ((__tmp296487
                                                  (let ((__tmp296488
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp296488)))
                                                 (__tmp296484
                                                  (let ((__tmp296485
                                                         (let ((__tmp296486
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt290926_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp296486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296485 '()))))
                                             (declare (not safe))
                                             (cons __tmp296487 __tmp296484))))
                                      (declare (not safe))
                                      (cons '%#call __tmp296483)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path290902_
                         __tmp296482)))))
                 (_compile-phi290830_
                  (lambda (_part290840_)
                    (let* ((_part290841290854_ _part290840_)
                           (_E290843290858_
                            (lambda ()
                              (error '"No clause matching"
                                     _part290841290854_)))
                           (_K290844290869_
                            (lambda (_code290861_
                                     _n290862_
                                     _phi290863_
                                     _phi-ctx290864_)
                              (let* ((_code290867_
                                      (let ((__tmp296489
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code290861_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp296489
                                         gx#current-expander-context
                                         _phi-ctx290864_
                                         gx#current-expander-phi
                                         _phi290863_)))
                                     (__tmp296490
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290827_
                                         _n290862_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp296490
                                 _code290867_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part290841290854_))
                          (let ((_hd290845290872_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part290841290854_)))
                                (_tl290846290874_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part290841290854_))))
                            (let ((_phi-ctx290877_ _hd290845290872_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl290846290874_))
                                  (let ((_hd290847290879_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl290846290874_)))
                                        (_tl290848290881_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl290846290874_))))
                                    (let ((_phi290884_ _hd290847290879_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl290848290881_))
                                          (let ((_hd290849290886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl290848290881_)))
                                                (_tl290850290888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl290848290881_))))
                                            (let ((_n290891_ _hd290849290886_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl290850290888_))
                                                  (let ((_hd290851290893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl290850290888_)))
                                                        (_tl290852290895_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl290850290888_))))
                                                    (let ((_code290898_
                                                           _hd290851290893_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl290852290895_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K290844290869_
                                                             _code290898_
                                                             _n290891_
                                                             _phi290884_
                                                             _phi-ctx290877_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E290843290858_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E290843290858_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E290843290858_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E290843290858_)))))
                          (let () (declare (not safe)) (_E290843290858_)))))))
          (let ((_g296491_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx290827_))))
            (begin
              (let ((_g296492_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g296491_)
                           (##vector-length _g296491_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g296492_ 2)))
                    (error "Context expects 2 values" _g296492_)))
              (let ((_ssi-code290832_
                     (let () (declare (not safe)) (##vector-ref _g296491_ 0)))
                    (_phi-code290833_
                     (let () (declare (not safe)) (##vector-ref _g296491_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi290829_ _ssi-code290832_))
                  (let ((_threads290838_
                         (map (lambda (_code290835_)
                                (let ((__tmp296493
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi290830_
                                            _code290835_)))))
                                  (declare (not safe))
                                  (spawn __tmp296493)))
                              _phi-code290833_)))
                    (for-each gxc#join! _threads290838_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx290810_)
        (let* ((_path290812_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx290810_ '#f '".ssxi.ss")))
               (_code290814_
                (let ((__tmp296494
                       (##structure-ref
                        _ctx290810_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp296494)))
               (_idstr290816_
                (symbol->string
                 (##structure-ref _ctx290810_ '1 gx#expander-context::t '#f)))
               (_pkg290823_
                (let ((_$e290818_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr290816_ '#\/))))
                  (if _$e290818_
                      ((lambda (_x290821_)
                         (string->symbol
                          (substring _idstr290816_ '0 _x290821_)))
                       _$e290818_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path290812_))
          (let ((__tmp296495
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg290823_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg290823_))
                       '#!void)
                   (newline)
                   (pretty-print _code290814_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path290812_ __tmp296495)))))
    (define gxc#generate-meta-code
      (lambda (_ctx290803_)
        (let* ((_state290805_
                (let ((__obj296253
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj296253 _ctx290803_)
                  __obj296253))
               (_ssi-code290807_
                (let ((__tmp296496
                       (##structure-ref
                        _ctx290803_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp296496 _state290805_))))
          (values _ssi-code290807_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state290805_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx290796_)
        (let ((_lifts290798_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296499
                 (lambda ()
                   (let ((_code290801_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx290796_))))
                     (if (let ((__tmp296503 (unbox _lifts290798_)))
                           (declare (not safe))
                           (null? __tmp296503))
                         _code290801_
                         (let ((__tmp296500
                                (let ((__tmp296502
                                       (let ()
                                         (declare (not safe))
                                         (cons _code290801_ '())))
                                      (__tmp296501
                                       (reverse (unbox _lifts290798_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp296502 __tmp296501))))
                           (declare (not safe))
                           (cons 'begin __tmp296500))))))
                (__tmp296498
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp296497
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp296499
             gxc#current-compile-lift
             _lifts290798_
             gxc#current-compile-marks
             __tmp296498
             gxc#current-compile-identifiers
             __tmp296497)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx290792_)
        (let ((_modules290794_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296504
                 (##structure-ref _ctx290792_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp296504 _modules290794_))
          (reverse (unbox _modules290794_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path290775_ _code290776_ _phi?290777_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path290775_))
        (let ((__tmp296505
               (lambda ()
                 (pretty-print
                  (let ((__tmp296506
                         (let ((__tmp296513
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp296507
                                (let ((__tmp296512
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp296508
                                       (let ((__tmp296511
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp296509
                                              (let ((__tmp296510
                                                     (if _phi?290777_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp296510))))
                                         (declare (not safe))
                                         (cons __tmp296511 __tmp296509))))
                                  (declare (not safe))
                                  (cons __tmp296512 __tmp296508))))
                           (declare (not safe))
                           (cons __tmp296513 __tmp296507))))
                    (declare (not safe))
                    (cons 'declare __tmp296506)))
                 (pretty-print _code290776_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path290775_ __tmp296505))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path290775_ _phi?290777_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path290775_))))
    (define gxc#compile-scm-file__0
      (lambda (_path290783_ _code290784_)
        (let ((_phi?290786_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path290783_ _code290784_ _phi?290786_))))
    (define gxc#compile-scm-file
      (lambda _g296515_
        (let ((_g296514_ (let () (declare (not safe)) (##length _g296515_))))
          (cond ((let () (declare (not safe)) (##fx= _g296514_ 2))
                 (apply (lambda (_path290783_ _code290784_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path290783_
                             _code290784_)))
                        _g296515_))
                ((let () (declare (not safe)) (##fx= _g296514_ 3))
                 (apply (lambda (_path290788_ _code290789_ _phi?290790_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path290788_
                             _code290789_
                             _phi?290790_)))
                        _g296515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g296515_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?290676_)
        (let _lp290678_ ((_rest290680_ (gxc#current-compile-gsc-options))
                         (_opts290681_ '()))
          (let* ((_rest290682290702_ _rest290680_)
                 (_else290686290710_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290676_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296516
                               (let ((__tmp296517 (reverse _opts290681_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp296517))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp296516))
                        (reverse _opts290681_)))))
            (let ((_K290696290753_
                   (lambda (_rest290751_)
                     (let ()
                       (declare (not safe))
                       (_lp290678_ _rest290751_ _opts290681_))))
                  (_K290691290735_
                   (lambda (_rest290733_)
                     (let ()
                       (declare (not safe))
                       (_lp290678_ _rest290733_ _opts290681_))))
                  (_K290688290717_
                   (lambda (_rest290714_ _opt290715_)
                     (let ((__tmp296518
                            (let ()
                              (declare (not safe))
                              (cons _opt290715_ _opts290681_))))
                       (declare (not safe))
                       (_lp290678_ _rest290714_ __tmp296518)))))
              (if (let () (declare (not safe)) (##pair? _rest290682290702_))
                  (let ((_tl290698290758_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290682290702_)))
                        (_hd290697290756_
                         (let ()
                           (declare (not safe))
                           (##car _rest290682290702_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290697290756_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290698290758_))
                            (let* ((_tl290700290761_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290698290758_)))
                                   (_rest290764_ _tl290700290761_))
                              (declare (not safe))
                              (_K290696290753_ _rest290764_))
                            (let ((_opt290725_ _hd290697290756_)
                                  (_rest290727_ _tl290698290758_))
                              (let ()
                                (declare (not safe))
                                (_K290688290717_ _rest290727_ _opt290725_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290697290756_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290698290758_))
                                (let* ((_tl290695290743_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290698290758_)))
                                       (_rest290746_ _tl290695290743_))
                                  (declare (not safe))
                                  (_K290691290735_ _rest290746_))
                                (let ((_opt290725_ _hd290697290756_)
                                      (_rest290727_ _tl290698290758_))
                                  (let ()
                                    (declare (not safe))
                                    (_K290688290717_
                                     _rest290727_
                                     _opt290725_))))
                            (let ((_opt290725_ _hd290697290756_)
                                  (_rest290727_ _tl290698290758_))
                              (let ()
                                (declare (not safe))
                                (_K290688290717_ _rest290727_ _opt290725_))))))
                  (let () (declare (not safe)) (_else290686290710_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?290770_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?290770_))))
    (define gxc#gsc-link-options
      (lambda _g296520_
        (let ((_g296519_ (let () (declare (not safe)) (##length _g296520_))))
          (cond ((let () (declare (not safe)) (##fx= _g296519_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g296520_))
                ((let () (declare (not safe)) (##fx= _g296519_ 1))
                 (apply (lambda (_phi?290772_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?290772_)))
                        _g296520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g296520_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?290577_)
        (let _lp290579_ ((_rest290581_ (gxc#current-compile-gsc-options))
                         (_opts290582_ '()))
          (let* ((_rest290583290603_ _rest290581_)
                 (_else290587290611_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290577_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296521
                               (let ((__tmp296522 (reverse _opts290582_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp296522))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp296521))
                        (reverse _opts290582_)))))
            (let ((_K290597290650_
                   (lambda (_rest290647_ _opt290648_)
                     (let ((__tmp296523
                            (let ((__tmp296524
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts290582_))))
                              (declare (not safe))
                              (cons _opt290648_ __tmp296524))))
                       (declare (not safe))
                       (_lp290579_ _rest290647_ __tmp296523))))
                  (_K290592290631_
                   (lambda (_rest290629_)
                     (let ()
                       (declare (not safe))
                       (_lp290579_ _rest290629_ _opts290582_))))
                  (_K290589290617_
                   (lambda (_rest290615_)
                     (let ()
                       (declare (not safe))
                       (_lp290579_ _rest290615_ _opts290582_)))))
              (if (let () (declare (not safe)) (##pair? _rest290583290603_))
                  (let ((_tl290599290655_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290583290603_)))
                        (_hd290598290653_
                         (let ()
                           (declare (not safe))
                           (##car _rest290583290603_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290598290653_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290599290655_))
                            (let ((_tl290601290660_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl290599290655_)))
                                  (_hd290600290658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl290599290655_))))
                              (let ((_opt290663_ _hd290600290658_)
                                    (_rest290665_ _tl290601290660_))
                                (let ()
                                  (declare (not safe))
                                  (_K290597290650_ _rest290665_ _opt290663_))))
                            (let ((_rest290623_ _tl290599290655_))
                              (declare (not safe))
                              (_K290589290617_ _rest290623_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290598290653_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290599290655_))
                                (let* ((_tl290596290639_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290599290655_)))
                                       (_rest290642_ _tl290596290639_))
                                  (declare (not safe))
                                  (_K290592290631_ _rest290642_))
                                (let ((_rest290623_ _tl290599290655_))
                                  (declare (not safe))
                                  (_K290589290617_ _rest290623_)))
                            (let ((_rest290623_ _tl290599290655_))
                              (declare (not safe))
                              (_K290589290617_ _rest290623_)))))
                  (let () (declare (not safe)) (_else290587290611_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?290671_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?290671_))))
    (define gxc#gsc-cc-options
      (lambda _g296526_
        (let ((_g296525_ (let () (declare (not safe)) (##length _g296526_))))
          (cond ((let () (declare (not safe)) (##fx= _g296525_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g296526_))
                ((let () (declare (not safe)) (##fx= _g296525_ 1))
                 (apply (lambda (_phi?290673_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?290673_)))
                        _g296526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g296526_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir290572_)
        (let* ((_user-staticdir290574_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp296527
                (let ((__tmp296528
                       (string-append
                        '"-I "
                        _staticdir290572_
                        '" -I "
                        _user-staticdir290574_)))
                  (declare (not safe))
                  (cons __tmp296528 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp296527))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp290484_ ((_rest290486_ (gxc#current-compile-gsc-options))
                         (_opts290487_ '()))
          (let* ((_rest290488290508_ _rest290486_)
                 (_else290492290516_ (lambda () _opts290487_)))
            (let ((_K290502290559_
                   (lambda (_rest290557_)
                     (let ()
                       (declare (not safe))
                       (_lp290484_ _rest290557_ _opts290487_))))
                  (_K290497290537_
                   (lambda (_rest290534_ _opt290535_)
                     (let ((__tmp296529
                            (append _opts290487_
                                    (let ((__tmp296530
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt290535_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp296530)))))
                       (declare (not safe))
                       (_lp290484_ _rest290534_ __tmp296529))))
                  (_K290494290522_
                   (lambda (_rest290520_)
                     (let ()
                       (declare (not safe))
                       (_lp290484_ _rest290520_ _opts290487_)))))
              (if (let () (declare (not safe)) (##pair? _rest290488290508_))
                  (let ((_tl290504290564_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290488290508_)))
                        (_hd290503290562_
                         (let ()
                           (declare (not safe))
                           (##car _rest290488290508_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290503290562_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290504290564_))
                            (let* ((_tl290506290567_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290504290564_)))
                                   (_rest290570_ _tl290506290567_))
                              (declare (not safe))
                              (_K290502290559_ _rest290570_))
                            (let ((_rest290528_ _tl290504290564_))
                              (declare (not safe))
                              (_K290494290522_ _rest290528_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290503290562_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290504290564_))
                                (let ((_tl290501290547_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl290504290564_)))
                                      (_hd290500290545_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl290504290564_))))
                                  (let ((_opt290550_ _hd290500290545_)
                                        (_rest290552_ _tl290501290547_))
                                    (let ()
                                      (declare (not safe))
                                      (_K290497290537_
                                       _rest290552_
                                       _opt290550_))))
                                (let ((_rest290528_ _tl290504290564_))
                                  (declare (not safe))
                                  (_K290494290522_ _rest290528_)))
                            (let ((_rest290528_ _tl290504290564_))
                              (declare (not safe))
                              (_K290494290522_ _rest290528_)))))
                  (let () (declare (not safe)) (_else290492290516_))))))))
    (define gxc#not-string-empty?
      (lambda (_str290481_)
        (let ((__tmp296531
               (let () (declare (not safe)) (string-empty? _str290481_))))
          (declare (not safe))
          (not __tmp296531))))
    (define gxc#gsc-compile-file
      (lambda (_path290449_ _phi?290450_)
        (letrec ((_gsc-link-path290452_
                  (lambda (_base-path290473_)
                    (let _lp290475_ ((_n290477_ '1))
                      (let ((_path290479_
                             (string-append
                              _base-path290473_
                              '".o"
                              (number->string _n290477_))))
                        (if (file-exists? _path290479_)
                            (let ((__tmp296532
                                   (let ()
                                     (declare (not safe))
                                     (+ _n290477_ '1))))
                              (declare (not safe))
                              (_lp290475_ __tmp296532))
                            _path290479_))))))
          (let* ((_base-path290454_ (path-strip-extension _path290449_))
                 (_path-c290456_ (string-append _base-path290454_ '".c"))
                 (_path-o290458_ (string-append _base-path290454_ '".o"))
                 (_link-path290460_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path290452_ _base-path290454_)))
                 (_link-path-c290462_ (string-append _link-path290460_ '".c"))
                 (_link-path-o290464_ (string-append _link-path290460_ '".o"))
                 (_gsc-link-opts290466_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?290450_)))
                 (_gsc-cc-opts290468_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?290450_)))
                 (_gcc-ld-opts290470_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp296539 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296533
                   (let ((__tmp296534
                          (let ((__tmp296535
                                 (let ((__tmp296536
                                        (let ((__tmp296537
                                               (let ((__tmp296538
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path290449_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp296538
                                                         _gsc-link-opts290466_))))
                                          (declare (not safe))
                                          (cons _link-path-c290462_
                                                __tmp296537))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp296536))))
                            (declare (not safe))
                            (cons '"-flat" __tmp296535))))
                     (declare (not safe))
                     (cons '"-link" __tmp296534))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296539 __tmp296533))
            (let ((__tmp296546 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296540
                   (let ((__tmp296541
                          (let ((__tmp296542
                                 (let ((__tmp296543
                                        (let ((__tmp296544
                                               (let ((__tmp296545
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c290462_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c290456_
                                                       __tmp296545))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp296544
                                                  _gsc-cc-opts290468_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp296543))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp296542))))
                     (declare (not safe))
                     (cons '"-obj" __tmp296541))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296546 __tmp296540))
            (let ((__tmp296552 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp296547
                   (let ((__tmp296548
                          (let ((__tmp296549
                                 (let ((__tmp296550
                                        (let ((__tmp296551
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o290464_
                                                       _gcc-ld-opts290470_))))
                                          (declare (not safe))
                                          (cons _path-o290458_ __tmp296551))))
                                   (declare (not safe))
                                   (cons _link-path290460_ __tmp296550))))
                            (declare (not safe))
                            (cons '"-o" __tmp296549))))
                     (declare (not safe))
                     (cons '"-shared" __tmp296548))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp296552
               __tmp296547))
            (for-each
             delete-file
             (let ((__tmp296553
                    (let ((__tmp296554
                           (let ((__tmp296555
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o290464_ '()))))
                             (declare (not safe))
                             (cons _link-path-c290462_ __tmp296555))))
                      (declare (not safe))
                      (cons _path-o290458_ __tmp296554))))
               (declare (not safe))
               (cons _path-c290456_ __tmp296553)))))))
    (define gxc#compile-output-file
      (lambda (_ctx290420_ _n290421_ _ext290422_)
        (letrec ((_module-relative-path290424_
                  (lambda (_ctx290447_)
                    (path-strip-directory
                     (let ((__tmp296556
                            (##structure-ref
                             _ctx290447_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp296556)))))
                 (_module-source-directory290425_
                  (lambda (_ctx290443_)
                    (path-directory
                     (let ((_mpath290445_
                            (##structure-ref
                             _ctx290443_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath290445_))
                           _mpath290445_
                           (let ()
                             (declare (not safe))
                             (last _mpath290445_)))))))
                 (_section-string290426_
                  (lambda (_n290441_)
                    (if (let () (declare (not safe)) (number? _n290441_))
                        (number->string _n290441_)
                        (if (let () (declare (not safe)) (symbol? _n290441_))
                            (symbol->string _n290441_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n290441_))
                                _n290441_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n290441_)))))))
                 (_file-name290427_
                  (lambda (_path290439_)
                    (if _n290421_
                        (string-append
                         _path290439_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string290426_ _n290421_))
                         _ext290422_)
                        (string-append _path290439_ _ext290422_))))
                 (_file-path290428_
                  (lambda ()
                    (let ((_$e290434_ (gxc#current-compile-output-dir)))
                      (if _$e290434_
                          ((lambda (_outdir290437_)
                             (path-expand
                              (let ((__tmp296558
                                     (let ((__tmp296559
                                            (##structure-ref
                                             _ctx290420_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp296559))))
                                (declare (not safe))
                                (_file-name290427_ __tmp296558))
                              _outdir290437_))
                           _$e290434_)
                          (path-expand
                           (let ((__tmp296557
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path290424_
                                     _ctx290420_))))
                             (declare (not safe))
                             (_file-name290427_ __tmp296557))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory290425_
                              _ctx290420_))))))))
          (let ((_path290430_
                 (let () (declare (not safe)) (_file-path290428_))))
            (let ((__tmp296560
                   (lambda ()
                     (let ((__tmp296561 (path-directory _path290430_)))
                       (declare (not safe))
                       (create-directory* __tmp296561)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296560))
            _path290430_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx290402_)
        (letrec ((_file-name290404_
                  (lambda (_id290418_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id290418_))
                     '".scm")))
                 (_file-path290405_
                  (lambda ()
                    (let* ((_file290411_
                            (let ((__tmp296562
                                   (##structure-ref
                                    _ctx290402_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name290404_ __tmp296562)))
                           (_$e290413_ (gxc#current-compile-output-dir)))
                      (if _$e290413_
                          ((lambda (_outdir290416_)
                             (path-expand
                              _file290411_
                              (path-expand '"static" _outdir290416_)))
                           _$e290413_)
                          (path-expand _file290411_ '"static"))))))
          (let ((_path290407_
                 (let () (declare (not safe)) (_file-path290405_))))
            (let ((__tmp296563
                   (lambda ()
                     (let ((__tmp296564 (path-directory _path290407_)))
                       (declare (not safe))
                       (create-directory* __tmp296564)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296563))
            _path290407_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx290396_ _opts290397_)
        (let ((_$e290399_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts290397_))))
          (if _$e290399_
              (values _$e290399_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx290396_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr290389_)
        (if (let () (declare (not safe)) (string? _idstr290389_))
            (let* ((_str290391_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr290389_)))
                   (_strs290393_
                    (let ()
                      (declare (not safe))
                      (string-split _str290391_ '#\/))))
              (let () (declare (not safe)) (string-join _strs290393_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr290389_))
                (let ((__tmp296565 (symbol->string _idstr290389_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp296565))
                (error '"Bad module id" _idstr290389_)))))
    (define gxc#invoke__%
      (lambda (_g296566_
               _stdout-redirection290353290357_
               _stderr-redirection290354290359_
               _program290361_
               _args290362_)
        (let* ((_stdout-redirection290364_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection290353290357_ absent-value))
                    '#f
                    _stdout-redirection290353290357_))
               (_stderr-redirection290366_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection290354290359_ absent-value))
                    '#f
                    _stderr-redirection290354290359_)))
          (let ((__tmp296567
                 (let ()
                   (declare (not safe))
                   (cons _program290361_ _args290362_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp296567))
          (let ((_proc290368_
                 (open-process
                  (let ((__tmp296568
                         (let ((__tmp296569
                                (let ((__tmp296570
                                       (let ((__tmp296571
                                              (let ((__tmp296572
                                                     (let ((__tmp296573
                                                            (let ((__tmp296574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection290366_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp296574))))
               (declare (not safe))
               (cons _stdout-redirection290364_ __tmp296573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp296572))))
                                         (declare (not safe))
                                         (cons _args290362_ __tmp296571))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp296570))))
                           (declare (not safe))
                           (cons _program290361_ __tmp296569))))
                    (declare (not safe))
                    (cons 'path: __tmp296568)))))
            (if (or _stdout-redirection290364_ _stderr-redirection290366_)
                (read-line _proc290368_ '#f)
                '#!void)
            (let ((_status290373_ (process-status _proc290368_)))
              (close-port _proc290368_)
              (if (let () (declare (not safe)) (zero? _status290373_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program290361_))))))))
    (define gxc#invoke__@
      (lambda (_keys290352290378_ . _args290380_)
        (apply gxc#invoke__%
               _keys290352290378_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290352290378_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290352290378_
                  'stderr-redirection:
                  absent-value))
               _args290380_)))
    (define gxc#invoke
      (lambda _args290355290386_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args290355290386_)))
    (define gxc#join!
      (lambda (_thread290346_)
        (let ((__tmp296576
               (lambda (_exn290348_)
                 (if (uncaught-exception? _exn290348_)
                     (raise (uncaught-exception-reason _exn290348_))
                     (raise _exn290348_))))
              (__tmp296575 (lambda () (thread-join! _thread290346_))))
          (declare (not safe))
          (with-catch __tmp296576 __tmp296575))))))
