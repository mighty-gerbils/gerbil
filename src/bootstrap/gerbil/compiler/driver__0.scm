(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707674937)
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
      (lambda (_path291583_ _fun291584_)
        (with-output-to-file
         (let ((__tmp296245
                (let ()
                  (declare (not safe))
                  (cons _path291583_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp296245))
         _fun291584_)))
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
      (lambda (_gerbil-libdir291578_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir291578_)))
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
      (lambda (_dir291576_) (delete-file-or-directory _dir291576_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath291550_ _opts291551_)
        (if (let () (declare (not safe)) (string? _srcpath291550_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291550_)))
        (let ((_outdir291553_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291551_)))
              (_invoke-gsc?291554_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291551_)))
              (_gsc-options291555_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291551_)))
              (_keep-scm?291556_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291551_)))
              (_verbosity291557_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291551_)))
              (_optimize291558_
               (let () (declare (not safe)) (pgetq 'optimize: _opts291551_)))
              (_debug291559_
               (let () (declare (not safe)) (pgetq 'debug: _opts291551_)))
              (_gen-ssxi291560_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts291551_))))
          (if _outdir291553_
              (let ((__tmp296246
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291553_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296246))
              '#!void)
          (if _optimize291558_
              (let ((__tmp296247
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296247))
              '#!void)
          (let ((__tmp296251
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath291550_))
                   (let ((__tmp296252
                          (let ((__tmp296253
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291550_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296253))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp296252))))
                (__tmp296250
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296248
                 (let ((__tmp296249
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291550_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp296249))))
            (declare (not safe))
            (call-with-parameters
             __tmp296251
             gxc#current-compile-output-dir
             _outdir291553_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291554_
             gxc#current-compile-gsc-options
             _gsc-options291555_
             gxc#current-compile-keep-scm
             _keep-scm?291556_
             gxc#current-compile-verbose
             _verbosity291557_
             gxc#current-compile-optimize
             _optimize291558_
             gxc#current-compile-debug
             _debug291559_
             gxc#current-compile-generate-ssxi
             _gen-ssxi291560_
             gxc#current-compile-timestamp
             __tmp296250
             gxc#current-compile-context
             __tmp296248
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath291569_)
        (let ((_opts291571_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath291569_ _opts291571_))))
    (define gxc#compile-module
      (lambda _g296255_
        (let ((_g296254_ (let () (declare (not safe)) (##length _g296255_))))
          (cond ((let () (declare (not safe)) (##fx= _g296254_ 1))
                 (apply (lambda (_srcpath291569_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath291569_)))
                        _g296255_))
                ((let () (declare (not safe)) (##fx= _g296254_ 2))
                 (apply (lambda (_srcpath291573_ _opts291574_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath291573_
                             _opts291574_)))
                        _g296255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g296255_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath291526_ _opts291527_)
        (if (let () (declare (not safe)) (string? _srcpath291526_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291526_)))
        (let ((_outdir291529_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291527_)))
              (_invoke-gsc?291530_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291527_)))
              (_gsc-options291531_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291527_)))
              (_keep-scm?291532_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291527_)))
              (_verbosity291533_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291527_)))
              (_debug291534_
               (let () (declare (not safe)) (pgetq 'debug: _opts291527_))))
          (if _outdir291529_
              (let ((__tmp296256
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291529_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296256))
              '#!void)
          (let ((__tmp296260
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath291526_))
                   (let ((__tmp296261
                          (let ((__tmp296262
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291526_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296262))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp296261
                      _opts291527_))))
                (__tmp296259
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296257
                 (let ((__tmp296258
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291526_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp296258))))
            (declare (not safe))
            (call-with-parameters
             __tmp296260
             gxc#current-compile-output-dir
             _outdir291529_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291530_
             gxc#current-compile-gsc-options
             _gsc-options291531_
             gxc#current-compile-keep-scm
             _keep-scm?291532_
             gxc#current-compile-verbose
             _verbosity291533_
             gxc#current-compile-debug
             _debug291534_
             gxc#current-compile-timestamp
             __tmp296259
             gxc#current-compile-context
             __tmp296257
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath291542_)
        (let ((_opts291544_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath291542_ _opts291544_))))
    (define gxc#compile-exe
      (lambda _g296264_
        (let ((_g296263_ (let () (declare (not safe)) (##length _g296264_))))
          (cond ((let () (declare (not safe)) (##fx= _g296263_ 1))
                 (apply (lambda (_srcpath291542_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath291542_)))
                        _g296264_))
                ((let () (declare (not safe)) (##fx= _g296263_ 2))
                 (apply (lambda (_srcpath291546_ _opts291547_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath291546_ _opts291547_)))
                        _g296264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g296264_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx291522_ _opts291523_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts291523_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx291522_
               _opts291523_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx291522_
               _opts291523_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx291405_ _opts291406_)
        (letrec ((_generate-stub291408_
                  (lambda (_builtin-modules291518_)
                    (let ((_mod-main291520_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291405_ 'main))))
                      (write (let ((__tmp296265
                                    (let ((__tmp296266
                                           (let ((__tmp296267
                                                  (let ((__tmp296268
                                                         (let ((__tmp296270
                                                                (let ((__tmp296271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules291518_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296271)))
                       (__tmp296269
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp296270 __tmp296269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp296268))))
                                             (declare (not safe))
                                             (cons __tmp296267 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp296266))))
                               (declare (not safe))
                               (cons 'define __tmp296265)))
                      (write (let ((__tmp296272
                                    (let ((__tmp296311
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296273
                                           (let ((__tmp296274
                                                  (let ((__tmp296275
                                                         (let ((__tmp296299
                                                                (let ((__tmp296300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296301
                                      (let ((__tmp296309
                                             (let ((__tmp296310
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp296310)))
                                            (__tmp296302
                                             (let ((__tmp296303
                                                    (let ((__tmp296304
                                                           (let ((__tmp296305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296306
                                 (let ((__tmp296307
                                        (let ((__tmp296308
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp296308 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp296307))))
                            (declare (not safe))
                            (cons __tmp296306 '()))))
                     (declare (not safe))
                     (cons _mod-main291520_ __tmp296305))))
              (declare (not safe))
              (cons 'apply __tmp296304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296303 '()))))
                                        (declare (not safe))
                                        (cons __tmp296309 __tmp296302))))
                                 (declare (not safe))
                                 (cons '() __tmp296301))))
                          (declare (not safe))
                          (cons 'lambda __tmp296300)))
                       (__tmp296276
                        (let ((__tmp296277
                               (let ((__tmp296278
                                      (let ((__tmp296279
                                             (let ((__tmp296290
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
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp296298 '()))))
                (declare (not safe))
                (cons 'force-output __tmp296297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp296296 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp296295))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp296294))))
                            (declare (not safe))
                            (cons __tmp296293 '()))))
                     (declare (not safe))
                     (cons 'void __tmp296292))))
              (declare (not safe))
              (cons 'with-catch __tmp296291)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp296280
                                                    (let ((__tmp296281
                                                           (let ((__tmp296282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296283
                                 (let ((__tmp296284
                                        (let ((__tmp296285
                                               (let ((__tmp296286
                                                      (let ((__tmp296287
                                                             (let ((__tmp296288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp296289
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp296289 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp296288))))
                (declare (not safe))
                (cons __tmp296287 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp296286))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp296285))))
                                   (declare (not safe))
                                   (cons __tmp296284 '()))))
                            (declare (not safe))
                            (cons 'void __tmp296283))))
                     (declare (not safe))
                     (cons 'with-catch __tmp296282))))
              (declare (not safe))
              (cons __tmp296281 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296290
                                                     __tmp296280))))
                                        (declare (not safe))
                                        (cons '() __tmp296279))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp296278))))
                          (declare (not safe))
                          (cons __tmp296277 '()))))
                   (declare (not safe))
                   (cons __tmp296299 __tmp296276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp296275))))
                                             (declare (not safe))
                                             (cons __tmp296274 '()))))
                                      (declare (not safe))
                                      (cons __tmp296311 __tmp296273))))
                               (declare (not safe))
                               (cons 'define __tmp296272)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts291409_
                  (lambda (_libgerbil291516_)
                    (call-with-input-file
                     (string-append _libgerbil291516_ '".ldd")
                     read)))
                 (_replace-extension291410_
                  (lambda (_path291513_ _ext291514_)
                    (string-append
                     (path-strip-extension _path291513_)
                     _ext291514_)))
                 (_not-exclude-module?291411_
                  (lambda (_ctx291509_)
                    (let ((_id-str291511_
                           (symbol->string
                            (##structure-ref
                             _ctx291509_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp296313
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str291511_))))
                            (declare (not safe))
                            (not __tmp296313))
                          (let ((__tmp296312
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str291511_))))
                            (declare (not safe))
                            (not __tmp296312))
                          '#f))))
                 (_not-file-empty?291412_
                  (lambda (_path291507_)
                    (let ((__tmp296314
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path291507_))))
                      (declare (not safe))
                      (not __tmp296314))))
                 (_compile-stub291413_
                  (lambda (_output-scm291420_ _output-bin291421_)
                    (let* ((_gerbil-home291423_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291425_
                            (path-expand '"lib" _gerbil-home291423_))
                           (_gerbil-staticdir291427_
                            (path-expand '"static" _gerbil-libdir291425_))
                           (_gxlink291429_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir291425_))
                           (_tmp291431_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path291435_
                            (lambda (_f291433_)
                              (path-expand
                               (path-strip-directory _f291433_)
                               _tmp291431_)))
                           (_deps291437_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291405_)))
                           (_deps291439_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?291411_
                                      _deps291437_)))
                           (_src-deps-scm291441_
                            (map gxc#find-static-module-file _deps291439_))
                           (_src-deps-scm291443_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?291412_
                                      _src-deps-scm291441_)))
                           (_src-deps-scm291445_
                            (map path-expand _src-deps-scm291443_))
                           (_deps-scm291447_
                            (map _tmp-path291435_ _src-deps-scm291445_))
                           (_deps-c291453_
                            (map (lambda (_g291448291450_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291410_
                                      _g291448291450_
                                      '".c")))
                                 _deps-scm291447_))
                           (_deps-o291459_
                            (map (lambda (_g291454291456_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291410_
                                      _g291454291456_
                                      '".o")))
                                 _deps-scm291447_))
                           (_src-bin-scm291461_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291405_)))
                           (_src-bin-scm291463_
                            (path-expand _src-bin-scm291461_))
                           (_bin-scm291465_
                            (let ()
                              (declare (not safe))
                              (_tmp-path291435_ _src-bin-scm291463_)))
                           (_bin-c291467_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291410_
                               _bin-scm291465_
                               '".c")))
                           (_bin-o291469_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291410_
                               _bin-scm291465_
                               '".o")))
                           (_output-bin291471_
                            (path-expand _output-bin291421_))
                           (_output-scm291473_
                            (path-expand _output-scm291420_))
                           (_output-c291475_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291410_
                               _output-scm291473_
                               '".c")))
                           (_output-o291477_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291410_
                               _output-scm291473_
                               '".o")))
                           (_output_-c291479_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291410_
                               _output-scm291473_
                               '"_.c")))
                           (_output_-o291481_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291410_
                               _output-scm291473_
                               '"_.o")))
                           (_gsc-link-opts291483_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291485_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291487_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir291427_)))
                           (_output-ld-opts291489_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a291491_
                            (path-expand '"libgerbil.a" _gerbil-libdir291425_))
                           (_libgerbil.so291493_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir291425_))
                           (_libgerbil-ld-opts291495_
                            (if (file-exists? _libgerbil.so291493_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts291409_
                                   _libgerbil.so291493_))
                                (if (file-exists? _libgerbil.a291491_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts291409_
                                       _libgerbil.a291491_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a291491_
                                       _libgerbil.so291493_)))))
                           (_rpath291497_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291425_)))
                           (_builtin-modules291501_
                            (map (lambda (_mod291499_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod291499_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx291405_ _deps291439_)))))
                      (let ((__tmp296315
                             (lambda ()
                               (let ((__tmp296316
                                      (path-directory _output-bin291471_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296316)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296315))
                      (let ((__tmp296317
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub291408_
                                  _builtin-modules291501_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291473_
                         __tmp296317))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296318
                                   (lambda () (create-directory _tmp291431_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp296318))
                            (for-each
                             copy-file
                             _src-deps-scm291445_
                             _deps-scm291447_)
                            (copy-file _src-bin-scm291463_ _bin-scm291465_)
                            (let ((__tmp296326
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296319
                                   (let ((__tmp296320
                                          (let ((__tmp296321
                                                 (let ((__tmp296322
                                                        (let ((__tmp296323
                                                               (let ((__tmp296324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296325
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm291473_ '()))))
                                (declare (not safe))
                                (cons _bin-scm291465_ __tmp296325))))
                         (declare (not safe))
                         (foldr1 cons __tmp296324 _deps-scm291447_))))
                  (declare (not safe))
                  (foldr1 cons __tmp296323 _gsc-link-opts291483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink291429_
                                                         __tmp296322))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp296321))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296320))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296326
                               __tmp296319))
                            (let ((__tmp296334
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296327
                                   (let ((__tmp296328
                                          (let ((__tmp296329
                                                 (let ((__tmp296330
                                                        (let ((__tmp296331
                                                               (let ((__tmp296332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296333
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c291479_ '()))))
                                (declare (not safe))
                                (cons _output-c291475_ __tmp296333))))
                         (declare (not safe))
                         (cons _bin-c291467_ __tmp296332))))
                  (declare (not safe))
                  (foldr1 cons __tmp296331 _deps-c291453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296330
                                                           _gsc-static-opts291487_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296329
                                                    _gsc-cc-opts291485_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296328))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296334
                               __tmp296327))
                            (let ((__tmp296347
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296335
                                   (let ((__tmp296336
                                          (let ((__tmp296337
                                                 (let ((__tmp296338
                                                        (let ((__tmp296339
                                                               (let ((__tmp296340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296341
                                     (let ((__tmp296342
                                            (let ((__tmp296343
                                                   (let ((__tmp296344
                                                          (let ((__tmp296345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp296346
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts291495_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp296346))))
                    (declare (not safe))
                    (cons _gerbil-libdir291425_ __tmp296345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp296344))))
                                              (declare (not safe))
                                              (cons _rpath291497_
                                                    __tmp296343))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp296342
                                               _output-ld-opts291489_))))
                                (declare (not safe))
                                (cons _output_-o291481_ __tmp296341))))
                         (declare (not safe))
                         (cons _output-o291477_ __tmp296340))))
                  (declare (not safe))
                  (cons _bin-o291469_ __tmp296339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296338
                                                           _deps-o291459_))))
                                            (declare (not safe))
                                            (cons _output-bin291471_
                                                  __tmp296337))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296336))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296347
                               __tmp296335))
                            (for-each
                             delete-file
                             (let ((__tmp296348
                                    (let ((__tmp296349
                                           (let ((__tmp296350
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o291481_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o291477_
                                                   __tmp296350))))
                                      (declare (not safe))
                                      (cons _output_-c291479_ __tmp296349))))
                               (declare (not safe))
                               (cons _output-c291475_ __tmp296348)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp291431_)))
                          '#!void)))))
          (let* ((_output-bin291415_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291405_ _opts291406_)))
                 (_output-scm291417_
                  (string-append _output-bin291415_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291413_ _output-scm291417_ _output-bin291415_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291417_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx291230_ _opts291231_)
        (letrec ((_reset-declare291233_
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
                 (_generate-stub291234_
                  (lambda (_deps291396_)
                    (let ((_mod-main291398_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291230_ 'main)))
                          (_reset-decl291399_
                           (let ()
                             (declare (not safe))
                             (_reset-declare291233_)))
                          (_user-decl291400_
                           (let ()
                             (declare (not safe))
                             (_user-declare291235_))))
                      (for-each
                       (lambda (_dep291402_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl291399_)
                         (newline)
                         (if _user-decl291400_
                             (begin (write _user-decl291400_) (newline))
                             '#!void)
                         (write (let ((__tmp296351
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep291402_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp296351)))
                         (newline))
                       _deps291396_)
                      (write (let ((__tmp296352
                                    (let ((__tmp296365
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296353
                                           (let ((__tmp296361
                                                  (let ((__tmp296362
                                                         (let ((__tmp296363
                                                                (let ((__tmp296364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296364))))
                   (declare (not safe))
                   (cons __tmp296363 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp296362)))
                                                 (__tmp296354
                                                  (let ((__tmp296355
                                                         (let ((__tmp296356
                                                                (let ((__tmp296357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296358
                                      (let ((__tmp296359
                                             (let ((__tmp296360
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp296360 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp296359))))
                                 (declare (not safe))
                                 (cons __tmp296358 '()))))
                          (declare (not safe))
                          (cons _mod-main291398_ __tmp296357))))
                   (declare (not safe))
                   (cons 'apply __tmp296356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296355 '()))))
                                             (declare (not safe))
                                             (cons __tmp296361 __tmp296354))))
                                      (declare (not safe))
                                      (cons __tmp296365 __tmp296353))))
                               (declare (not safe))
                               (cons 'define __tmp296352)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare291235_
                  (lambda ()
                    (let* ((_gsc-opts291301_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts291231_)))
                           (_gsc-prelude291303_
                            (if _gsc-opts291301_
                                (member '"-prelude" _gsc-opts291301_)
                                '#f))
                           (_gsc-prelude291305_
                            (if _gsc-prelude291303_
                                (read (open-input-string
                                       (cadr _gsc-prelude291303_)))
                                '#f)))
                      (let _lp291308_ ((_rest291310_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude291305_ '())))
                                       (_user-decls291311_ '()))
                        (let* ((_rest291312291320_ _rest291310_)
                               (_else291314291328_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls291311_))
                                      '#f
                                      (let ((__tmp296366
                                             (reverse _user-decls291311_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp296366)))))
                               (_K291316291384_
                                (lambda (_rest291331_ _expr291332_)
                                  (let* ((_expr291333291345_ _expr291332_)
                                         (_else291336291353_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp291308_
                                               _rest291331_
                                               _user-decls291311_)))))
                                    (let ((_K291341291374_
                                           (lambda (_decls291372_)
                                             (let ((__tmp296367
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls291311_
                                                              _decls291372_))))
                                               (declare (not safe))
                                               (_lp291308_
                                                _rest291331_
                                                __tmp296367))))
                                          (_K291338291359_
                                           (lambda (_exprs291357_)
                                             (let ((__tmp296368
                                                    (append _exprs291357_
                                                            _rest291331_)))
                                               (declare (not safe))
                                               (_lp291308_
                                                __tmp296368
                                                _user-decls291311_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr291333291345_))
                                          (let ((_tl291343291379_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr291333291345_)))
                                                (_hd291342291377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr291333291345_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd291342291377_
                                                         'declare))
                                                (let ((_decls291382_
                                                       _tl291343291379_))
                                                  (declare (not safe))
                                                  (_K291341291374_
                                                   _decls291382_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd291342291377_
                                                             'begin))
                                                    (let ((_exprs291367_
                                                           _tl291343291379_))
                                                      (declare (not safe))
                                                      (_K291338291359_
                                                       _exprs291367_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else291336291353_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else291336291353_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest291312291320_))
                              (let ((_hd291317291387_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest291312291320_)))
                                    (_tl291318291389_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest291312291320_))))
                                (let* ((_expr291392_ _hd291317291387_)
                                       (_rest291394_ _tl291318291389_))
                                  (declare (not safe))
                                  (_K291316291384_ _rest291394_ _expr291392_)))
                              (let ()
                                (declare (not safe))
                                (_else291314291328_))))))))
                 (_compile-stub291236_
                  (lambda (_output-scm291243_ _output-bin291244_)
                    (let* ((_gerbil-home291246_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291248_
                            (path-expand '"lib" _gerbil-home291246_))
                           (_runtime291250_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp291252_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home291246_))
                           (_include-gambit-sharp291254_
                            (string-append
                             '"(include \""
                             _gambit-sharp291252_
                             '"\")"))
                           (_bin-scm291256_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291230_)))
                           (_deps291258_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291230_)))
                           (_deps291260_
                            (map gxc#find-static-module-file _deps291258_))
                           (_deps291265_
                            (let ((__tmp296369
                                   (lambda (_$obj291262_)
                                     (let ((__tmp296370
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj291262_))))
                                       (declare (not safe))
                                       (not __tmp296370)))))
                              (declare (not safe))
                              (filter __tmp296369 _deps291260_)))
                           (_deps291269_
                            (let ((__tmp296371
                                   (lambda (_f291267_)
                                     (let ((__tmp296372
                                            (member _f291267_
                                                    _runtime291250_)))
                                       (declare (not safe))
                                       (not __tmp296372)))))
                              (declare (not safe))
                              (filter __tmp296371 _deps291265_)))
                           (_output-base291271_
                            (string-append
                             (path-strip-extension _output-scm291243_)))
                           (_output-c291273_
                            (string-append _output-base291271_ '".c"))
                           (_output-o291275_
                            (string-append _output-base291271_ '".o"))
                           (_output-c_291277_
                            (string-append _output-base291271_ '"_.c"))
                           (_output-o_291279_
                            (string-append _output-base291271_ '"_.o"))
                           (_gsc-link-opts291281_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291283_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291285_
                            (let ((__tmp296373
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir291248_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp296373)))
                           (_output-ld-opts291287_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros291289_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp296375
                                       (let ((__tmp296376
                                              (let ((__tmp296377
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp291254_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp296377))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp296376))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296375))
                                (let ((__tmp296374
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp291254_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296374))))
                           (_gsc-link-opts291291_
                            (append _gsc-link-opts291281_
                                    _gsc-gx-macros291289_))
                           (_rpath291293_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291248_)))
                           (_default-ld-options291295_
                            (let ((__tmp296378
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp296378))))
                      (let ((__tmp296379
                             (lambda ()
                               (let ((__tmp296380
                                      (path-directory _output-bin291244_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296380)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296379))
                      (let ((__tmp296381
                             (lambda ()
                               (let ((__tmp296382
                                      (let ((__tmp296383
                                             (let ((__tmp296384
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm291256_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp296384
                                                       _deps291269_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp296383
                                                _runtime291250_))))
                                 (declare (not safe))
                                 (_generate-stub291234_ __tmp296382)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291243_
                         __tmp296381))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296390
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296385
                                   (let ((__tmp296386
                                          (let ((__tmp296387
                                                 (let ((__tmp296388
                                                        (let ((__tmp296389
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm291243_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp296389 _gsc-link-opts291291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_291277_
                                                         __tmp296388))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp296387))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296386))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296390
                               __tmp296385))
                            (let ((__tmp296396
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296391
                                   (let ((__tmp296392
                                          (let ((__tmp296393
                                                 (let ((__tmp296394
                                                        (let ((__tmp296395
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_291277_ '()))))
                  (declare (not safe))
                  (cons _output-c291273_ __tmp296395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296394
                                                           _gsc-static-opts291285_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296393
                                                    _gsc-cc-opts291283_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296392))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296396
                               __tmp296391))
                            (let ((__tmp296406
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296397
                                   (let ((__tmp296398
                                          (let ((__tmp296399
                                                 (let ((__tmp296400
                                                        (let ((__tmp296401
                                                               (let ((__tmp296402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296403
                                     (let ((__tmp296404
                                            (let ((__tmp296405
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options291295_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir291248_
                                                    __tmp296405))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp296404))))
                                (declare (not safe))
                                (cons _rpath291293_ __tmp296403))))
                         (declare (not safe))
                         (foldr1 cons __tmp296402 _output-ld-opts291287_))))
                  (declare (not safe))
                  (cons _output-o_291279_ __tmp296401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o291275_
                                                         __tmp296400))))
                                            (declare (not safe))
                                            (cons _output-bin291244_
                                                  __tmp296399))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296398))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296406
                               __tmp296397)))
                          '#!void)))))
          (let* ((_output-bin291238_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291230_ _opts291231_)))
                 (_output-scm291240_
                  (string-append _output-bin291238_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291236_ _output-scm291240_ _output-bin291238_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291240_))))))
    (define gxc#find-export-binding
      (lambda (_ctx291180_ _id291181_)
        (let ((_$e291227_
               (let ((__tmp296408
                      (lambda (_e291182291184_)
                        (let* ((_g291186291196_ _e291182291184_)
                               (_else291188291204_ (lambda () '#f))
                               (_K291190291208_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g291186291196_
                                 'gx#module-export::t))
                              (let* ((_e291191291211_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291186291196_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e291192291214_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291186291196_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e291193291217_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291186291196_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e291193291217_ '0))
                                    (let ((_e291194291220_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g291186291196_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g291222291224_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g291222291224_
                                                    _id291181_)))
                                           _e291194291220_)
                                          (let ()
                                            (declare (not safe))
                                            (_K291190291208_))
                                          (let ()
                                            (declare (not safe))
                                            (_else291188291204_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else291188291204_))))
                              (let ()
                                (declare (not safe))
                                (_else291188291204_))))))
                     (__tmp296407
                      (##structure-ref
                       _ctx291180_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp296408 __tmp296407))))
          (if _$e291227_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e291227_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx291172_ _id291173_)
        (let ((_$e291175_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx291172_ _id291173_))))
          (if _$e291175_
              ((lambda (_bind291178_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind291178_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id291173_)))
                 (##structure-ref _bind291178_ '1 gx#binding::t '#f))
               _$e291175_)
              (let ((__tmp296409
                     (##structure-ref
                      _ctx291172_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp296409
                 _id291173_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx291059_)
        (letrec* ((_ht291061_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template291062_
                   (lambda (_in291124_ _phi291125_)
                     (let ((_iphi291127_
                            (fx+ _phi291125_
                                 (##direct-structure-ref
                                  _in291124_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports291128_
                            (##structure-ref
                             (##direct-structure-ref
                              _in291124_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp291130_ ((_rest291132_ _imports291128_)
                                        (_r291133_ '()))
                         (let* ((_rest291134291142_ _rest291132_)
                                (_else291136291150_ (lambda () _r291133_))
                                (_K291138291160_
                                 (lambda (_rest291153_ _in291154_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in291154_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi291127_))
                                           (let ((__tmp296416
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in291154_
                                                          _r291133_))))
                                             (declare (not safe))
                                             (_lp291130_
                                              _rest291153_
                                              __tmp296416))
                                           (let ()
                                             (declare (not safe))
                                             (_lp291130_
                                              _rest291153_
                                              _r291133_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in291154_
                                              'gx#module-import::t))
                                           (let ((_iphi291156_
                                                  (fx+ _phi291125_
                                                       (##direct-structure-ref
                                                        _in291154_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi291156_))
                                                 (let ((__tmp296414
                                                        (let ((__tmp296415
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in291154_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp296415 _r291133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp291130_
                                                    _rest291153_
                                                    __tmp296414))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp291130_
                                                    _rest291153_
                                                    _r291133_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in291154_
                                                  'gx#import-set::t))
                                               (let ((_xphi291158_
                                                      (fx+ _iphi291127_
                                                           (##direct-structure-ref
                                                            _in291154_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi291158_))
                                                     (let ((__tmp296412
                                                            (let ((__tmp296413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in291154_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp296413 _r291133_))))
               (declare (not safe))
               (_lp291130_ _rest291153_ __tmp296412))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi291158_)
                                                         (let ((__tmp296410
                                                                (let ((__tmp296411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template291062_
                                  _in291154_
                                  _iphi291127_))))
                          (declare (not safe))
                          (foldl1 cons _r291133_ __tmp296411))))
                   (declare (not safe))
                   (_lp291130_ _rest291153_ __tmp296410))
                 (let ()
                   (declare (not safe))
                   (_lp291130_ _rest291153_ _r291133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp291130_
                                                  _rest291153_
                                                  _r291133_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest291134291142_))
                               (let ((_hd291139291163_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest291134291142_)))
                                     (_tl291140291165_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest291134291142_))))
                                 (let* ((_in291168_ _hd291139291163_)
                                        (_rest291170_ _tl291140291165_))
                                   (declare (not safe))
                                   (_K291138291160_ _rest291170_ _in291168_)))
                               (let ()
                                 (declare (not safe))
                                 (_else291136291150_))))))))
                  (_find-deps291063_
                   (lambda (_rest291070_ _deps291071_)
                     (let* ((_rest291072291080_ _rest291070_)
                            (_else291074291088_ (lambda () _deps291071_))
                            (_K291076291112_
                             (lambda (_rest291091_ _hd291092_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd291092_
                                      'gx#module-context::t))
                                   (let ((_id291094_
                                          (##structure-ref
                                           _hd291092_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports291095_
                                          (##structure-ref
                                           _hd291092_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht291061_
                                            _id291094_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps291063_
                                            _rest291091_
                                            _deps291071_))
                                         (let ((_$e291097_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd291092_))))
                                           (if _$e291097_
                                               ((lambda (_pre291100_)
                                                  (let ((_xdeps291102_
                                                         (let ((__tmp296429
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre291100_ _imports291095_))))
                   (declare (not safe))
                   (_find-deps291063_ __tmp296429 _deps291071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht291061_
                                                       _id291094_
                                                       _hd291092_))
                                                    (let ((__tmp296430
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd291092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps291102_))))
              (declare (not safe))
              (_find-deps291063_ _rest291091_ __tmp296430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e291097_)
                                               (let ((_xdeps291104_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps291063_
                                                         _imports291095_
                                                         _deps291071_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht291061_
                                                    _id291094_
                                                    _hd291092_))
                                                 (let ((__tmp296428
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd291092_
                                                                _xdeps291104_))))
                                                   (declare (not safe))
                                                   (_find-deps291063_
                                                    _rest291091_
                                                    __tmp296428)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd291092_
                                          'gx#prelude-context::t))
                                       (let ((_id291106_
                                              (##structure-ref
                                               _hd291092_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht291061_
                                                _id291106_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps291063_
                                                _rest291091_
                                                _deps291071_))
                                             (let ((_xdeps291108_
                                                    (let ((__tmp296426
                                                           (##structure-ref
                                                            _hd291092_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps291063_
                                                       __tmp296426
                                                       _deps291071_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht291061_
                                                      _id291106_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps291063_
                                                      _rest291091_
                                                      _xdeps291108_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht291061_
                                                        _id291106_
                                                        _hd291092_))
                                                     (let ((__tmp296427
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd291092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps291108_))))
               (declare (not safe))
               (_find-deps291063_ _rest291091_ __tmp296427)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd291092_
                                              'gx#module-import::t))
                                           (if (let ((__tmp296425
                                                      (##direct-structure-ref
                                                       _hd291092_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp296425))
                                               (let ((__tmp296423
                                                      (let ((__tmp296424
                                                             (##direct-structure-ref
                                                              _hd291092_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296424
                                                              _rest291091_))))
                                                 (declare (not safe))
                                                 (_find-deps291063_
                                                  __tmp296423
                                                  _deps291071_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps291063_
                                                  _rest291091_
                                                  _deps291071_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd291092_
                                                  'gx#module-export::t))
                                               (let ((__tmp296421
                                                      (let ((__tmp296422
                                                             (##direct-structure-ref
                                                              _hd291092_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296422
                                                              _rest291091_))))
                                                 (declare (not safe))
                                                 (_find-deps291063_
                                                  __tmp296421
                                                  _deps291071_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd291092_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp296420
                                                              (##direct-structure-ref
                                                               _hd291092_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp296420))
                                                       (let ((__tmp296418
                                                              (let ((__tmp296419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd291092_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp296419 _rest291091_))))
                 (declare (not safe))
                 (_find-deps291063_ __tmp296418 _deps291071_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd291092_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps291110_
                           (let ()
                             (declare (not safe))
                             (_import-set-template291062_ _hd291092_ '0)))
                          (__tmp296417
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest291091_ _xdeps291110_))))
                     (declare (not safe))
                     (_find-deps291063_ __tmp296417 _deps291071_))
                   (let ()
                     (declare (not safe))
                     (_find-deps291063_ _rest291091_ _deps291071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd291092_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest291072291080_))
                           (let ((_hd291077291115_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest291072291080_)))
                                 (_tl291078291117_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest291072291080_))))
                             (let* ((_hd291120_ _hd291077291115_)
                                    (_rest291122_ _tl291078291117_))
                               (declare (not safe))
                               (_K291076291112_ _rest291122_ _hd291120_)))
                           (let ()
                             (declare (not safe))
                             (_else291074291088_)))))))
          (reverse (let ((__tmp296431
                          (let ((__tmp296432
                                 (let ((_$e291065_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx291059_))))
                                   (if _$e291065_
                                       ((lambda (_pre291068_)
                                          (let ((__tmp296433
                                                 (##structure-ref
                                                  _ctx291059_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre291068_ __tmp296433)))
                                        _$e291065_)
                                       (##structure-ref
                                        _ctx291059_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps291063_ __tmp296432 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp296431))))))
    (define gxc#find-static-module-file
      (lambda (_ctx290990_)
        (let* ((_context-id290992_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx290990_
                       'gx#module-context::t))
                    (##structure-ref _ctx290990_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx290990_)))
               (_scm290994_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id290992_))
                 '".scm"))
               (_dirs290996_ (gx#current-expander-module-library-path))
               (_dirs291002_
                (let ((_user-libpath290998_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath290998_
                      (let ((_user-libpath291000_
                             (path-expand '"lib" _user-libpath290998_)))
                        (if (member _user-libpath291000_ _dirs290996_)
                            _dirs290996_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath291000_ _dirs290996_))))
                      _dirs290996_)))
               (_dirs291011_
                (let ((_$e291004_ (gxc#current-compile-output-dir)))
                  (if _$e291004_
                      ((lambda (_g291006291008_)
                         (let ()
                           (declare (not safe))
                           (cons _g291006291008_ _dirs291002_)))
                       _$e291004_)
                      _dirs291002_)))
               (_dirs291017_
                (map (lambda (_g291012291014_)
                       (path-expand '"static" _g291012291014_))
                     _dirs291011_)))
          (let _lp291020_ ((_rest291022_ _dirs291017_))
            (let* ((_rest291023291031_ _rest291022_)
                   (_else291025291039_
                    (lambda ()
                      (let ((__tmp296434
                             (##structure-ref
                              _ctx290990_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp296434
                         _scm290994_))))
                   (_K291027291047_
                    (lambda (_rest291042_ _dir291043_)
                      (let ((_path291045_
                             (path-expand _scm290994_ _dir291043_)))
                        (if (file-exists? _path291045_)
                            _path291045_
                            (let ()
                              (declare (not safe))
                              (_lp291020_ _rest291042_)))))))
              (if (let () (declare (not safe)) (##pair? _rest291023291031_))
                  (let ((_hd291028291050_
                         (let ()
                           (declare (not safe))
                           (##car _rest291023291031_)))
                        (_tl291029291052_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291023291031_))))
                    (let* ((_dir291055_ _hd291028291050_)
                           (_rest291057_ _tl291029291052_))
                      (declare (not safe))
                      (_K291027291047_ _rest291057_ _dir291055_)))
                  (let () (declare (not safe)) (_else291025291039_))))))))
    (define gxc#file-empty?
      (lambda (_path290988_)
        (let ((__tmp296435 (file-info-size (file-info _path290988_ '#t))))
          (declare (not safe))
          (zero? __tmp296435))))
    (define gxc#compile-top-module
      (lambda (_ctx290977_)
        (let ((__tmp296439
               (lambda ()
                 (let ((__tmp296440
                        (##structure-ref
                         _ctx290977_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp296440))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp296441
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx290977_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp296441))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx290977_))
                 (if (let ((__tmp296444
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx290977_))))
                       (declare (not safe))
                       (null? __tmp296444))
                     (let* ((_thr1290982_
                             (let ((__tmp296442
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx290977_)))))
                               (declare (not safe))
                               (spawn __tmp296442)))
                            (_thr2290985_
                             (let ((__tmp296443
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx290977_)))))
                               (declare (not safe))
                               (spawn __tmp296443))))
                       (let () (declare (not safe)) (gxc#join! _thr1290982_))
                       (let () (declare (not safe)) (gxc#join! _thr2290985_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx290977_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx290977_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx290977_))
                     '#!void)))
              (__tmp296438
               (let ((__obj296243
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj296243)
                 __obj296243))
              (__tmp296437
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp296436 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp296439
           gx#current-expander-context
           _ctx290977_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp296438
           gxc#current-compile-runtime-sections
           __tmp296437
           gxc#current-compile-runtime-names
           __tmp296436))))
    (define gxc#collect-bindings
      (lambda (_ctx290975_)
        (let ((__tmp296445
               (##structure-ref _ctx290975_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp296445))))
    (define gxc#compile-runtime-code
      (lambda (_ctx290921_)
        (letrec ((_compile1290923_
                  (lambda (_ctx290964_)
                    (let* ((_code290966_
                            (##structure-ref
                             _ctx290964_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt290970_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code290966_))
                                (let ((_idstr290968_
                                       (let ((__tmp296446
                                              (##structure-ref
                                               _ctx290964_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp296446))))
                                  (string-append _idstr290968_ '"__0"))
                                '#f)))
                      (if _rt290970_
                          (begin
                            (let ((__tmp296447
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp296447 _ctx290964_ _rt290970_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code290925_
                               _ctx290964_
                               _code290966_)))
                          (let ((_path290973_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx290964_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path290973_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code290926_
                         _ctx290964_
                         _code290966_
                         _rt290970_)))))
                 (_context-timestamp290924_
                  (lambda (_ctx290962_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx290962_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code290925_
                  (lambda (_ctx290944_ _code290945_)
                    (let* ((_lifts290947_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code290950_
                            (let ((__tmp296450
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code290945_))))
                                  (__tmp296449
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp296448
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296450
                               gx#current-expander-context
                               _ctx290944_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts290947_
                               gxc#current-compile-marks
                               __tmp296449
                               gxc#current-compile-identifiers
                               __tmp296448)))
                           (_runtime-code290952_
                            (if (let ((__tmp296454 (unbox _lifts290947_)))
                                  (declare (not safe))
                                  (null? __tmp296454))
                                _runtime-code290950_
                                (let ((__tmp296451
                                       (let ((__tmp296453
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code290950_
                                                      '())))
                                             (__tmp296452
                                              (reverse (unbox _lifts290947_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp296453
                                                 __tmp296452))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296451))))
                           (_runtime-code290954_
                            (let ((__tmp296455
                                   (let ((__tmp296457
                                          (let ((__tmp296458
                                                 (let ((__tmp296461
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp290924_
                                                           _ctx290944_)))
                                                       (__tmp296459
                                                        (let ((__tmp296460
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp296460
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp296461
                                                         __tmp296459))))
                                            (declare (not safe))
                                            (cons 'define __tmp296458)))
                                         (__tmp296456
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code290952_ '()))))
                                     (declare (not safe))
                                     (cons __tmp296457 __tmp296456))))
                              (declare (not safe))
                              (cons 'begin __tmp296455)))
                           (_scm0290956_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290944_
                               '0
                               '".scm"))))
                      (let ((_scms290959_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx290944_))))
                        (let ((__tmp296462
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0290956_
                                    _runtime-code290954_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp296462
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms290959_)
                            (delete-file _scms290959_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0290956_
                           '" => "
                           _scms290959_))
                        (copy-file _scm0290956_ _scms290959_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0290956_))))))
                 (_generate-loader-code290926_
                  (lambda (_ctx290933_ _code290934_ _rt290935_)
                    (let* ((_loader-code290938_
                            (let ((__tmp296463
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code290934_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296463
                               gx#current-expander-context
                               _ctx290933_)))
                           (_loader-code290940_
                            (if _rt290935_
                                (let ((__tmp296464
                                       (let ((__tmp296465
                                              (let ((__tmp296466
                                                     (let ((__tmp296467
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt290935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp296467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296466 '()))))
                                         (declare (not safe))
                                         (cons _loader-code290938_
                                               __tmp296465))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296464))
                                _loader-code290938_)))
                      (let ((__tmp296468
                             (lambda ()
                               (let ((__tmp296469
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290933_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp296469
                                  _loader-code290940_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp296468
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules290928_
                 (let ((__tmp296470
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx290921_))))
                   (declare (not safe))
                   (cons _ctx290921_ __tmp296470))))
            (for-each
             (lambda (_ctx290930_)
               (let ((__tmp296471
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1290923_ _ctx290930_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp296471
                  gxc#current-compile-decls
                  '())))
             _all-modules290928_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx290818_)
        (letrec ((_compile-ssi290820_
                  (lambda (_code290891_)
                    (let* ((_path290893_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290818_
                               '#f
                               '".ssi")))
                           (_prelude290904_
                            (let* ((_super290895_
                                    (##structure-ref
                                     _ctx290818_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e290897_
                                    (##structure-ref
                                     _super290895_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e290897_
                                  ((lambda (_g290899290901_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g290899290901_)))
                                   _$e290897_)
                                  ':<root>)))
                           (_ns290906_
                            (##structure-ref
                             _ctx290818_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr290908_
                            (symbol->string
                             (##structure-ref
                              _ctx290818_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg290915_
                            (let ((_$e290910_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr290908_ '#\/))))
                              (if _$e290910_
                                  ((lambda (_x290913_)
                                     (string->symbol
                                      (substring _idstr290908_ '0 _x290913_)))
                                   _$e290910_)
                                  '#f)))
                           (_rt290917_
                            (let ((__tmp296472
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp296472 _ctx290818_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path290893_))
                      (let ((__tmp296473
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude290904_))
                               (if _pkg290915_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg290915_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns290906_))
                               (newline)
                               (pretty-print _code290891_)
                               (if _rt290917_
                                   (pretty-print
                                    (let ((__tmp296474
                                           (let ((__tmp296478
                                                  (let ((__tmp296479
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp296479)))
                                                 (__tmp296475
                                                  (let ((__tmp296476
                                                         (let ((__tmp296477
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt290917_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp296477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296476 '()))))
                                             (declare (not safe))
                                             (cons __tmp296478 __tmp296475))))
                                      (declare (not safe))
                                      (cons '%#call __tmp296474)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path290893_
                         __tmp296473)))))
                 (_compile-phi290821_
                  (lambda (_part290831_)
                    (let* ((_part290832290845_ _part290831_)
                           (_E290834290849_
                            (lambda ()
                              (error '"No clause matching"
                                     _part290832290845_)))
                           (_K290835290860_
                            (lambda (_code290852_
                                     _n290853_
                                     _phi290854_
                                     _phi-ctx290855_)
                              (let* ((_code290858_
                                      (let ((__tmp296480
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code290852_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp296480
                                         gx#current-expander-context
                                         _phi-ctx290855_
                                         gx#current-expander-phi
                                         _phi290854_)))
                                     (__tmp296481
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290818_
                                         _n290853_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp296481
                                 _code290858_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part290832290845_))
                          (let ((_hd290836290863_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part290832290845_)))
                                (_tl290837290865_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part290832290845_))))
                            (let ((_phi-ctx290868_ _hd290836290863_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl290837290865_))
                                  (let ((_hd290838290870_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl290837290865_)))
                                        (_tl290839290872_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl290837290865_))))
                                    (let ((_phi290875_ _hd290838290870_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl290839290872_))
                                          (let ((_hd290840290877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl290839290872_)))
                                                (_tl290841290879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl290839290872_))))
                                            (let ((_n290882_ _hd290840290877_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl290841290879_))
                                                  (let ((_hd290842290884_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl290841290879_)))
                                                        (_tl290843290886_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl290841290879_))))
                                                    (let ((_code290889_
                                                           _hd290842290884_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl290843290886_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K290835290860_
                                                             _code290889_
                                                             _n290882_
                                                             _phi290875_
                                                             _phi-ctx290868_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E290834290849_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E290834290849_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E290834290849_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E290834290849_)))))
                          (let () (declare (not safe)) (_E290834290849_)))))))
          (let ((_g296482_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx290818_))))
            (begin
              (let ((_g296483_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g296482_)
                           (##vector-length _g296482_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g296483_ 2)))
                    (error "Context expects 2 values" _g296483_)))
              (let ((_ssi-code290823_
                     (let () (declare (not safe)) (##vector-ref _g296482_ 0)))
                    (_phi-code290824_
                     (let () (declare (not safe)) (##vector-ref _g296482_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi290820_ _ssi-code290823_))
                  (let ((_threads290829_
                         (map (lambda (_code290826_)
                                (let ((__tmp296484
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi290821_
                                            _code290826_)))))
                                  (declare (not safe))
                                  (spawn __tmp296484)))
                              _phi-code290824_)))
                    (for-each gxc#join! _threads290829_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx290801_)
        (let* ((_path290803_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx290801_ '#f '".ssxi.ss")))
               (_code290805_
                (let ((__tmp296485
                       (##structure-ref
                        _ctx290801_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp296485)))
               (_idstr290807_
                (symbol->string
                 (##structure-ref _ctx290801_ '1 gx#expander-context::t '#f)))
               (_pkg290814_
                (let ((_$e290809_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr290807_ '#\/))))
                  (if _$e290809_
                      ((lambda (_x290812_)
                         (string->symbol
                          (substring _idstr290807_ '0 _x290812_)))
                       _$e290809_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path290803_))
          (let ((__tmp296486
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg290814_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg290814_))
                       '#!void)
                   (newline)
                   (pretty-print _code290805_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path290803_ __tmp296486)))))
    (define gxc#generate-meta-code
      (lambda (_ctx290794_)
        (let* ((_state290796_
                (let ((__obj296244
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj296244 _ctx290794_)
                  __obj296244))
               (_ssi-code290798_
                (let ((__tmp296487
                       (##structure-ref
                        _ctx290794_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp296487 _state290796_))))
          (values _ssi-code290798_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state290796_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx290787_)
        (let ((_lifts290789_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296490
                 (lambda ()
                   (let ((_code290792_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx290787_))))
                     (if (let ((__tmp296494 (unbox _lifts290789_)))
                           (declare (not safe))
                           (null? __tmp296494))
                         _code290792_
                         (let ((__tmp296491
                                (let ((__tmp296493
                                       (let ()
                                         (declare (not safe))
                                         (cons _code290792_ '())))
                                      (__tmp296492
                                       (reverse (unbox _lifts290789_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp296493 __tmp296492))))
                           (declare (not safe))
                           (cons 'begin __tmp296491))))))
                (__tmp296489
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp296488
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp296490
             gxc#current-compile-lift
             _lifts290789_
             gxc#current-compile-marks
             __tmp296489
             gxc#current-compile-identifiers
             __tmp296488)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx290783_)
        (let ((_modules290785_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296495
                 (##structure-ref _ctx290783_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp296495 _modules290785_))
          (reverse (unbox _modules290785_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path290766_ _code290767_ _phi?290768_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path290766_))
        (let ((__tmp296496
               (lambda ()
                 (pretty-print
                  (let ((__tmp296497
                         (let ((__tmp296504
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp296498
                                (let ((__tmp296503
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp296499
                                       (let ((__tmp296502
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp296500
                                              (let ((__tmp296501
                                                     (if _phi?290768_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp296501))))
                                         (declare (not safe))
                                         (cons __tmp296502 __tmp296500))))
                                  (declare (not safe))
                                  (cons __tmp296503 __tmp296499))))
                           (declare (not safe))
                           (cons __tmp296504 __tmp296498))))
                    (declare (not safe))
                    (cons 'declare __tmp296497)))
                 (pretty-print _code290767_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path290766_ __tmp296496))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path290766_ _phi?290768_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path290766_))))
    (define gxc#compile-scm-file__0
      (lambda (_path290774_ _code290775_)
        (let ((_phi?290777_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path290774_ _code290775_ _phi?290777_))))
    (define gxc#compile-scm-file
      (lambda _g296506_
        (let ((_g296505_ (let () (declare (not safe)) (##length _g296506_))))
          (cond ((let () (declare (not safe)) (##fx= _g296505_ 2))
                 (apply (lambda (_path290774_ _code290775_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path290774_
                             _code290775_)))
                        _g296506_))
                ((let () (declare (not safe)) (##fx= _g296505_ 3))
                 (apply (lambda (_path290779_ _code290780_ _phi?290781_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path290779_
                             _code290780_
                             _phi?290781_)))
                        _g296506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g296506_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?290667_)
        (let _lp290669_ ((_rest290671_ (gxc#current-compile-gsc-options))
                         (_opts290672_ '()))
          (let* ((_rest290673290693_ _rest290671_)
                 (_else290677290701_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290667_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296507
                               (let ((__tmp296508 (reverse _opts290672_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp296508))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp296507))
                        (reverse _opts290672_)))))
            (let ((_K290687290744_
                   (lambda (_rest290742_)
                     (let ()
                       (declare (not safe))
                       (_lp290669_ _rest290742_ _opts290672_))))
                  (_K290682290726_
                   (lambda (_rest290724_)
                     (let ()
                       (declare (not safe))
                       (_lp290669_ _rest290724_ _opts290672_))))
                  (_K290679290708_
                   (lambda (_rest290705_ _opt290706_)
                     (let ((__tmp296509
                            (let ()
                              (declare (not safe))
                              (cons _opt290706_ _opts290672_))))
                       (declare (not safe))
                       (_lp290669_ _rest290705_ __tmp296509)))))
              (if (let () (declare (not safe)) (##pair? _rest290673290693_))
                  (let ((_tl290689290749_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290673290693_)))
                        (_hd290688290747_
                         (let ()
                           (declare (not safe))
                           (##car _rest290673290693_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290688290747_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290689290749_))
                            (let* ((_tl290691290752_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290689290749_)))
                                   (_rest290755_ _tl290691290752_))
                              (declare (not safe))
                              (_K290687290744_ _rest290755_))
                            (let ((_opt290716_ _hd290688290747_)
                                  (_rest290718_ _tl290689290749_))
                              (let ()
                                (declare (not safe))
                                (_K290679290708_ _rest290718_ _opt290716_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290688290747_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290689290749_))
                                (let* ((_tl290686290734_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290689290749_)))
                                       (_rest290737_ _tl290686290734_))
                                  (declare (not safe))
                                  (_K290682290726_ _rest290737_))
                                (let ((_opt290716_ _hd290688290747_)
                                      (_rest290718_ _tl290689290749_))
                                  (let ()
                                    (declare (not safe))
                                    (_K290679290708_
                                     _rest290718_
                                     _opt290716_))))
                            (let ((_opt290716_ _hd290688290747_)
                                  (_rest290718_ _tl290689290749_))
                              (let ()
                                (declare (not safe))
                                (_K290679290708_ _rest290718_ _opt290716_))))))
                  (let () (declare (not safe)) (_else290677290701_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?290761_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?290761_))))
    (define gxc#gsc-link-options
      (lambda _g296511_
        (let ((_g296510_ (let () (declare (not safe)) (##length _g296511_))))
          (cond ((let () (declare (not safe)) (##fx= _g296510_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g296511_))
                ((let () (declare (not safe)) (##fx= _g296510_ 1))
                 (apply (lambda (_phi?290763_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?290763_)))
                        _g296511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g296511_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?290568_)
        (let _lp290570_ ((_rest290572_ (gxc#current-compile-gsc-options))
                         (_opts290573_ '()))
          (let* ((_rest290574290594_ _rest290572_)
                 (_else290578290602_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290568_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296512
                               (let ((__tmp296513 (reverse _opts290573_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp296513))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp296512))
                        (reverse _opts290573_)))))
            (let ((_K290588290641_
                   (lambda (_rest290638_ _opt290639_)
                     (let ((__tmp296514
                            (let ((__tmp296515
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts290573_))))
                              (declare (not safe))
                              (cons _opt290639_ __tmp296515))))
                       (declare (not safe))
                       (_lp290570_ _rest290638_ __tmp296514))))
                  (_K290583290622_
                   (lambda (_rest290620_)
                     (let ()
                       (declare (not safe))
                       (_lp290570_ _rest290620_ _opts290573_))))
                  (_K290580290608_
                   (lambda (_rest290606_)
                     (let ()
                       (declare (not safe))
                       (_lp290570_ _rest290606_ _opts290573_)))))
              (if (let () (declare (not safe)) (##pair? _rest290574290594_))
                  (let ((_tl290590290646_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290574290594_)))
                        (_hd290589290644_
                         (let ()
                           (declare (not safe))
                           (##car _rest290574290594_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290589290644_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290590290646_))
                            (let ((_tl290592290651_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl290590290646_)))
                                  (_hd290591290649_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl290590290646_))))
                              (let ((_opt290654_ _hd290591290649_)
                                    (_rest290656_ _tl290592290651_))
                                (let ()
                                  (declare (not safe))
                                  (_K290588290641_ _rest290656_ _opt290654_))))
                            (let ((_rest290614_ _tl290590290646_))
                              (declare (not safe))
                              (_K290580290608_ _rest290614_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290589290644_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290590290646_))
                                (let* ((_tl290587290630_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290590290646_)))
                                       (_rest290633_ _tl290587290630_))
                                  (declare (not safe))
                                  (_K290583290622_ _rest290633_))
                                (let ((_rest290614_ _tl290590290646_))
                                  (declare (not safe))
                                  (_K290580290608_ _rest290614_)))
                            (let ((_rest290614_ _tl290590290646_))
                              (declare (not safe))
                              (_K290580290608_ _rest290614_)))))
                  (let () (declare (not safe)) (_else290578290602_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?290662_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?290662_))))
    (define gxc#gsc-cc-options
      (lambda _g296517_
        (let ((_g296516_ (let () (declare (not safe)) (##length _g296517_))))
          (cond ((let () (declare (not safe)) (##fx= _g296516_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g296517_))
                ((let () (declare (not safe)) (##fx= _g296516_ 1))
                 (apply (lambda (_phi?290664_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?290664_)))
                        _g296517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g296517_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir290563_)
        (let* ((_user-staticdir290565_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp296518
                (let ((__tmp296519
                       (string-append
                        '"-I "
                        _staticdir290563_
                        '" -I "
                        _user-staticdir290565_)))
                  (declare (not safe))
                  (cons __tmp296519 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp296518))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp290475_ ((_rest290477_ (gxc#current-compile-gsc-options))
                         (_opts290478_ '()))
          (let* ((_rest290479290499_ _rest290477_)
                 (_else290483290507_ (lambda () _opts290478_)))
            (let ((_K290493290550_
                   (lambda (_rest290548_)
                     (let ()
                       (declare (not safe))
                       (_lp290475_ _rest290548_ _opts290478_))))
                  (_K290488290528_
                   (lambda (_rest290525_ _opt290526_)
                     (let ((__tmp296520
                            (append _opts290478_
                                    (let ((__tmp296521
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt290526_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp296521)))))
                       (declare (not safe))
                       (_lp290475_ _rest290525_ __tmp296520))))
                  (_K290485290513_
                   (lambda (_rest290511_)
                     (let ()
                       (declare (not safe))
                       (_lp290475_ _rest290511_ _opts290478_)))))
              (if (let () (declare (not safe)) (##pair? _rest290479290499_))
                  (let ((_tl290495290555_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290479290499_)))
                        (_hd290494290553_
                         (let ()
                           (declare (not safe))
                           (##car _rest290479290499_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290494290553_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290495290555_))
                            (let* ((_tl290497290558_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290495290555_)))
                                   (_rest290561_ _tl290497290558_))
                              (declare (not safe))
                              (_K290493290550_ _rest290561_))
                            (let ((_rest290519_ _tl290495290555_))
                              (declare (not safe))
                              (_K290485290513_ _rest290519_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290494290553_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290495290555_))
                                (let ((_tl290492290538_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl290495290555_)))
                                      (_hd290491290536_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl290495290555_))))
                                  (let ((_opt290541_ _hd290491290536_)
                                        (_rest290543_ _tl290492290538_))
                                    (let ()
                                      (declare (not safe))
                                      (_K290488290528_
                                       _rest290543_
                                       _opt290541_))))
                                (let ((_rest290519_ _tl290495290555_))
                                  (declare (not safe))
                                  (_K290485290513_ _rest290519_)))
                            (let ((_rest290519_ _tl290495290555_))
                              (declare (not safe))
                              (_K290485290513_ _rest290519_)))))
                  (let () (declare (not safe)) (_else290483290507_))))))))
    (define gxc#not-string-empty?
      (lambda (_str290472_)
        (let ((__tmp296522
               (let () (declare (not safe)) (string-empty? _str290472_))))
          (declare (not safe))
          (not __tmp296522))))
    (define gxc#gsc-compile-file
      (lambda (_path290440_ _phi?290441_)
        (letrec ((_gsc-link-path290443_
                  (lambda (_base-path290464_)
                    (let _lp290466_ ((_n290468_ '1))
                      (let ((_path290470_
                             (string-append
                              _base-path290464_
                              '".o"
                              (number->string _n290468_))))
                        (if (file-exists? _path290470_)
                            (let ((__tmp296523
                                   (let ()
                                     (declare (not safe))
                                     (+ _n290468_ '1))))
                              (declare (not safe))
                              (_lp290466_ __tmp296523))
                            _path290470_))))))
          (let* ((_base-path290445_ (path-strip-extension _path290440_))
                 (_path-c290447_ (string-append _base-path290445_ '".c"))
                 (_path-o290449_ (string-append _base-path290445_ '".o"))
                 (_link-path290451_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path290443_ _base-path290445_)))
                 (_link-path-c290453_ (string-append _link-path290451_ '".c"))
                 (_link-path-o290455_ (string-append _link-path290451_ '".o"))
                 (_gsc-link-opts290457_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?290441_)))
                 (_gsc-cc-opts290459_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?290441_)))
                 (_gcc-ld-opts290461_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp296530 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296524
                   (let ((__tmp296525
                          (let ((__tmp296526
                                 (let ((__tmp296527
                                        (let ((__tmp296528
                                               (let ((__tmp296529
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path290440_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp296529
                                                         _gsc-link-opts290457_))))
                                          (declare (not safe))
                                          (cons _link-path-c290453_
                                                __tmp296528))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp296527))))
                            (declare (not safe))
                            (cons '"-flat" __tmp296526))))
                     (declare (not safe))
                     (cons '"-link" __tmp296525))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296530 __tmp296524))
            (let ((__tmp296537 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296531
                   (let ((__tmp296532
                          (let ((__tmp296533
                                 (let ((__tmp296534
                                        (let ((__tmp296535
                                               (let ((__tmp296536
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c290453_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c290447_
                                                       __tmp296536))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp296535
                                                  _gsc-cc-opts290459_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp296534))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp296533))))
                     (declare (not safe))
                     (cons '"-obj" __tmp296532))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296537 __tmp296531))
            (let ((__tmp296543 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp296538
                   (let ((__tmp296539
                          (let ((__tmp296540
                                 (let ((__tmp296541
                                        (let ((__tmp296542
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o290455_
                                                       _gcc-ld-opts290461_))))
                                          (declare (not safe))
                                          (cons _path-o290449_ __tmp296542))))
                                   (declare (not safe))
                                   (cons _link-path290451_ __tmp296541))))
                            (declare (not safe))
                            (cons '"-o" __tmp296540))))
                     (declare (not safe))
                     (cons '"-shared" __tmp296539))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp296543
               __tmp296538))
            (for-each
             delete-file
             (let ((__tmp296544
                    (let ((__tmp296545
                           (let ((__tmp296546
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o290455_ '()))))
                             (declare (not safe))
                             (cons _link-path-c290453_ __tmp296546))))
                      (declare (not safe))
                      (cons _path-o290449_ __tmp296545))))
               (declare (not safe))
               (cons _path-c290447_ __tmp296544)))))))
    (define gxc#compile-output-file
      (lambda (_ctx290411_ _n290412_ _ext290413_)
        (letrec ((_module-relative-path290415_
                  (lambda (_ctx290438_)
                    (path-strip-directory
                     (let ((__tmp296547
                            (##structure-ref
                             _ctx290438_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp296547)))))
                 (_module-source-directory290416_
                  (lambda (_ctx290434_)
                    (path-directory
                     (let ((_mpath290436_
                            (##structure-ref
                             _ctx290434_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath290436_))
                           _mpath290436_
                           (let ()
                             (declare (not safe))
                             (last _mpath290436_)))))))
                 (_section-string290417_
                  (lambda (_n290432_)
                    (if (let () (declare (not safe)) (number? _n290432_))
                        (number->string _n290432_)
                        (if (let () (declare (not safe)) (symbol? _n290432_))
                            (symbol->string _n290432_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n290432_))
                                _n290432_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n290432_)))))))
                 (_file-name290418_
                  (lambda (_path290430_)
                    (if _n290412_
                        (string-append
                         _path290430_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string290417_ _n290412_))
                         _ext290413_)
                        (string-append _path290430_ _ext290413_))))
                 (_file-path290419_
                  (lambda ()
                    (let ((_$e290425_ (gxc#current-compile-output-dir)))
                      (if _$e290425_
                          ((lambda (_outdir290428_)
                             (path-expand
                              (let ((__tmp296549
                                     (let ((__tmp296550
                                            (##structure-ref
                                             _ctx290411_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp296550))))
                                (declare (not safe))
                                (_file-name290418_ __tmp296549))
                              _outdir290428_))
                           _$e290425_)
                          (path-expand
                           (let ((__tmp296548
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path290415_
                                     _ctx290411_))))
                             (declare (not safe))
                             (_file-name290418_ __tmp296548))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory290416_
                              _ctx290411_))))))))
          (let ((_path290421_
                 (let () (declare (not safe)) (_file-path290419_))))
            (let ((__tmp296551
                   (lambda ()
                     (let ((__tmp296552 (path-directory _path290421_)))
                       (declare (not safe))
                       (create-directory* __tmp296552)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296551))
            _path290421_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx290393_)
        (letrec ((_file-name290395_
                  (lambda (_id290409_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id290409_))
                     '".scm")))
                 (_file-path290396_
                  (lambda ()
                    (let* ((_file290402_
                            (let ((__tmp296553
                                   (##structure-ref
                                    _ctx290393_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name290395_ __tmp296553)))
                           (_$e290404_ (gxc#current-compile-output-dir)))
                      (if _$e290404_
                          ((lambda (_outdir290407_)
                             (path-expand
                              _file290402_
                              (path-expand '"static" _outdir290407_)))
                           _$e290404_)
                          (path-expand _file290402_ '"static"))))))
          (let ((_path290398_
                 (let () (declare (not safe)) (_file-path290396_))))
            (let ((__tmp296554
                   (lambda ()
                     (let ((__tmp296555 (path-directory _path290398_)))
                       (declare (not safe))
                       (create-directory* __tmp296555)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296554))
            _path290398_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx290387_ _opts290388_)
        (let ((_$e290390_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts290388_))))
          (if _$e290390_
              (values _$e290390_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx290387_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr290380_)
        (if (let () (declare (not safe)) (string? _idstr290380_))
            (let* ((_str290382_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr290380_)))
                   (_strs290384_
                    (let ()
                      (declare (not safe))
                      (string-split _str290382_ '#\/))))
              (let () (declare (not safe)) (string-join _strs290384_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr290380_))
                (let ((__tmp296556 (symbol->string _idstr290380_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp296556))
                (error '"Bad module id" _idstr290380_)))))
    (define gxc#invoke__%
      (lambda (_g296557_
               _stdout-redirection290344290348_
               _stderr-redirection290345290350_
               _program290352_
               _args290353_)
        (let* ((_stdout-redirection290355_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection290344290348_ absent-value))
                    '#f
                    _stdout-redirection290344290348_))
               (_stderr-redirection290357_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection290345290350_ absent-value))
                    '#f
                    _stderr-redirection290345290350_)))
          (let ((__tmp296558
                 (let ()
                   (declare (not safe))
                   (cons _program290352_ _args290353_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp296558))
          (let ((_proc290359_
                 (open-process
                  (let ((__tmp296559
                         (let ((__tmp296560
                                (let ((__tmp296561
                                       (let ((__tmp296562
                                              (let ((__tmp296563
                                                     (let ((__tmp296564
                                                            (let ((__tmp296565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection290357_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp296565))))
               (declare (not safe))
               (cons _stdout-redirection290355_ __tmp296564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp296563))))
                                         (declare (not safe))
                                         (cons _args290353_ __tmp296562))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp296561))))
                           (declare (not safe))
                           (cons _program290352_ __tmp296560))))
                    (declare (not safe))
                    (cons 'path: __tmp296559)))))
            (if (or _stdout-redirection290355_ _stderr-redirection290357_)
                (read-line _proc290359_ '#f)
                '#!void)
            (let ((_status290364_ (process-status _proc290359_)))
              (close-port _proc290359_)
              (if (let () (declare (not safe)) (zero? _status290364_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program290352_))))))))
    (define gxc#invoke__@
      (lambda (_keys290343290369_ . _args290371_)
        (apply gxc#invoke__%
               _keys290343290369_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290343290369_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290343290369_
                  'stderr-redirection:
                  absent-value))
               _args290371_)))
    (define gxc#invoke
      (lambda _args290346290377_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args290346290377_)))
    (define gxc#join!
      (lambda (_thread290337_)
        (let ((__tmp296567
               (lambda (_exn290339_)
                 (if (uncaught-exception? _exn290339_)
                     (raise (uncaught-exception-reason _exn290339_))
                     (raise _exn290339_))))
              (__tmp296566 (lambda () (thread-join! _thread290337_))))
          (declare (not safe))
          (with-catch __tmp296567 __tmp296566))))))
