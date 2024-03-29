(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1711709202)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp157417 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp157417))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp157418 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp157418))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_path157323_ _fun157324_)
        (with-output-to-file
         (cons 'path: (cons _path157323_ gxc#scheme-file-settings))
         _fun157324_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GSC" gxc#default-gerbil-gsc))))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GCC" gxc#default-gerbil-gcc))))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_AR" gxc#default-gerbil-ar))))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-rpath
      (lambda (_gerbil-libdir157318_)
        (string-append '"-Wl,-rpath=" _gerbil-libdir157318_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/mop-system-classes"
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
      (lambda (_dir157316_) (delete-file-or-directory _dir157316_ '#t)))
    (define gxc#compile-module__%
      (lambda (_srcpath157290_ _opts157291_)
        (if (let () (declare (not safe)) (string? _srcpath157290_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157290_)))
        (let ((_outdir157293_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157291_)))
              (_invoke-gsc?157294_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157291_)))
              (_gsc-options157295_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157291_)))
              (_keep-scm?157296_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157291_)))
              (_verbosity157297_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157291_)))
              (_optimize157298_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _opts157291_)))
              (_debug157299_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157291_)))
              (_gen-ssxi157300_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _opts157291_))))
          (if _outdir157293_
              (let ((__tmp157419
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157293_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157419))
              '#!void)
          (if _optimize157298_
              (let ((__tmp157420
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157420))
              '#!void)
          (let ((__tmp157423
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _srcpath157290_))
                   (let ((__tmp157424
                          (let ((__tmp157425
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157290_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157425))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp157424))))
                (__tmp157422
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157421
                 (cons 'compile-module (cons _srcpath157290_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp157423
             gxc#current-compile-output-dir
             _outdir157293_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157294_
             gxc#current-compile-gsc-options
             _gsc-options157295_
             gxc#current-compile-keep-scm
             _keep-scm?157296_
             gxc#current-compile-verbose
             _verbosity157297_
             gxc#current-compile-optimize
             _optimize157298_
             gxc#current-compile-debug
             _debug157299_
             gxc#current-compile-generate-ssxi
             _gen-ssxi157300_
             gxc#current-compile-timestamp
             __tmp157422
             gxc#current-compile-context
             __tmp157421
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_srcpath157309_)
        (let ((_opts157311_ '()))
          (declare (not safe))
          (gxc#compile-module__% _srcpath157309_ _opts157311_))))
    (define gxc#compile-module
      (lambda _g157427_
        (let ((_g157426_ (let () (declare (not safe)) (##length _g157427_))))
          (cond ((let () (declare (not safe)) (##fx= _g157426_ 1))
                 (apply (lambda (_srcpath157309_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _srcpath157309_)))
                        _g157427_))
                ((let () (declare (not safe)) (##fx= _g157426_ 2))
                 (apply (lambda (_srcpath157313_ _opts157314_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _srcpath157313_
                             _opts157314_)))
                        _g157427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g157427_))))))
    (define gxc#compile-exe__%
      (lambda (_srcpath157266_ _opts157267_)
        (if (let () (declare (not safe)) (string? _srcpath157266_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _srcpath157266_)))
        (let ((_outdir157269_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _opts157267_)))
              (_invoke-gsc?157270_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _opts157267_)))
              (_gsc-options157271_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _opts157267_)))
              (_keep-scm?157272_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _opts157267_)))
              (_verbosity157273_
               (let () (declare (not safe)) (pgetq__0 'verbose: _opts157267_)))
              (_debug157274_
               (let () (declare (not safe)) (pgetq__0 'debug: _opts157267_))))
          (if _outdir157269_
              (let ((__tmp157428
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _outdir157269_)))))
                (declare (not safe))
                (with-lock gxc#+driver-mutex+ __tmp157428))
              '#!void)
          (let ((__tmp157431
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _srcpath157266_))
                   (let ((__tmp157432
                          (let ((__tmp157433
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0 _srcpath157266_)))))
                            (declare (not safe))
                            (with-lock gxc#+driver-mutex+ __tmp157433))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp157432
                      _opts157267_))))
                (__tmp157430
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp157429 (cons 'compile-exe (cons _srcpath157266_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp157431
             gxc#current-compile-output-dir
             _outdir157269_
             gxc#current-compile-invoke-gsc
             _invoke-gsc?157270_
             gxc#current-compile-gsc-options
             _gsc-options157271_
             gxc#current-compile-keep-scm
             _keep-scm?157272_
             gxc#current-compile-verbose
             _verbosity157273_
             gxc#current-compile-debug
             _debug157274_
             gxc#current-compile-timestamp
             __tmp157430
             gxc#current-compile-context
             __tmp157429
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_srcpath157282_)
        (let ((_opts157284_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _srcpath157282_ _opts157284_))))
    (define gxc#compile-exe
      (lambda _g157435_
        (let ((_g157434_ (let () (declare (not safe)) (##length _g157435_))))
          (cond ((let () (declare (not safe)) (##fx= _g157434_ 1))
                 (apply (lambda (_srcpath157282_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _srcpath157282_)))
                        _g157435_))
                ((let () (declare (not safe)) (##fx= _g157434_ 2))
                 (apply (lambda (_srcpath157286_ _opts157287_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__% _srcpath157286_ _opts157287_)))
                        _g157435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g157435_))))))
    (define gxc#compile-executable-module
      (lambda (_ctx157262_ _opts157263_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _opts157263_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _ctx157262_
               _opts157263_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _ctx157262_
               _opts157263_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_ctx157143_ _opts157144_)
        (letrec ((_generate-stub157146_
                  (lambda (_builtin-modules157258_)
                    (let ((_mod-main157260_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx157143_ 'main))))
                      (let ((__tmp157436
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _builtin-modules157258_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp157436))
                      (let ((__tmp157437
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _mod-main157260_
                                                       (cons (cons 'cdr
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons 'command-line '()) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons 'lambda
                               (cons '()
                                     (cons (cons 'with-catch
                                                 (cons 'void
                                                       (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons 'force-output
                                             (cons (cons 'current-output-port
                                                         '())
                                                   '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons 'with-catch
                                                       (cons 'void
                                                             (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons '()
                                       (cons (cons 'force-output
                                                   (cons (cons 'current-error-port
                                                               '())
                                                         '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp157437))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_get-libgerbil-ld-opts157147_
                  (lambda (_libgerbil157256_)
                    (let ((__tmp157438
                           (let ()
                             (declare (not safe))
                             (##string-append _libgerbil157256_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp157438 read))))
                 (_replace-extension157148_
                  (lambda (_path157253_ _ext157254_)
                    (string-append
                     (path-strip-extension _path157253_)
                     _ext157254_)))
                 (_not-exclude-module?157149_
                  (lambda (_ctx157249_)
                    (let ((_id-str157251_
                           (symbol->string
                            (##structure-ref
                             _ctx157249_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp157439
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _id-str157251_))))
                            (declare (not safe))
                            (not __tmp157439))
                          (let ((__tmp157440
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix? '"std/" _id-str157251_))))
                            (declare (not safe))
                            (not __tmp157440))
                          '#f))))
                 (_not-file-empty?157150_
                  (lambda (_path157247_)
                    (let ((__tmp157441
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _path157247_))))
                      (declare (not safe))
                      (not __tmp157441))))
                 (_compile-stub157151_
                  (lambda (_output-scm157158_ _output-bin157159_)
                    (let* ((_gerbil-home157161_
                            (let ((__tmp157442
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp157442)))
                           (_gerbil-libdir157163_
                            (path-expand '"lib" _gerbil-home157161_))
                           (_gerbil-staticdir157165_
                            (path-expand '"static" _gerbil-libdir157163_))
                           (_gxlink157167_
                            (path-expand
                             '"libgerbil-link"
                             _gerbil-libdir157163_))
                           (_tmp157169_
                            (path-expand
                             (let ((__tmp157443
                                    (let ((__tmp157444
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp157444))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp157443))
                             '"/tmp"))
                           (_tmp-path157173_
                            (lambda (_f157171_)
                              (path-expand
                               (path-strip-directory _f157171_)
                               _tmp157169_)))
                           (_deps157175_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx157143_)))
                           (_deps157177_
                            (filter _not-exclude-module?157149_ _deps157175_))
                           (_src-deps-scm157179_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _deps157177_)))
                           (_src-deps-scm157181_
                            (filter _not-file-empty?157150_
                                    _src-deps-scm157179_))
                           (_src-deps-scm157183_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _src-deps-scm157181_)))
                           (_deps-scm157185_
                            (map _tmp-path157173_ _src-deps-scm157183_))
                           (_deps-c157191_
                            (map (lambda (_g157186157188_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157148_
                                      _g157186157188_
                                      '".c")))
                                 _deps-scm157185_))
                           (_deps-o157197_
                            (map (lambda (_g157192157194_)
                                   (let ()
                                     (declare (not safe))
                                     (_replace-extension157148_
                                      _g157192157194_
                                      '".o")))
                                 _deps-scm157185_))
                           (_src-bin-scm157199_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx157143_)))
                           (_src-bin-scm157201_
                            (path-expand _src-bin-scm157199_))
                           (_bin-scm157203_
                            (let ()
                              (declare (not safe))
                              (_tmp-path157173_ _src-bin-scm157201_)))
                           (_bin-c157205_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157148_
                               _bin-scm157203_
                               '".c")))
                           (_bin-o157207_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157148_
                               _bin-scm157203_
                               '".o")))
                           (_output-bin157209_
                            (path-expand _output-bin157159_))
                           (_output-scm157211_
                            (path-expand _output-scm157158_))
                           (_output-c157213_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157148_
                               _output-scm157211_
                               '".c")))
                           (_output-o157215_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157148_
                               _output-scm157211_
                               '".o")))
                           (_output_-c157217_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157148_
                               _output-scm157211_
                               '"_.c")))
                           (_output_-o157219_
                            (let ()
                              (declare (not safe))
                              (_replace-extension157148_
                               _output-scm157211_
                               '"_.o")))
                           (_gsc-link-opts157221_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157223_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157225_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _gerbil-staticdir157165_)))
                           (_output-ld-opts157227_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_libgerbil.a157229_
                            (path-expand '"libgerbil.a" _gerbil-libdir157163_))
                           (_libgerbil.so157231_
                            (path-expand
                             '"libgerbil.so"
                             _gerbil-libdir157163_))
                           (_libgerbil.dylib157233_
                            (path-expand
                             '"libgerbil.dylib"
                             _gerbil-libdir157163_))
                           (_libgerbil-ld-opts157235_
                            (if (file-exists? _libgerbil.so157231_)
                                (let ()
                                  (declare (not safe))
                                  (_get-libgerbil-ld-opts157147_
                                   _libgerbil.so157231_))
                                (if (file-exists? _libgerbil.dylib157233_)
                                    (let ()
                                      (declare (not safe))
                                      (_get-libgerbil-ld-opts157147_
                                       _libgerbil.dylib157233_))
                                    (if (file-exists? _libgerbil.a157229_)
                                        (let ()
                                          (declare (not safe))
                                          (_get-libgerbil-ld-opts157147_
                                           _libgerbil.a157229_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _libgerbil.a157229_
                                           _libgerbil.so157231_
                                           _libgerbil.dylib157233_))))))
                           (_rpath157237_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir157163_)))
                           (_builtin-modules157241_
                            (let ((__tmp157446
                                   (lambda (_mod157239_)
                                     (symbol->string
                                      (##structure-ref
                                       _mod157239_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp157445
                                   (cons _ctx157143_ _deps157177_)))
                              (declare (not safe))
                              (##map __tmp157446 __tmp157445))))
                      (let ((__tmp157447
                             (lambda ()
                               (let ((__tmp157448
                                      (path-directory _output-bin157209_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157448)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157447))
                      (let ((__tmp157449
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_generate-stub157146_
                                  _builtin-modules157241_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm157211_
                         __tmp157449))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157450
                                   (lambda () (create-directory _tmp157169_))))
                              (declare (not safe))
                              (with-lock gxc#+driver-mutex+ __tmp157450))
                            (for-each
                             copy-file
                             _src-deps-scm157183_
                             _deps-scm157185_)
                            (copy-file _src-bin-scm157201_ _bin-scm157203_)
                            (let ((__tmp157454
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157451
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _gxlink157167_
                                                     (let ((__tmp157452
                                                            (let ((__tmp157453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _bin-scm157203_
                                 (cons _output-scm157211_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp157453 _deps-scm157185_))))
               (declare (not safe))
               (__foldr1 cons __tmp157452 _gsc-link-opts157221_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp157454 __tmp157451))
                            (let ((__tmp157459
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157455
                                   (cons '"-obj"
                                         (let ((__tmp157456
                                                (let ((__tmp157457
                                                       (let ((__tmp157458
                                                              (cons _bin-c157205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _output-c157213_
                                  (cons _output_-c157217_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp157458 _deps-c157191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp157457
                                                   _gsc-static-opts157225_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp157456
                                            _gsc-cc-opts157223_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp157459 __tmp157455))
                            (let ((__tmp157463
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157460
                                   (cons '"-o"
                                         (cons _output-bin157209_
                                               (let ((__tmp157461
                                                      (cons _bin-o157207_
                                                            (cons _output-o157215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _output_-o157219_
                                (let ((__tmp157462
                                       (cons _rpath157237_
                                             (cons '"-L"
                                                   (cons _gerbil-libdir157163_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _libgerbil-ld-opts157235_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp157462
                                   _output-ld-opts157227_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp157461
                                                  _deps-o157197_))))))
                              (declare (not safe))
                              (gxc#invoke __tmp157463 __tmp157460))
                            (let ((__tmp157464
                                   (cons _output-c157213_
                                         (cons _output_-c157217_
                                               (cons _output-o157215_
                                                     (cons _output_-o157219_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp157464))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _tmp157169_)))
                          '#!void)))))
          (let* ((_output-bin157153_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx157143_ _opts157144_)))
                 (_output-scm157155_
                  (let ()
                    (declare (not safe))
                    (##string-append _output-bin157153_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_compile-stub157151_ _output-scm157155_ _output-bin157153_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _output-scm157155_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_ctx156968_ _opts156969_)
        (letrec ((_reset-declare156971_
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
                 (_generate-stub156972_
                  (lambda (_deps157134_)
                    (let ((_mod-main157136_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _ctx156968_ 'main)))
                          (_reset-decl157137_
                           (let ()
                             (declare (not safe))
                             (_reset-declare156971_)))
                          (_user-decl157138_
                           (let ()
                             (declare (not safe))
                             (_user-declare156973_))))
                      (for-each
                       (lambda (_dep157140_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _reset-decl157137_))
                         (newline)
                         (if _user-decl157138_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _user-decl157138_))
                               (newline))
                             '#!void)
                         (let ((__tmp157465
                                (cons 'include (cons _dep157140_ '()))))
                           (declare (not safe))
                           (##write __tmp157465))
                         (newline))
                       _deps157134_)
                      (let ((__tmp157466
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _mod-main157136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp157466))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_user-declare156973_
                  (lambda ()
                    (let* ((_gsc-opts157039_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _opts156969_)))
                           (_gsc-prelude157041_
                            (if _gsc-opts157039_
                                (member '"-prelude" _gsc-opts157039_)
                                '#f))
                           (_gsc-prelude157043_
                            (if _gsc-prelude157041_
                                (read (open-input-string
                                       (cadr _gsc-prelude157041_)))
                                '#f)))
                      (let _lp157046_ ((_rest157048_
                                        (cons _gsc-prelude157043_ '()))
                                       (_user-decls157049_ '()))
                        (let* ((_rest157050157058_ _rest157048_)
                               (_else157052157066_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _user-decls157049_))
                                      '#f
                                      (cons 'declare
                                            (reverse _user-decls157049_)))))
                               (_K157054157122_
                                (lambda (_rest157069_ _expr157070_)
                                  (let* ((_expr157071157083_ _expr157070_)
                                         (_else157074157091_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_lp157046_
                                               _rest157069_
                                               _user-decls157049_)))))
                                    (let ((_K157079157112_
                                           (lambda (_decls157110_)
                                             (let ((__tmp157467
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _user-decls157049_
                                                       _decls157110_))))
                                               (declare (not safe))
                                               (_lp157046_
                                                _rest157069_
                                                __tmp157467))))
                                          (_K157076157097_
                                           (lambda (_exprs157095_)
                                             (let ((__tmp157468
                                                    (append _exprs157095_
                                                            _rest157069_)))
                                               (declare (not safe))
                                               (_lp157046_
                                                __tmp157468
                                                _user-decls157049_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _expr157071157083_))
                                          (let ((_tl157081157117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _expr157071157083_)))
                                                (_hd157080157115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _expr157071157083_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd157080157115_
                                                         'declare))
                                                (let ((_decls157120_
                                                       _tl157081157117_))
                                                  (declare (not safe))
                                                  (_K157079157112_
                                                   _decls157120_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd157080157115_
                                                             'begin))
                                                    (let ((_exprs157105_
                                                           _tl157081157117_))
                                                      (declare (not safe))
                                                      (_K157076157097_
                                                       _exprs157105_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else157074157091_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_else157074157091_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest157050157058_))
                              (let ((_hd157055157125_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest157050157058_)))
                                    (_tl157056157127_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest157050157058_))))
                                (let* ((_expr157130_ _hd157055157125_)
                                       (_rest157132_ _tl157056157127_))
                                  (declare (not safe))
                                  (_K157054157122_ _rest157132_ _expr157130_)))
                              (let ()
                                (declare (not safe))
                                (_else157052157066_))))))))
                 (_compile-stub156974_
                  (lambda (_output-scm156981_ _output-bin156982_)
                    (let* ((_gerbil-home156984_
                            (let ((__tmp157469
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp157469)))
                           (_gerbil-libdir156986_
                            (path-expand '"lib" _gerbil-home156984_))
                           (_runtime156988_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_gambit-sharp156990_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _gerbil-home156984_))
                           (_include-gambit-sharp156992_
                            (string-append
                             '"(include \""
                             _gambit-sharp156990_
                             '"\")"))
                           (_bin-scm156994_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _ctx156968_)))
                           (_deps156996_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _ctx156968_)))
                           (_deps156998_
                            (map gxc#find-static-module-file _deps156996_))
                           (_deps157003_
                            (filter (lambda (_$obj157000_)
                                      (let ((__tmp157470
                                             (let ()
                                               (declare (not safe))
                                               (gxc#file-empty?
                                                _$obj157000_))))
                                        (declare (not safe))
                                        (not __tmp157470)))
                                    _deps156998_))
                           (_deps157007_
                            (let ((__tmp157471
                                   (lambda (_f157005_)
                                     (let ((__tmp157472
                                            (member _f157005_
                                                    _runtime156988_)))
                                       (declare (not safe))
                                       (not __tmp157472)))))
                              (declare (not safe))
                              (##filter __tmp157471 _deps157003_)))
                           (_output-base157009_
                            (let ((__tmp157473
                                   (path-strip-extension _output-scm156981_)))
                              (declare (not safe))
                              (##string-append __tmp157473)))
                           (_output-c157011_
                            (let ()
                              (declare (not safe))
                              (##string-append _output-base157009_ '".c")))
                           (_output-o157013_
                            (let ()
                              (declare (not safe))
                              (##string-append _output-base157009_ '".o")))
                           (_output-c_157015_
                            (let ()
                              (declare (not safe))
                              (##string-append _output-base157009_ '"_.c")))
                           (_output-o_157017_
                            (let ()
                              (declare (not safe))
                              (##string-append _output-base157009_ '"_.o")))
                           (_gsc-link-opts157019_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_gsc-cc-opts157021_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_gsc-static-opts157023_
                            (let ((__tmp157474
                                   (path-expand
                                    '"static"
                                    _gerbil-libdir156986_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp157474)))
                           (_output-ld-opts157025_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_gsc-gx-macros157027_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _include-gambit-sharp156992_
                                                        '()))))
                                (cons '"-e"
                                      (cons _include-gambit-sharp156992_
                                            '()))))
                           (_gsc-link-opts157029_
                            (let ()
                              (declare (not safe))
                              (##append
                               _gsc-link-opts157019_
                               _gsc-gx-macros157027_)))
                           (_rpath157031_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _gerbil-libdir156986_)))
                           (_default-ld-options157033_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp157475
                             (lambda ()
                               (let ((__tmp157476
                                      (path-directory _output-bin156982_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp157476)))))
                        (declare (not safe))
                        (with-lock gxc#+driver-mutex+ __tmp157475))
                      (let ((__tmp157477
                             (lambda ()
                               (let ((__tmp157478
                                      (let ((__tmp157479
                                             (let ((__tmp157480
                                                    (cons _bin-scm156994_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp157480
                                                _deps157007_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp157479
                                         _runtime156988_))))
                                 (declare (not safe))
                                 (_generate-stub156972_ __tmp157478)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _output-scm156981_
                         __tmp157477))
                      (if (gxc#current-compile-invoke-gsc)
                          (begin
                            (let ((__tmp157483
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157481
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _output-c_157015_
                                                     (let ((__tmp157482
                                                            (cons _output-scm156981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp157482 _gsc-link-opts157029_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp157483 __tmp157481))
                            (let ((__tmp157487
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp157484
                                   (cons '"-obj"
                                         (let ((__tmp157485
                                                (let ((__tmp157486
                                                       (cons _output-c157011_
                                                             (cons _output-c_157015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp157486
                                                   _gsc-static-opts157023_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp157485
                                            _gsc-cc-opts157021_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp157487 __tmp157484))
                            (let ((__tmp157490
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp157488
                                   (cons '"-o"
                                         (cons _output-bin156982_
                                               (cons _output-o157013_
                                                     (cons _output-o_157017_
                                                           (let ((__tmp157489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _rpath157031_
                                (cons '"-L"
                                      (cons _gerbil-libdir156986_
                                            (cons '"-lgambit"
                                                  _default-ld-options157033_))))))
                     (declare (not safe))
                     (__foldr1 cons __tmp157489 _output-ld-opts157025_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp157490 __tmp157488)))
                          '#!void)))))
          (let* ((_output-bin156976_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file _ctx156968_ _opts156969_)))
                 (_output-scm156978_
                  (let ()
                    (declare (not safe))
                    (##string-append _output-bin156976_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_compile-stub156974_ _output-scm156978_ _output-bin156976_))
            (if (gxc#current-compile-keep-scm)
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _output-scm156978_)))))))
    (define gxc#find-export-binding
      (lambda (_ctx156918_ _id156919_)
        (let ((_$e156965_
               (let ((__tmp157492
                      (lambda (_e156920156922_)
                        (let* ((_g156924156934_ _e156920156922_)
                               (_else156926156942_ (lambda () '#f))
                               (_K156928156946_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _g156924156934_
                                 'gx#module-export::t))
                              (let* ((_e156929156949_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156924156934_
                                         '1
                                         '#f
                                         '#f)))
                                     (_e156930156952_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156924156934_
                                         '2
                                         '#f
                                         '#f)))
                                     (_e156931156955_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _g156924156934_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _e156931156955_ '0))
                                    (let ((_e156932156958_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _g156924156934_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_g156960156962_)
                                             (eq? _g156960156962_ _id156919_))
                                           _e156932156958_)
                                          (let ()
                                            (declare (not safe))
                                            (_K156928156946_))
                                          (let ()
                                            (declare (not safe))
                                            (_else156926156942_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else156926156942_))))
                              (let ()
                                (declare (not safe))
                                (_else156926156942_))))))
                     (__tmp157491
                      (##structure-ref
                       _ctx156918_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp157492 __tmp157491))))
          (if _$e156965_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _$e156965_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_ctx156910_ _id156911_)
        (let ((_$e156913_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _ctx156910_ _id156911_))))
          (if _$e156913_
              ((lambda (_bind156916_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _bind156916_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _id156911_)))
                 (##structure-ref _bind156916_ '1 gx#binding::t '#f))
               _$e156913_)
              (let ((__tmp157493
                     (##structure-ref
                      _ctx156910_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp157493
                 _id156911_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_ctx156797_)
        (letrec* ((_ht156799_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import-set-template156800_
                   (lambda (_in156862_ _phi156863_)
                     (let ((_iphi156865_
                            (fx+ _phi156863_
                                 (##direct-structure-ref
                                  _in156862_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_imports156866_
                            (##structure-ref
                             (##direct-structure-ref
                              _in156862_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _lp156868_ ((_rest156870_ _imports156866_)
                                        (_r156871_ '()))
                         (let* ((_rest156872156880_ _rest156870_)
                                (_else156874156888_ (lambda () _r156871_))
                                (_K156876156898_
                                 (lambda (_rest156891_ _in156892_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _in156892_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _iphi156865_))
                                           (let ((__tmp157494
                                                  (cons _in156892_ _r156871_)))
                                             (declare (not safe))
                                             (_lp156868_
                                              _rest156891_
                                              __tmp157494))
                                           (let ()
                                             (declare (not safe))
                                             (_lp156868_
                                              _rest156891_
                                              _r156871_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _in156892_
                                              'gx#module-import::t))
                                           (let ((_iphi156894_
                                                  (fx+ _phi156863_
                                                       (##direct-structure-ref
                                                        _in156892_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _iphi156894_))
                                                 (let ((__tmp157495
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in156892_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _r156871_)))
                                                   (declare (not safe))
                                                   (_lp156868_
                                                    _rest156891_
                                                    __tmp157495))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_lp156868_
                                                    _rest156891_
                                                    _r156871_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in156892_
                                                  'gx#import-set::t))
                                               (let ((_xphi156896_
                                                      (fx+ _iphi156865_
                                                           (##direct-structure-ref
                                                            _in156892_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _xphi156896_))
                                                     (let ((__tmp157496
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in156892_
                           '1
                           gx#import-set::t
                           '#f)
                          _r156871_)))
               (declare (not safe))
               (_lp156868_ _rest156891_ __tmp157496))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _xphi156896_))
                                                         (let ((__tmp157497
                                                                (let ((__tmp157498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_import-set-template156800_
                                  _in156892_
                                  _iphi156865_))))
                          (declare (not safe))
                          (__foldl1 cons _r156871_ __tmp157498))))
                   (declare (not safe))
                   (_lp156868_ _rest156891_ __tmp157497))
                 (let ()
                   (declare (not safe))
                   (_lp156868_ _rest156891_ _r156871_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp156868_
                                                  _rest156891_
                                                  _r156871_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _rest156872156880_))
                               (let ((_hd156877156901_
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest156872156880_)))
                                     (_tl156878156903_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest156872156880_))))
                                 (let* ((_in156906_ _hd156877156901_)
                                        (_rest156908_ _tl156878156903_))
                                   (declare (not safe))
                                   (_K156876156898_ _rest156908_ _in156906_)))
                               (let ()
                                 (declare (not safe))
                                 (_else156874156888_))))))))
                  (_find-deps156801_
                   (lambda (_rest156808_ _deps156809_)
                     (let* ((_rest156810156818_ _rest156808_)
                            (_else156812156826_ (lambda () _deps156809_))
                            (_K156814156850_
                             (lambda (_rest156829_ _hd156830_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _hd156830_
                                      'gx#module-context::t))
                                   (let ((_id156832_
                                          (##structure-ref
                                           _hd156830_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_imports156833_
                                          (##structure-ref
                                           _hd156830_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get _ht156799_ _id156832_))
                                         (let ()
                                           (declare (not safe))
                                           (_find-deps156801_
                                            _rest156829_
                                            _deps156809_))
                                         (let ((_$e156835_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _hd156830_))))
                                           (if _$e156835_
                                               ((lambda (_pre156838_)
                                                  (let ((_xdeps156840_
                                                         (let ((__tmp157499
                                                                (cons _pre156838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _imports156833_)))
                   (declare (not safe))
                   (_find-deps156801_ __tmp157499 _deps156809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _ht156799_
                                                       _id156832_
                                                       _hd156830_))
                                                    (let ((__tmp157500
                                                           (cons _hd156830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xdeps156840_)))
              (declare (not safe))
              (_find-deps156801_ _rest156829_ __tmp157500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _$e156835_)
                                               (let ((_xdeps156842_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_find-deps156801_
                                                         _imports156833_
                                                         _deps156809_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _ht156799_
                                                    _id156832_
                                                    _hd156830_))
                                                 (let ((__tmp157501
                                                        (cons _hd156830_
                                                              _xdeps156842_)))
                                                   (declare (not safe))
                                                   (_find-deps156801_
                                                    _rest156829_
                                                    __tmp157501)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _hd156830_
                                          'gx#prelude-context::t))
                                       (let ((_id156844_
                                              (##structure-ref
                                               _hd156830_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _ht156799_
                                                _id156844_))
                                             (let ()
                                               (declare (not safe))
                                               (_find-deps156801_
                                                _rest156829_
                                                _deps156809_))
                                             (let ((_xdeps156846_
                                                    (let ((__tmp157502
                                                           (##structure-ref
                                                            _hd156830_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_find-deps156801_
                                                       __tmp157502
                                                       _deps156809_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _ht156799_
                                                      _id156844_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_find-deps156801_
                                                      _rest156829_
                                                      _xdeps156846_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _ht156799_
                                                        _id156844_
                                                        _hd156830_))
                                                     (let ((__tmp157503
                                                            (cons _hd156830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _xdeps156846_)))
               (declare (not safe))
               (_find-deps156801_ _rest156829_ __tmp157503)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _hd156830_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _hd156830_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (let ((__tmp157504
                                                      (cons (##direct-structure-ref
                                                             _hd156830_
                                                             '1
                                                             gx#module-import::t
                                                             '#f)
                                                            _rest156829_)))
                                                 (declare (not safe))
                                                 (_find-deps156801_
                                                  __tmp157504
                                                  _deps156809_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_find-deps156801_
                                                  _rest156829_
                                                  _deps156809_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _hd156830_
                                                  'gx#module-export::t))
                                               (let ((__tmp157505
                                                      (cons (##direct-structure-ref
                                                             _hd156830_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _rest156829_)))
                                                 (declare (not safe))
                                                 (_find-deps156801_
                                                  __tmp157505
                                                  _deps156809_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _hd156830_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd156830_
                         '2
                         gx#import-set::t
                         '#f))
               (let ((__tmp157506
                      (cons (##direct-structure-ref
                             _hd156830_
                             '1
                             gx#import-set::t
                             '#f)
                            _rest156829_)))
                 (declare (not safe))
                 (_find-deps156801_ __tmp157506 _deps156809_))
               (if (fxpositive?
                    (##direct-structure-ref
                     _hd156830_
                     '2
                     gx#import-set::t
                     '#f))
                   (let* ((_xdeps156848_
                           (let ()
                             (declare (not safe))
                             (_import-set-template156800_ _hd156830_ '0)))
                          (__tmp157507
                           (let ()
                             (declare (not safe))
                             (__foldl1 cons _rest156829_ _xdeps156848_))))
                     (declare (not safe))
                     (_find-deps156801_ __tmp157507 _deps156809_))
                   (let ()
                     (declare (not safe))
                     (_find-deps156801_ _rest156829_ _deps156809_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _hd156830_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rest156810156818_))
                           (let ((_hd156815156853_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rest156810156818_)))
                                 (_tl156816156855_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rest156810156818_))))
                             (let* ((_hd156858_ _hd156815156853_)
                                    (_rest156860_ _tl156816156855_))
                               (declare (not safe))
                               (_K156814156850_ _rest156860_ _hd156858_)))
                           (let ()
                             (declare (not safe))
                             (_else156812156826_)))))))
          (let ((__tmp157508
                 (filter gx#expander-context-id
                         (let ((__tmp157509
                                (let ((_$e156803_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _ctx156797_))))
                                  (if _$e156803_
                                      ((lambda (_pre156806_)
                                         (cons _pre156806_
                                               (##structure-ref
                                                _ctx156797_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _$e156803_)
                                      (##structure-ref
                                       _ctx156797_
                                       '8
                                       gx#module-context::t
                                       '#f)))))
                           (declare (not safe))
                           (_find-deps156801_ __tmp157509 '())))))
            (declare (not safe))
            (##reverse __tmp157508)))))
    (define gxc#find-static-module-file
      (lambda (_ctx156728_)
        (let* ((_context-id156730_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _ctx156728_
                       'gx#module-context::t))
                    (##structure-ref _ctx156728_ '1 gx#expander-context::t '#f)
                    (string->symbol _ctx156728_)))
               (_scm156732_
                (let ((__tmp157510
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _context-id156730_))))
                  (declare (not safe))
                  (##string-append __tmp157510 '".scm")))
               (_dirs156734_ (let () (declare (not safe)) (load-path)))
               (_dirs156740_
                (let ((_user-libpath156736_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _user-libpath156736_
                      (let ((_user-libpath156738_
                             (path-expand '"lib" _user-libpath156736_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _user-libpath156738_ _dirs156734_))
                            _dirs156734_
                            (cons _user-libpath156738_ _dirs156734_)))
                      _dirs156734_)))
               (_dirs156749_
                (let ((_$e156742_ (gxc#current-compile-output-dir)))
                  (if _$e156742_
                      ((lambda (_g156744156746_)
                         (cons _g156744156746_ _dirs156740_))
                       _$e156742_)
                      _dirs156740_)))
               (_dirs156755_
                (map (lambda (_g156750156752_)
                       (path-expand '"static" _g156750156752_))
                     _dirs156749_)))
          (let _lp156758_ ((_rest156760_ _dirs156755_))
            (let* ((_rest156761156769_ _rest156760_)
                   (_else156763156777_
                    (lambda ()
                      (let ((__tmp157511
                             (##structure-ref
                              _ctx156728_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp157511
                         _scm156732_))))
                   (_K156765156785_
                    (lambda (_rest156780_ _dir156781_)
                      (let ((_path156783_
                             (path-expand _scm156732_ _dir156781_)))
                        (if (file-exists? _path156783_)
                            _path156783_
                            (let ()
                              (declare (not safe))
                              (_lp156758_ _rest156780_)))))))
              (if (let () (declare (not safe)) (##pair? _rest156761156769_))
                  (let ((_hd156766156788_
                         (let ()
                           (declare (not safe))
                           (##car _rest156761156769_)))
                        (_tl156767156790_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156761156769_))))
                    (let* ((_dir156793_ _hd156766156788_)
                           (_rest156795_ _tl156767156790_))
                      (declare (not safe))
                      (_K156765156785_ _rest156795_ _dir156793_)))
                  (let () (declare (not safe)) (_else156763156777_))))))))
    (define gxc#file-empty?
      (lambda (_path156726_)
        (zero? (file-info-size (file-info _path156726_ '#t)))))
    (define gxc#compile-top-module
      (lambda (_ctx156715_)
        (let ((__tmp157515
               (lambda ()
                 (let ((__tmp157516
                        (##structure-ref
                         _ctx156715_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp157516))
                 (if (gxc#current-compile-optimize)
                     (let ((__tmp157517
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _ctx156715_)))))
                       (declare (not safe))
                       (with-lock gxc#+driver-mutex+ __tmp157517))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _ctx156715_))
                 (if (let ((__tmp157518
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _ctx156715_))))
                       (declare (not safe))
                       (null? __tmp157518))
                     (let* ((_thr1156720_
                             (let ((__tmp157519
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _ctx156715_)))))
                               (declare (not safe))
                               (__spawn __tmp157519)))
                            (_thr2156723_
                             (let ((__tmp157520
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code _ctx156715_)))))
                               (declare (not safe))
                               (__spawn __tmp157520))))
                       (let () (declare (not safe)) (gxc#join! _thr1156720_))
                       (let () (declare (not safe)) (gxc#join! _thr2156723_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _ctx156715_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _ctx156715_))))
                 (if (and (gxc#current-compile-optimize)
                          (gxc#current-compile-generate-ssxi))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _ctx156715_))
                     '#!void)))
              (__tmp157514
               (let ((__obj157415
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj157415)
                 __obj157415))
              (__tmp157513 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157512 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (__call-with-parameters
           __tmp157515
           gx#current-expander-context
           _ctx156715_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp157514
           gxc#current-compile-runtime-sections
           __tmp157513
           gxc#current-compile-runtime-names
           __tmp157512))))
    (define gxc#collect-bindings
      (lambda (_ctx156713_)
        (let ((__tmp157521
               (##structure-ref _ctx156713_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp157521))))
    (define gxc#compile-runtime-code
      (lambda (_ctx156659_)
        (letrec ((_compile1156661_
                  (lambda (_ctx156702_)
                    (let* ((_code156704_
                            (##structure-ref
                             _ctx156702_
                             '11
                             gx#module-context::t
                             '#f))
                           (_rt156708_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _code156704_))
                                (let ((_idstr156706_
                                       (let ((__tmp157522
                                              (##structure-ref
                                               _ctx156702_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp157522))))
                                  (declare (not safe))
                                  (##string-append _idstr156706_ '"~0"))
                                '#f)))
                      (if _rt156708_
                          (begin
                            (let ((__tmp157523
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-put! __tmp157523 _ctx156702_ _rt156708_))
                            (let ()
                              (declare (not safe))
                              (_generate-runtime-code156663_
                               _ctx156702_
                               _code156704_)))
                          (let ((_path156711_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _ctx156702_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _path156711_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_generate-loader-code156664_
                         _ctx156702_
                         _code156704_
                         _rt156708_)))))
                 (_context-timestamp156662_
                  (lambda (_ctx156700_)
                    (let ((__tmp157524
                           (let ((__tmp157525
                                  (symbol->string
                                   (##structure-ref
                                    _ctx156700_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp157525 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp157524))))
                 (_generate-runtime-code156663_
                  (lambda (_ctx156682_ _code156683_)
                    (let* ((_lifts156685_ (box '()))
                           (_runtime-code156688_
                            (let ((__tmp157528
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _code156683_))))
                                  (__tmp157527
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp157526
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp157528
                               gx#current-expander-context
                               _ctx156682_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _lifts156685_
                               gxc#current-compile-marks
                               __tmp157527
                               gxc#current-compile-identifiers
                               __tmp157526)))
                           (_runtime-code156690_
                            (if (let ((__tmp157529 (unbox _lifts156685_)))
                                  (declare (not safe))
                                  (null? __tmp157529))
                                _runtime-code156688_
                                (cons 'begin
                                      (let ((__tmp157531
                                             (cons _runtime-code156688_ '()))
                                            (__tmp157530
                                             (reverse (unbox _lifts156685_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp157531
                                         __tmp157530)))))
                           (_runtime-code156692_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_context-timestamp156662_
                                                       _ctx156682_))
                                                    (cons (gxc#current-compile-timestamp)
                                                          '())))
                                        (cons _runtime-code156690_ '()))))
                           (_scm0156694_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156682_
                               '0
                               '".scm"))))
                      (let ((_scms156697_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file _ctx156682_))))
                        (let ((__tmp157532
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _scm0156694_
                                    _runtime-code156692_)))))
                          (declare (not safe))
                          (__call-with-parameters
                           __tmp157532
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _scms156697_)
                            (delete-file _scms156697_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _scm0156694_
                           '" => "
                           _scms156697_))
                        (copy-file _scm0156694_ _scms156697_)
                        (if (gxc#current-compile-keep-scm)
                            '#!void
                            (delete-file _scm0156694_))))))
                 (_generate-loader-code156664_
                  (lambda (_ctx156671_ _code156672_ _rt156673_)
                    (let* ((_loader-code156676_
                            (let ((__tmp157533
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _code156672_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp157533
                               gx#current-expander-context
                               _ctx156671_)))
                           (_loader-code156678_
                            (if _rt156673_
                                (cons 'begin
                                      (cons _loader-code156676_
                                            (cons (cons 'load-module
                                                        (cons _rt156673_ '()))
                                                  '())))
                                _loader-code156676_)))
                      (let ((__tmp157534
                             (lambda ()
                               (let ((__tmp157535
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156671_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp157535
                                  _loader-code156678_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp157534
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let* ((_all-modules156666_
                  (cons _ctx156659_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _ctx156659_))))
                 (__tmp157536
                  (lambda (_ctx156668_)
                    (let ((__tmp157537
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_compile1156661_ _ctx156668_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp157537
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp157536 _all-modules156666_)))))
    (define gxc#compile-meta-code
      (lambda (_ctx156556_)
        (letrec ((_compile-ssi156558_
                  (lambda (_code156629_)
                    (let* ((_path156631_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _ctx156556_
                               '#f
                               '".ssi")))
                           (_prelude156642_
                            (let* ((_super156633_
                                    (##structure-ref
                                     _ctx156556_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_$e156635_
                                    (##structure-ref
                                     _super156633_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _$e156635_
                                  ((lambda (_g156637156639_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1 '":" _g156637156639_)))
                                   _$e156635_)
                                  ':<root>)))
                           (_ns156644_
                            (##structure-ref
                             _ctx156556_
                             '6
                             gx#module-context::t
                             '#f))
                           (_idstr156646_
                            (symbol->string
                             (##structure-ref
                              _ctx156556_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_pkg156653_
                            (let ((_$e156648_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _idstr156646_ '#\/))))
                              (if _$e156648_
                                  ((lambda (_x156651_)
                                     (let ((__tmp157538
                                            (substring
                                             _idstr156646_
                                             '0
                                             _x156651_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp157538)))
                                   _$e156648_)
                                  '#f)))
                           (_rt156655_
                            (let ((__tmp157539
                                   (gxc#current-compile-runtime-sections)))
                              (declare (not safe))
                              (hash-get __tmp157539 _ctx156556_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _path156631_))
                      (let ((__tmp157540
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (__displayln
                                  '"prelude:"
                                  '" "
                                  _prelude156642_))
                               (if _pkg156653_
                                   (let ()
                                     (declare (not safe))
                                     (__displayln
                                      '"package:"
                                      '" "
                                      _pkg156653_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (__displayln '"namespace:" '" " _ns156644_))
                               (newline)
                               (pretty-print _code156629_)
                               (if _rt156655_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _rt156655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _path156631_
                         __tmp157540)))))
                 (_compile-phi156559_
                  (lambda (_part156569_)
                    (let* ((_part156570156583_ _part156569_)
                           (_E156572156587_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _part156570156583_))))
                           (_K156573156598_
                            (lambda (_code156590_
                                     _n156591_
                                     _phi156592_
                                     _phi-ctx156593_)
                              (let* ((_code156596_
                                      (let ((__tmp157541
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _code156590_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp157541
                                         gx#current-expander-context
                                         _phi-ctx156593_
                                         gx#current-expander-phi
                                         _phi156592_)))
                                     (__tmp157542
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _ctx156556_
                                         _n156591_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp157542
                                 _code156596_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _part156570156583_))
                          (let ((_hd156574156601_
                                 (let ()
                                   (declare (not safe))
                                   (##car _part156570156583_)))
                                (_tl156575156603_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _part156570156583_))))
                            (let ((_phi-ctx156606_ _hd156574156601_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _tl156575156603_))
                                  (let ((_hd156576156608_
                                         (let ()
                                           (declare (not safe))
                                           (##car _tl156575156603_)))
                                        (_tl156577156610_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _tl156575156603_))))
                                    (let ((_phi156613_ _hd156576156608_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl156577156610_))
                                          (let ((_hd156578156615_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl156577156610_)))
                                                (_tl156579156617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl156577156610_))))
                                            (let ((_n156620_ _hd156578156615_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl156579156617_))
                                                  (let ((_hd156580156622_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl156579156617_)))
                                                        (_tl156581156624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl156579156617_))))
                                                    (let ((_code156627_
                                                           _hd156580156622_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _tl156581156624_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K156573156598_
                                                             _code156627_
                                                             _n156620_
                                                             _phi156613_
                                                             _phi-ctx156606_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_E156572156587_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E156572156587_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E156572156587_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E156572156587_)))))
                          (let () (declare (not safe)) (_E156572156587_)))))))
          (let ((_g157543_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _ctx156556_))))
            (begin
              (let ((_g157544_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g157543_)
                           (##vector-length _g157543_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g157544_ 2)))
                    (error "Context expects 2 values" _g157544_)))
              (let ((_ssi-code156561_
                     (let () (declare (not safe)) (##vector-ref _g157543_ 0)))
                    (_phi-code156562_
                     (let () (declare (not safe)) (##vector-ref _g157543_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_compile-ssi156558_ _ssi-code156561_))
                  (let ((_threads156567_
                         (map (lambda (_code156564_)
                                (let ((__tmp157545
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_compile-phi156559_
                                            _code156564_)))))
                                  (declare (not safe))
                                  (__spawn __tmp157545)))
                              _phi-code156562_)))
                    (for-each gxc#join! _threads156567_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_ctx156539_)
        (let* ((_path156541_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _ctx156539_ '#f '".ssxi.ss")))
               (_code156543_
                (let ((__tmp157546
                       (##structure-ref
                        _ctx156539_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp157546)))
               (_idstr156545_
                (symbol->string
                 (##structure-ref _ctx156539_ '1 gx#expander-context::t '#f)))
               (_pkg156552_
                (let ((_$e156547_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _idstr156545_ '#\/))))
                  (if _$e156547_
                      ((lambda (_x156550_)
                         (let ((__tmp157547
                                (substring _idstr156545_ '0 _x156550_)))
                           (declare (not safe))
                           (##string->symbol __tmp157547)))
                       _$e156547_)
                      '#f))))
          (let () (declare (not safe)) (gxc#verbose '"compile " _path156541_))
          (let ((__tmp157548
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (__displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _pkg156552_
                       (let ()
                         (declare (not safe))
                         (__displayln '"package: " _pkg156552_))
                       '#!void)
                   (newline)
                   (pretty-print _code156543_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _path156541_ __tmp157548)))))
    (define gxc#generate-meta-code
      (lambda (_ctx156532_)
        (let* ((_state156534_
                (let ((__obj157416
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj157416 _ctx156532_)
                  __obj157416))
               (_ssi-code156536_
                (let ((__tmp157549
                       (##structure-ref
                        _ctx156532_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp157549
                   'state:
                   _state156534_))))
          (values _ssi-code156536_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _state156534_))))))
    (define gxc#generate-runtime-phi
      (lambda (_stx156525_)
        (let ((_lifts156527_ (box '())))
          (let ((__tmp157552
                 (lambda ()
                   (let ((_code156530_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _stx156525_))))
                     (if (let ((__tmp157553 (unbox _lifts156527_)))
                           (declare (not safe))
                           (null? __tmp157553))
                         _code156530_
                         (cons 'begin
                               (let ((__tmp157555 (cons _code156530_ '()))
                                     (__tmp157554
                                      (reverse (unbox _lifts156527_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp157555 __tmp157554)))))))
                (__tmp157551
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp157550
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp157552
             gxc#current-compile-lift
             _lifts156527_
             gxc#current-compile-marks
             __tmp157551
             gxc#current-compile-identifiers
             __tmp157550)))))
    (define gxc#lift-nested-modules
      (lambda (_ctx156521_)
        (let ((_modules156523_ (box '())))
          (let ((__tmp157556
                 (##structure-ref _ctx156521_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp157556 'modules: _modules156523_))
          (reverse (unbox _modules156523_)))))
    (define gxc#compile-scm-file__%
      (lambda (_path156504_ _code156505_ _phi?156506_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _path156504_))
        (let ((__tmp157557
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp157558
                                                 (if _phi?156506_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp157558)))))))
                 (pretty-print _code156505_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _path156504_ __tmp157557))
        (if (gxc#current-compile-invoke-gsc)
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _path156504_ _phi?156506_))
            '#!void)
        (if (gxc#current-compile-keep-scm)
            '#!void
            (delete-file _path156504_))))
    (define gxc#compile-scm-file__0
      (lambda (_path156512_ _code156513_)
        (let ((_phi?156515_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__% _path156512_ _code156513_ _phi?156515_))))
    (define gxc#compile-scm-file
      (lambda _g157560_
        (let ((_g157559_ (let () (declare (not safe)) (##length _g157560_))))
          (cond ((let () (declare (not safe)) (##fx= _g157559_ 2))
                 (apply (lambda (_path156512_ _code156513_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _path156512_
                             _code156513_)))
                        _g157560_))
                ((let () (declare (not safe)) (##fx= _g157559_ 3))
                 (apply (lambda (_path156517_ _code156518_ _phi?156519_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _path156517_
                             _code156518_
                             _phi?156519_)))
                        _g157560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g157560_))))))
    (define gxc#gsc-link-options__%
      (lambda (_phi?156405_)
        (let _lp156407_ ((_rest156409_ (gxc#current-compile-gsc-options))
                         (_opts156410_ '()))
          (let* ((_rest156411156431_ _rest156409_)
                 (_else156415156439_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156405_))
                             (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _opts156410_)))
                        (reverse _opts156410_)))))
            (let ((_K156425156482_
                   (lambda (_rest156480_)
                     (let ()
                       (declare (not safe))
                       (_lp156407_ _rest156480_ _opts156410_))))
                  (_K156420156464_
                   (lambda (_rest156462_)
                     (let ()
                       (declare (not safe))
                       (_lp156407_ _rest156462_ _opts156410_))))
                  (_K156417156446_
                   (lambda (_rest156443_ _opt156444_)
                     (let ((__tmp157561 (cons _opt156444_ _opts156410_)))
                       (declare (not safe))
                       (_lp156407_ _rest156443_ __tmp157561)))))
              (if (let () (declare (not safe)) (##pair? _rest156411156431_))
                  (let ((_tl156427156487_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156411156431_)))
                        (_hd156426156485_
                         (let ()
                           (declare (not safe))
                           (##car _rest156411156431_))))
                    (if (equal? _hd156426156485_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156427156487_))
                            (let* ((_tl156429156490_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156427156487_)))
                                   (_rest156493_ _tl156429156490_))
                              (declare (not safe))
                              (_K156425156482_ _rest156493_))
                            (let ((_opt156454_ _hd156426156485_)
                                  (_rest156456_ _tl156427156487_))
                              (let ()
                                (declare (not safe))
                                (_K156417156446_ _rest156456_ _opt156454_))))
                        (if (equal? _hd156426156485_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156427156487_))
                                (let* ((_tl156424156472_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156427156487_)))
                                       (_rest156475_ _tl156424156472_))
                                  (declare (not safe))
                                  (_K156420156464_ _rest156475_))
                                (let ((_opt156454_ _hd156426156485_)
                                      (_rest156456_ _tl156427156487_))
                                  (let ()
                                    (declare (not safe))
                                    (_K156417156446_
                                     _rest156456_
                                     _opt156454_))))
                            (let ((_opt156454_ _hd156426156485_)
                                  (_rest156456_ _tl156427156487_))
                              (let ()
                                (declare (not safe))
                                (_K156417156446_ _rest156456_ _opt156454_))))))
                  (let () (declare (not safe)) (_else156415156439_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_phi?156499_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _phi?156499_))))
    (define gxc#gsc-link-options
      (lambda _g157563_
        (let ((_g157562_ (let () (declare (not safe)) (##length _g157563_))))
          (cond ((let () (declare (not safe)) (##fx= _g157562_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g157563_))
                ((let () (declare (not safe)) (##fx= _g157562_ 1))
                 (apply (lambda (_phi?156501_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _phi?156501_)))
                        _g157563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g157563_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_phi?156306_)
        (let _lp156308_ ((_rest156310_ (gxc#current-compile-gsc-options))
                         (_opts156311_ '()))
          (let* ((_rest156312156332_ _rest156310_)
                 (_else156316156340_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _phi?156306_))
                             (gxc#current-compile-debug))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _opts156311_)))
                        (reverse _opts156311_)))))
            (let ((_K156326156379_
                   (lambda (_rest156376_ _opt156377_)
                     (let ((__tmp157564
                            (let ((__tmp157565
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _opts156311_))))
                              (declare (not safe))
                              (cons _opt156377_ __tmp157565))))
                       (declare (not safe))
                       (_lp156308_ _rest156376_ __tmp157564))))
                  (_K156321156360_
                   (lambda (_rest156358_)
                     (let ()
                       (declare (not safe))
                       (_lp156308_ _rest156358_ _opts156311_))))
                  (_K156318156346_
                   (lambda (_rest156344_)
                     (let ()
                       (declare (not safe))
                       (_lp156308_ _rest156344_ _opts156311_)))))
              (if (let () (declare (not safe)) (##pair? _rest156312156332_))
                  (let ((_tl156328156384_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156312156332_)))
                        (_hd156327156382_
                         (let ()
                           (declare (not safe))
                           (##car _rest156312156332_))))
                    (if (equal? _hd156327156382_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156328156384_))
                            (let ((_tl156330156389_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl156328156384_)))
                                  (_hd156329156387_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl156328156384_))))
                              (let ((_opt156392_ _hd156329156387_)
                                    (_rest156394_ _tl156330156389_))
                                (let ()
                                  (declare (not safe))
                                  (_K156326156379_ _rest156394_ _opt156392_))))
                            (let ((_rest156352_ _tl156328156384_))
                              (declare (not safe))
                              (_K156318156346_ _rest156352_)))
                        (if (equal? _hd156327156382_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156328156384_))
                                (let* ((_tl156325156368_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _tl156328156384_)))
                                       (_rest156371_ _tl156325156368_))
                                  (declare (not safe))
                                  (_K156321156360_ _rest156371_))
                                (let ((_rest156352_ _tl156328156384_))
                                  (declare (not safe))
                                  (_K156318156346_ _rest156352_)))
                            (let ((_rest156352_ _tl156328156384_))
                              (declare (not safe))
                              (_K156318156346_ _rest156352_)))))
                  (let () (declare (not safe)) (_else156316156340_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_phi?156400_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _phi?156400_))))
    (define gxc#gsc-cc-options
      (lambda _g157567_
        (let ((_g157566_ (let () (declare (not safe)) (##length _g157567_))))
          (cond ((let () (declare (not safe)) (##fx= _g157566_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g157567_))
                ((let () (declare (not safe)) (##fx= _g157566_ 1))
                 (apply (lambda (_phi?156402_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _phi?156402_)))
                        _g157567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g157567_))))))
    (define gxc#gsc-static-include-options
      (lambda (_staticdir156301_)
        (let ((_user-staticdir156303_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _staticdir156301_
                       '" -I "
                       _user-staticdir156303_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _lp156213_ ((_rest156215_ (gxc#current-compile-gsc-options))
                         (_opts156216_ '()))
          (let* ((_rest156217156237_ _rest156215_)
                 (_else156221156245_ (lambda () _opts156216_)))
            (let ((_K156231156288_
                   (lambda (_rest156286_)
                     (let ()
                       (declare (not safe))
                       (_lp156213_ _rest156286_ _opts156216_))))
                  (_K156226156266_
                   (lambda (_rest156263_ _opt156264_)
                     (let ((__tmp157568
                            (let ((__tmp157569
                                   (let ((__tmp157570
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _opt156264_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp157570))))
                              (declare (not safe))
                              (##append _opts156216_ __tmp157569))))
                       (declare (not safe))
                       (_lp156213_ _rest156263_ __tmp157568))))
                  (_K156223156251_
                   (lambda (_rest156249_)
                     (let ()
                       (declare (not safe))
                       (_lp156213_ _rest156249_ _opts156216_)))))
              (if (let () (declare (not safe)) (##pair? _rest156217156237_))
                  (let ((_tl156233156293_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156217156237_)))
                        (_hd156232156291_
                         (let ()
                           (declare (not safe))
                           (##car _rest156217156237_))))
                    (if (equal? _hd156232156291_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl156233156293_))
                            (let* ((_tl156235156296_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _tl156233156293_)))
                                   (_rest156299_ _tl156235156296_))
                              (declare (not safe))
                              (_K156231156288_ _rest156299_))
                            (let ((_rest156257_ _tl156233156293_))
                              (declare (not safe))
                              (_K156223156251_ _rest156257_)))
                        (if (equal? _hd156232156291_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl156233156293_))
                                (let ((_tl156230156276_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl156233156293_)))
                                      (_hd156229156274_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl156233156293_))))
                                  (let ((_opt156279_ _hd156229156274_)
                                        (_rest156281_ _tl156230156276_))
                                    (let ()
                                      (declare (not safe))
                                      (_K156226156266_
                                       _rest156281_
                                       _opt156279_))))
                                (let ((_rest156257_ _tl156233156293_))
                                  (declare (not safe))
                                  (_K156223156251_ _rest156257_)))
                            (let ((_rest156257_ _tl156233156293_))
                              (declare (not safe))
                              (_K156223156251_ _rest156257_)))))
                  (let () (declare (not safe)) (_else156221156245_))))))))
    (define gxc#not-string-empty?
      (lambda (_str156210_)
        (let ((__tmp157571
               (let () (declare (not safe)) (string-empty? _str156210_))))
          (declare (not safe))
          (not __tmp157571))))
    (define gxc#gsc-compile-file
      (lambda (_path156178_ _phi?156179_)
        (letrec ((_gsc-link-path156181_
                  (lambda (_base-path156202_)
                    (let _lp156204_ ((_n156206_ '1))
                      (let ((_path156208_
                             (let ((__tmp157572 (number->string _n156206_)))
                               (declare (not safe))
                               (##string-append
                                _base-path156202_
                                '".o"
                                __tmp157572))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _path156208_))
                            (let ((__tmp157573
                                   (let ()
                                     (declare (not safe))
                                     (+ _n156206_ '1))))
                              (declare (not safe))
                              (_lp156204_ __tmp157573))
                            _path156208_))))))
          (let* ((_base-path156183_ (path-strip-extension _path156178_))
                 (_path-c156185_
                  (let ()
                    (declare (not safe))
                    (##string-append _base-path156183_ '".c")))
                 (_path-o156187_
                  (let ()
                    (declare (not safe))
                    (##string-append _base-path156183_ '".o")))
                 (_link-path156189_
                  (let ()
                    (declare (not safe))
                    (_gsc-link-path156181_ _base-path156183_)))
                 (_link-path-c156191_
                  (let ()
                    (declare (not safe))
                    (##string-append _link-path156189_ '".c")))
                 (_link-path-o156193_
                  (let ()
                    (declare (not safe))
                    (##string-append _link-path156189_ '".o")))
                 (_gsc-link-opts156195_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _phi?156179_)))
                 (_gsc-cc-opts156197_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _phi?156179_)))
                 (_gcc-ld-opts156199_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp157576 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157574
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _link-path-c156191_
                                           (let ((__tmp157575
                                                  (cons _path156178_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp157575
                                              _gsc-link-opts156195_))))))))
              (declare (not safe))
              (gxc#invoke __tmp157576 __tmp157574 'stdout-redirection: '#t))
            (let ((__tmp157579 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp157577
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp157578
                                            (cons _path-c156185_
                                                  (cons _link-path-c156191_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp157578
                                        _gsc-cc-opts156197_)))))))
              (declare (not safe))
              (gxc#invoke __tmp157579 __tmp157577 'stdout-redirection: '#t))
            (let ((__tmp157581 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp157580
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _link-path156189_
                                     (cons _path-o156187_
                                           (cons _link-path-o156193_
                                                 _gcc-ld-opts156199_)))))))
              (declare (not safe))
              (gxc#invoke __tmp157581 __tmp157580))
            (let ((__tmp157582
                   (cons _path-c156185_
                         (cons _path-o156187_
                               (cons _link-path-c156191_
                                     (cons _link-path-o156193_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp157582))))))
    (define gxc#compile-output-file
      (lambda (_ctx156149_ _n156150_ _ext156151_)
        (letrec ((_module-relative-path156153_
                  (lambda (_ctx156176_)
                    (path-strip-directory
                     (let ((__tmp157583
                            (##structure-ref
                             _ctx156176_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp157583)))))
                 (_module-source-directory156154_
                  (lambda (_ctx156172_)
                    (path-directory
                     (let ((_mpath156174_
                            (##structure-ref
                             _ctx156172_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _mpath156174_))
                           _mpath156174_
                           (last _mpath156174_))))))
                 (_section-string156155_
                  (lambda (_n156170_)
                    (if (let () (declare (not safe)) (number? _n156170_))
                        (number->string _n156170_)
                        (if (let () (declare (not safe)) (symbol? _n156170_))
                            (symbol->string _n156170_)
                            (if (let ()
                                  (declare (not safe))
                                  (string? _n156170_))
                                _n156170_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _n156170_)))))))
                 (_file-name156156_
                  (lambda (_path156168_)
                    (if _n156150_
                        (string-append
                         _path156168_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_section-string156155_ _n156150_))
                         _ext156151_)
                        (string-append _path156168_ _ext156151_))))
                 (_file-path156157_
                  (lambda ()
                    (let ((_$e156163_ (gxc#current-compile-output-dir)))
                      (if _$e156163_
                          ((lambda (_outdir156166_)
                             (path-expand
                              (let ((__tmp157584
                                     (let ((__tmp157585
                                            (##structure-ref
                                             _ctx156149_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp157585))))
                                (declare (not safe))
                                (_file-name156156_ __tmp157584))
                              _outdir156166_))
                           _$e156163_)
                          (path-expand
                           (let ((__tmp157586
                                  (let ()
                                    (declare (not safe))
                                    (_module-relative-path156153_
                                     _ctx156149_))))
                             (declare (not safe))
                             (_file-name156156_ __tmp157586))
                           (let ()
                             (declare (not safe))
                             (_module-source-directory156154_
                              _ctx156149_))))))))
          (let ((_path156159_
                 (let () (declare (not safe)) (_file-path156157_))))
            (let ((__tmp157587
                   (lambda ()
                     (let ((__tmp157588 (path-directory _path156159_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157588)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157587))
            _path156159_))))
    (define gxc#compile-static-output-file
      (lambda (_ctx156131_)
        (letrec ((_file-name156133_
                  (lambda (_id156147_)
                    (let ((__tmp157589
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _id156147_))))
                      (declare (not safe))
                      (##string-append __tmp157589 '".scm"))))
                 (_file-path156134_
                  (lambda ()
                    (let* ((_file156140_
                            (let ((__tmp157590
                                   (##structure-ref
                                    _ctx156131_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_file-name156133_ __tmp157590)))
                           (_$e156142_ (gxc#current-compile-output-dir)))
                      (if _$e156142_
                          ((lambda (_outdir156145_)
                             (path-expand
                              _file156140_
                              (path-expand '"static" _outdir156145_)))
                           _$e156142_)
                          (path-expand _file156140_ '"static"))))))
          (let ((_path156136_
                 (let () (declare (not safe)) (_file-path156134_))))
            (let ((__tmp157591
                   (lambda ()
                     (let ((__tmp157592 (path-directory _path156136_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp157592)))))
              (declare (not safe))
              (with-lock gxc#+driver-mutex+ __tmp157591))
            _path156136_))))
    (define gxc#compile-exe-output-file
      (lambda (_ctx156125_ _opts156126_)
        (let ((_$e156128_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _opts156126_))))
          (if _$e156128_
              (values _$e156128_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _ctx156125_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_idstr156118_)
        (if (let () (declare (not safe)) (string? _idstr156118_))
            (let* ((_str156120_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _idstr156118_)))
                   (_strs156122_
                    (let ()
                      (declare (not safe))
                      (string-split _str156120_ '#\/))))
              (let () (declare (not safe)) (__string-join _strs156122_ '"__")))
            (if (let () (declare (not safe)) (symbol? _idstr156118_))
                (let ((__tmp157593 (symbol->string _idstr156118_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp157593))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _idstr156118_))))))
    (define gxc#invoke__%
      (lambda (__156081_
               _stdout-redirection156077156083_
               _stderr-redirection156078156085_
               _program156087_
               _args156088_)
        (let* ((_stdout-redirection156090_
                (if (eq? _stdout-redirection156077156083_ absent-value)
                    '#f
                    _stdout-redirection156077156083_))
               (_stderr-redirection156092_
                (if (eq? _stderr-redirection156078156085_ absent-value)
                    '#f
                    _stderr-redirection156078156085_)))
          (let ((__tmp157594 (cons _program156087_ _args156088_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp157594))
          (let* ((_proc156094_
                  (open-process
                   (cons 'path:
                         (cons _program156087_
                               (cons 'arguments:
                                     (cons _args156088_
                                           (cons 'stdout-redirection:
                                                 (cons _stdout-redirection156090_
                                                       (cons 'stderr-redirection:
                                                             (cons _stderr-redirection156092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_output156099_
                  (if (or _stdout-redirection156090_
                          _stderr-redirection156092_)
                      (read-line _proc156094_ '#f)
                      '#f)))
            (let ((_status156102_ (process-status _proc156094_)))
              (let () (declare (not safe)) (##close-port _proc156094_))
              (if (zero? _status156102_)
                  '#!void
                  (begin
                    (display _output156099_)
                    (let ((__tmp157595 (cons _program156087_ _args156088_)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp157595
                       _status156102_)))))))))
    (define gxc#invoke__@
      (lambda (_keys156076156107_ . _args156109_)
        (apply gxc#invoke__%
               _keys156076156107_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156076156107_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys156076156107_
                  'stderr-redirection:
                  absent-value))
               _args156109_)))
    (define gxc#invoke
      (lambda _args156079156115_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _args156079156115_)))
    (define gxc#join!
      (lambda (_thread156070_)
        (let ((__tmp157597
               (lambda (_exn156072_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _exn156072_))
                     (let ((__tmp157598
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _exn156072_))))
                       (declare (not safe))
                       (raise __tmp157598))
                     (let () (declare (not safe)) (raise _exn156072_)))))
              (__tmp157596 (lambda () (thread-join! _thread156070_))))
          (declare (not safe))
          (__with-catch __tmp157597 __tmp157596))))))
