(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707740674)
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
      (lambda (_path291593_ _fun291594_)
        (with-output-to-file
         (let ((__tmp296255
                (let ()
                  (declare (not safe))
                  (cons _path291593_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp296255))
         _fun291594_)))
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
      (lambda (_gerbil-libdir291588_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir291588_)))
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
      (lambda (_dir291586_) (delete-file-or-directory _dir291586_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath291560_ _opts291561_)
        (if (let () (declare (not safe)) (string? _srcpath291560_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291560_)))
        (let ((_outdir291563_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291561_)))
              (_invoke-gsc?291564_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291561_)))
              (_gsc-options291565_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291561_)))
              (_keep-scm?291566_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291561_)))
              (_verbosity291567_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291561_)))
              (_optimize291568_
               (let () (declare (not safe)) (pgetq 'optimize: _opts291561_)))
              (_debug291569_
               (let () (declare (not safe)) (pgetq 'debug: _opts291561_)))
              (_gen-ssxi291570_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts291561_))))
          (if _outdir291563_
              (let ((__tmp296256
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291563_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296256))
              '#!void)
          (if _optimize291568_
              (let ((__tmp296257
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296257))
              '#!void)
          (let ((__tmp296261
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath291560_))
                   (let ((__tmp296262
                          (let ((__tmp296263
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291560_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296263))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp296262))))
                (__tmp296260
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296258
                 (let ((__tmp296259
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291560_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp296259))))
            (declare (not safe))
            (call-with-parameters
             __tmp296261
             gxc#current-compile-output-dir
             _outdir291563_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291564_
             gxc#current-compile-gsc-options
             _gsc-options291565_
             gxc#current-compile-keep-scm
             _keep-scm?291566_
             gxc#current-compile-verbose
             _verbosity291567_
             gxc#current-compile-optimize
             _optimize291568_
             gxc#current-compile-debug
             _debug291569_
             gxc#current-compile-generate-ssxi
             _gen-ssxi291570_
             gxc#current-compile-timestamp
             __tmp296260
             gxc#current-compile-context
             __tmp296258
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath291579_)
        (let ((_opts291581_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath291579_ _opts291581_))))
    (define gxc#compile-module
      (lambda _g296265_
        (let ((_g296264_ (let () (declare (not safe)) (##length _g296265_))))
          (cond ((let () (declare (not safe)) (##fx= _g296264_ 1))
                 (apply (lambda (_srcpath291579_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath291579_)))
                        _g296265_))
                ((let () (declare (not safe)) (##fx= _g296264_ 2))
                 (apply (lambda (_srcpath291583_ _opts291584_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath291583_
                             _opts291584_)))
                        _g296265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g296265_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath291536_ _opts291537_)
        (if (let () (declare (not safe)) (string? _srcpath291536_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291536_)))
        (let ((_outdir291539_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291537_)))
              (_invoke-gsc?291540_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291537_)))
              (_gsc-options291541_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291537_)))
              (_keep-scm?291542_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291537_)))
              (_verbosity291543_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291537_)))
              (_debug291544_
               (let () (declare (not safe)) (pgetq 'debug: _opts291537_))))
          (if _outdir291539_
              (let ((__tmp296266
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291539_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296266))
              '#!void)
          (let ((__tmp296270
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath291536_))
                   (let ((__tmp296271
                          (let ((__tmp296272
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291536_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296272))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp296271
                      _opts291537_))))
                (__tmp296269
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296267
                 (let ((__tmp296268
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291536_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp296268))))
            (declare (not safe))
            (call-with-parameters
             __tmp296270
             gxc#current-compile-output-dir
             _outdir291539_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291540_
             gxc#current-compile-gsc-options
             _gsc-options291541_
             gxc#current-compile-keep-scm
             _keep-scm?291542_
             gxc#current-compile-verbose
             _verbosity291543_
             gxc#current-compile-debug
             _debug291544_
             gxc#current-compile-timestamp
             __tmp296269
             gxc#current-compile-context
             __tmp296267
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath291552_)
        (let ((_opts291554_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath291552_ _opts291554_))))
    (define gxc#compile-exe
      (lambda _g296274_
        (let ((_g296273_ (let () (declare (not safe)) (##length _g296274_))))
          (cond ((let () (declare (not safe)) (##fx= _g296273_ 1))
                 (apply (lambda (_srcpath291552_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath291552_)))
                        _g296274_))
                ((let () (declare (not safe)) (##fx= _g296273_ 2))
                 (apply (lambda (_srcpath291556_ _opts291557_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath291556_ _opts291557_)))
                        _g296274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g296274_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx291532_ _opts291533_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts291533_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx291532_
               _opts291533_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx291532_
               _opts291533_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx291415_ _opts291416_)
        (letrec ((_generate-stub291418_
                  (lambda (_builtin-modules291528_)
                    (let ((_mod-main291530_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291415_ 'main))))
                      (write (let ((__tmp296275
                                    (let ((__tmp296276
                                           (let ((__tmp296277
                                                  (let ((__tmp296278
                                                         (let ((__tmp296280
                                                                (let ((__tmp296281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules291528_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296281)))
                       (__tmp296279
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp296280 __tmp296279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp296278))))
                                             (declare (not safe))
                                             (cons __tmp296277 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp296276))))
                               (declare (not safe))
                               (cons 'define __tmp296275)))
                      (write (let ((__tmp296282
                                    (let ((__tmp296321
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296283
                                           (let ((__tmp296284
                                                  (let ((__tmp296285
                                                         (let ((__tmp296309
                                                                (let ((__tmp296310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296311
                                      (let ((__tmp296319
                                             (let ((__tmp296320
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp296320)))
                                            (__tmp296312
                                             (let ((__tmp296313
                                                    (let ((__tmp296314
                                                           (let ((__tmp296315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296316
                                 (let ((__tmp296317
                                        (let ((__tmp296318
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp296318 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp296317))))
                            (declare (not safe))
                            (cons __tmp296316 '()))))
                     (declare (not safe))
                     (cons _mod-main291530_ __tmp296315))))
              (declare (not safe))
              (cons 'apply __tmp296314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296313 '()))))
                                        (declare (not safe))
                                        (cons __tmp296319 __tmp296312))))
                                 (declare (not safe))
                                 (cons '() __tmp296311))))
                          (declare (not safe))
                          (cons 'lambda __tmp296310)))
                       (__tmp296286
                        (let ((__tmp296287
                               (let ((__tmp296288
                                      (let ((__tmp296289
                                             (let ((__tmp296300
                                                    (let ((__tmp296301
                                                           (let ((__tmp296302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296303
                                 (let ((__tmp296304
                                        (let ((__tmp296305
                                               (let ((__tmp296306
                                                      (let ((__tmp296307
                                                             (let ((__tmp296308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp296308 '()))))
                (declare (not safe))
                (cons 'force-output __tmp296307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp296306 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp296305))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp296304))))
                            (declare (not safe))
                            (cons __tmp296303 '()))))
                     (declare (not safe))
                     (cons 'void __tmp296302))))
              (declare (not safe))
              (cons 'with-catch __tmp296301)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp296290
                                                    (let ((__tmp296291
                                                           (let ((__tmp296292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296293
                                 (let ((__tmp296294
                                        (let ((__tmp296295
                                               (let ((__tmp296296
                                                      (let ((__tmp296297
                                                             (let ((__tmp296298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp296299
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp296299 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp296298))))
                (declare (not safe))
                (cons __tmp296297 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp296296))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp296295))))
                                   (declare (not safe))
                                   (cons __tmp296294 '()))))
                            (declare (not safe))
                            (cons 'void __tmp296293))))
                     (declare (not safe))
                     (cons 'with-catch __tmp296292))))
              (declare (not safe))
              (cons __tmp296291 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296300
                                                     __tmp296290))))
                                        (declare (not safe))
                                        (cons '() __tmp296289))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp296288))))
                          (declare (not safe))
                          (cons __tmp296287 '()))))
                   (declare (not safe))
                   (cons __tmp296309 __tmp296286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp296285))))
                                             (declare (not safe))
                                             (cons __tmp296284 '()))))
                                      (declare (not safe))
                                      (cons __tmp296321 __tmp296283))))
                               (declare (not safe))
                               (cons 'define __tmp296282)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts291419_
                  (lambda (_libgerbil291526_)
                    (call-with-input-file
                     (string-append _libgerbil291526_ '".ldd")
                     read)))
                 (_replace-extension291420_
                  (lambda (_path291523_ _ext291524_)
                    (string-append
                     (path-strip-extension _path291523_)
                     _ext291524_)))
                 (_not-exclude-module?291421_
                  (lambda (_ctx291519_)
                    (let ((_id-str291521_
                           (symbol->string
                            (##structure-ref
                             _ctx291519_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp296323
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str291521_))))
                            (declare (not safe))
                            (not __tmp296323))
                          (let ((__tmp296322
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str291521_))))
                            (declare (not safe))
                            (not __tmp296322))
                          '#f))))
                 (_not-file-empty?291422_
                  (lambda (_path291517_)
                    (let ((__tmp296324
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path291517_))))
                      (declare (not safe))
                      (not __tmp296324))))
                 (_compile-stub291423_
                  (lambda (_output-scm291430_ _output-bin291431_)
                    (let* ((_gerbil-home291433_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291435_
                            (path-expand '"lib" _gerbil-home291433_))
                           (_gerbil-staticdir291437_
                            (path-expand '"static" _gerbil-libdir291435_))
                           (_gxlink291439_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir291435_))
                           (_tmp291441_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path291445_
                            (lambda (_f291443_)
                              (path-expand
                               (path-strip-directory _f291443_)
                               _tmp291441_)))
                           (_deps291447_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291415_)))
                           (_deps291449_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?291421_
                                      _deps291447_)))
                           (_src-deps-scm291451_
                            (map gxc#find-static-module-file _deps291449_))
                           (_src-deps-scm291453_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?291422_
                                      _src-deps-scm291451_)))
                           (_src-deps-scm291455_
                            (map path-expand _src-deps-scm291453_))
                           (_deps-scm291457_
                            (map _tmp-path291445_ _src-deps-scm291455_))
                           (_deps-c291463_
                            (map (lambda (_g291458291460_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291420_
                                      _g291458291460_
                                      '".c")))
                                 _deps-scm291457_))
                           (_deps-o291469_
                            (map (lambda (_g291464291466_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291420_
                                      _g291464291466_
                                      '".o")))
                                 _deps-scm291457_))
                           (_src-bin-scm291471_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291415_)))
                           (_src-bin-scm291473_
                            (path-expand _src-bin-scm291471_))
                           (_bin-scm291475_
                            (let ()
                              (declare (not safe))
                              (_tmp-path291445_ _src-bin-scm291473_)))
                           (_bin-c291477_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291420_
                               _bin-scm291475_
                               '".c")))
                           (_bin-o291479_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291420_
                               _bin-scm291475_
                               '".o")))
                           (_output-bin291481_
                            (path-expand _output-bin291431_))
                           (_output-scm291483_
                            (path-expand _output-scm291430_))
                           (_output-c291485_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291420_
                               _output-scm291483_
                               '".c")))
                           (_output-o291487_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291420_
                               _output-scm291483_
                               '".o")))
                           (_output_-c291489_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291420_
                               _output-scm291483_
                               '"_.c")))
                           (_output_-o291491_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291420_
                               _output-scm291483_
                               '"_.o")))
                           (_gsc-link-opts291493_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291495_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291497_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir291437_)))
                           (_output-ld-opts291499_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a291501_
                            (path-expand '"libgerbil.a" _gerbil-libdir291435_))
                           (_libgerbil.so291503_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir291435_))
                           (_libgerbil-ld-opts291505_
                            (if (file-exists? _libgerbil.so291503_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts291419_
                                   _libgerbil.so291503_))
                                (if (file-exists? _libgerbil.a291501_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts291419_
                                       _libgerbil.a291501_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a291501_
                                       _libgerbil.so291503_)))))
                           (_rpath291507_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291435_)))
                           (_builtin-modules291511_
                            (map (lambda (_mod291509_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod291509_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx291415_ _deps291449_)))))
                      (let ((__tmp296325
                             (lambda ()
                               (let ((__tmp296326
                                      (path-directory _output-bin291481_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296326)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296325))
                      (let ((__tmp296327
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub291418_
                                  _builtin-modules291511_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291483_
                         __tmp296327))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296328
                                   (lambda () (create-directory _tmp291441_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp296328))
                            (for-each
                             copy-file
                             _src-deps-scm291455_
                             _deps-scm291457_)
                            (copy-file _src-bin-scm291473_ _bin-scm291475_)
                            (let ((__tmp296336
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296329
                                   (let ((__tmp296330
                                          (let ((__tmp296331
                                                 (let ((__tmp296332
                                                        (let ((__tmp296333
                                                               (let ((__tmp296334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296335
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm291483_ '()))))
                                (declare (not safe))
                                (cons _bin-scm291475_ __tmp296335))))
                         (declare (not safe))
                         (foldr1 cons __tmp296334 _deps-scm291457_))))
                  (declare (not safe))
                  (foldr1 cons __tmp296333 _gsc-link-opts291493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink291439_
                                                         __tmp296332))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp296331))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296330))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296336
                               __tmp296329))
                            (let ((__tmp296344
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296337
                                   (let ((__tmp296338
                                          (let ((__tmp296339
                                                 (let ((__tmp296340
                                                        (let ((__tmp296341
                                                               (let ((__tmp296342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296343
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c291489_ '()))))
                                (declare (not safe))
                                (cons _output-c291485_ __tmp296343))))
                         (declare (not safe))
                         (cons _bin-c291477_ __tmp296342))))
                  (declare (not safe))
                  (foldr1 cons __tmp296341 _deps-c291463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296340
                                                           _gsc-static-opts291497_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296339
                                                    _gsc-cc-opts291495_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296338))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296344
                               __tmp296337))
                            (let ((__tmp296357
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296345
                                   (let ((__tmp296346
                                          (let ((__tmp296347
                                                 (let ((__tmp296348
                                                        (let ((__tmp296349
                                                               (let ((__tmp296350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296351
                                     (let ((__tmp296352
                                            (let ((__tmp296353
                                                   (let ((__tmp296354
                                                          (let ((__tmp296355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp296356
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts291505_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp296356))))
                    (declare (not safe))
                    (cons _gerbil-libdir291435_ __tmp296355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp296354))))
                                              (declare (not safe))
                                              (cons _rpath291507_
                                                    __tmp296353))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp296352
                                               _output-ld-opts291499_))))
                                (declare (not safe))
                                (cons _output_-o291491_ __tmp296351))))
                         (declare (not safe))
                         (cons _output-o291487_ __tmp296350))))
                  (declare (not safe))
                  (cons _bin-o291479_ __tmp296349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296348
                                                           _deps-o291469_))))
                                            (declare (not safe))
                                            (cons _output-bin291481_
                                                  __tmp296347))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296346))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296357
                               __tmp296345))
                            (for-each
                             delete-file
                             (let ((__tmp296358
                                    (let ((__tmp296359
                                           (let ((__tmp296360
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o291491_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o291487_
                                                   __tmp296360))))
                                      (declare (not safe))
                                      (cons _output_-c291489_ __tmp296359))))
                               (declare (not safe))
                               (cons _output-c291485_ __tmp296358)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp291441_)))
                          '#!void)))))
          (let* ((_output-bin291425_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291415_ _opts291416_)))
                 (_output-scm291427_
                  (string-append _output-bin291425_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291423_ _output-scm291427_ _output-bin291425_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291427_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx291240_ _opts291241_)
        (letrec ((_reset-declare291243_
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
                 (_generate-stub291244_
                  (lambda (_deps291406_)
                    (let ((_mod-main291408_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291240_ 'main)))
                          (_reset-decl291409_
                           (let ()
                             (declare (not safe))
                             (_reset-declare291243_)))
                          (_user-decl291410_
                           (let ()
                             (declare (not safe))
                             (_user-declare291245_))))
                      (for-each
                       (lambda (_dep291412_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl291409_)
                         (newline)
                         (if _user-decl291410_
                             (begin (write _user-decl291410_) (newline))
                             '#!void)
                         (write (let ((__tmp296361
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep291412_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp296361)))
                         (newline))
                       _deps291406_)
                      (write (let ((__tmp296362
                                    (let ((__tmp296375
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296363
                                           (let ((__tmp296371
                                                  (let ((__tmp296372
                                                         (let ((__tmp296373
                                                                (let ((__tmp296374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296374))))
                   (declare (not safe))
                   (cons __tmp296373 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp296372)))
                                                 (__tmp296364
                                                  (let ((__tmp296365
                                                         (let ((__tmp296366
                                                                (let ((__tmp296367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296368
                                      (let ((__tmp296369
                                             (let ((__tmp296370
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp296370 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp296369))))
                                 (declare (not safe))
                                 (cons __tmp296368 '()))))
                          (declare (not safe))
                          (cons _mod-main291408_ __tmp296367))))
                   (declare (not safe))
                   (cons 'apply __tmp296366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296365 '()))))
                                             (declare (not safe))
                                             (cons __tmp296371 __tmp296364))))
                                      (declare (not safe))
                                      (cons __tmp296375 __tmp296363))))
                               (declare (not safe))
                               (cons 'define __tmp296362)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare291245_
                  (lambda ()
                    (let* ((_gsc-opts291311_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts291241_)))
                           (_gsc-prelude291313_
                            (if _gsc-opts291311_
                                (member '"-prelude" _gsc-opts291311_)
                                '#f))
                           (_gsc-prelude291315_
                            (if _gsc-prelude291313_
                                (read (open-input-string
                                       (cadr _gsc-prelude291313_)))
                                '#f)))
                      (let _lp291318_ ((_rest291320_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude291315_ '())))
                                       (_user-decls291321_ '()))
                        (let* ((_rest291322291330_ _rest291320_)
                               (_else291324291338_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls291321_))
                                      '#f
                                      (let ((__tmp296376
                                             (reverse _user-decls291321_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp296376)))))
                               (_K291326291394_
                                (lambda (_rest291341_ _expr291342_)
                                  (let* ((_expr291343291355_ _expr291342_)
                                         (_else291346291363_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp291318_
                                               _rest291341_
                                               _user-decls291321_)))))
                                    (let ((_K291351291384_
                                           (lambda (_decls291382_)
                                             (let ((__tmp296377
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls291321_
                                                              _decls291382_))))
                                               (declare (not safe))
                                               (_lp291318_
                                                _rest291341_
                                                __tmp296377))))
                                          (_K291348291369_
                                           (lambda (_exprs291367_)
                                             (let ((__tmp296378
                                                    (append _exprs291367_
                                                            _rest291341_)))
                                               (declare (not safe))
                                               (_lp291318_
                                                __tmp296378
                                                _user-decls291321_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr291343291355_))
                                          (let ((_tl291353291389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr291343291355_)))
                                                (_hd291352291387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr291343291355_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd291352291387_
                                                         'declare))
                                                (let ((_decls291392_
                                                       _tl291353291389_))
                                                  (declare (not safe))
                                                  (_K291351291384_
                                                   _decls291392_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd291352291387_
                                                             'begin))
                                                    (let ((_exprs291377_
                                                           _tl291353291389_))
                                                      (declare (not safe))
                                                      (_K291348291369_
                                                       _exprs291377_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else291346291363_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else291346291363_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest291322291330_))
                              (let ((_hd291327291397_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest291322291330_)))
                                    (_tl291328291399_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest291322291330_))))
                                (let* ((_expr291402_ _hd291327291397_)
                                       (_rest291404_ _tl291328291399_))
                                  (declare (not safe))
                                  (_K291326291394_ _rest291404_ _expr291402_)))
                              (let ()
                                (declare (not safe))
                                (_else291324291338_))))))))
                 (_compile-stub291246_
                  (lambda (_output-scm291253_ _output-bin291254_)
                    (let* ((_gerbil-home291256_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291258_
                            (path-expand '"lib" _gerbil-home291256_))
                           (_runtime291260_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp291262_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home291256_))
                           (_include-gambit-sharp291264_
                            (string-append
                             '"(include \""
                             _gambit-sharp291262_
                             '"\")"))
                           (_bin-scm291266_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291240_)))
                           (_deps291268_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291240_)))
                           (_deps291270_
                            (map gxc#find-static-module-file _deps291268_))
                           (_deps291275_
                            (let ((__tmp296379
                                   (lambda (_$obj291272_)
                                     (let ((__tmp296380
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj291272_))))
                                       (declare (not safe))
                                       (not __tmp296380)))))
                              (declare (not safe))
                              (filter __tmp296379 _deps291270_)))
                           (_deps291279_
                            (let ((__tmp296381
                                   (lambda (_f291277_)
                                     (let ((__tmp296382
                                            (member _f291277_
                                                    _runtime291260_)))
                                       (declare (not safe))
                                       (not __tmp296382)))))
                              (declare (not safe))
                              (filter __tmp296381 _deps291275_)))
                           (_output-base291281_
                            (string-append
                             (path-strip-extension _output-scm291253_)))
                           (_output-c291283_
                            (string-append _output-base291281_ '".c"))
                           (_output-o291285_
                            (string-append _output-base291281_ '".o"))
                           (_output-c_291287_
                            (string-append _output-base291281_ '"_.c"))
                           (_output-o_291289_
                            (string-append _output-base291281_ '"_.o"))
                           (_gsc-link-opts291291_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291293_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291295_
                            (let ((__tmp296383
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir291258_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp296383)))
                           (_output-ld-opts291297_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros291299_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp296385
                                       (let ((__tmp296386
                                              (let ((__tmp296387
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp291264_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp296387))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp296386))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296385))
                                (let ((__tmp296384
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp291264_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296384))))
                           (_gsc-link-opts291301_
                            (append _gsc-link-opts291291_
                                    _gsc-gx-macros291299_))
                           (_rpath291303_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291258_)))
                           (_default-ld-options291305_
                            (let ((__tmp296388
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp296388))))
                      (let ((__tmp296389
                             (lambda ()
                               (let ((__tmp296390
                                      (path-directory _output-bin291254_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296390)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296389))
                      (let ((__tmp296391
                             (lambda ()
                               (let ((__tmp296392
                                      (let ((__tmp296393
                                             (let ((__tmp296394
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm291266_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp296394
                                                       _deps291279_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp296393
                                                _runtime291260_))))
                                 (declare (not safe))
                                 (_generate-stub291244_ __tmp296392)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291253_
                         __tmp296391))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296400
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296395
                                   (let ((__tmp296396
                                          (let ((__tmp296397
                                                 (let ((__tmp296398
                                                        (let ((__tmp296399
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm291253_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp296399 _gsc-link-opts291301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_291287_
                                                         __tmp296398))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp296397))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296396))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296400
                               __tmp296395))
                            (let ((__tmp296406
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296401
                                   (let ((__tmp296402
                                          (let ((__tmp296403
                                                 (let ((__tmp296404
                                                        (let ((__tmp296405
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_291287_ '()))))
                  (declare (not safe))
                  (cons _output-c291283_ __tmp296405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296404
                                                           _gsc-static-opts291295_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296403
                                                    _gsc-cc-opts291293_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296402))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296406
                               __tmp296401))
                            (let ((__tmp296416
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296407
                                   (let ((__tmp296408
                                          (let ((__tmp296409
                                                 (let ((__tmp296410
                                                        (let ((__tmp296411
                                                               (let ((__tmp296412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296413
                                     (let ((__tmp296414
                                            (let ((__tmp296415
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options291305_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir291258_
                                                    __tmp296415))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp296414))))
                                (declare (not safe))
                                (cons _rpath291303_ __tmp296413))))
                         (declare (not safe))
                         (foldr1 cons __tmp296412 _output-ld-opts291297_))))
                  (declare (not safe))
                  (cons _output-o_291289_ __tmp296411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o291285_
                                                         __tmp296410))))
                                            (declare (not safe))
                                            (cons _output-bin291254_
                                                  __tmp296409))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296408))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296416
                               __tmp296407)))
                          '#!void)))))
          (let* ((_output-bin291248_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291240_ _opts291241_)))
                 (_output-scm291250_
                  (string-append _output-bin291248_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291246_ _output-scm291250_ _output-bin291248_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291250_))))))
    (define gxc#find-export-binding
      (lambda (_ctx291190_ _id291191_)
        (let ((_$e291237_
               (let ((__tmp296418
                      (lambda (_e291192291194_)
                        (let* ((_g291196291206_ _e291192291194_)
                               (_else291198291214_ (lambda () '#f))
                               (_K291200291218_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g291196291206_
                                 'gx#module-export::t))
                              (let* ((_e291201291221_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291196291206_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e291202291224_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291196291206_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e291203291227_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291196291206_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e291203291227_ '0))
                                    (let ((_e291204291230_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g291196291206_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g291232291234_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g291232291234_
                                                    _id291191_)))
                                           _e291204291230_)
                                          (let ()
                                            (declare (not safe))
                                            (_K291200291218_))
                                          (let ()
                                            (declare (not safe))
                                            (_else291198291214_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else291198291214_))))
                              (let ()
                                (declare (not safe))
                                (_else291198291214_))))))
                     (__tmp296417
                      (##structure-ref
                       _ctx291190_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp296418 __tmp296417))))
          (if _$e291237_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e291237_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx291182_ _id291183_)
        (let ((_$e291185_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx291182_ _id291183_))))
          (if _$e291185_
              ((lambda (_bind291188_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind291188_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id291183_)))
                 (##structure-ref _bind291188_ '1 gx#binding::t '#f))
               _$e291185_)
              (let ((__tmp296419
                     (##structure-ref
                      _ctx291182_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp296419
                 _id291183_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx291069_)
        (letrec* ((_ht291071_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template291072_
                   (lambda (_in291134_ _phi291135_)
                     (let ((_iphi291137_
                            (fx+ _phi291135_
                                 (##direct-structure-ref
                                  _in291134_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports291138_
                            (##structure-ref
                             (##direct-structure-ref
                              _in291134_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp291140_ ((_rest291142_ _imports291138_)
                                        (_r291143_ '()))
                         (let* ((_rest291144291152_ _rest291142_)
                                (_else291146291160_ (lambda () _r291143_))
                                (_K291148291170_
                                 (lambda (_rest291163_ _in291164_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in291164_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi291137_))
                                           (let ((__tmp296426
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in291164_
                                                          _r291143_))))
                                             (declare (not safe))
                                             (_lp291140_
                                              _rest291163_
                                              __tmp296426))
                                           (let ()
                                             (declare (not safe))
                                             (_lp291140_
                                              _rest291163_
                                              _r291143_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in291164_
                                              'gx#module-import::t))
                                           (let ((_iphi291166_
                                                  (fx+ _phi291135_
                                                       (##direct-structure-ref
                                                        _in291164_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi291166_))
                                                 (let ((__tmp296424
                                                        (let ((__tmp296425
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in291164_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp296425 _r291143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp291140_
                                                    _rest291163_
                                                    __tmp296424))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp291140_
                                                    _rest291163_
                                                    _r291143_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in291164_
                                                  'gx#import-set::t))
                                               (let ((_xphi291168_
                                                      (fx+ _iphi291137_
                                                           (##direct-structure-ref
                                                            _in291164_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi291168_))
                                                     (let ((__tmp296422
                                                            (let ((__tmp296423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in291164_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp296423 _r291143_))))
               (declare (not safe))
               (_lp291140_ _rest291163_ __tmp296422))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi291168_)
                                                         (let ((__tmp296420
                                                                (let ((__tmp296421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template291072_
                                  _in291164_
                                  _iphi291137_))))
                          (declare (not safe))
                          (foldl1 cons _r291143_ __tmp296421))))
                   (declare (not safe))
                   (_lp291140_ _rest291163_ __tmp296420))
                 (let ()
                   (declare (not safe))
                   (_lp291140_ _rest291163_ _r291143_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp291140_
                                                  _rest291163_
                                                  _r291143_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest291144291152_))
                               (let ((_hd291149291173_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest291144291152_)))
                                     (_tl291150291175_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest291144291152_))))
                                 (let* ((_in291178_ _hd291149291173_)
                                        (_rest291180_ _tl291150291175_))
                                   (declare (not safe))
                                   (_K291148291170_ _rest291180_ _in291178_)))
                               (let ()
                                 (declare (not safe))
                                 (_else291146291160_))))))))
                  (_find-deps291073_
                   (lambda (_rest291080_ _deps291081_)
                     (let* ((_rest291082291090_ _rest291080_)
                            (_else291084291098_ (lambda () _deps291081_))
                            (_K291086291122_
                             (lambda (_rest291101_ _hd291102_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd291102_
                                      'gx#module-context::t))
                                   (let ((_id291104_
                                          (##structure-ref
                                           _hd291102_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports291105_
                                          (##structure-ref
                                           _hd291102_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht291071_
                                            _id291104_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps291073_
                                            _rest291101_
                                            _deps291081_))
                                         (let ((_$e291107_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd291102_))))
                                           (if _$e291107_
                                               ((lambda (_pre291110_)
                                                  (let ((_xdeps291112_
                                                         (let ((__tmp296439
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre291110_ _imports291105_))))
                   (declare (not safe))
                   (_find-deps291073_ __tmp296439 _deps291081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht291071_
                                                       _id291104_
                                                       _hd291102_))
                                                    (let ((__tmp296440
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd291102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps291112_))))
              (declare (not safe))
              (_find-deps291073_ _rest291101_ __tmp296440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e291107_)
                                               (let ((_xdeps291114_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps291073_
                                                         _imports291105_
                                                         _deps291081_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht291071_
                                                    _id291104_
                                                    _hd291102_))
                                                 (let ((__tmp296438
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd291102_
                                                                _xdeps291114_))))
                                                   (declare (not safe))
                                                   (_find-deps291073_
                                                    _rest291101_
                                                    __tmp296438)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd291102_
                                          'gx#prelude-context::t))
                                       (let ((_id291116_
                                              (##structure-ref
                                               _hd291102_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht291071_
                                                _id291116_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps291073_
                                                _rest291101_
                                                _deps291081_))
                                             (let ((_xdeps291118_
                                                    (let ((__tmp296436
                                                           (##structure-ref
                                                            _hd291102_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps291073_
                                                       __tmp296436
                                                       _deps291081_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht291071_
                                                      _id291116_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps291073_
                                                      _rest291101_
                                                      _xdeps291118_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht291071_
                                                        _id291116_
                                                        _hd291102_))
                                                     (let ((__tmp296437
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd291102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps291118_))))
               (declare (not safe))
               (_find-deps291073_ _rest291101_ __tmp296437)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd291102_
                                              'gx#module-import::t))
                                           (if (let ((__tmp296435
                                                      (##direct-structure-ref
                                                       _hd291102_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp296435))
                                               (let ((__tmp296433
                                                      (let ((__tmp296434
                                                             (##direct-structure-ref
                                                              _hd291102_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296434
                                                              _rest291101_))))
                                                 (declare (not safe))
                                                 (_find-deps291073_
                                                  __tmp296433
                                                  _deps291081_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps291073_
                                                  _rest291101_
                                                  _deps291081_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd291102_
                                                  'gx#module-export::t))
                                               (let ((__tmp296431
                                                      (let ((__tmp296432
                                                             (##direct-structure-ref
                                                              _hd291102_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296432
                                                              _rest291101_))))
                                                 (declare (not safe))
                                                 (_find-deps291073_
                                                  __tmp296431
                                                  _deps291081_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd291102_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp296430
                                                              (##direct-structure-ref
                                                               _hd291102_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp296430))
                                                       (let ((__tmp296428
                                                              (let ((__tmp296429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd291102_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp296429 _rest291101_))))
                 (declare (not safe))
                 (_find-deps291073_ __tmp296428 _deps291081_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd291102_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps291120_
                           (let ()
                             (declare (not safe))
                             (_import-set-template291072_ _hd291102_ '0)))
                          (__tmp296427
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest291101_ _xdeps291120_))))
                     (declare (not safe))
                     (_find-deps291073_ __tmp296427 _deps291081_))
                   (let ()
                     (declare (not safe))
                     (_find-deps291073_ _rest291101_ _deps291081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd291102_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest291082291090_))
                           (let ((_hd291087291125_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest291082291090_)))
                                 (_tl291088291127_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest291082291090_))))
                             (let* ((_hd291130_ _hd291087291125_)
                                    (_rest291132_ _tl291088291127_))
                               (declare (not safe))
                               (_K291086291122_ _rest291132_ _hd291130_)))
                           (let ()
                             (declare (not safe))
                             (_else291084291098_)))))))
          (reverse (let ((__tmp296441
                          (let ((__tmp296442
                                 (let ((_$e291075_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx291069_))))
                                   (if _$e291075_
                                       ((lambda (_pre291078_)
                                          (let ((__tmp296443
                                                 (##structure-ref
                                                  _ctx291069_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre291078_ __tmp296443)))
                                        _$e291075_)
                                       (##structure-ref
                                        _ctx291069_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps291073_ __tmp296442 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp296441))))))
    (define gxc#find-static-module-file
      (lambda (_ctx291000_)
        (let* ((_context-id291002_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx291000_
                       'gx#module-context::t))
                    (##structure-ref _ctx291000_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx291000_)))
               (_scm291004_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id291002_))
                 '".scm"))
               (_dirs291006_ (gx#current-expander-module-library-path))
               (_dirs291012_
                (let ((_user-libpath291008_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath291008_
                      (let ((_user-libpath291010_
                             (path-expand '"lib" _user-libpath291008_)))
                        (if (member _user-libpath291010_ _dirs291006_)
                            _dirs291006_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath291010_ _dirs291006_))))
                      _dirs291006_)))
               (_dirs291021_
                (let ((_$e291014_ (gxc#current-compile-output-dir)))
                  (if _$e291014_
                      ((lambda (_g291016291018_)
                         (let ()
                           (declare (not safe))
                           (cons _g291016291018_ _dirs291012_)))
                       _$e291014_)
                      _dirs291012_)))
               (_dirs291027_
                (map (lambda (_g291022291024_)
                       (path-expand '"static" _g291022291024_))
                     _dirs291021_)))
          (let _lp291030_ ((_rest291032_ _dirs291027_))
            (let* ((_rest291033291041_ _rest291032_)
                   (_else291035291049_
                    (lambda ()
                      (let ((__tmp296444
                             (##structure-ref
                              _ctx291000_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp296444
                         _scm291004_))))
                   (_K291037291057_
                    (lambda (_rest291052_ _dir291053_)
                      (let ((_path291055_
                             (path-expand _scm291004_ _dir291053_)))
                        (if (file-exists? _path291055_)
                            _path291055_
                            (let ()
                              (declare (not safe))
                              (_lp291030_ _rest291052_)))))))
              (if (let () (declare (not safe)) (##pair? _rest291033291041_))
                  (let ((_hd291038291060_
                         (let ()
                           (declare (not safe))
                           (##car _rest291033291041_)))
                        (_tl291039291062_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291033291041_))))
                    (let* ((_dir291065_ _hd291038291060_)
                           (_rest291067_ _tl291039291062_))
                      (declare (not safe))
                      (_K291037291057_ _rest291067_ _dir291065_)))
                  (let () (declare (not safe)) (_else291035291049_))))))))
    (define gxc#file-empty?
      (lambda (_path290998_)
        (let ((__tmp296445 (file-info-size (file-info _path290998_ '#t))))
          (declare (not safe))
          (zero? __tmp296445))))
    (define gxc#compile-top-module
      (lambda (_ctx290987_)
        (let ((__tmp296449
               (lambda ()
                 (let ((__tmp296450
                        (##structure-ref
                         _ctx290987_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp296450))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp296451
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx290987_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp296451))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx290987_))
                 (if (let ((__tmp296454
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx290987_))))
                       (declare (not safe))
                       (null? __tmp296454))
                     (let* ((_thr1290992_
                             (let ((__tmp296452
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx290987_)))))
                               (declare (not safe))
                               (spawn __tmp296452)))
                            (_thr2290995_
                             (let ((__tmp296453
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx290987_)))))
                               (declare (not safe))
                               (spawn __tmp296453))))
                       (let () (declare (not safe)) (gxc#join! _thr1290992_))
                       (let () (declare (not safe)) (gxc#join! _thr2290995_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx290987_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx290987_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx290987_))
                     '#!void)))
              (__tmp296448
               (let ((__obj296253
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj296253)
                 __obj296253))
              (__tmp296447
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp296446 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp296449
           gx#current-expander-context
           _ctx290987_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp296448
           gxc#current-compile-runtime-sections
           __tmp296447
           gxc#current-compile-runtime-names
           __tmp296446))))
    (define gxc#collect-bindings
      (lambda (_ctx290985_)
        (let ((__tmp296455
               (##structure-ref _ctx290985_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp296455))))
    (define gxc#compile-runtime-code
      (lambda (_ctx290931_)
        (letrec ((_compile1290933_
                  (lambda (_ctx290974_)
                    (let* ((_code290976_
                            (##structure-ref
                             _ctx290974_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt290980_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code290976_))
                                (let ((_idstr290978_
                                       (let ((__tmp296456
                                              (##structure-ref
                                               _ctx290974_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp296456))))
                                  (string-append _idstr290978_ '"__0"))
                                '#f)))
                      (if _rt290980_
                          (begin
                            (let ((__tmp296457
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp296457 _ctx290974_ _rt290980_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code290935_
                               _ctx290974_
                               _code290976_)))
                          (let ((_path290983_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx290974_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path290983_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code290936_
                         _ctx290974_
                         _code290976_
                         _rt290980_)))))
                 (_context-timestamp290934_
                  (lambda (_ctx290972_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx290972_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code290935_
                  (lambda (_ctx290954_ _code290955_)
                    (let* ((_lifts290957_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code290960_
                            (let ((__tmp296460
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code290955_))))
                                  (__tmp296459
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp296458
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296460
                               gx#current-expander-context
                               _ctx290954_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts290957_
                               gxc#current-compile-marks
                               __tmp296459
                               gxc#current-compile-identifiers
                               __tmp296458)))
                           (_runtime-code290962_
                            (if (let ((__tmp296464 (unbox _lifts290957_)))
                                  (declare (not safe))
                                  (null? __tmp296464))
                                _runtime-code290960_
                                (let ((__tmp296461
                                       (let ((__tmp296463
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code290960_
                                                      '())))
                                             (__tmp296462
                                              (reverse (unbox _lifts290957_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp296463
                                                 __tmp296462))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296461))))
                           (_runtime-code290964_
                            (let ((__tmp296465
                                   (let ((__tmp296467
                                          (let ((__tmp296468
                                                 (let ((__tmp296471
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp290934_
                                                           _ctx290954_)))
                                                       (__tmp296469
                                                        (let ((__tmp296470
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp296470
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp296471
                                                         __tmp296469))))
                                            (declare (not safe))
                                            (cons 'define __tmp296468)))
                                         (__tmp296466
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code290962_ '()))))
                                     (declare (not safe))
                                     (cons __tmp296467 __tmp296466))))
                              (declare (not safe))
                              (cons 'begin __tmp296465)))
                           (_scm0290966_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290954_
                               '0
                               '".scm"))))
                      (let ((_scms290969_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx290954_))))
                        (let ((__tmp296472
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0290966_
                                    _runtime-code290964_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp296472
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms290969_)
                            (delete-file _scms290969_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0290966_
                           '" => "
                           _scms290969_))
                        (copy-file _scm0290966_ _scms290969_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0290966_))))))
                 (_generate-loader-code290936_
                  (lambda (_ctx290943_ _code290944_ _rt290945_)
                    (let* ((_loader-code290948_
                            (let ((__tmp296473
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code290944_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296473
                               gx#current-expander-context
                               _ctx290943_)))
                           (_loader-code290950_
                            (if _rt290945_
                                (let ((__tmp296474
                                       (let ((__tmp296475
                                              (let ((__tmp296476
                                                     (let ((__tmp296477
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt290945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp296477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296476 '()))))
                                         (declare (not safe))
                                         (cons _loader-code290948_
                                               __tmp296475))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296474))
                                _loader-code290948_)))
                      (let ((__tmp296478
                             (lambda ()
                               (let ((__tmp296479
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290943_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp296479
                                  _loader-code290950_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp296478
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules290938_
                 (let ((__tmp296480
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx290931_))))
                   (declare (not safe))
                   (cons _ctx290931_ __tmp296480))))
            (for-each
             (lambda (_ctx290940_)
               (let ((__tmp296481
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1290933_ _ctx290940_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp296481
                  gxc#current-compile-decls
                  '())))
             _all-modules290938_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx290828_)
        (letrec ((_compile-ssi290830_
                  (lambda (_code290901_)
                    (let* ((_path290903_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290828_
                               '#f
                               '".ssi")))
                           (_prelude290914_
                            (let* ((_super290905_
                                    (##structure-ref
                                     _ctx290828_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e290907_
                                    (##structure-ref
                                     _super290905_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e290907_
                                  ((lambda (_g290909290911_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g290909290911_)))
                                   _$e290907_)
                                  ':<root>)))
                           (_ns290916_
                            (##structure-ref
                             _ctx290828_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr290918_
                            (symbol->string
                             (##structure-ref
                              _ctx290828_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg290925_
                            (let ((_$e290920_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr290918_ '#\/))))
                              (if _$e290920_
                                  ((lambda (_x290923_)
                                     (string->symbol
                                      (substring _idstr290918_ '0 _x290923_)))
                                   _$e290920_)
                                  '#f)))
                           (_rt290927_
                            (let ((__tmp296482
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp296482 _ctx290828_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path290903_))
                      (let ((__tmp296483
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude290914_))
                               (if _pkg290925_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg290925_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns290916_))
                               (newline)
                               (pretty-print _code290901_)
                               (if _rt290927_
                                   (pretty-print
                                    (let ((__tmp296484
                                           (let ((__tmp296488
                                                  (let ((__tmp296489
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp296489)))
                                                 (__tmp296485
                                                  (let ((__tmp296486
                                                         (let ((__tmp296487
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt290927_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp296487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296486 '()))))
                                             (declare (not safe))
                                             (cons __tmp296488 __tmp296485))))
                                      (declare (not safe))
                                      (cons '%#call __tmp296484)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path290903_
                         __tmp296483)))))
                 (_compile-phi290831_
                  (lambda (_part290841_)
                    (let* ((_part290842290855_ _part290841_)
                           (_E290844290859_
                            (lambda ()
                              (error '"No clause matching"
                                     _part290842290855_)))
                           (_K290845290870_
                            (lambda (_code290862_
                                     _n290863_
                                     _phi290864_
                                     _phi-ctx290865_)
                              (let* ((_code290868_
                                      (let ((__tmp296490
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code290862_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp296490
                                         gx#current-expander-context
                                         _phi-ctx290865_
                                         gx#current-expander-phi
                                         _phi290864_)))
                                     (__tmp296491
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290828_
                                         _n290863_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp296491
                                 _code290868_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part290842290855_))
                          (let ((_hd290846290873_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part290842290855_)))
                                (_tl290847290875_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part290842290855_))))
                            (let ((_phi-ctx290878_ _hd290846290873_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl290847290875_))
                                  (let ((_hd290848290880_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl290847290875_)))
                                        (_tl290849290882_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl290847290875_))))
                                    (let ((_phi290885_ _hd290848290880_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl290849290882_))
                                          (let ((_hd290850290887_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl290849290882_)))
                                                (_tl290851290889_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl290849290882_))))
                                            (let ((_n290892_ _hd290850290887_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl290851290889_))
                                                  (let ((_hd290852290894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl290851290889_)))
                                                        (_tl290853290896_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl290851290889_))))
                                                    (let ((_code290899_
                                                           _hd290852290894_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl290853290896_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K290845290870_
                                                             _code290899_
                                                             _n290892_
                                                             _phi290885_
                                                             _phi-ctx290878_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E290844290859_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E290844290859_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E290844290859_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E290844290859_)))))
                          (let () (declare (not safe)) (_E290844290859_)))))))
          (let ((_g296492_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx290828_))))
            (begin
              (let ((_g296493_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g296492_)
                           (##vector-length _g296492_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g296493_ 2)))
                    (error "Context expects 2 values" _g296493_)))
              (let ((_ssi-code290833_
                     (let () (declare (not safe)) (##vector-ref _g296492_ 0)))
                    (_phi-code290834_
                     (let () (declare (not safe)) (##vector-ref _g296492_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi290830_ _ssi-code290833_))
                  (let ((_threads290839_
                         (map (lambda (_code290836_)
                                (let ((__tmp296494
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi290831_
                                            _code290836_)))))
                                  (declare (not safe))
                                  (spawn __tmp296494)))
                              _phi-code290834_)))
                    (for-each gxc#join! _threads290839_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx290811_)
        (let* ((_path290813_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx290811_ '#f '".ssxi.ss")))
               (_code290815_
                (let ((__tmp296495
                       (##structure-ref
                        _ctx290811_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp296495)))
               (_idstr290817_
                (symbol->string
                 (##structure-ref _ctx290811_ '1 gx#expander-context::t '#f)))
               (_pkg290824_
                (let ((_$e290819_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr290817_ '#\/))))
                  (if _$e290819_
                      ((lambda (_x290822_)
                         (string->symbol
                          (substring _idstr290817_ '0 _x290822_)))
                       _$e290819_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path290813_))
          (let ((__tmp296496
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg290824_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg290824_))
                       '#!void)
                   (newline)
                   (pretty-print _code290815_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path290813_ __tmp296496)))))
    (define gxc#generate-meta-code
      (lambda (_ctx290804_)
        (let* ((_state290806_
                (let ((__obj296254
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj296254 _ctx290804_)
                  __obj296254))
               (_ssi-code290808_
                (let ((__tmp296497
                       (##structure-ref
                        _ctx290804_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp296497 _state290806_))))
          (values _ssi-code290808_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state290806_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx290797_)
        (let ((_lifts290799_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296500
                 (lambda ()
                   (let ((_code290802_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx290797_))))
                     (if (let ((__tmp296504 (unbox _lifts290799_)))
                           (declare (not safe))
                           (null? __tmp296504))
                         _code290802_
                         (let ((__tmp296501
                                (let ((__tmp296503
                                       (let ()
                                         (declare (not safe))
                                         (cons _code290802_ '())))
                                      (__tmp296502
                                       (reverse (unbox _lifts290799_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp296503 __tmp296502))))
                           (declare (not safe))
                           (cons 'begin __tmp296501))))))
                (__tmp296499
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp296498
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp296500
             gxc#current-compile-lift
             _lifts290799_
             gxc#current-compile-marks
             __tmp296499
             gxc#current-compile-identifiers
             __tmp296498)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx290793_)
        (let ((_modules290795_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296505
                 (##structure-ref _ctx290793_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp296505 _modules290795_))
          (reverse (unbox _modules290795_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path290776_ _code290777_ _phi?290778_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path290776_))
        (let ((__tmp296506
               (lambda ()
                 (pretty-print
                  (let ((__tmp296507
                         (let ((__tmp296514
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp296508
                                (let ((__tmp296513
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp296509
                                       (let ((__tmp296512
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp296510
                                              (let ((__tmp296511
                                                     (if _phi?290778_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp296511))))
                                         (declare (not safe))
                                         (cons __tmp296512 __tmp296510))))
                                  (declare (not safe))
                                  (cons __tmp296513 __tmp296509))))
                           (declare (not safe))
                           (cons __tmp296514 __tmp296508))))
                    (declare (not safe))
                    (cons 'declare __tmp296507)))
                 (pretty-print _code290777_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path290776_ __tmp296506))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path290776_ _phi?290778_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path290776_))))
    (define gxc#compile-scm-file__0
      (lambda (_path290784_ _code290785_)
        (let ((_phi?290787_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path290784_ _code290785_ _phi?290787_))))
    (define gxc#compile-scm-file
      (lambda _g296516_
        (let ((_g296515_ (let () (declare (not safe)) (##length _g296516_))))
          (cond ((let () (declare (not safe)) (##fx= _g296515_ 2))
                 (apply (lambda (_path290784_ _code290785_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path290784_
                             _code290785_)))
                        _g296516_))
                ((let () (declare (not safe)) (##fx= _g296515_ 3))
                 (apply (lambda (_path290789_ _code290790_ _phi?290791_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path290789_
                             _code290790_
                             _phi?290791_)))
                        _g296516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g296516_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?290677_)
        (let _lp290679_ ((_rest290681_ (gxc#current-compile-gsc-options))
                         (_opts290682_ '()))
          (let* ((_rest290683290703_ _rest290681_)
                 (_else290687290711_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290677_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296517
                               (let ((__tmp296518 (reverse _opts290682_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp296518))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp296517))
                        (reverse _opts290682_)))))
            (let ((_K290697290754_
                   (lambda (_rest290752_)
                     (let ()
                       (declare (not safe))
                       (_lp290679_ _rest290752_ _opts290682_))))
                  (_K290692290736_
                   (lambda (_rest290734_)
                     (let ()
                       (declare (not safe))
                       (_lp290679_ _rest290734_ _opts290682_))))
                  (_K290689290718_
                   (lambda (_rest290715_ _opt290716_)
                     (let ((__tmp296519
                            (let ()
                              (declare (not safe))
                              (cons _opt290716_ _opts290682_))))
                       (declare (not safe))
                       (_lp290679_ _rest290715_ __tmp296519)))))
              (if (let () (declare (not safe)) (##pair? _rest290683290703_))
                  (let ((_tl290699290759_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290683290703_)))
                        (_hd290698290757_
                         (let ()
                           (declare (not safe))
                           (##car _rest290683290703_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290698290757_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290699290759_))
                            (let* ((_tl290701290762_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290699290759_)))
                                   (_rest290765_ _tl290701290762_))
                              (declare (not safe))
                              (_K290697290754_ _rest290765_))
                            (let ((_opt290726_ _hd290698290757_)
                                  (_rest290728_ _tl290699290759_))
                              (let ()
                                (declare (not safe))
                                (_K290689290718_ _rest290728_ _opt290726_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290698290757_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290699290759_))
                                (let* ((_tl290696290744_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290699290759_)))
                                       (_rest290747_ _tl290696290744_))
                                  (declare (not safe))
                                  (_K290692290736_ _rest290747_))
                                (let ((_opt290726_ _hd290698290757_)
                                      (_rest290728_ _tl290699290759_))
                                  (let ()
                                    (declare (not safe))
                                    (_K290689290718_
                                     _rest290728_
                                     _opt290726_))))
                            (let ((_opt290726_ _hd290698290757_)
                                  (_rest290728_ _tl290699290759_))
                              (let ()
                                (declare (not safe))
                                (_K290689290718_ _rest290728_ _opt290726_))))))
                  (let () (declare (not safe)) (_else290687290711_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?290771_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?290771_))))
    (define gxc#gsc-link-options
      (lambda _g296521_
        (let ((_g296520_ (let () (declare (not safe)) (##length _g296521_))))
          (cond ((let () (declare (not safe)) (##fx= _g296520_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g296521_))
                ((let () (declare (not safe)) (##fx= _g296520_ 1))
                 (apply (lambda (_phi?290773_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?290773_)))
                        _g296521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g296521_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?290578_)
        (let _lp290580_ ((_rest290582_ (gxc#current-compile-gsc-options))
                         (_opts290583_ '()))
          (let* ((_rest290584290604_ _rest290582_)
                 (_else290588290612_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290578_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296522
                               (let ((__tmp296523 (reverse _opts290583_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp296523))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp296522))
                        (reverse _opts290583_)))))
            (let ((_K290598290651_
                   (lambda (_rest290648_ _opt290649_)
                     (let ((__tmp296524
                            (let ((__tmp296525
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts290583_))))
                              (declare (not safe))
                              (cons _opt290649_ __tmp296525))))
                       (declare (not safe))
                       (_lp290580_ _rest290648_ __tmp296524))))
                  (_K290593290632_
                   (lambda (_rest290630_)
                     (let ()
                       (declare (not safe))
                       (_lp290580_ _rest290630_ _opts290583_))))
                  (_K290590290618_
                   (lambda (_rest290616_)
                     (let ()
                       (declare (not safe))
                       (_lp290580_ _rest290616_ _opts290583_)))))
              (if (let () (declare (not safe)) (##pair? _rest290584290604_))
                  (let ((_tl290600290656_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290584290604_)))
                        (_hd290599290654_
                         (let ()
                           (declare (not safe))
                           (##car _rest290584290604_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290599290654_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290600290656_))
                            (let ((_tl290602290661_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl290600290656_)))
                                  (_hd290601290659_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl290600290656_))))
                              (let ((_opt290664_ _hd290601290659_)
                                    (_rest290666_ _tl290602290661_))
                                (let ()
                                  (declare (not safe))
                                  (_K290598290651_ _rest290666_ _opt290664_))))
                            (let ((_rest290624_ _tl290600290656_))
                              (declare (not safe))
                              (_K290590290618_ _rest290624_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290599290654_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290600290656_))
                                (let* ((_tl290597290640_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290600290656_)))
                                       (_rest290643_ _tl290597290640_))
                                  (declare (not safe))
                                  (_K290593290632_ _rest290643_))
                                (let ((_rest290624_ _tl290600290656_))
                                  (declare (not safe))
                                  (_K290590290618_ _rest290624_)))
                            (let ((_rest290624_ _tl290600290656_))
                              (declare (not safe))
                              (_K290590290618_ _rest290624_)))))
                  (let () (declare (not safe)) (_else290588290612_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?290672_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?290672_))))
    (define gxc#gsc-cc-options
      (lambda _g296527_
        (let ((_g296526_ (let () (declare (not safe)) (##length _g296527_))))
          (cond ((let () (declare (not safe)) (##fx= _g296526_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g296527_))
                ((let () (declare (not safe)) (##fx= _g296526_ 1))
                 (apply (lambda (_phi?290674_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?290674_)))
                        _g296527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g296527_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir290573_)
        (let* ((_user-staticdir290575_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp296528
                (let ((__tmp296529
                       (string-append
                        '"-I "
                        _staticdir290573_
                        '" -I "
                        _user-staticdir290575_)))
                  (declare (not safe))
                  (cons __tmp296529 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp296528))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp290485_ ((_rest290487_ (gxc#current-compile-gsc-options))
                         (_opts290488_ '()))
          (let* ((_rest290489290509_ _rest290487_)
                 (_else290493290517_ (lambda () _opts290488_)))
            (let ((_K290503290560_
                   (lambda (_rest290558_)
                     (let ()
                       (declare (not safe))
                       (_lp290485_ _rest290558_ _opts290488_))))
                  (_K290498290538_
                   (lambda (_rest290535_ _opt290536_)
                     (let ((__tmp296530
                            (append _opts290488_
                                    (let ((__tmp296531
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt290536_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp296531)))))
                       (declare (not safe))
                       (_lp290485_ _rest290535_ __tmp296530))))
                  (_K290495290523_
                   (lambda (_rest290521_)
                     (let ()
                       (declare (not safe))
                       (_lp290485_ _rest290521_ _opts290488_)))))
              (if (let () (declare (not safe)) (##pair? _rest290489290509_))
                  (let ((_tl290505290565_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290489290509_)))
                        (_hd290504290563_
                         (let ()
                           (declare (not safe))
                           (##car _rest290489290509_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290504290563_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290505290565_))
                            (let* ((_tl290507290568_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290505290565_)))
                                   (_rest290571_ _tl290507290568_))
                              (declare (not safe))
                              (_K290503290560_ _rest290571_))
                            (let ((_rest290529_ _tl290505290565_))
                              (declare (not safe))
                              (_K290495290523_ _rest290529_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290504290563_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290505290565_))
                                (let ((_tl290502290548_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl290505290565_)))
                                      (_hd290501290546_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl290505290565_))))
                                  (let ((_opt290551_ _hd290501290546_)
                                        (_rest290553_ _tl290502290548_))
                                    (let ()
                                      (declare (not safe))
                                      (_K290498290538_
                                       _rest290553_
                                       _opt290551_))))
                                (let ((_rest290529_ _tl290505290565_))
                                  (declare (not safe))
                                  (_K290495290523_ _rest290529_)))
                            (let ((_rest290529_ _tl290505290565_))
                              (declare (not safe))
                              (_K290495290523_ _rest290529_)))))
                  (let () (declare (not safe)) (_else290493290517_))))))))
    (define gxc#not-string-empty?
      (lambda (_str290482_)
        (let ((__tmp296532
               (let () (declare (not safe)) (string-empty? _str290482_))))
          (declare (not safe))
          (not __tmp296532))))
    (define gxc#gsc-compile-file
      (lambda (_path290450_ _phi?290451_)
        (letrec ((_gsc-link-path290453_
                  (lambda (_base-path290474_)
                    (let _lp290476_ ((_n290478_ '1))
                      (let ((_path290480_
                             (string-append
                              _base-path290474_
                              '".o"
                              (number->string _n290478_))))
                        (if (file-exists? _path290480_)
                            (let ((__tmp296533
                                   (let ()
                                     (declare (not safe))
                                     (+ _n290478_ '1))))
                              (declare (not safe))
                              (_lp290476_ __tmp296533))
                            _path290480_))))))
          (let* ((_base-path290455_ (path-strip-extension _path290450_))
                 (_path-c290457_ (string-append _base-path290455_ '".c"))
                 (_path-o290459_ (string-append _base-path290455_ '".o"))
                 (_link-path290461_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path290453_ _base-path290455_)))
                 (_link-path-c290463_ (string-append _link-path290461_ '".c"))
                 (_link-path-o290465_ (string-append _link-path290461_ '".o"))
                 (_gsc-link-opts290467_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?290451_)))
                 (_gsc-cc-opts290469_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?290451_)))
                 (_gcc-ld-opts290471_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp296540 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296534
                   (let ((__tmp296535
                          (let ((__tmp296536
                                 (let ((__tmp296537
                                        (let ((__tmp296538
                                               (let ((__tmp296539
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path290450_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp296539
                                                         _gsc-link-opts290467_))))
                                          (declare (not safe))
                                          (cons _link-path-c290463_
                                                __tmp296538))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp296537))))
                            (declare (not safe))
                            (cons '"-flat" __tmp296536))))
                     (declare (not safe))
                     (cons '"-link" __tmp296535))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296540 __tmp296534))
            (let ((__tmp296547 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296541
                   (let ((__tmp296542
                          (let ((__tmp296543
                                 (let ((__tmp296544
                                        (let ((__tmp296545
                                               (let ((__tmp296546
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c290463_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c290457_
                                                       __tmp296546))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp296545
                                                  _gsc-cc-opts290469_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp296544))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp296543))))
                     (declare (not safe))
                     (cons '"-obj" __tmp296542))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296547 __tmp296541))
            (let ((__tmp296553 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp296548
                   (let ((__tmp296549
                          (let ((__tmp296550
                                 (let ((__tmp296551
                                        (let ((__tmp296552
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o290465_
                                                       _gcc-ld-opts290471_))))
                                          (declare (not safe))
                                          (cons _path-o290459_ __tmp296552))))
                                   (declare (not safe))
                                   (cons _link-path290461_ __tmp296551))))
                            (declare (not safe))
                            (cons '"-o" __tmp296550))))
                     (declare (not safe))
                     (cons '"-shared" __tmp296549))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp296553
               __tmp296548))
            (for-each
             delete-file
             (let ((__tmp296554
                    (let ((__tmp296555
                           (let ((__tmp296556
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o290465_ '()))))
                             (declare (not safe))
                             (cons _link-path-c290463_ __tmp296556))))
                      (declare (not safe))
                      (cons _path-o290459_ __tmp296555))))
               (declare (not safe))
               (cons _path-c290457_ __tmp296554)))))))
    (define gxc#compile-output-file
      (lambda (_ctx290421_ _n290422_ _ext290423_)
        (letrec ((_module-relative-path290425_
                  (lambda (_ctx290448_)
                    (path-strip-directory
                     (let ((__tmp296557
                            (##structure-ref
                             _ctx290448_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp296557)))))
                 (_module-source-directory290426_
                  (lambda (_ctx290444_)
                    (path-directory
                     (let ((_mpath290446_
                            (##structure-ref
                             _ctx290444_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath290446_))
                           _mpath290446_
                           (let ()
                             (declare (not safe))
                             (last _mpath290446_)))))))
                 (_section-string290427_
                  (lambda (_n290442_)
                    (if (let () (declare (not safe)) (number? _n290442_))
                        (number->string _n290442_)
                        (if (let () (declare (not safe)) (symbol? _n290442_))
                            (symbol->string _n290442_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n290442_))
                                _n290442_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n290442_)))))))
                 (_file-name290428_
                  (lambda (_path290440_)
                    (if _n290422_
                        (string-append
                         _path290440_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string290427_ _n290422_))
                         _ext290423_)
                        (string-append _path290440_ _ext290423_))))
                 (_file-path290429_
                  (lambda ()
                    (let ((_$e290435_ (gxc#current-compile-output-dir)))
                      (if _$e290435_
                          ((lambda (_outdir290438_)
                             (path-expand
                              (let ((__tmp296559
                                     (let ((__tmp296560
                                            (##structure-ref
                                             _ctx290421_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp296560))))
                                (declare (not safe))
                                (_file-name290428_ __tmp296559))
                              _outdir290438_))
                           _$e290435_)
                          (path-expand
                           (let ((__tmp296558
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path290425_
                                     _ctx290421_))))
                             (declare (not safe))
                             (_file-name290428_ __tmp296558))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory290426_
                              _ctx290421_))))))))
          (let ((_path290431_
                 (let () (declare (not safe)) (_file-path290429_))))
            (let ((__tmp296561
                   (lambda ()
                     (let ((__tmp296562 (path-directory _path290431_)))
                       (declare (not safe))
                       (create-directory* __tmp296562)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296561))
            _path290431_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx290403_)
        (letrec ((_file-name290405_
                  (lambda (_id290419_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id290419_))
                     '".scm")))
                 (_file-path290406_
                  (lambda ()
                    (let* ((_file290412_
                            (let ((__tmp296563
                                   (##structure-ref
                                    _ctx290403_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name290405_ __tmp296563)))
                           (_$e290414_ (gxc#current-compile-output-dir)))
                      (if _$e290414_
                          ((lambda (_outdir290417_)
                             (path-expand
                              _file290412_
                              (path-expand '"static" _outdir290417_)))
                           _$e290414_)
                          (path-expand _file290412_ '"static"))))))
          (let ((_path290408_
                 (let () (declare (not safe)) (_file-path290406_))))
            (let ((__tmp296564
                   (lambda ()
                     (let ((__tmp296565 (path-directory _path290408_)))
                       (declare (not safe))
                       (create-directory* __tmp296565)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296564))
            _path290408_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx290397_ _opts290398_)
        (let ((_$e290400_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts290398_))))
          (if _$e290400_
              (values _$e290400_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx290397_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr290390_)
        (if (let () (declare (not safe)) (string? _idstr290390_))
            (let* ((_str290392_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr290390_)))
                   (_strs290394_
                    (let ()
                      (declare (not safe))
                      (string-split _str290392_ '#\/))))
              (let () (declare (not safe)) (string-join _strs290394_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr290390_))
                (let ((__tmp296566 (symbol->string _idstr290390_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp296566))
                (error '"Bad module id" _idstr290390_)))))
    (define gxc#invoke__%
      (lambda (_g296567_
               _stdout-redirection290354290358_
               _stderr-redirection290355290360_
               _program290362_
               _args290363_)
        (let* ((_stdout-redirection290365_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection290354290358_ absent-value))
                    '#f
                    _stdout-redirection290354290358_))
               (_stderr-redirection290367_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection290355290360_ absent-value))
                    '#f
                    _stderr-redirection290355290360_)))
          (let ((__tmp296568
                 (let ()
                   (declare (not safe))
                   (cons _program290362_ _args290363_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp296568))
          (let ((_proc290369_
                 (open-process
                  (let ((__tmp296569
                         (let ((__tmp296570
                                (let ((__tmp296571
                                       (let ((__tmp296572
                                              (let ((__tmp296573
                                                     (let ((__tmp296574
                                                            (let ((__tmp296575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection290367_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp296575))))
               (declare (not safe))
               (cons _stdout-redirection290365_ __tmp296574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp296573))))
                                         (declare (not safe))
                                         (cons _args290363_ __tmp296572))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp296571))))
                           (declare (not safe))
                           (cons _program290362_ __tmp296570))))
                    (declare (not safe))
                    (cons 'path: __tmp296569)))))
            (if (or _stdout-redirection290365_ _stderr-redirection290367_)
                (read-line _proc290369_ '#f)
                '#!void)
            (let ((_status290374_ (process-status _proc290369_)))
              (close-port _proc290369_)
              (if (let () (declare (not safe)) (zero? _status290374_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program290362_))))))))
    (define gxc#invoke__@
      (lambda (_keys290353290379_ . _args290381_)
        (apply gxc#invoke__%
               _keys290353290379_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290353290379_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290353290379_
                  'stderr-redirection:
                  absent-value))
               _args290381_)))
    (define gxc#invoke
      (lambda _args290356290387_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args290356290387_)))
    (define gxc#join!
      (lambda (_thread290347_)
        (let ((__tmp296577
               (lambda (_exn290349_)
                 (if (uncaught-exception? _exn290349_)
                     (raise (uncaught-exception-reason _exn290349_))
                     (raise _exn290349_))))
              (__tmp296576 (lambda () (thread-join! _thread290347_))))
          (declare (not safe))
          (with-catch __tmp296577 __tmp296576))))))
