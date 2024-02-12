(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707742547)
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
      (lambda (_path291591_ _fun291592_)
        (with-output-to-file
         (let ((__tmp296253
                (let ()
                  (declare (not safe))
                  (cons _path291591_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp296253))
         _fun291592_)))
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
      (lambda (_gerbil-libdir291586_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir291586_)))
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
      (lambda (_dir291584_) (delete-file-or-directory _dir291584_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath291558_ _opts291559_)
        (if (let () (declare (not safe)) (string? _srcpath291558_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291558_)))
        (let ((_outdir291561_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291559_)))
              (_invoke-gsc?291562_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291559_)))
              (_gsc-options291563_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291559_)))
              (_keep-scm?291564_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291559_)))
              (_verbosity291565_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291559_)))
              (_optimize291566_
               (let () (declare (not safe)) (pgetq 'optimize: _opts291559_)))
              (_debug291567_
               (let () (declare (not safe)) (pgetq 'debug: _opts291559_)))
              (_gen-ssxi291568_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts291559_))))
          (if _outdir291561_
              (let ((__tmp296254
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291561_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296254))
              '#!void)
          (if _optimize291566_
              (let ((__tmp296255
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296255))
              '#!void)
          (let ((__tmp296259
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath291558_))
                   (let ((__tmp296260
                          (let ((__tmp296261
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291558_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296261))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp296260))))
                (__tmp296258
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296256
                 (let ((__tmp296257
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291558_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp296257))))
            (declare (not safe))
            (call-with-parameters
             __tmp296259
             gxc#current-compile-output-dir
             _outdir291561_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291562_
             gxc#current-compile-gsc-options
             _gsc-options291563_
             gxc#current-compile-keep-scm
             _keep-scm?291564_
             gxc#current-compile-verbose
             _verbosity291565_
             gxc#current-compile-optimize
             _optimize291566_
             gxc#current-compile-debug
             _debug291567_
             gxc#current-compile-generate-ssxi
             _gen-ssxi291568_
             gxc#current-compile-timestamp
             __tmp296258
             gxc#current-compile-context
             __tmp296256
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath291577_)
        (let ((_opts291579_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath291577_ _opts291579_))))
    (define gxc#compile-module
      (lambda _g296263_
        (let ((_g296262_ (let () (declare (not safe)) (##length _g296263_))))
          (cond ((let () (declare (not safe)) (##fx= _g296262_ 1))
                 (apply (lambda (_srcpath291577_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath291577_)))
                        _g296263_))
                ((let () (declare (not safe)) (##fx= _g296262_ 2))
                 (apply (lambda (_srcpath291581_ _opts291582_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath291581_
                             _opts291582_)))
                        _g296263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g296263_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath291534_ _opts291535_)
        (if (let () (declare (not safe)) (string? _srcpath291534_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath291534_)))
        (let ((_outdir291537_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts291535_)))
              (_invoke-gsc?291538_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts291535_)))
              (_gsc-options291539_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts291535_)))
              (_keep-scm?291540_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts291535_)))
              (_verbosity291541_
               (let () (declare (not safe)) (pgetq 'verbose: _opts291535_)))
              (_debug291542_
               (let () (declare (not safe)) (pgetq 'debug: _opts291535_))))
          (if _outdir291537_
              (let ((__tmp296264
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir291537_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp296264))
              '#!void)
          (let ((__tmp296268
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath291534_))
                   (let ((__tmp296269
                          (let ((__tmp296270
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath291534_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp296270))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp296269
                      _opts291535_))))
                (__tmp296267
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp296265
                 (let ((__tmp296266
                        (let ()
                          (declare (not safe))
                          (cons _srcpath291534_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp296266))))
            (declare (not safe))
            (call-with-parameters
             __tmp296268
             gxc#current-compile-output-dir
             _outdir291537_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?291538_
             gxc#current-compile-gsc-options
             _gsc-options291539_
             gxc#current-compile-keep-scm
             _keep-scm?291540_
             gxc#current-compile-verbose
             _verbosity291541_
             gxc#current-compile-debug
             _debug291542_
             gxc#current-compile-timestamp
             __tmp296267
             gxc#current-compile-context
             __tmp296265
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath291550_)
        (let ((_opts291552_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath291550_ _opts291552_))))
    (define gxc#compile-exe
      (lambda _g296272_
        (let ((_g296271_ (let () (declare (not safe)) (##length _g296272_))))
          (cond ((let () (declare (not safe)) (##fx= _g296271_ 1))
                 (apply (lambda (_srcpath291550_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath291550_)))
                        _g296272_))
                ((let () (declare (not safe)) (##fx= _g296271_ 2))
                 (apply (lambda (_srcpath291554_ _opts291555_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath291554_ _opts291555_)))
                        _g296272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g296272_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx291530_ _opts291531_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts291531_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx291530_
               _opts291531_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx291530_
               _opts291531_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx291413_ _opts291414_)
        (letrec ((_generate-stub291416_
                  (lambda (_builtin-modules291526_)
                    (let ((_mod-main291528_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291413_ 'main))))
                      (write (let ((__tmp296273
                                    (let ((__tmp296274
                                           (let ((__tmp296275
                                                  (let ((__tmp296276
                                                         (let ((__tmp296278
                                                                (let ((__tmp296279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules291526_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296279)))
                       (__tmp296277
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp296278 __tmp296277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp296276))))
                                             (declare (not safe))
                                             (cons __tmp296275 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp296274))))
                               (declare (not safe))
                               (cons 'define __tmp296273)))
                      (write (let ((__tmp296280
                                    (let ((__tmp296319
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296281
                                           (let ((__tmp296282
                                                  (let ((__tmp296283
                                                         (let ((__tmp296307
                                                                (let ((__tmp296308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296309
                                      (let ((__tmp296317
                                             (let ((__tmp296318
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp296318)))
                                            (__tmp296310
                                             (let ((__tmp296311
                                                    (let ((__tmp296312
                                                           (let ((__tmp296313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296314
                                 (let ((__tmp296315
                                        (let ((__tmp296316
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp296316 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp296315))))
                            (declare (not safe))
                            (cons __tmp296314 '()))))
                     (declare (not safe))
                     (cons _mod-main291528_ __tmp296313))))
              (declare (not safe))
              (cons 'apply __tmp296312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296311 '()))))
                                        (declare (not safe))
                                        (cons __tmp296317 __tmp296310))))
                                 (declare (not safe))
                                 (cons '() __tmp296309))))
                          (declare (not safe))
                          (cons 'lambda __tmp296308)))
                       (__tmp296284
                        (let ((__tmp296285
                               (let ((__tmp296286
                                      (let ((__tmp296287
                                             (let ((__tmp296298
                                                    (let ((__tmp296299
                                                           (let ((__tmp296300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296301
                                 (let ((__tmp296302
                                        (let ((__tmp296303
                                               (let ((__tmp296304
                                                      (let ((__tmp296305
                                                             (let ((__tmp296306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp296306 '()))))
                (declare (not safe))
                (cons 'force-output __tmp296305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp296304 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp296303))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp296302))))
                            (declare (not safe))
                            (cons __tmp296301 '()))))
                     (declare (not safe))
                     (cons 'void __tmp296300))))
              (declare (not safe))
              (cons 'with-catch __tmp296299)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp296288
                                                    (let ((__tmp296289
                                                           (let ((__tmp296290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp296291
                                 (let ((__tmp296292
                                        (let ((__tmp296293
                                               (let ((__tmp296294
                                                      (let ((__tmp296295
                                                             (let ((__tmp296296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp296297
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp296297 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp296296))))
                (declare (not safe))
                (cons __tmp296295 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp296294))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp296293))))
                                   (declare (not safe))
                                   (cons __tmp296292 '()))))
                            (declare (not safe))
                            (cons 'void __tmp296291))))
                     (declare (not safe))
                     (cons 'with-catch __tmp296290))))
              (declare (not safe))
              (cons __tmp296289 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp296298
                                                     __tmp296288))))
                                        (declare (not safe))
                                        (cons '() __tmp296287))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp296286))))
                          (declare (not safe))
                          (cons __tmp296285 '()))))
                   (declare (not safe))
                   (cons __tmp296307 __tmp296284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp296283))))
                                             (declare (not safe))
                                             (cons __tmp296282 '()))))
                                      (declare (not safe))
                                      (cons __tmp296319 __tmp296281))))
                               (declare (not safe))
                               (cons 'define __tmp296280)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts291417_
                  (lambda (_libgerbil291524_)
                    (call-with-input-file
                     (string-append _libgerbil291524_ '".ldd")
                     read)))
                 (_replace-extension291418_
                  (lambda (_path291521_ _ext291522_)
                    (string-append
                     (path-strip-extension _path291521_)
                     _ext291522_)))
                 (_not-exclude-module?291419_
                  (lambda (_ctx291517_)
                    (let ((_id-str291519_
                           (symbol->string
                            (##structure-ref
                             _ctx291517_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp296321
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str291519_))))
                            (declare (not safe))
                            (not __tmp296321))
                          (let ((__tmp296320
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str291519_))))
                            (declare (not safe))
                            (not __tmp296320))
                          '#f))))
                 (_not-file-empty?291420_
                  (lambda (_path291515_)
                    (let ((__tmp296322
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path291515_))))
                      (declare (not safe))
                      (not __tmp296322))))
                 (_compile-stub291421_
                  (lambda (_output-scm291428_ _output-bin291429_)
                    (let* ((_gerbil-home291431_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291433_
                            (path-expand '"lib" _gerbil-home291431_))
                           (_gerbil-staticdir291435_
                            (path-expand '"static" _gerbil-libdir291433_))
                           (_gxlink291437_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir291433_))
                           (_tmp291439_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path291443_
                            (lambda (_f291441_)
                              (path-expand
                               (path-strip-directory _f291441_)
                               _tmp291439_)))
                           (_deps291445_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291413_)))
                           (_deps291447_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?291419_
                                      _deps291445_)))
                           (_src-deps-scm291449_
                            (map gxc#find-static-module-file _deps291447_))
                           (_src-deps-scm291451_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?291420_
                                      _src-deps-scm291449_)))
                           (_src-deps-scm291453_
                            (map path-expand _src-deps-scm291451_))
                           (_deps-scm291455_
                            (map _tmp-path291443_ _src-deps-scm291453_))
                           (_deps-c291461_
                            (map (lambda (_g291456291458_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291418_
                                      _g291456291458_
                                      '".c")))
                                 _deps-scm291455_))
                           (_deps-o291467_
                            (map (lambda (_g291462291464_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension291418_
                                      _g291462291464_
                                      '".o")))
                                 _deps-scm291455_))
                           (_src-bin-scm291469_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291413_)))
                           (_src-bin-scm291471_
                            (path-expand _src-bin-scm291469_))
                           (_bin-scm291473_
                            (let ()
                              (declare (not safe))
                              (_tmp-path291443_ _src-bin-scm291471_)))
                           (_bin-c291475_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291418_
                               _bin-scm291473_
                               '".c")))
                           (_bin-o291477_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291418_
                               _bin-scm291473_
                               '".o")))
                           (_output-bin291479_
                            (path-expand _output-bin291429_))
                           (_output-scm291481_
                            (path-expand _output-scm291428_))
                           (_output-c291483_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291418_
                               _output-scm291481_
                               '".c")))
                           (_output-o291485_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291418_
                               _output-scm291481_
                               '".o")))
                           (_output_-c291487_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291418_
                               _output-scm291481_
                               '"_.c")))
                           (_output_-o291489_
                            (let ()
                              (declare (not safe))
                              (_replace-extension291418_
                               _output-scm291481_
                               '"_.o")))
                           (_gsc-link-opts291491_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291493_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291495_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir291435_)))
                           (_output-ld-opts291497_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a291499_
                            (path-expand '"libgerbil.a" _gerbil-libdir291433_))
                           (_libgerbil.so291501_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir291433_))
                           (_libgerbil-ld-opts291503_
                            (if (file-exists? _libgerbil.so291501_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts291417_
                                   _libgerbil.so291501_))
                                (if (file-exists? _libgerbil.a291499_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts291417_
                                       _libgerbil.a291499_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a291499_
                                       _libgerbil.so291501_)))))
                           (_rpath291505_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291433_)))
                           (_builtin-modules291509_
                            (map (lambda (_mod291507_)
                                   (symbol->string
                                    (##structure-ref
                                     _mod291507_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx291413_ _deps291447_)))))
                      (let ((__tmp296323
                             (lambda ()
                               (let ((__tmp296324
                                      (path-directory _output-bin291479_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296324)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296323))
                      (let ((__tmp296325
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub291416_
                                  _builtin-modules291509_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291481_
                         __tmp296325))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296326
                                   (lambda () (create-directory _tmp291439_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp296326))
                            (for-each
                             copy-file
                             _src-deps-scm291453_
                             _deps-scm291455_)
                            (copy-file _src-bin-scm291471_ _bin-scm291473_)
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
                                       (cons _output-scm291481_ '()))))
                                (declare (not safe))
                                (cons _bin-scm291473_ __tmp296333))))
                         (declare (not safe))
                         (foldr1 cons __tmp296332 _deps-scm291455_))))
                  (declare (not safe))
                  (foldr1 cons __tmp296331 _gsc-link-opts291491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink291437_
                                                         __tmp296330))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp296329))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296328))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296334
                               __tmp296327))
                            (let ((__tmp296342
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296335
                                   (let ((__tmp296336
                                          (let ((__tmp296337
                                                 (let ((__tmp296338
                                                        (let ((__tmp296339
                                                               (let ((__tmp296340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296341
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c291487_ '()))))
                                (declare (not safe))
                                (cons _output-c291483_ __tmp296341))))
                         (declare (not safe))
                         (cons _bin-c291475_ __tmp296340))))
                  (declare (not safe))
                  (foldr1 cons __tmp296339 _deps-c291461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296338
                                                           _gsc-static-opts291495_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296337
                                                    _gsc-cc-opts291493_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296336))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296342
                               __tmp296335))
                            (let ((__tmp296355
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296343
                                   (let ((__tmp296344
                                          (let ((__tmp296345
                                                 (let ((__tmp296346
                                                        (let ((__tmp296347
                                                               (let ((__tmp296348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296349
                                     (let ((__tmp296350
                                            (let ((__tmp296351
                                                   (let ((__tmp296352
                                                          (let ((__tmp296353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp296354
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts291503_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp296354))))
                    (declare (not safe))
                    (cons _gerbil-libdir291433_ __tmp296353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp296352))))
                                              (declare (not safe))
                                              (cons _rpath291505_
                                                    __tmp296351))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp296350
                                               _output-ld-opts291497_))))
                                (declare (not safe))
                                (cons _output_-o291489_ __tmp296349))))
                         (declare (not safe))
                         (cons _output-o291485_ __tmp296348))))
                  (declare (not safe))
                  (cons _bin-o291477_ __tmp296347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296346
                                                           _deps-o291467_))))
                                            (declare (not safe))
                                            (cons _output-bin291479_
                                                  __tmp296345))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296344))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296355
                               __tmp296343))
                            (for-each
                             delete-file
                             (let ((__tmp296356
                                    (let ((__tmp296357
                                           (let ((__tmp296358
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o291489_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o291485_
                                                   __tmp296358))))
                                      (declare (not safe))
                                      (cons _output_-c291487_ __tmp296357))))
                               (declare (not safe))
                               (cons _output-c291483_ __tmp296356)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp291439_)))
                          '#!void)))))
          (let* ((_output-bin291423_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291413_ _opts291414_)))
                 (_output-scm291425_
                  (string-append _output-bin291423_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291421_ _output-scm291425_ _output-bin291423_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291425_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx291238_ _opts291239_)
        (letrec ((_reset-declare291241_
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
                 (_generate-stub291242_
                  (lambda (_deps291404_)
                    (let ((_mod-main291406_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx291238_ 'main)))
                          (_reset-decl291407_
                           (let ()
                             (declare (not safe))
                             (_reset-declare291241_)))
                          (_user-decl291408_
                           (let ()
                             (declare (not safe))
                             (_user-declare291243_))))
                      (for-each
                       (lambda (_dep291410_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl291407_)
                         (newline)
                         (if _user-decl291408_
                             (begin (write _user-decl291408_) (newline))
                             '#!void)
                         (write (let ((__tmp296359
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep291410_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp296359)))
                         (newline))
                       _deps291404_)
                      (write (let ((__tmp296360
                                    (let ((__tmp296373
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp296361
                                           (let ((__tmp296369
                                                  (let ((__tmp296370
                                                         (let ((__tmp296371
                                                                (let ((__tmp296372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp296372))))
                   (declare (not safe))
                   (cons __tmp296371 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp296370)))
                                                 (__tmp296362
                                                  (let ((__tmp296363
                                                         (let ((__tmp296364
                                                                (let ((__tmp296365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp296366
                                      (let ((__tmp296367
                                             (let ((__tmp296368
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp296368 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp296367))))
                                 (declare (not safe))
                                 (cons __tmp296366 '()))))
                          (declare (not safe))
                          (cons _mod-main291406_ __tmp296365))))
                   (declare (not safe))
                   (cons 'apply __tmp296364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296363 '()))))
                                             (declare (not safe))
                                             (cons __tmp296369 __tmp296362))))
                                      (declare (not safe))
                                      (cons __tmp296373 __tmp296361))))
                               (declare (not safe))
                               (cons 'define __tmp296360)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare291243_
                  (lambda ()
                    (let* ((_gsc-opts291309_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts291239_)))
                           (_gsc-prelude291311_
                            (if _gsc-opts291309_
                                (member '"-prelude" _gsc-opts291309_)
                                '#f))
                           (_gsc-prelude291313_
                            (if _gsc-prelude291311_
                                (read (open-input-string
                                       (cadr _gsc-prelude291311_)))
                                '#f)))
                      (let _lp291316_ ((_rest291318_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude291313_ '())))
                                       (_user-decls291319_ '()))
                        (let* ((_rest291320291328_ _rest291318_)
                               (_else291322291336_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls291319_))
                                      '#f
                                      (let ((__tmp296374
                                             (reverse _user-decls291319_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp296374)))))
                               (_K291324291392_
                                (lambda (_rest291339_ _expr291340_)
                                  (let* ((_expr291341291353_ _expr291340_)
                                         (_else291344291361_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp291316_
                                               _rest291339_
                                               _user-decls291319_)))))
                                    (let ((_K291349291382_
                                           (lambda (_decls291380_)
                                             (let ((__tmp296375
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls291319_
                                                              _decls291380_))))
                                               (declare (not safe))
                                               (_lp291316_
                                                _rest291339_
                                                __tmp296375))))
                                          (_K291346291367_
                                           (lambda (_exprs291365_)
                                             (let ((__tmp296376
                                                    (append _exprs291365_
                                                            _rest291339_)))
                                               (declare (not safe))
                                               (_lp291316_
                                                __tmp296376
                                                _user-decls291319_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr291341291353_))
                                          (let ((_tl291351291387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr291341291353_)))
                                                (_hd291350291385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr291341291353_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd291350291385_
                                                         'declare))
                                                (let ((_decls291390_
                                                       _tl291351291387_))
                                                  (declare (not safe))
                                                  (_K291349291382_
                                                   _decls291390_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd291350291385_
                                                             'begin))
                                                    (let ((_exprs291375_
                                                           _tl291351291387_))
                                                      (declare (not safe))
                                                      (_K291346291367_
                                                       _exprs291375_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else291344291361_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else291344291361_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest291320291328_))
                              (let ((_hd291325291395_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest291320291328_)))
                                    (_tl291326291397_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest291320291328_))))
                                (let* ((_expr291400_ _hd291325291395_)
                                       (_rest291402_ _tl291326291397_))
                                  (declare (not safe))
                                  (_K291324291392_ _rest291402_ _expr291400_)))
                              (let ()
                                (declare (not safe))
                                (_else291322291336_))))))))
                 (_compile-stub291244_
                  (lambda (_output-scm291251_ _output-bin291252_)
                    (let* ((_gerbil-home291254_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir291256_
                            (path-expand '"lib" _gerbil-home291254_))
                           (_runtime291258_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp291260_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home291254_))
                           (_include-gambit-sharp291262_
                            (string-append
                             '"(include \""
                             _gambit-sharp291260_
                             '"\")"))
                           (_bin-scm291264_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx291238_)))
                           (_deps291266_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx291238_)))
                           (_deps291268_
                            (map gxc#find-static-module-file _deps291266_))
                           (_deps291273_
                            (let ((__tmp296377
                                   (lambda (_$obj291270_)
                                     (let ((__tmp296378
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj291270_))))
                                       (declare (not safe))
                                       (not __tmp296378)))))
                              (declare (not safe))
                              (filter __tmp296377 _deps291268_)))
                           (_deps291277_
                            (let ((__tmp296379
                                   (lambda (_f291275_)
                                     (let ((__tmp296380
                                            (member _f291275_
                                                    _runtime291258_)))
                                       (declare (not safe))
                                       (not __tmp296380)))))
                              (declare (not safe))
                              (filter __tmp296379 _deps291273_)))
                           (_output-base291279_
                            (string-append
                             (path-strip-extension _output-scm291251_)))
                           (_output-c291281_
                            (string-append _output-base291279_ '".c"))
                           (_output-o291283_
                            (string-append _output-base291279_ '".o"))
                           (_output-c_291285_
                            (string-append _output-base291279_ '"_.c"))
                           (_output-o_291287_
                            (string-append _output-base291279_ '"_.o"))
                           (_gsc-link-opts291289_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts291291_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts291293_
                            (let ((__tmp296381
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir291256_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp296381)))
                           (_output-ld-opts291295_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros291297_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp296383
                                       (let ((__tmp296384
                                              (let ((__tmp296385
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp291262_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp296385))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp296384))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296383))
                                (let ((__tmp296382
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp291262_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp296382))))
                           (_gsc-link-opts291299_
                            (append _gsc-link-opts291289_
                                    _gsc-gx-macros291297_))
                           (_rpath291301_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir291256_)))
                           (_default-ld-options291303_
                            (let ((__tmp296386
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp296386))))
                      (let ((__tmp296387
                             (lambda ()
                               (let ((__tmp296388
                                      (path-directory _output-bin291252_)))
                                 (declare (not safe))
                                 (create-directory* __tmp296388)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp296387))
                      (let ((__tmp296389
                             (lambda ()
                               (let ((__tmp296390
                                      (let ((__tmp296391
                                             (let ((__tmp296392
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm291264_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp296392
                                                       _deps291277_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp296391
                                                _runtime291258_))))
                                 (declare (not safe))
                                 (_generate-stub291242_ __tmp296390)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm291251_
                         __tmp296389))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp296398
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296393
                                   (let ((__tmp296394
                                          (let ((__tmp296395
                                                 (let ((__tmp296396
                                                        (let ((__tmp296397
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm291251_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp296397 _gsc-link-opts291299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_291285_
                                                         __tmp296396))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp296395))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp296394))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296398
                               __tmp296393))
                            (let ((__tmp296404
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp296399
                                   (let ((__tmp296400
                                          (let ((__tmp296401
                                                 (let ((__tmp296402
                                                        (let ((__tmp296403
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_291285_ '()))))
                  (declare (not safe))
                  (cons _output-c291281_ __tmp296403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp296402
                                                           _gsc-static-opts291293_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp296401
                                                    _gsc-cc-opts291291_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp296400))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296404
                               __tmp296399))
                            (let ((__tmp296414
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp296405
                                   (let ((__tmp296406
                                          (let ((__tmp296407
                                                 (let ((__tmp296408
                                                        (let ((__tmp296409
                                                               (let ((__tmp296410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp296411
                                     (let ((__tmp296412
                                            (let ((__tmp296413
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options291303_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir291256_
                                                    __tmp296413))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp296412))))
                                (declare (not safe))
                                (cons _rpath291301_ __tmp296411))))
                         (declare (not safe))
                         (foldr1 cons __tmp296410 _output-ld-opts291295_))))
                  (declare (not safe))
                  (cons _output-o_291287_ __tmp296409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o291283_
                                                         __tmp296408))))
                                            (declare (not safe))
                                            (cons _output-bin291252_
                                                  __tmp296407))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp296406))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp296414
                               __tmp296405)))
                          '#!void)))))
          (let* ((_output-bin291246_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx291238_ _opts291239_)))
                 (_output-scm291248_
                  (string-append _output-bin291246_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub291244_ _output-scm291248_ _output-bin291246_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm291248_))))))
    (define gxc#find-export-binding
      (lambda (_ctx291188_ _id291189_)
        (let ((_$e291235_
               (let ((__tmp296416
                      (lambda (_e291190291192_)
                        (let* ((_g291194291204_ _e291190291192_)
                               (_else291196291212_ (lambda () '#f))
                               (_K291198291216_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g291194291204_
                                 'gx#module-export::t))
                              (let* ((_e291199291219_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291194291204_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e291200291222_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291194291204_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e291201291225_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g291194291204_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e291201291225_ '0))
                                    (let ((_e291202291228_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g291194291204_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g291230291232_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g291230291232_
                                                    _id291189_)))
                                           _e291202291228_)
                                          (let ()
                                            (declare (not safe))
                                            (_K291198291216_))
                                          (let ()
                                            (declare (not safe))
                                            (_else291196291212_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else291196291212_))))
                              (let ()
                                (declare (not safe))
                                (_else291196291212_))))))
                     (__tmp296415
                      (##structure-ref
                       _ctx291188_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (find __tmp296416 __tmp296415))))
          (if _$e291235_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e291235_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx291180_ _id291181_)
        (let ((_$e291183_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx291180_ _id291181_))))
          (if _$e291183_
              ((lambda (_bind291186_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind291186_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id291181_)))
                 (##structure-ref _bind291186_ '1 gx#binding::t '#f))
               _$e291183_)
              (let ((__tmp296417
                     (##structure-ref
                      _ctx291180_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp296417
                 _id291181_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx291067_)
        (letrec* ((_ht291069_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template291070_
                   (lambda (_in291132_ _phi291133_)
                     (let ((_iphi291135_
                            (fx+ _phi291133_
                                 (##direct-structure-ref
                                  _in291132_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports291136_
                            (##structure-ref
                             (##direct-structure-ref
                              _in291132_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp291138_ ((_rest291140_ _imports291136_)
                                        (_r291141_ '()))
                         (let* ((_rest291142291150_ _rest291140_)
                                (_else291144291158_ (lambda () _r291141_))
                                (_K291146291168_
                                 (lambda (_rest291161_ _in291162_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in291162_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi291135_))
                                           (let ((__tmp296424
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in291162_
                                                          _r291141_))))
                                             (declare (not safe))
                                             (_lp291138_
                                              _rest291161_
                                              __tmp296424))
                                           (let ()
                                             (declare (not safe))
                                             (_lp291138_
                                              _rest291161_
                                              _r291141_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in291162_
                                              'gx#module-import::t))
                                           (let ((_iphi291164_
                                                  (fx+ _phi291133_
                                                       (##direct-structure-ref
                                                        _in291162_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi291164_))
                                                 (let ((__tmp296422
                                                        (let ((__tmp296423
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in291162_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp296423 _r291141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp291138_
                                                    _rest291161_
                                                    __tmp296422))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp291138_
                                                    _rest291161_
                                                    _r291141_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in291162_
                                                  'gx#import-set::t))
                                               (let ((_xphi291166_
                                                      (fx+ _iphi291135_
                                                           (##direct-structure-ref
                                                            _in291162_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi291166_))
                                                     (let ((__tmp296420
                                                            (let ((__tmp296421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in291162_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp296421 _r291141_))))
               (declare (not safe))
               (_lp291138_ _rest291161_ __tmp296420))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi291166_)
                                                         (let ((__tmp296418
                                                                (let ((__tmp296419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template291070_
                                  _in291162_
                                  _iphi291135_))))
                          (declare (not safe))
                          (foldl1 cons _r291141_ __tmp296419))))
                   (declare (not safe))
                   (_lp291138_ _rest291161_ __tmp296418))
                 (let ()
                   (declare (not safe))
                   (_lp291138_ _rest291161_ _r291141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp291138_
                                                  _rest291161_
                                                  _r291141_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest291142291150_))
                               (let ((_hd291147291171_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest291142291150_)))
                                     (_tl291148291173_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest291142291150_))))
                                 (let* ((_in291176_ _hd291147291171_)
                                        (_rest291178_ _tl291148291173_))
                                   (declare (not safe))
                                   (_K291146291168_ _rest291178_ _in291176_)))
                               (let ()
                                 (declare (not safe))
                                 (_else291144291158_))))))))
                  (_find-deps291071_
                   (lambda (_rest291078_ _deps291079_)
                     (let* ((_rest291080291088_ _rest291078_)
                            (_else291082291096_ (lambda () _deps291079_))
                            (_K291084291120_
                             (lambda (_rest291099_ _hd291100_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd291100_
                                      'gx#module-context::t))
                                   (let ((_id291102_
                                          (##structure-ref
                                           _hd291100_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports291103_
                                          (##structure-ref
                                           _hd291100_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht291069_
                                            _id291102_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps291071_
                                            _rest291099_
                                            _deps291079_))
                                         (let ((_$e291105_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd291100_))))
                                           (if _$e291105_
                                               ((lambda (_pre291108_)
                                                  (let ((_xdeps291110_
                                                         (let ((__tmp296437
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre291108_ _imports291103_))))
                   (declare (not safe))
                   (_find-deps291071_ __tmp296437 _deps291079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht291069_
                                                       _id291102_
                                                       _hd291100_))
                                                    (let ((__tmp296438
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd291100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps291110_))))
              (declare (not safe))
              (_find-deps291071_ _rest291099_ __tmp296438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e291105_)
                                               (let ((_xdeps291112_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps291071_
                                                         _imports291103_
                                                         _deps291079_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht291069_
                                                    _id291102_
                                                    _hd291100_))
                                                 (let ((__tmp296436
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd291100_
                                                                _xdeps291112_))))
                                                   (declare (not safe))
                                                   (_find-deps291071_
                                                    _rest291099_
                                                    __tmp296436)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd291100_
                                          'gx#prelude-context::t))
                                       (let ((_id291114_
                                              (##structure-ref
                                               _hd291100_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht291069_
                                                _id291114_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps291071_
                                                _rest291099_
                                                _deps291079_))
                                             (let ((_xdeps291116_
                                                    (let ((__tmp296434
                                                           (##structure-ref
                                                            _hd291100_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps291071_
                                                       __tmp296434
                                                       _deps291079_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht291069_
                                                      _id291114_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps291071_
                                                      _rest291099_
                                                      _xdeps291116_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht291069_
                                                        _id291114_
                                                        _hd291100_))
                                                     (let ((__tmp296435
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd291100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps291116_))))
               (declare (not safe))
               (_find-deps291071_ _rest291099_ __tmp296435)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd291100_
                                              'gx#module-import::t))
                                           (if (let ((__tmp296433
                                                      (##direct-structure-ref
                                                       _hd291100_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp296433))
                                               (let ((__tmp296431
                                                      (let ((__tmp296432
                                                             (##direct-structure-ref
                                                              _hd291100_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296432
                                                              _rest291099_))))
                                                 (declare (not safe))
                                                 (_find-deps291071_
                                                  __tmp296431
                                                  _deps291079_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps291071_
                                                  _rest291099_
                                                  _deps291079_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd291100_
                                                  'gx#module-export::t))
                                               (let ((__tmp296429
                                                      (let ((__tmp296430
                                                             (##direct-structure-ref
                                                              _hd291100_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp296430
                                                              _rest291099_))))
                                                 (declare (not safe))
                                                 (_find-deps291071_
                                                  __tmp296429
                                                  _deps291079_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd291100_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp296428
                                                              (##direct-structure-ref
                                                               _hd291100_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp296428))
                                                       (let ((__tmp296426
                                                              (let ((__tmp296427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd291100_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp296427 _rest291099_))))
                 (declare (not safe))
                 (_find-deps291071_ __tmp296426 _deps291079_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd291100_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps291118_
                           (let ()
                             (declare (not safe))
                             (_import-set-template291070_ _hd291100_ '0)))
                          (__tmp296425
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest291099_ _xdeps291118_))))
                     (declare (not safe))
                     (_find-deps291071_ __tmp296425 _deps291079_))
                   (let ()
                     (declare (not safe))
                     (_find-deps291071_ _rest291099_ _deps291079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd291100_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest291080291088_))
                           (let ((_hd291085291123_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest291080291088_)))
                                 (_tl291086291125_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest291080291088_))))
                             (let* ((_hd291128_ _hd291085291123_)
                                    (_rest291130_ _tl291086291125_))
                               (declare (not safe))
                               (_K291084291120_ _rest291130_ _hd291128_)))
                           (let ()
                             (declare (not safe))
                             (_else291082291096_)))))))
          (reverse (let ((__tmp296439
                          (let ((__tmp296440
                                 (let ((_$e291073_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx291067_))))
                                   (if _$e291073_
                                       ((lambda (_pre291076_)
                                          (let ((__tmp296441
                                                 (##structure-ref
                                                  _ctx291067_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (cons _pre291076_ __tmp296441)))
                                        _$e291073_)
                                       (##structure-ref
                                        _ctx291067_
                                        '8
                                        gx#module-context::t
                                        '#f)))))
                            (declare (not safe))
                            (_find-deps291071_ __tmp296440 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp296439))))))
    (define gxc#find-static-module-file
      (lambda (_ctx290998_)
        (let* ((_context-id291000_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx290998_
                       'gx#module-context::t))
                    (##structure-ref _ctx290998_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx290998_)))
               (_scm291002_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id291000_))
                 '".scm"))
               (_dirs291004_ (gx#current-expander-module-library-path))
               (_dirs291010_
                (let ((_user-libpath291006_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath291006_
                      (let ((_user-libpath291008_
                             (path-expand '"lib" _user-libpath291006_)))
                        (if (member _user-libpath291008_ _dirs291004_)
                            _dirs291004_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath291008_ _dirs291004_))))
                      _dirs291004_)))
               (_dirs291019_
                (let ((_$e291012_ (gxc#current-compile-output-dir)))
                  (if _$e291012_
                      ((lambda (_g291014291016_)
                         (let ()
                           (declare (not safe))
                           (cons _g291014291016_ _dirs291010_)))
                       _$e291012_)
                      _dirs291010_)))
               (_dirs291025_
                (map (lambda (_g291020291022_)
                       (path-expand '"static" _g291020291022_))
                     _dirs291019_)))
          (let _lp291028_ ((_rest291030_ _dirs291025_))
            (let* ((_rest291031291039_ _rest291030_)
                   (_else291033291047_
                    (lambda ()
                      (let ((__tmp296442
                             (##structure-ref
                              _ctx290998_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp296442
                         _scm291002_))))
                   (_K291035291055_
                    (lambda (_rest291050_ _dir291051_)
                      (let ((_path291053_
                             (path-expand _scm291002_ _dir291051_)))
                        (if (file-exists? _path291053_)
                            _path291053_
                            (let ()
                              (declare (not safe))
                              (_lp291028_ _rest291050_)))))))
              (if (let () (declare (not safe)) (##pair? _rest291031291039_))
                  (let ((_hd291036291058_
                         (let ()
                           (declare (not safe))
                           (##car _rest291031291039_)))
                        (_tl291037291060_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest291031291039_))))
                    (let* ((_dir291063_ _hd291036291058_)
                           (_rest291065_ _tl291037291060_))
                      (declare (not safe))
                      (_K291035291055_ _rest291065_ _dir291063_)))
                  (let () (declare (not safe)) (_else291033291047_))))))))
    (define gxc#file-empty?
      (lambda (_path290996_)
        (let ((__tmp296443 (file-info-size (file-info _path290996_ '#t))))
          (declare (not safe))
          (zero? __tmp296443))))
    (define gxc#compile-top-module
      (lambda (_ctx290985_)
        (let ((__tmp296447
               (lambda ()
                 (let ((__tmp296448
                        (##structure-ref
                         _ctx290985_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp296448))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp296449
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx290985_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp296449))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx290985_))
                 (if (let ((__tmp296452
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx290985_))))
                       (declare (not safe))
                       (null? __tmp296452))
                     (let* ((_thr1290990_
                             (let ((__tmp296450
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx290985_)))))
                               (declare (not safe))
                               (spawn __tmp296450)))
                            (_thr2290993_
                             (let ((__tmp296451
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx290985_)))))
                               (declare (not safe))
                               (spawn __tmp296451))))
                       (let () (declare (not safe)) (gxc#join! _thr1290990_))
                       (let () (declare (not safe)) (gxc#join! _thr2290993_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx290985_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx290985_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx290985_))
                     '#!void)))
              (__tmp296446
               (let ((__obj296251
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj296251)
                 __obj296251))
              (__tmp296445
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp296444 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp296447
           gx#current-expander-context
           _ctx290985_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp296446
           gxc#current-compile-runtime-sections
           __tmp296445
           gxc#current-compile-runtime-names
           __tmp296444))))
    (define gxc#collect-bindings
      (lambda (_ctx290983_)
        (let ((__tmp296453
               (##structure-ref _ctx290983_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp296453))))
    (define gxc#compile-runtime-code
      (lambda (_ctx290929_)
        (letrec ((_compile1290931_
                  (lambda (_ctx290972_)
                    (let* ((_code290974_
                            (##structure-ref
                             _ctx290972_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt290978_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code290974_))
                                (let ((_idstr290976_
                                       (let ((__tmp296454
                                              (##structure-ref
                                               _ctx290972_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp296454))))
                                  (string-append _idstr290976_ '"__0"))
                                '#f)))
                      (if _rt290978_
                          (begin
                            (let ((__tmp296455
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp296455 _ctx290972_ _rt290978_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code290933_
                               _ctx290972_
                               _code290974_)))
                          (let ((_path290981_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx290972_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path290981_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code290934_
                         _ctx290972_
                         _code290974_
                         _rt290978_)))))
                 (_context-timestamp290932_
                  (lambda (_ctx290970_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (##structure-ref
                        _ctx290970_
                        '1
                        gx#expander-context::t
                        '#f))
                      '"::timestamp"))))
                 (_generate-runtime-code290933_
                  (lambda (_ctx290952_ _code290953_)
                    (let* ((_lifts290955_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code290958_
                            (let ((__tmp296458
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code290953_))))
                                  (__tmp296457
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp296456
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296458
                               gx#current-expander-context
                               _ctx290952_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts290955_
                               gxc#current-compile-marks
                               __tmp296457
                               gxc#current-compile-identifiers
                               __tmp296456)))
                           (_runtime-code290960_
                            (if (let ((__tmp296462 (unbox _lifts290955_)))
                                  (declare (not safe))
                                  (null? __tmp296462))
                                _runtime-code290958_
                                (let ((__tmp296459
                                       (let ((__tmp296461
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code290958_
                                                      '())))
                                             (__tmp296460
                                              (reverse (unbox _lifts290955_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp296461
                                                 __tmp296460))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296459))))
                           (_runtime-code290962_
                            (let ((__tmp296463
                                   (let ((__tmp296465
                                          (let ((__tmp296466
                                                 (let ((__tmp296469
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp290932_
                                                           _ctx290952_)))
                                                       (__tmp296467
                                                        (let ((__tmp296468
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp296468
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp296469
                                                         __tmp296467))))
                                            (declare (not safe))
                                            (cons 'define __tmp296466)))
                                         (__tmp296464
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code290960_ '()))))
                                     (declare (not safe))
                                     (cons __tmp296465 __tmp296464))))
                              (declare (not safe))
                              (cons 'begin __tmp296463)))
                           (_scm0290964_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290952_
                               '0
                               '".scm"))))
                      (let ((_scms290967_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx290952_))))
                        (let ((__tmp296470
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0290964_
                                    _runtime-code290962_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp296470
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms290967_)
                            (delete-file _scms290967_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0290964_
                           '" => "
                           _scms290967_))
                        (copy-file _scm0290964_ _scms290967_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0290964_))))))
                 (_generate-loader-code290934_
                  (lambda (_ctx290941_ _code290942_ _rt290943_)
                    (let* ((_loader-code290946_
                            (let ((__tmp296471
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code290942_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp296471
                               gx#current-expander-context
                               _ctx290941_)))
                           (_loader-code290948_
                            (if _rt290943_
                                (let ((__tmp296472
                                       (let ((__tmp296473
                                              (let ((__tmp296474
                                                     (let ((__tmp296475
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt290943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp296475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp296474 '()))))
                                         (declare (not safe))
                                         (cons _loader-code290946_
                                               __tmp296473))))
                                  (declare (not safe))
                                  (cons 'begin __tmp296472))
                                _loader-code290946_)))
                      (let ((__tmp296476
                             (lambda ()
                               (let ((__tmp296477
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290941_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp296477
                                  _loader-code290948_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp296476
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules290936_
                 (let ((__tmp296478
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx290929_))))
                   (declare (not safe))
                   (cons _ctx290929_ __tmp296478))))
            (for-each
             (lambda (_ctx290938_)
               (let ((__tmp296479
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1290931_ _ctx290938_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp296479
                  gxc#current-compile-decls
                  '())))
             _all-modules290936_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx290826_)
        (letrec ((_compile-ssi290828_
                  (lambda (_code290899_)
                    (let* ((_path290901_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx290826_
                               '#f
                               '".ssi")))
                           (_prelude290912_
                            (let* ((_super290903_
                                    (##structure-ref
                                     _ctx290826_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e290905_
                                    (##structure-ref
                                     _super290903_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e290905_
                                  ((lambda (_g290907290909_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g290907290909_)))
                                   _$e290905_)
                                  ':<root>)))
                           (_ns290914_
                            (##structure-ref
                             _ctx290826_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr290916_
                            (symbol->string
                             (##structure-ref
                              _ctx290826_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg290923_
                            (let ((_$e290918_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr290916_ '#\/))))
                              (if _$e290918_
                                  ((lambda (_x290921_)
                                     (string->symbol
                                      (substring _idstr290916_ '0 _x290921_)))
                                   _$e290918_)
                                  '#f)))
                           (_rt290925_
                            (let ((__tmp296480
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp296480 _ctx290826_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path290901_))
                      (let ((__tmp296481
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude290912_))
                               (if _pkg290923_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg290923_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns290914_))
                               (newline)
                               (pretty-print _code290899_)
                               (if _rt290925_
                                   (pretty-print
                                    (let ((__tmp296482
                                           (let ((__tmp296486
                                                  (let ((__tmp296487
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp296487)))
                                                 (__tmp296483
                                                  (let ((__tmp296484
                                                         (let ((__tmp296485
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt290925_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp296485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp296484 '()))))
                                             (declare (not safe))
                                             (cons __tmp296486 __tmp296483))))
                                      (declare (not safe))
                                      (cons '%#call __tmp296482)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path290901_
                         __tmp296481)))))
                 (_compile-phi290829_
                  (lambda (_part290839_)
                    (let* ((_part290840290853_ _part290839_)
                           (_E290842290857_
                            (lambda ()
                              (error '"No clause matching"
                                     _part290840290853_)))
                           (_K290843290868_
                            (lambda (_code290860_
                                     _n290861_
                                     _phi290862_
                                     _phi-ctx290863_)
                              (let* ((_code290866_
                                      (let ((__tmp296488
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code290860_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp296488
                                         gx#current-expander-context
                                         _phi-ctx290863_
                                         gx#current-expander-phi
                                         _phi290862_)))
                                     (__tmp296489
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx290826_
                                         _n290861_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp296489
                                 _code290866_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part290840290853_))
                          (let ((_hd290844290871_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part290840290853_)))
                                (_tl290845290873_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part290840290853_))))
                            (let ((_phi-ctx290876_ _hd290844290871_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl290845290873_))
                                  (let ((_hd290846290878_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl290845290873_)))
                                        (_tl290847290880_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl290845290873_))))
                                    (let ((_phi290883_ _hd290846290878_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl290847290880_))
                                          (let ((_hd290848290885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl290847290880_)))
                                                (_tl290849290887_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl290847290880_))))
                                            (let ((_n290890_ _hd290848290885_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl290849290887_))
                                                  (let ((_hd290850290892_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl290849290887_)))
                                                        (_tl290851290894_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl290849290887_))))
                                                    (let ((_code290897_
                                                           _hd290850290892_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl290851290894_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K290843290868_
                                                             _code290897_
                                                             _n290890_
                                                             _phi290883_
                                                             _phi-ctx290876_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E290842290857_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E290842290857_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E290842290857_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E290842290857_)))))
                          (let () (declare (not safe)) (_E290842290857_)))))))
          (let ((_g296490_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx290826_))))
            (begin
              (let ((_g296491_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g296490_)
                           (##vector-length _g296490_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g296491_ 2)))
                    (error "Context expects 2 values" _g296491_)))
              (let ((_ssi-code290831_
                     (let () (declare (not safe)) (##vector-ref _g296490_ 0)))
                    (_phi-code290832_
                     (let () (declare (not safe)) (##vector-ref _g296490_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi290828_ _ssi-code290831_))
                  (let ((_threads290837_
                         (map (lambda (_code290834_)
                                (let ((__tmp296492
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi290829_
                                            _code290834_)))))
                                  (declare (not safe))
                                  (spawn __tmp296492)))
                              _phi-code290832_)))
                    (for-each gxc#join! _threads290837_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx290809_)
        (let* ((_path290811_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx290809_ '#f '".ssxi.ss")))
               (_code290813_
                (let ((__tmp296493
                       (##structure-ref
                        _ctx290809_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp296493)))
               (_idstr290815_
                (symbol->string
                 (##structure-ref _ctx290809_ '1 gx#expander-context::t '#f)))
               (_pkg290822_
                (let ((_$e290817_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr290815_ '#\/))))
                  (if _$e290817_
                      ((lambda (_x290820_)
                         (string->symbol
                          (substring _idstr290815_ '0 _x290820_)))
                       _$e290817_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path290811_))
          (let ((__tmp296494
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg290822_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg290822_))
                       '#!void)
                   (newline)
                   (pretty-print _code290813_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path290811_ __tmp296494)))))
    (define gxc#generate-meta-code
      (lambda (_ctx290802_)
        (let* ((_state290804_
                (let ((__obj296252
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj296252 _ctx290802_)
                  __obj296252))
               (_ssi-code290806_
                (let ((__tmp296495
                       (##structure-ref
                        _ctx290802_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp296495 _state290804_))))
          (values _ssi-code290806_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state290804_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx290795_)
        (let ((_lifts290797_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296498
                 (lambda ()
                   (let ((_code290800_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx290795_))))
                     (if (let ((__tmp296502 (unbox _lifts290797_)))
                           (declare (not safe))
                           (null? __tmp296502))
                         _code290800_
                         (let ((__tmp296499
                                (let ((__tmp296501
                                       (let ()
                                         (declare (not safe))
                                         (cons _code290800_ '())))
                                      (__tmp296500
                                       (reverse (unbox _lifts290797_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp296501 __tmp296500))))
                           (declare (not safe))
                           (cons 'begin __tmp296499))))))
                (__tmp296497
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp296496
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp296498
             gxc#current-compile-lift
             _lifts290797_
             gxc#current-compile-marks
             __tmp296497
             gxc#current-compile-identifiers
             __tmp296496)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx290791_)
        (let ((_modules290793_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp296503
                 (##structure-ref _ctx290791_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp296503 _modules290793_))
          (reverse (unbox _modules290793_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path290774_ _code290775_ _phi?290776_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path290774_))
        (let ((__tmp296504
               (lambda ()
                 (pretty-print
                  (let ((__tmp296505
                         (let ((__tmp296512
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp296506
                                (let ((__tmp296511
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp296507
                                       (let ((__tmp296510
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp296508
                                              (let ((__tmp296509
                                                     (if _phi?290776_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp296509))))
                                         (declare (not safe))
                                         (cons __tmp296510 __tmp296508))))
                                  (declare (not safe))
                                  (cons __tmp296511 __tmp296507))))
                           (declare (not safe))
                           (cons __tmp296512 __tmp296506))))
                    (declare (not safe))
                    (cons 'declare __tmp296505)))
                 (pretty-print _code290775_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path290774_ __tmp296504))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path290774_ _phi?290776_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path290774_))))
    (define gxc#compile-scm-file__0
      (lambda (_path290782_ _code290783_)
        (let ((_phi?290785_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path290782_ _code290783_ _phi?290785_))))
    (define gxc#compile-scm-file
      (lambda _g296514_
        (let ((_g296513_ (let () (declare (not safe)) (##length _g296514_))))
          (cond ((let () (declare (not safe)) (##fx= _g296513_ 2))
                 (apply (lambda (_path290782_ _code290783_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path290782_
                             _code290783_)))
                        _g296514_))
                ((let () (declare (not safe)) (##fx= _g296513_ 3))
                 (apply (lambda (_path290787_ _code290788_ _phi?290789_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path290787_
                             _code290788_
                             _phi?290789_)))
                        _g296514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g296514_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?290675_)
        (let _lp290677_ ((_rest290679_ (gxc#current-compile-gsc-options))
                         (_opts290680_ '()))
          (let* ((_rest290681290701_ _rest290679_)
                 (_else290685290709_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290675_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296515
                               (let ((__tmp296516 (reverse _opts290680_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp296516))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp296515))
                        (reverse _opts290680_)))))
            (let ((_K290695290752_
                   (lambda (_rest290750_)
                     (let ()
                       (declare (not safe))
                       (_lp290677_ _rest290750_ _opts290680_))))
                  (_K290690290734_
                   (lambda (_rest290732_)
                     (let ()
                       (declare (not safe))
                       (_lp290677_ _rest290732_ _opts290680_))))
                  (_K290687290716_
                   (lambda (_rest290713_ _opt290714_)
                     (let ((__tmp296517
                            (let ()
                              (declare (not safe))
                              (cons _opt290714_ _opts290680_))))
                       (declare (not safe))
                       (_lp290677_ _rest290713_ __tmp296517)))))
              (if (let () (declare (not safe)) (##pair? _rest290681290701_))
                  (let ((_tl290697290757_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290681290701_)))
                        (_hd290696290755_
                         (let ()
                           (declare (not safe))
                           (##car _rest290681290701_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290696290755_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290697290757_))
                            (let* ((_tl290699290760_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290697290757_)))
                                   (_rest290763_ _tl290699290760_))
                              (declare (not safe))
                              (_K290695290752_ _rest290763_))
                            (let ((_opt290724_ _hd290696290755_)
                                  (_rest290726_ _tl290697290757_))
                              (let ()
                                (declare (not safe))
                                (_K290687290716_ _rest290726_ _opt290724_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290696290755_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290697290757_))
                                (let* ((_tl290694290742_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290697290757_)))
                                       (_rest290745_ _tl290694290742_))
                                  (declare (not safe))
                                  (_K290690290734_ _rest290745_))
                                (let ((_opt290724_ _hd290696290755_)
                                      (_rest290726_ _tl290697290757_))
                                  (let ()
                                    (declare (not safe))
                                    (_K290687290716_
                                     _rest290726_
                                     _opt290724_))))
                            (let ((_opt290724_ _hd290696290755_)
                                  (_rest290726_ _tl290697290757_))
                              (let ()
                                (declare (not safe))
                                (_K290687290716_ _rest290726_ _opt290724_))))))
                  (let () (declare (not safe)) (_else290685290709_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?290769_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?290769_))))
    (define gxc#gsc-link-options
      (lambda _g296519_
        (let ((_g296518_ (let () (declare (not safe)) (##length _g296519_))))
          (cond ((let () (declare (not safe)) (##fx= _g296518_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g296519_))
                ((let () (declare (not safe)) (##fx= _g296518_ 1))
                 (apply (lambda (_phi?290771_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?290771_)))
                        _g296519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g296519_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?290576_)
        (let _lp290578_ ((_rest290580_ (gxc#current-compile-gsc-options))
                         (_opts290581_ '()))
          (let* ((_rest290582290602_ _rest290580_)
                 (_else290586290610_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?290576_))
                             (gxc#current-compile-debug))
                        (let ((__tmp296520
                               (let ((__tmp296521 (reverse _opts290581_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp296521))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp296520))
                        (reverse _opts290581_)))))
            (let ((_K290596290649_
                   (lambda (_rest290646_ _opt290647_)
                     (let ((__tmp296522
                            (let ((__tmp296523
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts290581_))))
                              (declare (not safe))
                              (cons _opt290647_ __tmp296523))))
                       (declare (not safe))
                       (_lp290578_ _rest290646_ __tmp296522))))
                  (_K290591290630_
                   (lambda (_rest290628_)
                     (let ()
                       (declare (not safe))
                       (_lp290578_ _rest290628_ _opts290581_))))
                  (_K290588290616_
                   (lambda (_rest290614_)
                     (let ()
                       (declare (not safe))
                       (_lp290578_ _rest290614_ _opts290581_)))))
              (if (let () (declare (not safe)) (##pair? _rest290582290602_))
                  (let ((_tl290598290654_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290582290602_)))
                        (_hd290597290652_
                         (let ()
                           (declare (not safe))
                           (##car _rest290582290602_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290597290652_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290598290654_))
                            (let ((_tl290600290659_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl290598290654_)))
                                  (_hd290599290657_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl290598290654_))))
                              (let ((_opt290662_ _hd290599290657_)
                                    (_rest290664_ _tl290600290659_))
                                (let ()
                                  (declare (not safe))
                                  (_K290596290649_ _rest290664_ _opt290662_))))
                            (let ((_rest290622_ _tl290598290654_))
                              (declare (not safe))
                              (_K290588290616_ _rest290622_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290597290652_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290598290654_))
                                (let* ((_tl290595290638_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl290598290654_)))
                                       (_rest290641_ _tl290595290638_))
                                  (declare (not safe))
                                  (_K290591290630_ _rest290641_))
                                (let ((_rest290622_ _tl290598290654_))
                                  (declare (not safe))
                                  (_K290588290616_ _rest290622_)))
                            (let ((_rest290622_ _tl290598290654_))
                              (declare (not safe))
                              (_K290588290616_ _rest290622_)))))
                  (let () (declare (not safe)) (_else290586290610_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?290670_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?290670_))))
    (define gxc#gsc-cc-options
      (lambda _g296525_
        (let ((_g296524_ (let () (declare (not safe)) (##length _g296525_))))
          (cond ((let () (declare (not safe)) (##fx= _g296524_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g296525_))
                ((let () (declare (not safe)) (##fx= _g296524_ 1))
                 (apply (lambda (_phi?290672_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?290672_)))
                        _g296525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g296525_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir290571_)
        (let* ((_user-staticdir290573_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp296526
                (let ((__tmp296527
                       (string-append
                        '"-I "
                        _staticdir290571_
                        '" -I "
                        _user-staticdir290573_)))
                  (declare (not safe))
                  (cons __tmp296527 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp296526))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp290483_ ((_rest290485_ (gxc#current-compile-gsc-options))
                         (_opts290486_ '()))
          (let* ((_rest290487290507_ _rest290485_)
                 (_else290491290515_ (lambda () _opts290486_)))
            (let ((_K290501290558_
                   (lambda (_rest290556_)
                     (let ()
                       (declare (not safe))
                       (_lp290483_ _rest290556_ _opts290486_))))
                  (_K290496290536_
                   (lambda (_rest290533_ _opt290534_)
                     (let ((__tmp296528
                            (append _opts290486_
                                    (let ((__tmp296529
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt290534_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp296529)))))
                       (declare (not safe))
                       (_lp290483_ _rest290533_ __tmp296528))))
                  (_K290493290521_
                   (lambda (_rest290519_)
                     (let ()
                       (declare (not safe))
                       (_lp290483_ _rest290519_ _opts290486_)))))
              (if (let () (declare (not safe)) (##pair? _rest290487290507_))
                  (let ((_tl290503290563_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest290487290507_)))
                        (_hd290502290561_
                         (let ()
                           (declare (not safe))
                           (##car _rest290487290507_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd290502290561_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl290503290563_))
                            (let* ((_tl290505290566_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl290503290563_)))
                                   (_rest290569_ _tl290505290566_))
                              (declare (not safe))
                              (_K290501290558_ _rest290569_))
                            (let ((_rest290527_ _tl290503290563_))
                              (declare (not safe))
                              (_K290493290521_ _rest290527_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd290502290561_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl290503290563_))
                                (let ((_tl290500290546_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl290503290563_)))
                                      (_hd290499290544_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl290503290563_))))
                                  (let ((_opt290549_ _hd290499290544_)
                                        (_rest290551_ _tl290500290546_))
                                    (let ()
                                      (declare (not safe))
                                      (_K290496290536_
                                       _rest290551_
                                       _opt290549_))))
                                (let ((_rest290527_ _tl290503290563_))
                                  (declare (not safe))
                                  (_K290493290521_ _rest290527_)))
                            (let ((_rest290527_ _tl290503290563_))
                              (declare (not safe))
                              (_K290493290521_ _rest290527_)))))
                  (let () (declare (not safe)) (_else290491290515_))))))))
    (define gxc#not-string-empty?
      (lambda (_str290480_)
        (let ((__tmp296530
               (let () (declare (not safe)) (string-empty? _str290480_))))
          (declare (not safe))
          (not __tmp296530))))
    (define gxc#gsc-compile-file
      (lambda (_path290448_ _phi?290449_)
        (letrec ((_gsc-link-path290451_
                  (lambda (_base-path290472_)
                    (let _lp290474_ ((_n290476_ '1))
                      (let ((_path290478_
                             (string-append
                              _base-path290472_
                              '".o"
                              (number->string _n290476_))))
                        (if (file-exists? _path290478_)
                            (let ((__tmp296531
                                   (let ()
                                     (declare (not safe))
                                     (+ _n290476_ '1))))
                              (declare (not safe))
                              (_lp290474_ __tmp296531))
                            _path290478_))))))
          (let* ((_base-path290453_ (path-strip-extension _path290448_))
                 (_path-c290455_ (string-append _base-path290453_ '".c"))
                 (_path-o290457_ (string-append _base-path290453_ '".o"))
                 (_link-path290459_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path290451_ _base-path290453_)))
                 (_link-path-c290461_ (string-append _link-path290459_ '".c"))
                 (_link-path-o290463_ (string-append _link-path290459_ '".o"))
                 (_gsc-link-opts290465_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?290449_)))
                 (_gsc-cc-opts290467_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?290449_)))
                 (_gcc-ld-opts290469_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp296538 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296532
                   (let ((__tmp296533
                          (let ((__tmp296534
                                 (let ((__tmp296535
                                        (let ((__tmp296536
                                               (let ((__tmp296537
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path290448_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp296537
                                                         _gsc-link-opts290465_))))
                                          (declare (not safe))
                                          (cons _link-path-c290461_
                                                __tmp296536))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp296535))))
                            (declare (not safe))
                            (cons '"-flat" __tmp296534))))
                     (declare (not safe))
                     (cons '"-link" __tmp296533))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296538 __tmp296532))
            (let ((__tmp296545 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp296539
                   (let ((__tmp296540
                          (let ((__tmp296541
                                 (let ((__tmp296542
                                        (let ((__tmp296543
                                               (let ((__tmp296544
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c290461_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c290455_
                                                       __tmp296544))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp296543
                                                  _gsc-cc-opts290467_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp296542))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp296541))))
                     (declare (not safe))
                     (cons '"-obj" __tmp296540))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp296545 __tmp296539))
            (let ((__tmp296551 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp296546
                   (let ((__tmp296547
                          (let ((__tmp296548
                                 (let ((__tmp296549
                                        (let ((__tmp296550
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o290463_
                                                       _gcc-ld-opts290469_))))
                                          (declare (not safe))
                                          (cons _path-o290457_ __tmp296550))))
                                   (declare (not safe))
                                   (cons _link-path290459_ __tmp296549))))
                            (declare (not safe))
                            (cons '"-o" __tmp296548))))
                     (declare (not safe))
                     (cons '"-shared" __tmp296547))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp296551
               __tmp296546))
            (for-each
             delete-file
             (let ((__tmp296552
                    (let ((__tmp296553
                           (let ((__tmp296554
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o290463_ '()))))
                             (declare (not safe))
                             (cons _link-path-c290461_ __tmp296554))))
                      (declare (not safe))
                      (cons _path-o290457_ __tmp296553))))
               (declare (not safe))
               (cons _path-c290455_ __tmp296552)))))))
    (define gxc#compile-output-file
      (lambda (_ctx290419_ _n290420_ _ext290421_)
        (letrec ((_module-relative-path290423_
                  (lambda (_ctx290446_)
                    (path-strip-directory
                     (let ((__tmp296555
                            (##structure-ref
                             _ctx290446_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp296555)))))
                 (_module-source-directory290424_
                  (lambda (_ctx290442_)
                    (path-directory
                     (let ((_mpath290444_
                            (##structure-ref
                             _ctx290442_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath290444_))
                           _mpath290444_
                           (let ()
                             (declare (not safe))
                             (last _mpath290444_)))))))
                 (_section-string290425_
                  (lambda (_n290440_)
                    (if (let () (declare (not safe)) (number? _n290440_))
                        (number->string _n290440_)
                        (if (let () (declare (not safe)) (symbol? _n290440_))
                            (symbol->string _n290440_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n290440_))
                                _n290440_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n290440_)))))))
                 (_file-name290426_
                  (lambda (_path290438_)
                    (if _n290420_
                        (string-append
                         _path290438_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string290425_ _n290420_))
                         _ext290421_)
                        (string-append _path290438_ _ext290421_))))
                 (_file-path290427_
                  (lambda ()
                    (let ((_$e290433_ (gxc#current-compile-output-dir)))
                      (if _$e290433_
                          ((lambda (_outdir290436_)
                             (path-expand
                              (let ((__tmp296557
                                     (let ((__tmp296558
                                            (##structure-ref
                                             _ctx290419_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp296558))))
                                (declare (not safe))
                                (_file-name290426_ __tmp296557))
                              _outdir290436_))
                           _$e290433_)
                          (path-expand
                           (let ((__tmp296556
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path290423_
                                     _ctx290419_))))
                             (declare (not safe))
                             (_file-name290426_ __tmp296556))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory290424_
                              _ctx290419_))))))))
          (let ((_path290429_
                 (let () (declare (not safe)) (_file-path290427_))))
            (let ((__tmp296559
                   (lambda ()
                     (let ((__tmp296560 (path-directory _path290429_)))
                       (declare (not safe))
                       (create-directory* __tmp296560)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296559))
            _path290429_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx290401_)
        (letrec ((_file-name290403_
                  (lambda (_id290417_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id290417_))
                     '".scm")))
                 (_file-path290404_
                  (lambda ()
                    (let* ((_file290410_
                            (let ((__tmp296561
                                   (##structure-ref
                                    _ctx290401_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name290403_ __tmp296561)))
                           (_$e290412_ (gxc#current-compile-output-dir)))
                      (if _$e290412_
                          ((lambda (_outdir290415_)
                             (path-expand
                              _file290410_
                              (path-expand '"static" _outdir290415_)))
                           _$e290412_)
                          (path-expand _file290410_ '"static"))))))
          (let ((_path290406_
                 (let () (declare (not safe)) (_file-path290404_))))
            (let ((__tmp296562
                   (lambda ()
                     (let ((__tmp296563 (path-directory _path290406_)))
                       (declare (not safe))
                       (create-directory* __tmp296563)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp296562))
            _path290406_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx290395_ _opts290396_)
        (let ((_$e290398_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts290396_))))
          (if _$e290398_
              (values _$e290398_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx290395_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr290388_)
        (if (let () (declare (not safe)) (string? _idstr290388_))
            (let* ((_str290390_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr290388_)))
                   (_strs290392_
                    (let ()
                      (declare (not safe))
                      (string-split _str290390_ '#\/))))
              (let () (declare (not safe)) (string-join _strs290392_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr290388_))
                (let ((__tmp296564 (symbol->string _idstr290388_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp296564))
                (error '"Bad module id" _idstr290388_)))))
    (define gxc#invoke__%
      (lambda (_g296565_
               _stdout-redirection290352290356_
               _stderr-redirection290353290358_
               _program290360_
               _args290361_)
        (let* ((_stdout-redirection290363_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection290352290356_ absent-value))
                    '#f
                    _stdout-redirection290352290356_))
               (_stderr-redirection290365_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection290353290358_ absent-value))
                    '#f
                    _stderr-redirection290353290358_)))
          (let ((__tmp296566
                 (let ()
                   (declare (not safe))
                   (cons _program290360_ _args290361_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp296566))
          (let ((_proc290367_
                 (open-process
                  (let ((__tmp296567
                         (let ((__tmp296568
                                (let ((__tmp296569
                                       (let ((__tmp296570
                                              (let ((__tmp296571
                                                     (let ((__tmp296572
                                                            (let ((__tmp296573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection290365_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp296573))))
               (declare (not safe))
               (cons _stdout-redirection290363_ __tmp296572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp296571))))
                                         (declare (not safe))
                                         (cons _args290361_ __tmp296570))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp296569))))
                           (declare (not safe))
                           (cons _program290360_ __tmp296568))))
                    (declare (not safe))
                    (cons 'path: __tmp296567)))))
            (if (or _stdout-redirection290363_ _stderr-redirection290365_)
                (read-line _proc290367_ '#f)
                '#!void)
            (let ((_status290372_ (process-status _proc290367_)))
              (close-port _proc290367_)
              (if (let () (declare (not safe)) (zero? _status290372_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program290360_))))))))
    (define gxc#invoke__@
      (lambda (_keys290351290377_ . _args290379_)
        (apply gxc#invoke__%
               _keys290351290377_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290351290377_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys290351290377_
                  'stderr-redirection:
                  absent-value))
               _args290379_)))
    (define gxc#invoke
      (lambda _args290354290385_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args290354290385_)))
    (define gxc#join!
      (lambda (_thread290345_)
        (let ((__tmp296575
               (lambda (_exn290347_)
                 (if (uncaught-exception? _exn290347_)
                     (raise (uncaught-exception-reason _exn290347_))
                     (raise _exn290347_))))
              (__tmp296574 (lambda () (thread-join! _thread290345_))))
          (declare (not safe))
          (with-catch __tmp296575 __tmp296574))))))
