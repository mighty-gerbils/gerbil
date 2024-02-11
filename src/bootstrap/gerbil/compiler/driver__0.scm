(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1707646859)
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
      (lambda (_path288642_ _fun288643_)
        (with-output-to-file
         (let ((__tmp293236
                (let ()
                  (declare (not safe))
                  (cons _path288642_ gxc#scheme-file-settings))))
           (declare (not safe))
           (cons 'path: __tmp293236))
         _fun288643_)))
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
      (lambda (_gerbil-libdir288637_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir288637_)))
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
      (lambda (_dir288635_) (delete-file-or-directory _dir288635_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath288609_ _opts288610_)
        (if (let () (declare (not safe)) (string? _srcpath288609_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288609_)))
        (let ((_outdir288612_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288610_)))
              (_invoke-gsc?288613_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288610_)))
              (_gsc-options288614_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288610_)))
              (_keep-scm?288615_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288610_)))
              (_verbosity288616_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288610_)))
              (_optimize288617_
               (let () (declare (not safe)) (pgetq 'optimize: _opts288610_)))
              (_debug288618_
               (let () (declare (not safe)) (pgetq 'debug: _opts288610_)))
              (_gen-ssxi288619_
               (let ()
                 (declare (not safe))
                 (pgetq 'generate-ssxi: _opts288610_))))
          (if _outdir288612_
              (let ((__tmp293237
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288612_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293237))
              '#!void)
          (if _optimize288617_
              (let ((__tmp293238
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293238))
              '#!void)
          (let ((__tmp293242
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath288609_))
                   (let ((__tmp293243
                          (let ((__tmp293244
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288609_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293244))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp293243))))
                (__tmp293241
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293239
                 (let ((__tmp293240
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288609_ '()))))
                   (declare (not safe))
                   (cons 'compile-module __tmp293240))))
            (declare (not safe))
            (call-with-parameters
             __tmp293242
             gxc#current-compile-output-dir
             _outdir288612_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288613_
             gxc#current-compile-gsc-options
             _gsc-options288614_
             gxc#current-compile-keep-scm
             _keep-scm?288615_
             gxc#current-compile-verbose
             _verbosity288616_
             gxc#current-compile-optimize
             _optimize288617_
             gxc#current-compile-debug
             _debug288618_
             gxc#current-compile-generate-ssxi
             _gen-ssxi288619_
             gxc#current-compile-timestamp
             __tmp293241
             gxc#current-compile-context
             __tmp293239
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath288628_)
        (let ((_opts288630_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath288628_ _opts288630_))))
    (define gxc#compile-module
      (lambda _g293246_
        (let ((_g293245_ (let () (declare (not safe)) (##length _g293246_))))
          (cond ((let () (declare (not safe)) (##fx= _g293245_ 1))
                 (apply (lambda (_srcpath288628_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath288628_)))
                        _g293246_))
                ((let () (declare (not safe)) (##fx= _g293245_ 2))
                 (apply (lambda (_srcpath288632_ _opts288633_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath288632_
                             _opts288633_)))
                        _g293246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g293246_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath288585_ _opts288586_)
        (if (let () (declare (not safe)) (string? _srcpath288585_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath288585_)))
        (let ((_outdir288588_
               (let () (declare (not safe)) (pgetq 'output-dir: _opts288586_)))
              (_invoke-gsc?288589_
               (let () (declare (not safe)) (pgetq 'invoke-gsc: _opts288586_)))
              (_gsc-options288590_
               (let ()
                 (declare (not safe))
                 (pgetq 'gsc-options: _opts288586_)))
              (_keep-scm?288591_
               (let () (declare (not safe)) (pgetq 'keep-scm: _opts288586_)))
              (_verbosity288592_
               (let () (declare (not safe)) (pgetq 'verbose: _opts288586_)))
              (_debug288593_
               (let () (declare (not safe)) (pgetq 'debug: _opts288586_))))
          (if _outdir288588_
              (let ((__tmp293247
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory* _outdir288588_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp293247))
              '#!void)
          (let ((__tmp293251
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath288585_))
                   (let ((__tmp293252
                          (let ((__tmp293253
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath288585_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp293253))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp293252
                      _opts288586_))))
                (__tmp293250
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp293248
                 (let ((__tmp293249
                        (let ()
                          (declare (not safe))
                          (cons _srcpath288585_ '()))))
                   (declare (not safe))
                   (cons 'compile-exe __tmp293249))))
            (declare (not safe))
            (call-with-parameters
             __tmp293251
             gxc#current-compile-output-dir
             _outdir288588_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?288589_
             gxc#current-compile-gsc-options
             _gsc-options288590_
             gxc#current-compile-keep-scm
             _keep-scm?288591_
             gxc#current-compile-verbose
             _verbosity288592_
             gxc#current-compile-debug
             _debug288593_
             gxc#current-compile-timestamp
             __tmp293250
             gxc#current-compile-context
             __tmp293248
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath288601_)
        (let ((_opts288603_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath288601_ _opts288603_))))
    (define gxc#compile-exe
      (lambda _g293255_
        (let ((_g293254_ (let () (declare (not safe)) (##length _g293255_))))
          (cond ((let () (declare (not safe)) (##fx= _g293254_ 1))
                 (apply (lambda (_srcpath288601_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath288601_)))
                        _g293255_))
                ((let () (declare (not safe)) (##fx= _g293254_ 2))
                 (apply (lambda (_srcpath288605_ _opts288606_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath288605_ _opts288606_)))
                        _g293255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g293255_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx288581_ _opts288582_)
        (if (let ()
              (declare (not safe))
              (pgetq 'full-program-optimization: _opts288582_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx288581_
               _opts288582_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx288581_
               _opts288582_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx288464_ _opts288465_)
        (letrec ((_generate-stub288467_
                  (lambda (_builtin-modules288577_)
                    (let ((_mod-main288579_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288464_ 'main))))
                      (write (let ((__tmp293256
                                    (let ((__tmp293257
                                           (let ((__tmp293258
                                                  (let ((__tmp293259
                                                         (let ((__tmp293261
                                                                (let ((__tmp293262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _builtin-modules288577_ '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293262)))
                       (__tmp293260
                        (let ()
                          (declare (not safe))
                          (cons 'libgerbil-builtin-modules '()))))
                   (declare (not safe))
                   (cons __tmp293261 __tmp293260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'append
                                                          __tmp293259))))
                                             (declare (not safe))
                                             (cons __tmp293258 '()))))
                                      (declare (not safe))
                                      (cons 'builtin-modules __tmp293257))))
                               (declare (not safe))
                               (cons 'define __tmp293256)))
                      (write (let ((__tmp293263
                                    (let ((__tmp293302
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293264
                                           (let ((__tmp293265
                                                  (let ((__tmp293266
                                                         (let ((__tmp293290
                                                                (let ((__tmp293291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293292
                                      (let ((__tmp293300
                                             (let ((__tmp293301
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'builtin-modules
                                                            '()))))
                                               (declare (not safe))
                                               (cons 'gerbil-runtime-init!
                                                     __tmp293301)))
                                            (__tmp293293
                                             (let ((__tmp293294
                                                    (let ((__tmp293295
                                                           (let ((__tmp293296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293297
                                 (let ((__tmp293298
                                        (let ((__tmp293299
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'command-line '()))))
                                          (declare (not safe))
                                          (cons __tmp293299 '()))))
                                   (declare (not safe))
                                   (cons 'cdr __tmp293298))))
                            (declare (not safe))
                            (cons __tmp293297 '()))))
                     (declare (not safe))
                     (cons _mod-main288579_ __tmp293296))))
              (declare (not safe))
              (cons 'apply __tmp293295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293294 '()))))
                                        (declare (not safe))
                                        (cons __tmp293300 __tmp293293))))
                                 (declare (not safe))
                                 (cons '() __tmp293292))))
                          (declare (not safe))
                          (cons 'lambda __tmp293291)))
                       (__tmp293267
                        (let ((__tmp293268
                               (let ((__tmp293269
                                      (let ((__tmp293270
                                             (let ((__tmp293281
                                                    (let ((__tmp293282
                                                           (let ((__tmp293283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293284
                                 (let ((__tmp293285
                                        (let ((__tmp293286
                                               (let ((__tmp293287
                                                      (let ((__tmp293288
                                                             (let ((__tmp293289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'current-output-port '()))))
                       (declare (not safe))
                       (cons __tmp293289 '()))))
                (declare (not safe))
                (cons 'force-output __tmp293288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp293287 '()))))
                                          (declare (not safe))
                                          (cons '() __tmp293286))))
                                   (declare (not safe))
                                   (cons 'lambda __tmp293285))))
                            (declare (not safe))
                            (cons __tmp293284 '()))))
                     (declare (not safe))
                     (cons 'void __tmp293283))))
              (declare (not safe))
              (cons 'with-catch __tmp293282)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp293271
                                                    (let ((__tmp293272
                                                           (let ((__tmp293273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp293274
                                 (let ((__tmp293275
                                        (let ((__tmp293276
                                               (let ((__tmp293277
                                                      (let ((__tmp293278
                                                             (let ((__tmp293279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp293280
                                   (let ()
                                     (declare (not safe))
                                     (cons 'current-error-port '()))))
                              (declare (not safe))
                              (cons __tmp293280 '()))))
                       (declare (not safe))
                       (cons 'force-output __tmp293279))))
                (declare (not safe))
                (cons __tmp293278 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp293277))))
                                          (declare (not safe))
                                          (cons 'lambda __tmp293276))))
                                   (declare (not safe))
                                   (cons __tmp293275 '()))))
                            (declare (not safe))
                            (cons 'void __tmp293274))))
                     (declare (not safe))
                     (cons 'with-catch __tmp293273))))
              (declare (not safe))
              (cons __tmp293272 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp293281
                                                     __tmp293271))))
                                        (declare (not safe))
                                        (cons '() __tmp293270))))
                                 (declare (not safe))
                                 (cons 'lambda __tmp293269))))
                          (declare (not safe))
                          (cons __tmp293268 '()))))
                   (declare (not safe))
                   (cons __tmp293290 __tmp293267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'with-unwind-protect
                                                          __tmp293266))))
                                             (declare (not safe))
                                             (cons __tmp293265 '()))))
                                      (declare (not safe))
                                      (cons __tmp293302 __tmp293264))))
                               (declare (not safe))
                               (cons 'define __tmp293263)))
                      (write '(gerbil-main))
                      (newline))))
                 (_get-libgerbil-ld-opts288468_
                  (lambda (_libgerbil288575_)
                    (call-with-input-file
                     (string-append _libgerbil288575_ '".ldd")
                     read)))
                 (_replace-extension288469_
                  (lambda (_path288572_ _ext288573_)
                    (string-append
                     (path-strip-extension _path288572_)
                     _ext288573_)))
                 (_not-exclude-module?288470_
                  (lambda (_ctx288568_)
                    (let ((_id-str288570_
                           (symbol->string
                            (let ((__obj293202 _ctx288568_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj293202
                                     'gx#expander-context::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj293202
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                  (class-slot-ref
                                   gx#expander-context::t
                                   __obj293202
                                   'id))))))
                      (if (let ((__tmp293304
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix?
                                    '"gerbil/"
                                    _id-str288570_))))
                            (declare (not safe))
                            (not __tmp293304))
                          (let ((__tmp293303
                                 (let ()
                                   (declare (not safe))
                                   (string-prefix? '"std/" _id-str288570_))))
                            (declare (not safe))
                            (not __tmp293303))
                          '#f))))
                 (_not-file-empty?288471_
                  (lambda (_path288566_)
                    (let ((__tmp293305
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path288566_))))
                      (declare (not safe))
                      (not __tmp293305))))
                 (_compile-stub288472_
                  (lambda (_output-scm288479_ _output-bin288480_)
                    (let* ((_gerbil-home288482_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288484_
                            (path-expand '"lib" _gerbil-home288482_))
                           (_gerbil-staticdir288486_
                            (path-expand '"static" _gerbil-libdir288484_))
                           (_gxlink288488_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir288484_))
                           (_tmp288490_
                            (path-expand
                             (string-append
                              '"gxc."
                              (number->string
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-timestamp-nanos))))
                             '"/tmp"))
                           (_tmp-path288494_
                            (lambda (_f288492_)
                              (path-expand
                               (path-strip-directory _f288492_)
                               _tmp288490_)))
                           (_deps288496_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288464_)))
                           (_deps288498_
                            (let ()
                              (declare (not safe))
                              (filter _not-exclude-module?288470_
                                      _deps288496_)))
                           (_src-deps-scm288500_
                            (map gxc#find-static-module-file _deps288498_))
                           (_src-deps-scm288502_
                            (let ()
                              (declare (not safe))
                              (filter _not-file-empty?288471_
                                      _src-deps-scm288500_)))
                           (_src-deps-scm288504_
                            (map path-expand _src-deps-scm288502_))
                           (_deps-scm288506_
                            (map _tmp-path288494_ _src-deps-scm288504_))
                           (_deps-c288512_
                            (map (lambda (_g288507288509_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288469_
                                      _g288507288509_
                                      '".c")))
                                 _deps-scm288506_))
                           (_deps-o288518_
                            (map (lambda (_g288513288515_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension288469_
                                      _g288513288515_
                                      '".o")))
                                 _deps-scm288506_))
                           (_src-bin-scm288520_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288464_)))
                           (_src-bin-scm288522_
                            (path-expand _src-bin-scm288520_))
                           (_bin-scm288524_
                            (let ()
                              (declare (not safe))
                              (_tmp-path288494_ _src-bin-scm288522_)))
                           (_bin-c288526_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288469_
                               _bin-scm288524_
                               '".c")))
                           (_bin-o288528_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288469_
                               _bin-scm288524_
                               '".o")))
                           (_output-bin288530_
                            (path-expand _output-bin288480_))
                           (_output-scm288532_
                            (path-expand _output-scm288479_))
                           (_output-c288534_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288469_
                               _output-scm288532_
                               '".c")))
                           (_output-o288536_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288469_
                               _output-scm288532_
                               '".o")))
                           (_output_-c288538_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288469_
                               _output-scm288532_
                               '"_.c")))
                           (_output_-o288540_
                            (let ()
                              (declare (not safe))
                              (_replace-extension288469_
                               _output-scm288532_
                               '"_.o")))
                           (_gsc-link-opts288542_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288544_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288546_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir288486_)))
                           (_output-ld-opts288548_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a288550_
                            (path-expand '"libgerbil.a" _gerbil-libdir288484_))
                           (_libgerbil.so288552_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir288484_))
                           (_libgerbil-ld-opts288554_
                            (if (file-exists? _libgerbil.so288552_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts288468_
                                   _libgerbil.so288552_))
                                (if (file-exists? _libgerbil.a288550_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts288468_
                                       _libgerbil.a288550_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#raise-compile-error
                                       '"libgerbil does not exist"
                                       _libgerbil.a288550_
                                       _libgerbil.so288552_)))))
                           (_rpath288556_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288484_)))
                           (_builtin-modules288560_
                            (map (lambda (_mod288558_)
                                   (symbol->string
                                    (let ((__obj293203 _mod288558_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj293203
                                             'gx#expander-context::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj293203
                                             '1
                                             gx#expander-context::t
                                             '#f))
                                          (class-slot-ref
                                           gx#expander-context::t
                                           __obj293203
                                           'id)))))
                                 (let ()
                                   (declare (not safe))
                                   (cons _ctx288464_ _deps288498_)))))
                      (let ((__tmp293306
                             (lambda ()
                               (let ((__tmp293307
                                      (path-directory _output-bin288530_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293307)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293306))
                      (let ((__tmp293308
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub288467_
                                  _builtin-modules288560_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288532_
                         __tmp293308))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293309
                                   (lambda () (create-directory _tmp288490_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp293309))
                            (for-each
                             copy-file
                             _src-deps-scm288504_
                             _deps-scm288506_)
                            (copy-file _src-bin-scm288522_ _bin-scm288524_)
                            (let ((__tmp293317
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293310
                                   (let ((__tmp293311
                                          (let ((__tmp293312
                                                 (let ((__tmp293313
                                                        (let ((__tmp293314
                                                               (let ((__tmp293315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293316
                                     (let ()
                                       (declare (not safe))
                                       (cons _output-scm288532_ '()))))
                                (declare (not safe))
                                (cons _bin-scm288524_ __tmp293316))))
                         (declare (not safe))
                         (foldr1 cons __tmp293315 _deps-scm288506_))))
                  (declare (not safe))
                  (foldr1 cons __tmp293314 _gsc-link-opts288542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _gxlink288488_
                                                         __tmp293313))))
                                            (declare (not safe))
                                            (cons '"-l" __tmp293312))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293311))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293317
                               __tmp293310))
                            (let ((__tmp293325
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293318
                                   (let ((__tmp293319
                                          (let ((__tmp293320
                                                 (let ((__tmp293321
                                                        (let ((__tmp293322
                                                               (let ((__tmp293323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293324
                                     (let ()
                                       (declare (not safe))
                                       (cons _output_-c288538_ '()))))
                                (declare (not safe))
                                (cons _output-c288534_ __tmp293324))))
                         (declare (not safe))
                         (cons _bin-c288526_ __tmp293323))))
                  (declare (not safe))
                  (foldr1 cons __tmp293322 _deps-c288512_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293321
                                                           _gsc-static-opts288546_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293320
                                                    _gsc-cc-opts288544_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293319))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293325
                               __tmp293318))
                            (let ((__tmp293338
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293326
                                   (let ((__tmp293327
                                          (let ((__tmp293328
                                                 (let ((__tmp293329
                                                        (let ((__tmp293330
                                                               (let ((__tmp293331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293332
                                     (let ((__tmp293333
                                            (let ((__tmp293334
                                                   (let ((__tmp293335
                                                          (let ((__tmp293336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp293337
                                (let ()
                                  (declare (not safe))
                                  (cons '"-lgambit"
                                        _libgerbil-ld-opts288554_))))
                           (declare (not safe))
                           (cons '"-lgerbil" __tmp293337))))
                    (declare (not safe))
                    (cons _gerbil-libdir288484_ __tmp293336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"-L"
                                                           __tmp293335))))
                                              (declare (not safe))
                                              (cons _rpath288556_
                                                    __tmp293334))))
                                       (declare (not safe))
                                       (foldr1 cons
                                               __tmp293333
                                               _output-ld-opts288548_))))
                                (declare (not safe))
                                (cons _output_-o288540_ __tmp293332))))
                         (declare (not safe))
                         (cons _output-o288536_ __tmp293331))))
                  (declare (not safe))
                  (cons _bin-o288528_ __tmp293330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293329
                                                           _deps-o288518_))))
                                            (declare (not safe))
                                            (cons _output-bin288530_
                                                  __tmp293328))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293327))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293338
                               __tmp293326))
                            (for-each
                             delete-file
                             (let ((__tmp293339
                                    (let ((__tmp293340
                                           (let ((__tmp293341
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _output_-o288540_
                                                          '()))))
                                             (declare (not safe))
                                             (cons _output-o288536_
                                                   __tmp293341))))
                                      (declare (not safe))
                                      (cons _output_-c288538_ __tmp293340))))
                               (declare (not safe))
                               (cons _output-c288534_ __tmp293339)))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp288490_)))
                          '#!void)))))
          (let* ((_output-bin288474_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288464_ _opts288465_)))
                 (_output-scm288476_
                  (string-append _output-bin288474_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288472_ _output-scm288476_ _output-bin288474_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288476_))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx288289_ _opts288290_)
        (letrec ((_reset-declare288292_
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
                 (_generate-stub288293_
                  (lambda (_deps288455_)
                    (let ((_mod-main288457_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx288289_ 'main)))
                          (_reset-decl288458_
                           (let ()
                             (declare (not safe))
                             (_reset-declare288292_)))
                          (_user-decl288459_
                           (let ()
                             (declare (not safe))
                             (_user-declare288294_))))
                      (for-each
                       (lambda (_dep288461_)
                         (write '(##namespace ("")))
                         (newline)
                         (write _reset-decl288458_)
                         (newline)
                         (if _user-decl288459_
                             (begin (write _user-decl288459_) (newline))
                             '#!void)
                         (write (let ((__tmp293342
                                       (let ()
                                         (declare (not safe))
                                         (cons _dep288461_ '()))))
                                  (declare (not safe))
                                  (cons 'include __tmp293342)))
                         (newline))
                       _deps288455_)
                      (write (let ((__tmp293343
                                    (let ((__tmp293356
                                           (let ()
                                             (declare (not safe))
                                             (cons 'gerbil-main '())))
                                          (__tmp293344
                                           (let ((__tmp293352
                                                  (let ((__tmp293353
                                                         (let ((__tmp293354
                                                                (let ((__tmp293355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '() '()))))
                          (declare (not safe))
                          (cons 'quote __tmp293355))))
                   (declare (not safe))
                   (cons __tmp293354 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'gerbil-runtime-init!
                                                          __tmp293353)))
                                                 (__tmp293345
                                                  (let ((__tmp293346
                                                         (let ((__tmp293347
                                                                (let ((__tmp293348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp293349
                                      (let ((__tmp293350
                                             (let ((__tmp293351
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'command-line
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp293351 '()))))
                                        (declare (not safe))
                                        (cons 'cdr __tmp293350))))
                                 (declare (not safe))
                                 (cons __tmp293349 '()))))
                          (declare (not safe))
                          (cons _mod-main288457_ __tmp293348))))
                   (declare (not safe))
                   (cons 'apply __tmp293347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293346 '()))))
                                             (declare (not safe))
                                             (cons __tmp293352 __tmp293345))))
                                      (declare (not safe))
                                      (cons __tmp293356 __tmp293344))))
                               (declare (not safe))
                               (cons 'define __tmp293343)))
                      (write '(gerbil-main))
                      (newline))))
                 (_user-declare288294_
                  (lambda ()
                    (let* ((_gsc-opts288360_
                            (let ()
                              (declare (not safe))
                              (pgetq 'gsc-options: _opts288290_)))
                           (_gsc-prelude288362_
                            (if _gsc-opts288360_
                                (member '"-prelude" _gsc-opts288360_)
                                '#f))
                           (_gsc-prelude288364_
                            (if _gsc-prelude288362_
                                (read (open-input-string
                                       (cadr _gsc-prelude288362_)))
                                '#f)))
                      (let _lp288367_ ((_rest288369_
                                        (let ()
                                          (declare (not safe))
                                          (cons _gsc-prelude288364_ '())))
                                       (_user-decls288370_ '()))
                        (let* ((_rest288371288379_ _rest288369_)
                               (_else288373288387_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls288370_))
                                      '#f
                                      (let ((__tmp293357
                                             (reverse _user-decls288370_)))
                                        (declare (not safe))
                                        (cons 'declare __tmp293357)))))
                               (_K288375288443_
                                (lambda (_rest288390_ _expr288391_)
                                  (let* ((_expr288392288404_ _expr288391_)
                                         (_else288395288412_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp288367_
                                               _rest288390_
                                               _user-decls288370_)))))
                                    (let ((_K288400288433_
                                           (lambda (_decls288431_)
                                             (let ((__tmp293358
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl1 cons
                                                              _user-decls288370_
                                                              _decls288431_))))
                                               (declare (not safe))
                                               (_lp288367_
                                                _rest288390_
                                                __tmp293358))))
                                          (_K288397288418_
                                           (lambda (_exprs288416_)
                                             (let ((__tmp293359
                                                    (append _exprs288416_
                                                            _rest288390_)))
                                               (declare (not safe))
                                               (_lp288367_
                                                __tmp293359
                                                _user-decls288370_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr288392288404_))
                                          (let ((_tl288402288438_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr288392288404_)))
                                                (_hd288401288436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr288392288404_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd288401288436_
                                                         'declare))
                                                (let ((_decls288441_
                                                       _tl288402288438_))
                                                  (declare (not safe))
                                                  (_K288400288433_
                                                   _decls288441_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd288401288436_
                                                             'begin))
                                                    (let ((_exprs288426_
                                                           _tl288402288438_))
                                                      (declare (not safe))
                                                      (_K288397288418_
                                                       _exprs288426_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else288395288412_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else288395288412_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest288371288379_))
                              (let ((_hd288376288446_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest288371288379_)))
                                    (_tl288377288448_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest288371288379_))))
                                (let* ((_expr288451_ _hd288376288446_)
                                       (_rest288453_ _tl288377288448_))
                                  (declare (not safe))
                                  (_K288375288443_ _rest288453_ _expr288451_)))
                              (let ()
                                (declare (not safe))
                                (_else288373288387_))))))))
                 (_compile-stub288295_
                  (lambda (_output-scm288302_ _output-bin288303_)
                    (let* ((_gerbil-home288305_
                            (getenv '"GERBIL_BUILD_PREFIX"
                                    (let ()
                                      (declare (not safe))
                                      (gerbil-home))))
                           (_gerbil-libdir288307_
                            (path-expand '"lib" _gerbil-home288305_))
                           (_runtime288309_
                            (map gxc#find-static-module-file
                                 gxc#gerbil-runtime-modules))
                           (_gambit-sharp288311_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home288305_))
                           (_include-gambit-sharp288313_
                            (string-append
                             '"(include \""
                             _gambit-sharp288311_
                             '"\")"))
                           (_bin-scm288315_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx288289_)))
                           (_deps288317_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx288289_)))
                           (_deps288319_
                            (map gxc#find-static-module-file _deps288317_))
                           (_deps288324_
                            (let ((__tmp293360
                                   (lambda (_$obj288321_)
                                     (let ((__tmp293361
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty? _$obj288321_))))
                                       (declare (not safe))
                                       (not __tmp293361)))))
                              (declare (not safe))
                              (filter __tmp293360 _deps288319_)))
                           (_deps288328_
                            (let ((__tmp293362
                                   (lambda (_f288326_)
                                     (let ((__tmp293363
                                            (member _f288326_
                                                    _runtime288309_)))
                                       (declare (not safe))
                                       (not __tmp293363)))))
                              (declare (not safe))
                              (filter __tmp293362 _deps288324_)))
                           (_output-base288330_
                            (string-append
                             (path-strip-extension _output-scm288302_)))
                           (_output-c288332_
                            (string-append _output-base288330_ '".c"))
                           (_output-o288334_
                            (string-append _output-base288330_ '".o"))
                           (_output-c_288336_
                            (string-append _output-base288330_ '"_.c"))
                           (_output-o_288338_
                            (string-append _output-base288330_ '"_.o"))
                           (_gsc-link-opts288340_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts288342_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts288344_
                            (let ((__tmp293364
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir288307_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp293364)))
                           (_output-ld-opts288346_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros288348_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (let ((__tmp293366
                                       (let ((__tmp293367
                                              (let ((__tmp293368
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _include-gambit-sharp288313_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '"-e" __tmp293368))))
                                         (declare (not safe))
                                         (cons '"(define-cond-expand-feature|enable-smp|)"
                                               __tmp293367))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293366))
                                (let ((__tmp293365
                                       (let ()
                                         (declare (not safe))
                                         (cons _include-gambit-sharp288313_
                                               '()))))
                                  (declare (not safe))
                                  (cons '"-e" __tmp293365))))
                           (_gsc-link-opts288350_
                            (append _gsc-link-opts288340_
                                    _gsc-gx-macros288348_))
                           (_rpath288352_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir288307_)))
                           (_default-ld-options288354_
                            (let ((__tmp293369
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-lm" '()))))
                              (declare (not safe))
                              (cons '"-ldl" __tmp293369))))
                      (let ((__tmp293370
                             (lambda ()
                               (let ((__tmp293371
                                      (path-directory _output-bin288303_)))
                                 (declare (not safe))
                                 (create-directory* __tmp293371)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp293370))
                      (let ((__tmp293372
                             (lambda ()
                               (let ((__tmp293373
                                      (let ((__tmp293374
                                             (let ((__tmp293375
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _bin-scm288315_
                                                            '()))))
                                               (declare (not safe))
                                               (foldr1 cons
                                                       __tmp293375
                                                       _deps288328_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp293374
                                                _runtime288309_))))
                                 (declare (not safe))
                                 (_generate-stub288293_ __tmp293373)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm288302_
                         __tmp293372))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp293381
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293376
                                   (let ((__tmp293377
                                          (let ((__tmp293378
                                                 (let ((__tmp293379
                                                        (let ((__tmp293380
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-scm288302_ '()))))
                  (declare (not safe))
                  (foldr1 cons __tmp293380 _gsc-link-opts288350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-c_288336_
                                                         __tmp293379))))
                                            (declare (not safe))
                                            (cons '"-o" __tmp293378))))
                                     (declare (not safe))
                                     (cons '"-link" __tmp293377))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293381
                               __tmp293376))
                            (let ((__tmp293387
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp293382
                                   (let ((__tmp293383
                                          (let ((__tmp293384
                                                 (let ((__tmp293385
                                                        (let ((__tmp293386
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _output-c_288336_ '()))))
                  (declare (not safe))
                  (cons _output-c288332_ __tmp293386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 cons
                                                           __tmp293385
                                                           _gsc-static-opts288344_))))
                                            (declare (not safe))
                                            (foldr1 cons
                                                    __tmp293384
                                                    _gsc-cc-opts288342_))))
                                     (declare (not safe))
                                     (cons '"-obj" __tmp293383))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293387
                               __tmp293382))
                            (let ((__tmp293397
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp293388
                                   (let ((__tmp293389
                                          (let ((__tmp293390
                                                 (let ((__tmp293391
                                                        (let ((__tmp293392
                                                               (let ((__tmp293393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp293394
                                     (let ((__tmp293395
                                            (let ((__tmp293396
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '"-lgambit"
                                                           _default-ld-options288354_))))
                                              (declare (not safe))
                                              (cons _gerbil-libdir288307_
                                                    __tmp293396))))
                                       (declare (not safe))
                                       (cons '"-L" __tmp293395))))
                                (declare (not safe))
                                (cons _rpath288352_ __tmp293394))))
                         (declare (not safe))
                         (foldr1 cons __tmp293393 _output-ld-opts288346_))))
                  (declare (not safe))
                  (cons _output-o_288338_ __tmp293392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _output-o288334_
                                                         __tmp293391))))
                                            (declare (not safe))
                                            (cons _output-bin288303_
                                                  __tmp293390))))
                                     (declare (not safe))
                                     (cons '"-o" __tmp293389))))
                              (declare (not safe))
                              (gxc#invoke__%
                               '#f
                               absent-value
                               absent-value
                               __tmp293397
                               __tmp293388)))
                          '#!void)))))
          (let* ((_output-bin288297_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx288289_ _opts288290_)))
                 (_output-scm288299_
                  (string-append _output-bin288297_ '"__exe.scm")))
            (let ()
              (declare (not safe))
              (_compile-stub288295_ _output-scm288299_ _output-bin288297_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (delete-file _output-scm288299_))))))
    (define gxc#find-export-binding
      (lambda (_ctx288239_ _id288240_)
        (let ((_$e288286_
               (let ((__tmp293399
                      (lambda (_e288241288243_)
                        (let* ((_g288245288255_ _e288241288243_)
                               (_else288247288263_ (lambda () '#f))
                               (_K288249288267_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g288245288255_
                                 'gx#module-export::t))
                              (let* ((_e288250288270_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288245288255_
                                         '1
                                         gx#module-export::t
                                         '#f)))
                                     (_e288251288273_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288245288255_
                                         '2
                                         gx#module-export::t
                                         '#f)))
                                     (_e288252288276_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g288245288255_
                                         '3
                                         gx#module-export::t
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e288252288276_ '0))
                                    (let ((_e288253288279_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g288245288255_
                                              '4
                                              gx#module-export::t
                                              '#f))))
                                      (if ((lambda (_g288281288283_)
                                             (let ()
                                               (declare (not safe))
                                               (eq? _g288281288283_
                                                    _id288240_)))
                                           _e288253288279_)
                                          (let ()
                                            (declare (not safe))
                                            (_K288249288267_))
                                          (let ()
                                            (declare (not safe))
                                            (_else288247288263_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else288247288263_))))
                              (let ()
                                (declare (not safe))
                                (_else288247288263_))))))
                     (__tmp293398
                      (let ((__obj293204 _ctx288239_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj293204
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj293204
                               '9
                               gx#module-context::t
                               '#f))
                            (class-slot-ref
                             gx#module-context::t
                             __obj293204
                             'export)))))
                 (declare (not safe))
                 (find __tmp293399 __tmp293398))))
          (if _$e288286_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e288286_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx288231_ _id288232_)
        (let ((_$e288234_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx288231_ _id288232_))))
          (if _$e288234_
              ((lambda (_bind288237_)
                 (if (let ()
                       (declare (not safe))
                       (class-instance? gx#runtime-binding::t _bind288237_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id288232_)))
                 (let ((__obj293205 _bind288237_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj293205
                          'gx#binding::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj293205
                          '1
                          gx#binding::t
                          '#f))
                       (class-slot-ref gx#binding::t __obj293205 'id))))
               _$e288234_)
              (let ((__tmp293400
                     (let ((__obj293206 _ctx288231_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj293206
                              'gx#expander-context::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __obj293206
                              '1
                              gx#expander-context::t
                              '#f))
                           (class-slot-ref
                            gx#expander-context::t
                            __obj293206
                            'id)))))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp293400
                 _id288232_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx288118_)
        (letrec* ((_ht288120_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import-set-template288121_
                   (lambda (_in288183_ _phi288184_)
                     (let ((_iphi288186_
                            (fx+ _phi288184_
                                 (##direct-structure-ref
                                  _in288183_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports288187_
                            (let ((__obj293207
                                   (##direct-structure-ref
                                    _in288183_
                                    '1
                                    gx#import-set::t
                                    '#f)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj293207
                                     'gx#module-context::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj293207
                                     '8
                                     gx#module-context::t
                                     '#f))
                                  (class-slot-ref
                                   gx#module-context::t
                                   __obj293207
                                   'import)))))
                       (let _lp288189_ ((_rest288191_ _imports288187_)
                                        (_r288192_ '()))
                         (let* ((_rest288193288201_ _rest288191_)
                                (_else288195288209_ (lambda () _r288192_))
                                (_K288197288219_
                                 (lambda (_rest288212_ _in288213_)
                                   (if (let ()
                                         (declare (not safe))
                                         (class-instance?
                                          gx#module-context::t
                                          _in288213_))
                                       (if (let ()
                                             (declare (not safe))
                                             (fxzero? _iphi288186_))
                                           (let ((__tmp293407
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _in288213_
                                                          _r288192_))))
                                             (declare (not safe))
                                             (_lp288189_
                                              _rest288212_
                                              __tmp293407))
                                           (let ()
                                             (declare (not safe))
                                             (_lp288189_
                                              _rest288212_
                                              _r288192_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in288213_
                                              'gx#module-import::t))
                                           (let ((_iphi288215_
                                                  (fx+ _phi288184_
                                                       (##direct-structure-ref
                                                        _in288213_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (fxzero? _iphi288215_))
                                                 (let ((__tmp293405
                                                        (let ((__tmp293406
                                                               (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in288213_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)))
                  (declare (not safe))
                  (cons __tmp293406 _r288192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_lp288189_
                                                    _rest288212_
                                                    __tmp293405))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp288189_
                                                    _rest288212_
                                                    _r288192_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in288213_
                                                  'gx#import-set::t))
                                               (let ((_xphi288217_
                                                      (fx+ _iphi288186_
                                                           (##direct-structure-ref
                                                            _in288213_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (fxzero? _xphi288217_))
                                                     (let ((__tmp293403
                                                            (let ((__tmp293404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##direct-structure-ref
                            _in288213_
                            '1
                            gx#import-set::t
                            '#f)))
                      (declare (not safe))
                      (cons __tmp293404 _r288192_))))
               (declare (not safe))
               (_lp288189_ _rest288212_ __tmp293403))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (fxpositive?
                                                          _xphi288217_)
                                                         (let ((__tmp293401
                                                                (let ((__tmp293402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template288121_
                                  _in288213_
                                  _iphi288186_))))
                          (declare (not safe))
                          (foldl1 cons _r288192_ __tmp293402))))
                   (declare (not safe))
                   (_lp288189_ _rest288212_ __tmp293401))
                 (let ()
                   (declare (not safe))
                   (_lp288189_ _rest288212_ _r288192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp288189_
                                                  _rest288212_
                                                  _r288192_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest288193288201_))
                               (let ((_hd288198288222_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest288193288201_)))
                                     (_tl288199288224_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest288193288201_))))
                                 (let* ((_in288227_ _hd288198288222_)
                                        (_rest288229_ _tl288199288224_))
                                   (declare (not safe))
                                   (_K288197288219_ _rest288229_ _in288227_)))
                               (let ()
                                 (declare (not safe))
                                 (_else288195288209_))))))))
                  (_find-deps288122_
                   (lambda (_rest288129_ _deps288130_)
                     (let* ((_rest288131288139_ _rest288129_)
                            (_else288133288147_ (lambda () _deps288130_))
                            (_K288135288171_
                             (lambda (_rest288150_ _hd288151_)
                               (if (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      gx#module-context::t
                                      _hd288151_))
                                   (let ((_id288153_
                                          (let ((__obj293208 _hd288151_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj293208
                                                   'gx#expander-context::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj293208
                                                   '1
                                                   gx#expander-context::t
                                                   '#f))
                                                (class-slot-ref
                                                 gx#expander-context::t
                                                 __obj293208
                                                 'id))))
                                         (_imports288154_
                                          (let ((__obj293209 _hd288151_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj293209
                                                   'gx#module-context::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj293209
                                                   '8
                                                   gx#module-context::t
                                                   '#f))
                                                (class-slot-ref
                                                 gx#module-context::t
                                                 __obj293209
                                                 'import)))))
                                     (if (let ()
                                           (declare (not safe))
                                           (table-ref
                                            _ht288120_
                                            _id288153_
                                            '#f))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps288122_
                                            _rest288150_
                                            _deps288130_))
                                         (let ((_$e288156_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd288151_))))
                                           (if _$e288156_
                                               ((lambda (_pre288159_)
                                                  (let ((_xdeps288161_
                                                         (let ((__tmp293420
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _pre288159_ _imports288154_))))
                   (declare (not safe))
                   (_find-deps288122_ __tmp293420 _deps288130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (table-set!
                                                       _ht288120_
                                                       _id288153_
                                                       _hd288151_))
                                                    (let ((__tmp293421
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd288151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xdeps288161_))))
              (declare (not safe))
              (_find-deps288122_ _rest288150_ __tmp293421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e288156_)
                                               (let ((_xdeps288163_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps288122_
                                                         _imports288154_
                                                         _deps288130_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (table-set!
                                                    _ht288120_
                                                    _id288153_
                                                    _hd288151_))
                                                 (let ((__tmp293419
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _hd288151_
                                                                _xdeps288163_))))
                                                   (declare (not safe))
                                                   (_find-deps288122_
                                                    _rest288150_
                                                    __tmp293419)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (class-instance?
                                          gx#prelude-context::t
                                          _hd288151_))
                                       (let ((_id288165_
                                              (let ((__obj293210 _hd288151_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj293210
                                                       'gx#expander-context::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj293210
                                                       '1
                                                       gx#expander-context::t
                                                       '#f))
                                                    (class-slot-ref
                                                     gx#expander-context::t
                                                     __obj293210
                                                     'id)))))
                                         (if (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _ht288120_
                                                _id288165_
                                                '#f))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps288122_
                                                _rest288150_
                                                _deps288130_))
                                             (let ((_xdeps288167_
                                                    (let ((__tmp293417
                                                           (let ((__obj293211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd288151_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj293211
                            'gx#prelude-context::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj293211
                            '7
                            gx#prelude-context::t
                            '#f))
                         (class-slot-ref
                          gx#prelude-context::t
                          __obj293211
                          'import)))))
              (declare (not safe))
              (_find-deps288122_ __tmp293417 _deps288130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (table-ref
                                                      _ht288120_
                                                      _id288165_
                                                      '#f))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps288122_
                                                      _rest288150_
                                                      _xdeps288167_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (table-set!
                                                        _ht288120_
                                                        _id288165_
                                                        _hd288151_))
                                                     (let ((__tmp293418
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd288151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xdeps288167_))))
               (declare (not safe))
               (_find-deps288122_ _rest288150_ __tmp293418)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd288151_
                                              'gx#module-import::t))
                                           (if (let ((__tmp293416
                                                      (##direct-structure-ref
                                                       _hd288151_
                                                       '3
                                                       gx#module-import::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp293416))
                                               (let ((__tmp293414
                                                      (let ((__tmp293415
                                                             (##direct-structure-ref
                                                              _hd288151_
                                                              '1
                                                              gx#module-import::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293415
                                                              _rest288150_))))
                                                 (declare (not safe))
                                                 (_find-deps288122_
                                                  __tmp293414
                                                  _deps288130_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps288122_
                                                  _rest288150_
                                                  _deps288130_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd288151_
                                                  'gx#module-export::t))
                                               (let ((__tmp293412
                                                      (let ((__tmp293413
                                                             (##direct-structure-ref
                                                              _hd288151_
                                                              '1
                                                              gx#module-export::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (cons __tmp293413
                                                              _rest288150_))))
                                                 (declare (not safe))
                                                 (_find-deps288122_
                                                  __tmp293412
                                                  _deps288130_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd288151_
                                                      'gx#import-set::t))
                                                   (if (let ((__tmp293411
                                                              (##direct-structure-ref
                                                               _hd288151_
                                                               '2
                                                               gx#import-set::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (fxzero? __tmp293411))
                                                       (let ((__tmp293409
                                                              (let ((__tmp293410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##direct-structure-ref
                              _hd288151_
                              '1
                              gx#import-set::t
                              '#f)))
                        (declare (not safe))
                        (cons __tmp293410 _rest288150_))))
                 (declare (not safe))
                 (_find-deps288122_ __tmp293409 _deps288130_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd288151_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps288169_
                           (let ()
                             (declare (not safe))
                             (_import-set-template288121_ _hd288151_ '0)))
                          (__tmp293408
                           (let ()
                             (declare (not safe))
                             (foldl1 cons _rest288150_ _xdeps288169_))))
                     (declare (not safe))
                     (_find-deps288122_ __tmp293408 _deps288130_))
                   (let ()
                     (declare (not safe))
                     (_find-deps288122_ _rest288150_ _deps288130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (error '"Unexpected module import"
                                                          _hd288151_)))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest288131288139_))
                           (let ((_hd288136288174_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest288131288139_)))
                                 (_tl288137288176_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest288131288139_))))
                             (let* ((_hd288179_ _hd288136288174_)
                                    (_rest288181_ _tl288137288176_))
                               (declare (not safe))
                               (_K288135288171_ _rest288181_ _hd288179_)))
                           (let ()
                             (declare (not safe))
                             (_else288133288147_)))))))
          (reverse (let ((__tmp293422
                          (let ((__tmp293423
                                 (let ((_$e288124_
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-context-prelude__%
                                           _ctx288118_))))
                                   (if _$e288124_
                                       ((lambda (_pre288127_)
                                          (let ((__tmp293424
                                                 (let ((__obj293212
                                                        _ctx288118_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj293212
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj293212
                                                          '8
                                                          gx#module-context::t
                                                          '#f))
                                                       (class-slot-ref
                                                        gx#module-context::t
                                                        __obj293212
                                                        'import)))))
                                            (declare (not safe))
                                            (cons _pre288127_ __tmp293424)))
                                        _$e288124_)
                                       (let ((__obj293213 _ctx288118_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj293213
                                                'gx#module-context::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj293213
                                                '8
                                                gx#module-context::t
                                                '#f))
                                             (class-slot-ref
                                              gx#module-context::t
                                              __obj293213
                                              'import)))))))
                            (declare (not safe))
                            (_find-deps288122_ __tmp293423 '()))))
                     (declare (not safe))
                     (filter gx#expander-context-id __tmp293422))))))
    (define gxc#find-static-module-file
      (lambda (_ctx288049_)
        (let* ((_context-id288051_
                (if (let ()
                      (declare (not safe))
                      (class-instance? gx#module-context::t _ctx288049_))
                    (let ((__obj293214 _ctx288049_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj293214
                             'gx#expander-context::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj293214
                             '1
                             gx#expander-context::t
                             '#f))
                          (class-slot-ref
                           gx#expander-context::t
                           __obj293214
                           'id)))
                    (string->symbol _ctx288049_)))
               (_scm288053_
                (string-append
                 (let ()
                   (declare (not safe))
                   (gxc#static-module-name _context-id288051_))
                 '".scm"))
               (_dirs288055_ (gx#current-expander-module-library-path))
               (_dirs288061_
                (let ((_user-libpath288057_ (getenv '"GERBIL_PATH" '#f)))
                  (if _user-libpath288057_
                      (let ((_user-libpath288059_
                             (path-expand '"lib" _user-libpath288057_)))
                        (if (member _user-libpath288059_ _dirs288055_)
                            _dirs288055_
                            (let ()
                              (declare (not safe))
                              (cons _user-libpath288059_ _dirs288055_))))
                      _dirs288055_)))
               (_dirs288070_
                (let ((_$e288063_ (gxc#current-compile-output-dir)))
                  (if _$e288063_
                      ((lambda (_g288065288067_)
                         (let ()
                           (declare (not safe))
                           (cons _g288065288067_ _dirs288061_)))
                       _$e288063_)
                      _dirs288061_)))
               (_dirs288076_
                (map (lambda (_g288071288073_)
                       (path-expand '"static" _g288071288073_))
                     _dirs288070_)))
          (let _lp288079_ ((_rest288081_ _dirs288076_))
            (let* ((_rest288082288090_ _rest288081_)
                   (_else288084288098_
                    (lambda ()
                      (let ((__tmp293425
                             (let ((__obj293215 _ctx288049_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj293215
                                      'gx#expander-context::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj293215
                                      '1
                                      gx#expander-context::t
                                      '#f))
                                   (class-slot-ref
                                    gx#expander-context::t
                                    __obj293215
                                    'id)))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp293425
                         _scm288053_))))
                   (_K288086288106_
                    (lambda (_rest288101_ _dir288102_)
                      (let ((_path288104_
                             (path-expand _scm288053_ _dir288102_)))
                        (if (file-exists? _path288104_)
                            _path288104_
                            (let ()
                              (declare (not safe))
                              (_lp288079_ _rest288101_)))))))
              (if (let () (declare (not safe)) (##pair? _rest288082288090_))
                  (let ((_hd288087288109_
                         (let ()
                           (declare (not safe))
                           (##car _rest288082288090_)))
                        (_tl288088288111_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest288082288090_))))
                    (let* ((_dir288114_ _hd288087288109_)
                           (_rest288116_ _tl288088288111_))
                      (declare (not safe))
                      (_K288086288106_ _rest288116_ _dir288114_)))
                  (let () (declare (not safe)) (_else288084288098_))))))))
    (define gxc#file-empty?
      (lambda (_path288047_)
        (let ((__tmp293426 (file-info-size (file-info _path288047_ '#t))))
          (declare (not safe))
          (zero? __tmp293426))))
    (define gxc#compile-top-module
      (lambda (_ctx288036_)
        (let ((__tmp293430
               (lambda ()
                 (let ((__tmp293431
                        (let ((__obj293216 _ctx288036_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj293216
                                 'gx#expander-context::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj293216
                                 '1
                                 gx#expander-context::t
                                 '#f))
                              (class-slot-ref
                               gx#expander-context::t
                               __obj293216
                               'id)))))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp293431))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp293432
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx288036_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp293432))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx288036_))
                 (if (let ((__tmp293435
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx288036_))))
                       (declare (not safe))
                       (null? __tmp293435))
                     (let* ((_thr1288041_
                             (let ((__tmp293433
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx288036_)))))
                               (declare (not safe))
                               (spawn __tmp293433)))
                            (_thr2288044_
                             (let ((__tmp293434
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx288036_)))))
                               (declare (not safe))
                               (spawn __tmp293434))))
                       (let () (declare (not safe)) (gxc#join! _thr1288041_))
                       (let () (declare (not safe)) (gxc#join! _thr2288044_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx288036_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx288036_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx288036_))
                     '#!void)))
              (__tmp293429
               (let ((__obj293217
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj293217)
                 __obj293217))
              (__tmp293428
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp293427 (let () (declare (not safe)) (make-table))))
          (declare (not safe))
          (call-with-parameters
           __tmp293430
           gx#current-expander-context
           _ctx288036_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp293429
           gxc#current-compile-runtime-sections
           __tmp293428
           gxc#current-compile-runtime-names
           __tmp293427))))
    (define gxc#collect-bindings
      (lambda (_ctx288034_)
        (let ((__tmp293436
               (let ((__obj293218 _ctx288034_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj293218
                        'gx#module-context::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj293218
                        '11
                        gx#module-context::t
                        '#f))
                     (class-slot-ref
                      gx#module-context::t
                      __obj293218
                      'code)))))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp293436))))
    (define gxc#compile-runtime-code
      (lambda (_ctx287980_)
        (letrec ((_compile1287982_
                  (lambda (_ctx288023_)
                    (let* ((_code288025_
                            (let ((__obj293219 _ctx288023_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj293219
                                     'gx#module-context::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj293219
                                     '11
                                     gx#module-context::t
                                     '#f))
                                  (class-slot-ref
                                   gx#module-context::t
                                   __obj293219
                                   'code))))
                           (_rt288029_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code288025_))
                                (let ((_idstr288027_
                                       (let ((__tmp293437
                                              (let ((__obj293220 _ctx288023_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj293220
                                                       'gx#expander-context::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj293220
                                                       '1
                                                       gx#expander-context::t
                                                       '#f))
                                                    (class-slot-ref
                                                     gx#expander-context::t
                                                     __obj293220
                                                     'id)))))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp293437))))
                                  (string-append _idstr288027_ '"__0"))
                                '#f)))
                      (if _rt288029_
                          (begin
                            (let ((__tmp293438
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-set! __tmp293438 _ctx288023_ _rt288029_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code287984_
                               _ctx288023_
                               _code288025_)))
                          (let ((_path288032_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx288023_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path288032_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code287985_
                         _ctx288023_
                         _code288025_
                         _rt288029_)))))
                 (_context-timestamp287983_
                  (lambda (_ctx288021_)
                    (string->symbol
                     (string-append
                      (symbol->string
                       (let ((__obj293221 _ctx288021_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj293221
                                'gx#expander-context::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj293221
                                '1
                                gx#expander-context::t
                                '#f))
                             (class-slot-ref
                              gx#expander-context::t
                              __obj293221
                              'id))))
                      '"::timestamp"))))
                 (_generate-runtime-code287984_
                  (lambda (_ctx288003_ _code288004_)
                    (let* ((_lifts288006_
                            (let () (declare (not safe)) (box '())))
                           (_runtime-code288009_
                            (let ((__tmp293441
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code288004_))))
                                  (__tmp293440
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (__tmp293439
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293441
                               gx#current-expander-context
                               _ctx288003_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts288006_
                               gxc#current-compile-marks
                               __tmp293440
                               gxc#current-compile-identifiers
                               __tmp293439)))
                           (_runtime-code288011_
                            (if (let ((__tmp293445 (unbox _lifts288006_)))
                                  (declare (not safe))
                                  (null? __tmp293445))
                                _runtime-code288009_
                                (let ((__tmp293442
                                       (let ((__tmp293444
                                              (let ()
                                                (declare (not safe))
                                                (cons _runtime-code288009_
                                                      '())))
                                             (__tmp293443
                                              (reverse (unbox _lifts288006_))))
                                         (declare (not safe))
                                         (foldr1 cons
                                                 __tmp293444
                                                 __tmp293443))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293442))))
                           (_runtime-code288013_
                            (let ((__tmp293446
                                   (let ((__tmp293448
                                          (let ((__tmp293449
                                                 (let ((__tmp293452
                                                        (let ()
                                                          (declare (not safe))
                                                          (_context-timestamp287983_
                                                           _ctx288003_)))
                                                       (__tmp293450
                                                        (let ((__tmp293451
                                                               (gxc#current-compile-timestamp)))
                                                          (declare (not safe))
                                                          (cons __tmp293451
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp293452
                                                         __tmp293450))))
                                            (declare (not safe))
                                            (cons 'define __tmp293449)))
                                         (__tmp293447
                                          (let ()
                                            (declare (not safe))
                                            (cons _runtime-code288011_ '()))))
                                     (declare (not safe))
                                     (cons __tmp293448 __tmp293447))))
                              (declare (not safe))
                              (cons 'begin __tmp293446)))
                           (_scm0288015_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx288003_
                               '0
                               '".scm"))))
                      (let ((_scms288018_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx288003_))))
                        (let ((__tmp293453
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0288015_
                                    _runtime-code288013_)))))
                          (declare (not safe))
                          (call-with-parameters
                           __tmp293453
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms288018_)
                            (delete-file _scms288018_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0288015_
                           '" => "
                           _scms288018_))
                        (copy-file _scm0288015_ _scms288018_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0288015_))))))
                 (_generate-loader-code287985_
                  (lambda (_ctx287992_ _code287993_ _rt287994_)
                    (let* ((_loader-code287997_
                            (let ((__tmp293454
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code287993_)))))
                              (declare (not safe))
                              (call-with-parameters
                               __tmp293454
                               gx#current-expander-context
                               _ctx287992_)))
                           (_loader-code287999_
                            (if _rt287994_
                                (let ((__tmp293455
                                       (let ((__tmp293456
                                              (let ((__tmp293457
                                                     (let ((__tmp293458
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _rt287994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons 'load-module __tmp293458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp293457 '()))))
                                         (declare (not safe))
                                         (cons _loader-code287997_
                                               __tmp293456))))
                                  (declare (not safe))
                                  (cons 'begin __tmp293455))
                                _loader-code287997_)))
                      (let ((__tmp293459
                             (lambda ()
                               (let ((__tmp293460
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287992_
                                         'rt
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp293460
                                  _loader-code287999_)))))
                        (declare (not safe))
                        (call-with-parameters
                         __tmp293459
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let ((_all-modules287987_
                 (let ((__tmp293461
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx287980_))))
                   (declare (not safe))
                   (cons _ctx287980_ __tmp293461))))
            (for-each
             (lambda (_ctx287989_)
               (let ((__tmp293462
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_compile1287982_ _ctx287989_)))))
                 (declare (not safe))
                 (call-with-parameters
                  __tmp293462
                  gxc#current-compile-decls
                  '())))
             _all-modules287987_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx287877_)
        (letrec ((_compile-ssi287879_
                  (lambda (_code287950_)
                    (let* ((_path287952_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx287877_
                               '#f
                               '".ssi")))
                           (_prelude287963_
                            (let* ((_super287954_
                                    (let ((__obj293222 _ctx287877_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj293222
                                             'gx#context-phi::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj293222
                                             '3
                                             gx#phi-context::t
                                             '#f))
                                          (class-slot-ref
                                           gx#phi-context::t
                                           __obj293222
                                           'super))))
                                   (_$e287956_
                                    (let ((__obj293223 _super287954_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             __obj293223
                                             'gx#expander-context::t))
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             __obj293223
                                             '1
                                             gx#expander-context::t
                                             '#f))
                                          (class-slot-ref
                                           gx#expander-context::t
                                           __obj293223
                                           'id)))))
                              (if _$e287956_
                                  ((lambda (_g287958287960_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g287958287960_)))
                                   _$e287956_)
                                  ':<root>)))
                           (_ns287965_
                            (let ((__obj293224 _ctx287877_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj293224
                                     'gx#module-context::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj293224
                                     '6
                                     gx#module-context::t
                                     '#f))
                                  (class-slot-ref
                                   gx#module-context::t
                                   __obj293224
                                   'ns))))
                           (_idstr287967_
                            (symbol->string
                             (let ((__obj293225 _ctx287877_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj293225
                                      'gx#expander-context::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj293225
                                      '1
                                      gx#expander-context::t
                                      '#f))
                                   (class-slot-ref
                                    gx#expander-context::t
                                    __obj293225
                                    'id)))))
                           (_pkg287974_
                            (let ((_$e287969_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex _idstr287967_ '#\/))))
                              (if _$e287969_
                                  ((lambda (_x287972_)
                                     (string->symbol
                                      (substring _idstr287967_ '0 _x287972_)))
                                   _$e287969_)
                                  '#f)))
                           (_rt287976_
                            (let ((__tmp293463
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (table-ref __tmp293463 _ctx287877_ '#f))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path287952_))
                      (let ((__tmp293464
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln '"prelude:" '" " _prelude287963_))
                               (if _pkg287974_
                                   (let ()
                                     (declare (not safe))
                                     (displayln '"package:" '" " _pkg287974_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _ns287965_))
                               (newline)
                               (pretty-print _code287950_)
                               (if _rt287976_
                                   (pretty-print
                                    (let ((__tmp293465
                                           (let ((__tmp293469
                                                  (let ((__tmp293470
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp293470)))
                                                 (__tmp293466
                                                  (let ((__tmp293467
                                                         (let ((__tmp293468
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _rt287976_ '()))))
                   (declare (not safe))
                   (cons '%#quote __tmp293468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp293467 '()))))
                                             (declare (not safe))
                                             (cons __tmp293469 __tmp293466))))
                                      (declare (not safe))
                                      (cons '%#call __tmp293465)))
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path287952_
                         __tmp293464)))))
                 (_compile-phi287880_
                  (lambda (_part287890_)
                    (let* ((_part287891287904_ _part287890_)
                           (_E287893287908_
                            (lambda ()
                              (error '"No clause matching"
                                     _part287891287904_)))
                           (_K287894287919_
                            (lambda (_code287911_
                                     _n287912_
                                     _phi287913_
                                     _phi-ctx287914_)
                              (let* ((_code287917_
                                      (let ((__tmp293471
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code287911_)))))
                                        (declare (not safe))
                                        (call-with-parameters
                                         __tmp293471
                                         gx#current-expander-context
                                         _phi-ctx287914_
                                         gx#current-expander-phi
                                         _phi287913_)))
                                     (__tmp293472
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx287877_
                                         _n287912_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp293472
                                 _code287917_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part287891287904_))
                          (let ((_hd287895287922_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part287891287904_)))
                                (_tl287896287924_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part287891287904_))))
                            (let ((_phi-ctx287927_ _hd287895287922_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl287896287924_))
                                  (let ((_hd287897287929_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl287896287924_)))
                                        (_tl287898287931_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl287896287924_))))
                                    (let ((_phi287934_ _hd287897287929_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl287898287931_))
                                          (let ((_hd287899287936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl287898287931_)))
                                                (_tl287900287938_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl287898287931_))))
                                            (let ((_n287941_ _hd287899287936_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl287900287938_))
                                                  (let ((_hd287901287943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl287900287938_)))
                                                        (_tl287902287945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl287900287938_))))
                                                    (let ((_code287948_
                                                           _hd287901287943_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl287902287945_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K287894287919_
                                                             _code287948_
                                                             _n287941_
                                                             _phi287934_
                                                             _phi-ctx287927_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E287893287908_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E287893287908_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E287893287908_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E287893287908_)))))
                          (let () (declare (not safe)) (_E287893287908_)))))))
          (let ((_g293473_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx287877_))))
            (begin
              (let ((_g293474_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g293473_)
                           (##vector-length _g293473_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g293474_ 2)))
                    (error "Context expects 2 values" _g293474_)))
              (let ((_ssi-code287882_
                     (let () (declare (not safe)) (##vector-ref _g293473_ 0)))
                    (_phi-code287883_
                     (let () (declare (not safe)) (##vector-ref _g293473_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi287879_ _ssi-code287882_))
                  (let ((_threads287888_
                         (map (lambda (_code287885_)
                                (let ((__tmp293475
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi287880_
                                            _code287885_)))))
                                  (declare (not safe))
                                  (spawn __tmp293475)))
                              _phi-code287883_)))
                    (for-each gxc#join! _threads287888_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx287860_)
        (let* ((_path287862_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx287860_ '#f '".ssxi.ss")))
               (_code287864_
                (let ((__tmp293476
                       (let ((__obj293226 _ctx287860_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj293226
                                'gx#module-context::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj293226
                                '11
                                gx#module-context::t
                                '#f))
                             (class-slot-ref
                              gx#module-context::t
                              __obj293226
                              'code)))))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp293476)))
               (_idstr287866_
                (symbol->string
                 (let ((__obj293227 _ctx287860_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj293227
                          'gx#expander-context::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj293227
                          '1
                          gx#expander-context::t
                          '#f))
                       (class-slot-ref
                        gx#expander-context::t
                        __obj293227
                        'id)))))
               (_pkg287873_
                (let ((_$e287868_
                       (let ()
                         (declare (not safe))
                         (string-rindex _idstr287866_ '#\/))))
                  (if _$e287868_
                      ((lambda (_x287871_)
                         (string->symbol
                          (substring _idstr287866_ '0 _x287871_)))
                       _$e287868_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path287862_))
          (let ((__tmp293477
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg287873_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _pkg287873_))
                       '#!void)
                   (newline)
                   (pretty-print _code287864_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path287862_ __tmp293477)))))
    (define gxc#generate-meta-code
      (lambda (_ctx287853_)
        (let* ((_state287855_
                (let ((__obj293228
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj293228 _ctx287853_)
                  __obj293228))
               (_ssi-code287857_
                (let ((__tmp293478
                       (let ((__obj293229 _ctx287853_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj293229
                                'gx#module-context::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj293229
                                '11
                                gx#module-context::t
                                '#f))
                             (class-slot-ref
                              gx#module-context::t
                              __obj293229
                              'code)))))
                  (declare (not safe))
                  (gxc#apply-generate-meta __tmp293478 _state287855_))))
          (values _ssi-code287857_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state287855_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx287846_)
        (let ((_lifts287848_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293481
                 (lambda ()
                   (let ((_code287851_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx287846_))))
                     (if (let ((__tmp293485 (unbox _lifts287848_)))
                           (declare (not safe))
                           (null? __tmp293485))
                         _code287851_
                         (let ((__tmp293482
                                (let ((__tmp293484
                                       (let ()
                                         (declare (not safe))
                                         (cons _code287851_ '())))
                                      (__tmp293483
                                       (reverse (unbox _lifts287848_))))
                                  (declare (not safe))
                                  (foldr1 cons __tmp293484 __tmp293483))))
                           (declare (not safe))
                           (cons 'begin __tmp293482))))))
                (__tmp293480
                 (let () (declare (not safe)) (make-table 'test: eq?)))
                (__tmp293479
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (call-with-parameters
             __tmp293481
             gxc#current-compile-lift
             _lifts287848_
             gxc#current-compile-marks
             __tmp293480
             gxc#current-compile-identifiers
             __tmp293479)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx287842_)
        (let ((_modules287844_ (let () (declare (not safe)) (box '()))))
          (let ((__tmp293486
                 (let ((__obj293230 _ctx287842_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj293230
                          'gx#module-context::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          __obj293230
                          '11
                          gx#module-context::t
                          '#f))
                       (class-slot-ref
                        gx#module-context::t
                        __obj293230
                        'code)))))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp293486 _modules287844_))
          (reverse (unbox _modules287844_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path287825_ _code287826_ _phi?287827_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path287825_))
        (let ((__tmp293487
               (lambda ()
                 (pretty-print
                  (let ((__tmp293488
                         (let ((__tmp293495
                                (let ()
                                  (declare (not safe))
                                  (cons 'block '())))
                               (__tmp293489
                                (let ((__tmp293494
                                       (let ()
                                         (declare (not safe))
                                         (cons 'standard-bindings '())))
                                      (__tmp293490
                                       (let ((__tmp293493
                                              (let ()
                                                (declare (not safe))
                                                (cons 'extended-bindings '())))
                                             (__tmp293491
                                              (let ((__tmp293492
                                                     (if _phi?287827_
                                                         '((inlining-limit
                                                            200))
                                                         '())))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        '()
                                                        __tmp293492))))
                                         (declare (not safe))
                                         (cons __tmp293493 __tmp293491))))
                                  (declare (not safe))
                                  (cons __tmp293494 __tmp293490))))
                           (declare (not safe))
                           (cons __tmp293495 __tmp293489))))
                    (declare (not safe))
                    (cons 'declare __tmp293488)))
                 (pretty-print _code287826_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path287825_ __tmp293487))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path287825_ _phi?287827_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path287825_))))
    (define gxc#compile-scm-file__0
      (lambda (_path287833_ _code287834_)
        (let ((_phi?287836_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path287833_ _code287834_ _phi?287836_))))
    (define gxc#compile-scm-file
      (lambda _g293497_
        (let ((_g293496_ (let () (declare (not safe)) (##length _g293497_))))
          (cond ((let () (declare (not safe)) (##fx= _g293496_ 2))
                 (apply (lambda (_path287833_ _code287834_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path287833_
                             _code287834_)))
                        _g293497_))
                ((let () (declare (not safe)) (##fx= _g293496_ 3))
                 (apply (lambda (_path287838_ _code287839_ _phi?287840_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path287838_
                             _code287839_
                             _phi?287840_)))
                        _g293497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g293497_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?287726_)
        (let _lp287728_ ((_rest287730_ (gxc#current-compile-gsc-options))
                         (_opts287731_ '()))
          (let* ((_rest287732287752_ _rest287730_)
                 (_else287736287760_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287726_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293498
                               (let ((__tmp293499 (reverse _opts287731_)))
                                 (declare (not safe))
                                 (cons '"-track-scheme" __tmp293499))))
                          (declare (not safe))
                          (cons '"-debug-source" __tmp293498))
                        (reverse _opts287731_)))))
            (let ((_K287746287803_
                   (lambda (_rest287801_)
                     (let ()
                       (declare (not safe))
                       (_lp287728_ _rest287801_ _opts287731_))))
                  (_K287741287785_
                   (lambda (_rest287783_)
                     (let ()
                       (declare (not safe))
                       (_lp287728_ _rest287783_ _opts287731_))))
                  (_K287738287767_
                   (lambda (_rest287764_ _opt287765_)
                     (let ((__tmp293500
                            (let ()
                              (declare (not safe))
                              (cons _opt287765_ _opts287731_))))
                       (declare (not safe))
                       (_lp287728_ _rest287764_ __tmp293500)))))
              (if (let () (declare (not safe)) (##pair? _rest287732287752_))
                  (let ((_tl287748287808_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287732287752_)))
                        (_hd287747287806_
                         (let ()
                           (declare (not safe))
                           (##car _rest287732287752_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287747287806_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287748287808_))
                            (let* ((_tl287750287811_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287748287808_)))
                                   (_rest287814_ _tl287750287811_))
                              (declare (not safe))
                              (_K287746287803_ _rest287814_))
                            (let ((_opt287775_ _hd287747287806_)
                                  (_rest287777_ _tl287748287808_))
                              (let ()
                                (declare (not safe))
                                (_K287738287767_ _rest287777_ _opt287775_))))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287747287806_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287748287808_))
                                (let* ((_tl287745287793_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287748287808_)))
                                       (_rest287796_ _tl287745287793_))
                                  (declare (not safe))
                                  (_K287741287785_ _rest287796_))
                                (let ((_opt287775_ _hd287747287806_)
                                      (_rest287777_ _tl287748287808_))
                                  (let ()
                                    (declare (not safe))
                                    (_K287738287767_
                                     _rest287777_
                                     _opt287775_))))
                            (let ((_opt287775_ _hd287747287806_)
                                  (_rest287777_ _tl287748287808_))
                              (let ()
                                (declare (not safe))
                                (_K287738287767_ _rest287777_ _opt287775_))))))
                  (let () (declare (not safe)) (_else287736287760_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?287820_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?287820_))))
    (define gxc#gsc-link-options
      (lambda _g293502_
        (let ((_g293501_ (let () (declare (not safe)) (##length _g293502_))))
          (cond ((let () (declare (not safe)) (##fx= _g293501_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g293502_))
                ((let () (declare (not safe)) (##fx= _g293501_ 1))
                 (apply (lambda (_phi?287822_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?287822_)))
                        _g293502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g293502_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?287627_)
        (let _lp287629_ ((_rest287631_ (gxc#current-compile-gsc-options))
                         (_opts287632_ '()))
          (let* ((_rest287633287653_ _rest287631_)
                 (_else287637287661_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?287627_))
                             (gxc#current-compile-debug))
                        (let ((__tmp293503
                               (let ((__tmp293504 (reverse _opts287632_)))
                                 (declare (not safe))
                                 (cons '"-g" __tmp293504))))
                          (declare (not safe))
                          (cons '"-cc-options" __tmp293503))
                        (reverse _opts287632_)))))
            (let ((_K287647287700_
                   (lambda (_rest287697_ _opt287698_)
                     (let ((__tmp293505
                            (let ((__tmp293506
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts287632_))))
                              (declare (not safe))
                              (cons _opt287698_ __tmp293506))))
                       (declare (not safe))
                       (_lp287629_ _rest287697_ __tmp293505))))
                  (_K287642287681_
                   (lambda (_rest287679_)
                     (let ()
                       (declare (not safe))
                       (_lp287629_ _rest287679_ _opts287632_))))
                  (_K287639287667_
                   (lambda (_rest287665_)
                     (let ()
                       (declare (not safe))
                       (_lp287629_ _rest287665_ _opts287632_)))))
              (if (let () (declare (not safe)) (##pair? _rest287633287653_))
                  (let ((_tl287649287705_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287633287653_)))
                        (_hd287648287703_
                         (let ()
                           (declare (not safe))
                           (##car _rest287633287653_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287648287703_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287649287705_))
                            (let ((_tl287651287710_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl287649287705_)))
                                  (_hd287650287708_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl287649287705_))))
                              (let ((_opt287713_ _hd287650287708_)
                                    (_rest287715_ _tl287651287710_))
                                (let ()
                                  (declare (not safe))
                                  (_K287647287700_ _rest287715_ _opt287713_))))
                            (let ((_rest287673_ _tl287649287705_))
                              (declare (not safe))
                              (_K287639287667_ _rest287673_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287648287703_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287649287705_))
                                (let* ((_tl287646287689_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl287649287705_)))
                                       (_rest287692_ _tl287646287689_))
                                  (declare (not safe))
                                  (_K287642287681_ _rest287692_))
                                (let ((_rest287673_ _tl287649287705_))
                                  (declare (not safe))
                                  (_K287639287667_ _rest287673_)))
                            (let ((_rest287673_ _tl287649287705_))
                              (declare (not safe))
                              (_K287639287667_ _rest287673_)))))
                  (let () (declare (not safe)) (_else287637287661_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?287721_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?287721_))))
    (define gxc#gsc-cc-options
      (lambda _g293508_
        (let ((_g293507_ (let () (declare (not safe)) (##length _g293508_))))
          (cond ((let () (declare (not safe)) (##fx= _g293507_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g293508_))
                ((let () (declare (not safe)) (##fx= _g293507_ 1))
                 (apply (lambda (_phi?287723_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?287723_)))
                        _g293508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g293508_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir287622_)
        (let* ((_user-staticdir287624_
                (path-expand
                 (path-expand
                  '"lib/static"
                  (let () (declare (not safe)) (gerbil-path)))))
               (__tmp293509
                (let ((__tmp293510
                       (string-append
                        '"-I "
                        _staticdir287622_
                        '" -I "
                        _user-staticdir287624_)))
                  (declare (not safe))
                  (cons __tmp293510 '()))))
          (declare (not safe))
          (cons '"-cc-options" __tmp293509))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp287534_ ((_rest287536_ (gxc#current-compile-gsc-options))
                         (_opts287537_ '()))
          (let* ((_rest287538287558_ _rest287536_)
                 (_else287542287566_ (lambda () _opts287537_)))
            (let ((_K287552287609_
                   (lambda (_rest287607_)
                     (let ()
                       (declare (not safe))
                       (_lp287534_ _rest287607_ _opts287537_))))
                  (_K287547287587_
                   (lambda (_rest287584_ _opt287585_)
                     (let ((__tmp293511
                            (append _opts287537_
                                    (let ((__tmp293512
                                           (let ()
                                             (declare (not safe))
                                             (string-split
                                              _opt287585_
                                              '#\space))))
                                      (declare (not safe))
                                      (filter gxc#not-string-empty?
                                              __tmp293512)))))
                       (declare (not safe))
                       (_lp287534_ _rest287584_ __tmp293511))))
                  (_K287544287572_
                   (lambda (_rest287570_)
                     (let ()
                       (declare (not safe))
                       (_lp287534_ _rest287570_ _opts287537_)))))
              (if (let () (declare (not safe)) (##pair? _rest287538287558_))
                  (let ((_tl287554287614_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest287538287558_)))
                        (_hd287553287612_
                         (let ()
                           (declare (not safe))
                           (##car _rest287538287558_))))
                    (if (let ()
                          (declare (not safe))
                          (equal? _hd287553287612_ '"-cc-options"))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl287554287614_))
                            (let* ((_tl287556287617_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl287554287614_)))
                                   (_rest287620_ _tl287556287617_))
                              (declare (not safe))
                              (_K287552287609_ _rest287620_))
                            (let ((_rest287578_ _tl287554287614_))
                              (declare (not safe))
                              (_K287544287572_ _rest287578_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _hd287553287612_ '"-ld-options"))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl287554287614_))
                                (let ((_tl287551287597_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl287554287614_)))
                                      (_hd287550287595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl287554287614_))))
                                  (let ((_opt287600_ _hd287550287595_)
                                        (_rest287602_ _tl287551287597_))
                                    (let ()
                                      (declare (not safe))
                                      (_K287547287587_
                                       _rest287602_
                                       _opt287600_))))
                                (let ((_rest287578_ _tl287554287614_))
                                  (declare (not safe))
                                  (_K287544287572_ _rest287578_)))
                            (let ((_rest287578_ _tl287554287614_))
                              (declare (not safe))
                              (_K287544287572_ _rest287578_)))))
                  (let () (declare (not safe)) (_else287542287566_))))))))
    (define gxc#not-string-empty?
      (lambda (_str287531_)
        (let ((__tmp293513
               (let () (declare (not safe)) (string-empty? _str287531_))))
          (declare (not safe))
          (not __tmp293513))))
    (define gxc#gsc-compile-file
      (lambda (_path287499_ _phi?287500_)
        (letrec ((_gsc-link-path287502_
                  (lambda (_base-path287523_)
                    (let _lp287525_ ((_n287527_ '1))
                      (let ((_path287529_
                             (string-append
                              _base-path287523_
                              '".o"
                              (number->string _n287527_))))
                        (if (file-exists? _path287529_)
                            (let ((__tmp293514
                                   (let ()
                                     (declare (not safe))
                                     (+ _n287527_ '1))))
                              (declare (not safe))
                              (_lp287525_ __tmp293514))
                            _path287529_))))))
          (let* ((_base-path287504_ (path-strip-extension _path287499_))
                 (_path-c287506_ (string-append _base-path287504_ '".c"))
                 (_path-o287508_ (string-append _base-path287504_ '".o"))
                 (_link-path287510_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path287502_ _base-path287504_)))
                 (_link-path-c287512_ (string-append _link-path287510_ '".c"))
                 (_link-path-o287514_ (string-append _link-path287510_ '".o"))
                 (_gsc-link-opts287516_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?287500_)))
                 (_gsc-cc-opts287518_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?287500_)))
                 (_gcc-ld-opts287520_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp293521 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293515
                   (let ((__tmp293516
                          (let ((__tmp293517
                                 (let ((__tmp293518
                                        (let ((__tmp293519
                                               (let ((__tmp293520
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _path287499_
                                                              '()))))
                                                 (declare (not safe))
                                                 (foldr1 cons
                                                         __tmp293520
                                                         _gsc-link-opts287516_))))
                                          (declare (not safe))
                                          (cons _link-path-c287512_
                                                __tmp293519))))
                                   (declare (not safe))
                                   (cons '"-o" __tmp293518))))
                            (declare (not safe))
                            (cons '"-flat" __tmp293517))))
                     (declare (not safe))
                     (cons '"-link" __tmp293516))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293521 __tmp293515))
            (let ((__tmp293528 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp293522
                   (let ((__tmp293523
                          (let ((__tmp293524
                                 (let ((__tmp293525
                                        (let ((__tmp293526
                                               (let ((__tmp293527
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _link-path-c287512_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _path-c287506_
                                                       __tmp293527))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp293526
                                                  _gsc-cc-opts287518_))))
                                   (declare (not safe))
                                   (cons '"-D___DYNAMIC" __tmp293525))))
                            (declare (not safe))
                            (cons '"-cc-options" __tmp293524))))
                     (declare (not safe))
                     (cons '"-obj" __tmp293523))))
              (declare (not safe))
              (gxc#invoke__% '#f '#t absent-value __tmp293528 __tmp293522))
            (let ((__tmp293534 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp293529
                   (let ((__tmp293530
                          (let ((__tmp293531
                                 (let ((__tmp293532
                                        (let ((__tmp293533
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _link-path-o287514_
                                                       _gcc-ld-opts287520_))))
                                          (declare (not safe))
                                          (cons _path-o287508_ __tmp293533))))
                                   (declare (not safe))
                                   (cons _link-path287510_ __tmp293532))))
                            (declare (not safe))
                            (cons '"-o" __tmp293531))))
                     (declare (not safe))
                     (cons '"-shared" __tmp293530))))
              (declare (not safe))
              (gxc#invoke__%
               '#f
               absent-value
               absent-value
               __tmp293534
               __tmp293529))
            (for-each
             delete-file
             (let ((__tmp293535
                    (let ((__tmp293536
                           (let ((__tmp293537
                                  (let ()
                                    (declare (not safe))
                                    (cons _link-path-o287514_ '()))))
                             (declare (not safe))
                             (cons _link-path-c287512_ __tmp293537))))
                      (declare (not safe))
                      (cons _path-o287508_ __tmp293536))))
               (declare (not safe))
               (cons _path-c287506_ __tmp293535)))))))
    (define gxc#compile-output-file
      (lambda (_ctx287470_ _n287471_ _ext287472_)
        (letrec ((_module-relative-path287474_
                  (lambda (_ctx287497_)
                    (path-strip-directory
                     (let ((__tmp293538
                            (let ((__obj293231 _ctx287497_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj293231
                                     'gx#expander-context::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj293231
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                  (class-slot-ref
                                   gx#expander-context::t
                                   __obj293231
                                   'id)))))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp293538)))))
                 (_module-source-directory287475_
                  (lambda (_ctx287493_)
                    (path-directory
                     (let ((_mpath287495_
                            (let ((__obj293232 _ctx287493_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj293232
                                     'gx#module-context::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj293232
                                     '7
                                     gx#module-context::t
                                     '#f))
                                  (class-slot-ref
                                   gx#module-context::t
                                   __obj293232
                                   'path)))))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath287495_))
                           _mpath287495_
                           (let ()
                             (declare (not safe))
                             (last _mpath287495_)))))))
                 (_section-string287476_
                  (lambda (_n287491_)
                    (if (let () (declare (not safe)) (number? _n287491_))
                        (number->string _n287491_)
                        (if (let () (declare (not safe)) (symbol? _n287491_))
                            (symbol->string _n287491_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n287491_))
                                _n287491_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n287491_)))))))
                 (_file-name287477_
                  (lambda (_path287489_)
                    (if _n287471_
                        (string-append
                         _path287489_
                         '"__"
                         (let ()
                           (declare (not safe))
                           (_section-string287476_ _n287471_))
                         _ext287472_)
                        (string-append _path287489_ _ext287472_))))
                 (_file-path287478_
                  (lambda ()
                    (let ((_$e287484_ (gxc#current-compile-output-dir)))
                      (if _$e287484_
                          ((lambda (_outdir287487_)
                             (path-expand
                              (let ((__tmp293540
                                     (let ((__tmp293541
                                            (let ((__obj293233 _ctx287470_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     __obj293233
                                                     'gx#expander-context::t))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     __obj293233
                                                     '1
                                                     gx#expander-context::t
                                                     '#f))
                                                  (class-slot-ref
                                                   gx#expander-context::t
                                                   __obj293233
                                                   'id)))))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp293541))))
                                (declare (not safe))
                                (_file-name287477_ __tmp293540))
                              _outdir287487_))
                           _$e287484_)
                          (path-expand
                           (let ((__tmp293539
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path287474_
                                     _ctx287470_))))
                             (declare (not safe))
                             (_file-name287477_ __tmp293539))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory287475_
                              _ctx287470_))))))))
          (let ((_path287480_
                 (let () (declare (not safe)) (_file-path287478_))))
            (let ((__tmp293542
                   (lambda ()
                     (let ((__tmp293543 (path-directory _path287480_)))
                       (declare (not safe))
                       (create-directory* __tmp293543)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293542))
            _path287480_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx287452_)
        (letrec ((_file-name287454_
                  (lambda (_id287468_)
                    (string-append
                     (let ()
                       (declare (not safe))
                       (gxc#static-module-name _id287468_))
                     '".scm")))
                 (_file-path287455_
                  (lambda ()
                    (let* ((_file287461_
                            (let ((__tmp293544
                                   (let ((__obj293234 _ctx287452_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj293234
                                            'gx#expander-context::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj293234
                                            '1
                                            gx#expander-context::t
                                            '#f))
                                         (class-slot-ref
                                          gx#expander-context::t
                                          __obj293234
                                          'id)))))
                              (declare (not safe))
                              (_file-name287454_ __tmp293544)))
                           (_$e287463_ (gxc#current-compile-output-dir)))
                      (if _$e287463_
                          ((lambda (_outdir287466_)
                             (path-expand
                              _file287461_
                              (path-expand '"static" _outdir287466_)))
                           _$e287463_)
                          (path-expand _file287461_ '"static"))))))
          (let ((_path287457_
                 (let () (declare (not safe)) (_file-path287455_))))
            (let ((__tmp293545
                   (lambda ()
                     (let ((__tmp293546 (path-directory _path287457_)))
                       (declare (not safe))
                       (create-directory* __tmp293546)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp293545))
            _path287457_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx287446_ _opts287447_)
        (let ((_$e287449_
               (let ()
                 (declare (not safe))
                 (pgetq 'output-file: _opts287447_))))
          (if _$e287449_
              (values _$e287449_)
              (path-strip-directory
               (symbol->string
                (let ((__obj293235 _ctx287446_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj293235
                         'gx#expander-context::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         __obj293235
                         '1
                         gx#expander-context::t
                         '#f))
                      (class-slot-ref
                       gx#expander-context::t
                       __obj293235
                       'id)))))))))
    (define gxc#static-module-name
      (lambda (_idstr287439_)
        (if (let () (declare (not safe)) (string? _idstr287439_))
            (let* ((_str287441_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr287439_)))
                   (_strs287443_
                    (let ()
                      (declare (not safe))
                      (string-split _str287441_ '#\/))))
              (let () (declare (not safe)) (string-join _strs287443_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr287439_))
                (let ((__tmp293547 (symbol->string _idstr287439_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp293547))
                (error '"Bad module id" _idstr287439_)))))
    (define gxc#invoke__%
      (lambda (_g293548_
               _stdout-redirection287403287407_
               _stderr-redirection287404287409_
               _program287411_
               _args287412_)
        (let* ((_stdout-redirection287414_
                (if (let ()
                      (declare (not safe))
                      (eq? _stdout-redirection287403287407_ absent-value))
                    '#f
                    _stdout-redirection287403287407_))
               (_stderr-redirection287416_
                (if (let ()
                      (declare (not safe))
                      (eq? _stderr-redirection287404287409_ absent-value))
                    '#f
                    _stderr-redirection287404287409_)))
          (let ((__tmp293549
                 (let ()
                   (declare (not safe))
                   (cons _program287411_ _args287412_))))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp293549))
          (let ((_proc287418_
                 (open-process
                  (let ((__tmp293550
                         (let ((__tmp293551
                                (let ((__tmp293552
                                       (let ((__tmp293553
                                              (let ((__tmp293554
                                                     (let ((__tmp293555
                                                            (let ((__tmp293556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _stderr-redirection287416_ '()))))
                      (declare (not safe))
                      (cons 'stderr-redirection: __tmp293556))))
               (declare (not safe))
               (cons _stdout-redirection287414_ __tmp293555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'stdout-redirection:
                                                      __tmp293554))))
                                         (declare (not safe))
                                         (cons _args287412_ __tmp293553))))
                                  (declare (not safe))
                                  (cons 'arguments: __tmp293552))))
                           (declare (not safe))
                           (cons _program287411_ __tmp293551))))
                    (declare (not safe))
                    (cons 'path: __tmp293550)))))
            (if (or _stdout-redirection287414_ _stderr-redirection287416_)
                (read-line _proc287418_ '#f)
                '#!void)
            (let ((_status287423_ (process-status _proc287418_)))
              (close-port _proc287418_)
              (if (let () (declare (not safe)) (zero? _status287423_))
                  '#!void
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     _program287411_))))))))
    (define gxc#invoke__@
      (lambda (_keys287402287428_ . _args287430_)
        (apply gxc#invoke__%
               _keys287402287428_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287402287428_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys287402287428_
                  'stderr-redirection:
                  absent-value))
               _args287430_)))
    (define gxc#invoke
      (lambda _args287405287436_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args287405287436_)))
    (define gxc#join!
      (lambda (_thread287396_)
        (let ((__tmp293558
               (lambda (_exn287398_)
                 (if (uncaught-exception? _exn287398_)
                     (raise (uncaught-exception-reason _exn287398_))
                     (raise _exn287398_))))
              (__tmp293557 (lambda () (thread-join! _thread287396_))))
          (declare (not safe))
          (with-catch __tmp293558 __tmp293557))))))
